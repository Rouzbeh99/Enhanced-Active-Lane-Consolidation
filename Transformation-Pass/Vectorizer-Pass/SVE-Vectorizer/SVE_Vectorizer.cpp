//
// Created by rouzbeh on 7/25/22.
//

#include "SVE_Vectorizer.h"
#include "math.h"
#include "llvm/Analysis/ScalarEvolution.h"
#include "llvm/Analysis/ScalarEvolutionExpressions.h"

#include <utility>
#include <stack>

/**
 *  Assumption: Input IR for loop body is in following form
 *
 *                          decision
 *                            /   \
 *                          /       \
 *                        /           \
 *                       block         \
 *                        \           /
 *                         \        /
 *                          \     /
 *                          decision
 *                            /   \
 *                          /       \
 *                        /           \
 *                       block         \
 *                        \           /
 *                         \        /
 *                          \     /
 *                            ...
 *                            ...
 *                            ...
 *                           latch
 *
 */

// TODO: What if trip count is NOT a multiple of vscale * VFactor ???

void SVE_Vectorizer::doVectorization() {

    BasicBlock *preheader = L->getLoopPreheader();
    BasicBlock *latch = L->getLoopLatch();
    BasicBlock *exitBlock = L->getExitBlock();
    PHINode *inductionVar = L->getCanonicalInductionVariable();

    // computing TripCount;
    computeTripCount(latch, inductionVar);


    // create vectorizingBlock
    BasicBlock *vectorizingBlock = createVectorizingBlock();

    // form a block for the case where there are not enough iterations
    BasicBlock *preVectorizationBlock = createPreVectorizationBlock(vectorizingBlock);

    BasicBlock *preHeaderForRemaining = createPreheaderForRemainingIterations();

    //create block for after execution of vectorizing block
    BasicBlock *middleBlock = BasicBlock::Create(L->getHeader()->getContext(), "middle.block",
                                                 L->getHeader()->getParent(),
                                                 preVectorizationBlock);
    L->addBasicBlockToLoop(middleBlock, *LI);

    // in preheader, check if there are enough iterations for a vector
    refinePreheader(preVectorizationBlock, preHeaderForRemaining);


    auto *values = fillPreVecBlock(preVectorizationBlock, preheader, vectorizingBlock);
    fillVectorizingBlock(vectorizingBlock, preVectorizationBlock, preHeaderForRemaining, exitBlock, middleBlock,
                         values,
                         dyn_cast<Value>(inductionVar));


}


bool SVE_Vectorizer::is_a_condition_block(BasicBlock *block) {
    Instruction *terminator = block->getTerminator();

    if (!isa<BranchInst>(terminator)) {
        // TODO: raise error
    }

    auto *brInstr = dyn_cast<BranchInst>(terminator);

    return brInstr->isConditional();
}

void SVE_Vectorizer::refinePreheader(BasicBlock *preVecBlock, BasicBlock *preHeaderForRemaining) {

    BasicBlock *preheader = L->getLoopPreheader();
    Instruction *insertionPoint = preheader->getTerminator();
    IRBuilder<> IRB(insertionPoint);


    //get current vscale
    Value *stepVal = nullptr;

    if (tripCount->getType() == Type::getInt64Ty(preheader->getContext())) {
        stepVal = intrinsicCallGenerator->createVscale64Intrinsic(IRB);
    } else {
        stepVal = intrinsicCallGenerator->createVscale32Intrinsic(IRB);
    }

    // check if there are iterations
    Value *condition = IRB.CreateICmpUGE(tripCount, stepVal); // if true, there are enough iterations

    IRB.CreateCondBr(condition, preVecBlock, preHeaderForRemaining);

    // remove previous terminator
    preheader->getTerminator()->eraseFromParent();


}


void SVE_Vectorizer::computeTripCount(BasicBlock *latch, Value *inductionVar) {
    auto *brIns = dyn_cast<BranchInst>(latch->getTerminator());
    auto *conditionInst = dyn_cast<Instruction>(brIns->getCondition());

    // one of the operands is the induction var and the other one is trip count
    for (int i = 0; i < conditionInst->getNumOperands(); ++i) {
        bool flag = false;
        for (auto user: inductionVar->users()) {
            if (user == conditionInst->getOperand(i)) {
                flag = true;
            }
        }
        if (flag) {
            continue;
        } else {
            tripCount = conditionInst->getOperand(i);
            return;
        }
    }
}

// TODO: complete implementation
BasicBlock *SVE_Vectorizer::createPreVectorizationBlock(BasicBlock *vectorizingBlock) {
    BasicBlock *block = BasicBlock::Create(L->getHeader()->getContext(), "Pre.Vectorization",
                                           L->getHeader()->getParent(),
                                           vectorizingBlock);


    // for now, it branches to exiting block
    BranchInst::Create(vectorizingBlock, block);

    L->addBasicBlockToLoop(block, *LI);

    return block;
}

// only contains a phi instruction for induction variable
BasicBlock *SVE_Vectorizer::createPreheaderForRemainingIterations() {
    BasicBlock *block = BasicBlock::Create(L->getHeader()->getContext(), "Preheader.for.remaining.iterations",
                                           L->getHeader()->getParent(),
                                           L->getLoopLatch());
    // branch to loop header
    BranchInst::Create(L->getHeader(), block);

    //add to loop
    L->addBasicBlockToLoop(block, *LI);

    auto *headerPHi = dyn_cast<PHINode>(
            &L->getHeader()->getInstList().front()); // TODO: what if there are other phi nodes?

    //add PHI Node
    PHINode *inductionVar = PHINode::Create(headerPHi->getType(), 2, "", block->getTerminator());
    Constant *contZero = llvm::ConstantInt::get(headerPHi->getType(), 0);
    inductionVar->addIncoming(contZero, L->getLoopPreheader());


    // refine phi Node in the header associated with induction var
    headerPHi->addIncoming(inductionVar, block);
    headerPHi->removeIncomingValue(L->getLoopPreheader(), false);

    return block;
}

BasicBlock *SVE_Vectorizer::createVectorizingBlock() {
    BasicBlock *block = BasicBlock::Create(L->getHeader()->getContext(), "vectorizing.block",
                                           L->getHeader()->getParent(),
                                           L->getLoopLatch());

    // temporary terminator
    BranchInst::Create(block, block);

    L->addBasicBlockToLoop(block, *LI);
    return block;
}

std::vector<Value *> *
SVE_Vectorizer::fillPreVecBlock(BasicBlock *preVecBlock, BasicBlock *preheader, BasicBlock *vectorizingBlock) {

    auto *results = new std::vector<Value *>;

    Instruction *insertionPoint = preVecBlock->getTerminator();
    IRBuilder<> builder(insertionPoint);

    // create the value by which the index should be increased
    //TODO: we assume indices are added by one, make it work for other cases as well
    //should be added by vscale * VFactor * 1  ----> vscale shl log(VFactor)

    // create step vector
    Value *stepVec = nullptr;
    Value *stepVal = nullptr;

    if (tripCount->getType() == Type::getInt64Ty(preheader->getContext())) {
        stepVal = intrinsicCallGenerator->createVscale64Intrinsic(builder);
        stepVec = intrinsicCallGenerator->createStepVector64Intrinsic(builder, "step.vec");
    } else {
        stepVal = intrinsicCallGenerator->createVscale32Intrinsic(builder);
        stepVec = intrinsicCallGenerator->createStepVector32Intrinsic(builder, "step.vec");
    }

    // vectorizing block termination condition: index > n - (n % stepValue)
    // forming n - (n % stepValue)

    Value *remResult = builder.CreateURem(tripCount, stepVal);
    Value *totalVecIterations = builder.CreateSub(tripCount, remResult, "total.iterations.to.be.vectorized");

    // create vector by which step vector should be updated
    Value *stepVecUpdateValues = createVectorOfConstants(stepVal, insertionPoint, "stepVector.update.values");

    results->push_back(stepVec);
    results->push_back(stepVal);
    results->push_back(stepVecUpdateValues);
    results->push_back(totalVecIterations);
    results->push_back(remResult);

    return results;
}

void SVE_Vectorizer::fillVectorizingBlock(BasicBlock *vectorizingBlock, BasicBlock *preVec,
                                          BasicBlock *preheaderForRemainingIterations,
                                          BasicBlock *exitBlock,
                                          BasicBlock *middleBlock,
                                          std::vector<Value *> *initialValues,
                                          Value *inductionVar) {


    Instruction *insertionPoint = vectorizingBlock->getTerminator();
    IRBuilder<> builder(vectorizingBlock->getContext());
    builder.SetInsertPoint(insertionPoint);

    // create phi node for loop index
    Type *indexUpdatedValueType = (*initialValues)[1]->getType();   // it's the same as tripcount size
    Constant *contZero = llvm::ConstantInt::get(indexUpdatedValueType, 0);
    PHINode *indexVarPHI = PHINode::Create(indexUpdatedValueType, 2, "", insertionPoint);
    indexVarPHI->addIncoming(contZero, preVec);


    // create phi for step vector
    Value *&stepVecInPrevBlock = (*initialValues)[0];
    PHINode *stepVecPhi = PHINode::Create(stepVecInPrevBlock->getType(), 2, "", insertionPoint);
    stepVecPhi->addIncoming(stepVecInPrevBlock, preVec);


    //// vectorizing header and then bodies /////
    BasicBlock *targetedBlock = findTargetedBlock();
    // predicates come from header (decision block)
    std::map<const Value *, const Value *> *headerInstructionsMap = nullptr;
    Value *predicates = formPredicateVector(insertionPoint, L->getHeader(), vectorizingBlock, targetedBlock, stepVecPhi,
                                            inductionVar,
                                            indexVarPHI, &headerInstructionsMap);

    // add vectorized instruction of then body
    vectorizeTargetedBlockInstructions(vectorizingBlock, targetedBlock, stepVecPhi, inductionVar, indexVarPHI,
                                       predicates, headerInstructionsMap);



    // update index
    Value *stepValue = (*initialValues)[1];
    Value *updatedIndex = builder.CreateAdd(stepValue, indexVarPHI);
    indexVarPHI->addIncoming(updatedIndex, vectorizingBlock);



    //updated step vector
    Value *stepVecUpdateValues = (*initialValues)[2];
    Value *updatedStepVec = builder.CreateAdd(stepVecPhi, stepVecUpdateValues);
    stepVecPhi->addIncoming(updatedStepVec, vectorizingBlock);


    // vectorizing block termination condition: index > n - (n % stepValue)
    Value *totalVecIterations = (*initialValues)[3];
    Value *condition = builder.CreateICmpUGE(updatedIndex, totalVecIterations, "terminate.condition");

    // remove previous terminator and create branch instruction
    vectorizingBlock->getTerminator()->eraseFromParent();
    BranchInst::Create(middleBlock, vectorizingBlock, condition, vectorizingBlock);

    Value *remResult = (*initialValues)[4];
    fillMiddleBlock(middleBlock, preheaderForRemainingIterations, exitBlock, remResult);

    // fix PHI node in preHeaderForRemaining
    refinePreHeaderForRemaining(preheaderForRemainingIterations, middleBlock, updatedIndex);

}

// TODO: Assumption: there is 1 (for inductionVar) or 0 PHI nodes in the decision block
// TODO: Isn't it the case that limits ALC which Ehsan mentioned(dependency between blocks)?

Value *
SVE_Vectorizer::formPredicateVector(Instruction *insertionPoint, BasicBlock *decisionBlock,
                                    BasicBlock *vectorizingBlock, BasicBlock *targetedBlock, PHINode *stepVecPhi,
                                    Value *inductionVar,
                                    Value *indexVar, std::map<const Value *, const Value *> **outputVMap) {


    IRBuilder<> builder(decisionBlock->getContext());
    builder.SetInsertPoint(insertionPoint);
    llvm::ValueToValueMapTy vMap;
    // first copy instruction into vectorizing Block, then vectorize them
    std::vector<Instruction *> clonedInstructions;

    for (auto &instr: decisionBlock->getInstList()) {
        if (&instr == decisionBlock->getTerminator()) {
            break;
        }
        if (isa<PHINode>(&instr)) {
            continue;
        }
        if (isa<DbgInfoIntrinsic>(&instr)) {
            continue;
        }

        Instruction *clonedInstr = instr.clone();
        clonedInstr->insertBefore(vectorizingBlock->getTerminator());
        vMap[&instr] = clonedInstr;
        clonedInstructions.push_back(clonedInstr);

        for (auto &cloned_instr: clonedInstructions) {
            llvm::RemapInstruction(cloned_instr, vMap, RF_NoModuleLevelChanges | RF_IgnoreMissingLocals);
        }

    }

    std::map<const Value *, const Value *> *headerInstrunctionsMap = vectorizeInstructions_nonePredicated(
            &clonedInstructions,
            vectorizingBlock,
            stepVecPhi, inductionVar,
            indexVar, vMap);

    // output map
    (*outputVMap) = headerInstrunctionsMap;

    // TODO: find a better way to find the predicate vector
    auto *predicateVec = dyn_cast<Value>(vectorizingBlock->getTerminator()->getPrevNonDebugInstruction());

    // find if we should negate the predicates
    auto *brInstr = dyn_cast<BranchInst>(decisionBlock->getTerminator());
    BasicBlock *branchTrueTarget = brInstr->getSuccessor(0);

    if (branchTrueTarget != targetedBlock) {  // should negate
        predicateVec = builder.CreateNot(predicateVec, "negated.vector");
    }


    return predicateVec;
}


// TODO: how to vectorize this code?: t = a[i] + b[i]
//                                     ... = t * ...
void SVE_Vectorizer::vectorizeTargetedBlockInstructions(BasicBlock *vectorizingBlock, BasicBlock *targetedBlock,
                                                        PHINode *stepVec, Value *inductionVar, Value *indexVar,
                                                        Value *predicates,
                                                        std::map<const Value *, const Value *> *headerInstructionsMap) {


    IRBuilder<> builder(vectorizingBlock->getContext());
    builder.SetInsertPoint(vectorizingBlock->getTerminator());

    // first copy instruction into vectorizing Block, then vectorize them
    std::vector<Instruction *> clonedInstructions;
    std::vector<Instruction *> instructions;
    llvm::ValueToValueMapTy vMap;
    for (auto &instr: targetedBlock->getInstList()) {
        if (&instr == targetedBlock->getTerminator()) {
            break;
        }

        if (isa<PHINode>(&instr) || isa<DbgInfoIntrinsic>(&instr)) {
            continue;
        }

        Instruction *clonedInstr = instr.clone();
        clonedInstr->insertBefore(vectorizingBlock->getTerminator());
        vMap[&instr] = clonedInstr;
        clonedInstructions.push_back(clonedInstr);

        for (auto &cloned_instr: clonedInstructions) {
            llvm::RemapInstruction(cloned_instr, vMap, RF_NoModuleLevelChanges | RF_IgnoreMissingLocals);
        }

    }

    vectorizeInstructions_Predicated(&clonedInstructions, vectorizingBlock, stepVec, inductionVar, indexVar,
                                     predicates, headerInstructionsMap);

}

void SVE_Vectorizer::fillMiddleBlock(BasicBlock *middleBlock, BasicBlock *preheader, BasicBlock *exitBlock,
                                     Value *remResult) {

    IRBuilder<> builder(preheader->getContext());
    builder.SetInsertPoint(middleBlock);

    Constant *constZero = ConstantInt::get(remResult->getType(), 0, false);
    Value *condition = builder.CreateICmpEQ(remResult, constZero, "condition");


    BranchInst::Create(exitBlock, preheader, condition, middleBlock);

}


void
SVE_Vectorizer::refinePreHeaderForRemaining(BasicBlock *preHeaderForRemaining, BasicBlock *middleBlock, Value *value) {
    IRBuilder<> builder(middleBlock->getContext());
    builder.SetInsertPoint(middleBlock->getTerminator());

    // The first instruction is a phi node
    auto *phiNode = dyn_cast<PHINode>(&preHeaderForRemaining->getInstList().front());

    // one is i32 the other is i64
    if (value->getType() != phiNode->getType()) {
        value = builder.CreateCast(Instruction::CastOps::ZExt, value, phiNode->getType());

    }

    phiNode->addIncoming(value, middleBlock);
}

std::map<const Value *, const Value *> *
SVE_Vectorizer::vectorizeInstructions_nonePredicated(std::vector<Instruction *> *instructions, BasicBlock *block,
                                                     Value *stepVector, Value *inductionVar, Value *indexVar,
                                                     ValueToValueMapTy &inputMap) {
    Instruction *insertionPoint = block->getTerminator();
    IRBuilder<> builder(block->getContext());
    builder.SetInsertPoint(insertionPoint);


    auto outputMap = new std::map<const Value *, const Value *>;
    ValueToValueMapTy vMap;
    // Should be remove in FILO manner to prevent removing a value that is used in following lines
    std::stack<Instruction *> toBeRemoved;

    // TODO: Complete the list
    for (auto instr: *instructions) {

        if (isa<GEPOperator>(instr)) {
            for (int i = 0; i < instr->getNumOperands(); ++i) {
                if (instr->getOperand(i)->getName() == inductionVar->getName()) {  // TODO: ??????
                    instr->setOperand(i, indexVar);
                }
            }

        } else if (isa<StoreInst>(instr)) {
            auto storeInstr = dyn_cast<StoreInst>(instr);
            // it's the value to be stored
            Value *firstOp = nullptr;
            if (vMap.count(storeInstr->getOperand(0))) {
                firstOp = vMap[storeInstr->getOperand(0)];
            } else if (storeInstr->getOperand(0)->getName() == inductionVar->getName()) {
                firstOp = stepVector;
            } else {
                // it's constant
                auto *constValue = dyn_cast<Constant>(storeInstr->getOperand(0));
                firstOp = createVectorOfConstants(constValue, insertionPoint, "store.values");
                // TODO: is there any other case ?
            }
            auto ptr = dyn_cast<GEPOperator>(instr->getOperand(1));
            builder.CreateStore(firstOp, ptr);
            toBeRemoved.push(instr);
        } else if (isa<LoadInst>(instr)) {

            auto ptr = dyn_cast<GEPOperator>(instr->getOperand(0));
            Type *elementType = instr->getType();
            LoadInst *loadedData = builder.CreateLoad(VectorType::get(elementType, vectorizationFactor, true), ptr);
            vMap[instr] = loadedData;
            toBeRemoved.push(instr);

        } else if (isa<BinaryOperator>(instr) || isa<ICmpInst>(instr)) { // TODO: ICmp is not binary????

            Value *firstOp = nullptr;
            Value *secondOp = nullptr;
            if (vMap.count(instr->getOperand(0))) {
                firstOp = vMap[instr->getOperand(0)];
            } else if (instr->getOperand(0)->getName() == inductionVar->getName()) {  // TODO: is it safe?
                firstOp = stepVector;
            } else {
                auto *constValue = dyn_cast<Constant>(instr->getOperand(0));
                firstOp = createVectorOfConstants(constValue, insertionPoint, "first.operand");
            }

            if (vMap.count(instr->getOperand(1))) {
                secondOp = vMap[instr->getOperand(1)];
            } else if (instr->getOperand(1)->getName() == inductionVar->getName()) {
                secondOp = stepVector;
            } else {
                auto *constValue = dyn_cast<Constant>(instr->getOperand(1));
                secondOp = createVectorOfConstants(constValue, insertionPoint, "second.operand");
            }

            Value *result = nullptr;
            switch (instr->getOpcode()) {
                case Instruction::Add:
                    result = builder.CreateAdd(firstOp, secondOp);
                    break;
                case Instruction::Mul:
                    result = builder.CreateMul(firstOp, secondOp);
                    break;
                case Instruction::SDiv:
                    result = builder.CreateSDiv(firstOp, secondOp);
                    break;
                case Instruction::URem:
                    result = builder.CreateURem(firstOp, secondOp);
                    break;
                case Instruction::And:
                    result = builder.CreateAnd(firstOp, secondOp);
                    break;
                case Instruction::Shl:
                    result = builder.CreateShl(firstOp, secondOp);
                    break;
                case Instruction::ICmp: {
                    switch (dyn_cast<ICmpInst>(instr)->getPredicate()) {
                        // TODO: handle other cases
                        case CmpInst::FCMP_FALSE:
                            break;
                        case CmpInst::FCMP_OEQ:
                            break;
                        case CmpInst::FCMP_OGT:
                            break;
                        case CmpInst::FCMP_OGE:
                            break;
                        case CmpInst::FCMP_OLT:
                            break;
                        case CmpInst::FCMP_OLE:
                            break;
                        case CmpInst::FCMP_ONE:
                            break;
                        case CmpInst::FCMP_ORD:
                            break;
                        case CmpInst::FCMP_UNO:
                            break;
                        case CmpInst::FCMP_UEQ:
                            break;
                        case CmpInst::FCMP_UGT:
                            break;
                        case CmpInst::FCMP_UGE:
                            break;
                        case CmpInst::FCMP_ULT:
                            break;
                        case CmpInst::FCMP_ULE:
                            break;
                        case CmpInst::FCMP_UNE:
                            break;
                        case CmpInst::FCMP_TRUE:
                            break;
                        case CmpInst::BAD_FCMP_PREDICATE:
                            break;
                        case CmpInst::ICMP_EQ: {
                            Value *ICmpInst = builder.CreateICmpEQ(firstOp, secondOp);

                            CastInst *truncInst = TruncInst::Create(Instruction::CastOps::BitCast, ICmpInst,
                                                                    VectorType::get(
                                                                            Type::getInt1Ty(block->getContext()),
                                                                            vectorizationFactor, true), "",
                                                                    insertionPoint);
                            result = dyn_cast<Value>(truncInst);
                            break;
                        }
                        case CmpInst::ICMP_NE:
                            break;
                        case CmpInst::ICMP_UGT:
                            break;
                        case CmpInst::ICMP_UGE:
                            break;
                        case CmpInst::ICMP_ULT:
                            break;
                        case CmpInst::ICMP_ULE:
                            break;
                        case CmpInst::ICMP_SGT: {
                            Value *ICmpInst = builder.CreateICmpSGT(firstOp, secondOp);
                            result = dyn_cast<Value>(ICmpInst);
                            break;
                        }
                        case CmpInst::ICMP_SGE:
                            break;
                        case CmpInst::ICMP_SLT:
                            break;
                        case CmpInst::ICMP_SLE:
                            break;
                        case CmpInst::BAD_ICMP_PREDICATE:
                            break;
                    }
                }
            }


            vMap[instr] = result;
            toBeRemoved.push(instr);
        }
    }

    // make a mapping between the original instructions in decision block and corresponding vectorized ones
    // inputMap contains  originalInstructions mapped to cloned instructions
    // vMap contains  cloned instructions mapped to vectorized ones
    for (auto inputMapRecord: inputMap) {
        for (auto vMapRecord: vMap) {
            if (inputMapRecord.second == vMapRecord.first) {
                outputMap->insert({inputMapRecord.first, vMapRecord.second});
            }
        }

        // Get Element Pointers in decision block might be used in vectorization block, so we should add them as well
        if (isa<GEPOperator>(inputMapRecord.first)) {
            outputMap->insert({inputMapRecord.first, inputMapRecord.second});
        }
    }


    while (!toBeRemoved.empty()) {
        toBeRemoved.top()->eraseFromParent();
        toBeRemoved.pop();
    }


    return outputMap;

}

Value *SVE_Vectorizer::createVectorOfConstants(Value *value, Instruction *insertionPoint, std::string name) {

    IRBuilder<> builder(insertionPoint->getContext());
    builder.SetInsertPoint(insertionPoint);

    auto *vecType = VectorType::get(value->getType(), vectorizationFactor, true);
    auto poisonVec = PoisonValue::get(vecType);
    u_int64_t indexZero = 0;
    Value *splatInsert = builder.CreateInsertElement(poisonVec, value, indexZero);

    ConstantAggregateZero *zeroInitializer = ConstantAggregateZero::get(vecType);

    return builder.CreateShuffleVector(splatInsert, poisonVec, zeroInitializer, name);
}


// TODO: what if the operand was defined in another block?
void SVE_Vectorizer::vectorizeInstructions_Predicated(std::vector<Instruction *> *instructions, BasicBlock *block,
                                                      Value *stepVector, Value *inductionVar, Value *indexVar,
                                                      Value *predicates,
                                                      std::map<const Value *, const Value *> *headerInstructionsMap) {

    Instruction *insertionPoint = block->getTerminator();
    IRBuilder<> IRB(insertionPoint);


    std::map<Value *, Value *> vMap;

    // initialize vMap with headerInstructionsMap
    for (auto pair: *headerInstructionsMap) {
        vMap[(Value *) pair.first] = (Value *) pair.second;
    }


    // Should be remove in FILO manner to prevent removing a value that is used in following lines
    std::stack<Instruction *> toBeRemoved;

    // TODO: Complete the list
    for (auto instr: *instructions) {

        instr->print(outs());
        llvm::outs() << "\n";

        if (isa<GEPOperator>(instr)) {
            for (int i = 0; i < instr->getNumOperands(); ++i) {
                if (instr->getOperand(i)->getName() == inductionVar->getName()) {  // TODO: ??????
                    instr->setOperand(i, indexVar);
                }
            }
        } else if (isa<StoreInst>(instr)) {
            auto storeInstr = dyn_cast<StoreInst>(instr);
            // it's the value to be stored
            Value *firstOp = nullptr;
            if (vMap.count(storeInstr->getOperand(0))) {
                firstOp = vMap[storeInstr->getOperand(0)];
            } else if (storeInstr->getOperand(0)->getName() == inductionVar->getName()) {
                firstOp = stepVector;
            } else {
                // it's constant
                auto *constValue = dyn_cast<Constant>(storeInstr->getOperand(0));
                firstOp = createVectorOfConstants(constValue, insertionPoint, "store.values");
                // TODO: is there any other case ?
            }
            auto ptr = instr->getOperand(1);
            if (vMap.count(ptr)) {
                ptr = vMap[ptr];
            }
            intrinsicCallGenerator->createStoreInstruction(IRB, firstOp, ptr, predicates);
            toBeRemoved.push(instr);
        } else if (isa<LoadInst>(instr)) {

            auto ptr = instr->getOperand(0);
            if (vMap.count(ptr)) {
                ptr = vMap[ptr];
            }
            auto *loadedData = dyn_cast<Value>(
                    intrinsicCallGenerator->createLoadInstruction(IRB, ptr, predicates));
            vMap[instr] = loadedData;
            toBeRemoved.push(instr);
        } else if (isa<BinaryOperator>(instr) || isa<ICmpInst>(instr)) { // TODO: ICmp is not binary????

            Value *firstOp = nullptr;
            Value *secondOp = nullptr;
            if (vMap.count(instr->getOperand(0))) {
                firstOp = vMap[instr->getOperand(0)];
            } else if (instr->getOperand(0)->getName() == inductionVar->getName()) {  // TODO: is it safe?
                firstOp = stepVector;
            } else {
                auto *constValue = dyn_cast<Constant>(instr->getOperand(0));
                firstOp = createVectorOfConstants(constValue, insertionPoint, "first.operand");
            }

            if (vMap.count(instr->getOperand(1))) {
                secondOp = vMap[instr->getOperand(1)];
            } else if (instr->getOperand(1)->getName() == inductionVar->getName()) {
                secondOp = stepVector;
            } else {
                auto *constValue = dyn_cast<Constant>(instr->getOperand(1));
                secondOp = createVectorOfConstants(constValue, insertionPoint, "second.operand");
            }

            Value *result = nullptr;
            switch (instr->getOpcode()) {
                case Instruction::Add:
                    result = IRB.CreateAdd(firstOp, secondOp);
                    break;
                case Instruction::Mul:
                    result = IRB.CreateMul(firstOp, secondOp);
                    break;
                case Instruction::Sub:
                    result = IRB.CreateSub(firstOp, secondOp);
                    break;
                case Instruction::SDiv:
                    result = IRB.CreateSDiv(firstOp, secondOp);
                    break;
                case Instruction::URem:
                    // TODO
                    break;
                case Instruction::And:
                    // TODO
                    break;
                case Instruction::Shl:
                    result = IRB.CreateShl(firstOp, secondOp);
                    break;
                case Instruction::ICmp: {
                    switch (dyn_cast<ICmpInst>(instr)->getPredicate()) {
                        // TODO: handle other cases
                        case CmpInst::FCMP_FALSE:
                            break;
                        case CmpInst::FCMP_OEQ:
                            break;
                        case CmpInst::FCMP_OGT:
                            break;
                        case CmpInst::FCMP_OGE:
                            break;
                        case CmpInst::FCMP_OLT:
                            break;
                        case CmpInst::FCMP_OLE:
                            break;
                        case CmpInst::FCMP_ONE:
                            break;
                        case CmpInst::FCMP_ORD:
                            break;
                        case CmpInst::FCMP_UNO:
                            break;
                        case CmpInst::FCMP_UEQ:
                            break;
                        case CmpInst::FCMP_UGT:
                            break;
                        case CmpInst::FCMP_UGE:
                            break;
                        case CmpInst::FCMP_ULT:
                            break;
                        case CmpInst::FCMP_ULE:
                            break;
                        case CmpInst::FCMP_UNE:
                            break;
                        case CmpInst::FCMP_TRUE:
                            break;
                        case CmpInst::BAD_FCMP_PREDICATE:
                            break;
                        case CmpInst::ICMP_EQ: {
                            // TODO
                            break;
                        }
                        case CmpInst::ICMP_NE:
                            break;
                        case CmpInst::ICMP_UGT:
                            break;
                        case CmpInst::ICMP_UGE:
                            break;
                        case CmpInst::ICMP_ULT:
                            break;
                        case CmpInst::ICMP_ULE:
                            break;
                        case CmpInst::ICMP_SGT:
                            break;
                        case CmpInst::ICMP_SGE:
                            break;
                        case CmpInst::ICMP_SLT:
                            break;
                        case CmpInst::ICMP_SLE:
                            break;
                        case CmpInst::BAD_ICMP_PREDICATE:
                            break;
                    }
                }
            }

            vMap[instr] = result;
            toBeRemoved.push(instr);

        }
    }

    while (!toBeRemoved.empty()) {
        toBeRemoved.top()->eraseFromParent();
        toBeRemoved.pop();
    }


}

BasicBlock *SVE_Vectorizer::findTargetedBlock() {
    // TODO: make a complete analysis

    for (auto succ: successors(L->getHeader())) {
        if (succ->getSingleSuccessor() != L->getLoopLatch()) {
            return succ;
        }
    }

    return nullptr;
}

SVE_Vectorizer::SVE_Vectorizer(Loop *l, int vectorizationFactor, LoopStandardAnalysisResults &analysisResults) : L(l),
                                                                                                                 vectorizationFactor(
                                                                                                                         vectorizationFactor),
                                                                                                                 AR(analysisResults) {
    module = l->getHeader()->getModule();
    LI = &AR.LI;
    SE = &AR.SE;
    intrinsicCallGenerator = new IntrinsicCallGenerator(vectorizationFactor, module);

}



