//
// Created by rouzbeh on 7/25/22.
//

#include "SVE_Vectorizer.h"
#include "math.h"

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
    PHINode *inductionVar = L->getCanonicalInductionVariable();
    Type *inductionVarType = inductionVar->getType();


    // create vectorizingBlock
    BasicBlock *vectorizingBlock = createVectorizingBlock();

    // form a block for the case where there are not enough iterations
    BasicBlock *preVectorizationBlock = createPreVectorizationBlock(vectorizingBlock);

    BasicBlock *preHeaderForRemaining = createPreheaderForRemainingIterations();

    // in preheader, check if there are enough iterations for a vector
    refinePreheader(preVectorizationBlock, preHeaderForRemaining);

    auto *values = fillPreVecBlock(preVectorizationBlock, preheader, vectorizingBlock);
    fillVectorizingBlock(vectorizingBlock, preVectorizationBlock, inductionVarType, values,
                         dyn_cast<Value>(inductionVar));

}


void SVE_Vectorizer::vectorizeBlock(BasicBlock *block, Value *predicateVector) {
    std::map<Value *, Value *> vMap;


    // Should be remove in FILO manner to prevent removing a value that is used in following lines
    std::stack<Instruction *> toBeRemoved;
    Instruction *insertionPoint = block->getTerminator();

    // TODO: Is there any case we could have PHI?
    // TODO: Complete the list
    // TODO: handle binary operation for doubles
    for (auto &instr: block->getInstList()) {
        if (isa<GEPOperator>(instr)) {
            continue;
        } else if (isa<StoreInst>(instr)) {
            auto storeInstr = dyn_cast<StoreInst>(&instr);
            // it's the value to be stored
            Value *firstOp = nullptr;
            if (vMap.count(storeInstr->getOperand(0))) {
                firstOp = vMap[storeInstr->getOperand(0)];
            } else {
                // TODO: can this happen?
            }
            auto ptr = dyn_cast<GEPOperator>(instr.getOperand(1));
            intrinsicCallGenerator->createStoreInstruction(insertionPoint, firstOp, ptr, predicateVector);
            toBeRemoved.push(&instr);
        } else if (isa<LoadInst>(instr)) {
            auto loadInstr = dyn_cast<LoadInst>(&instr);

            auto ptr = dyn_cast<GEPOperator>(instr.getOperand(0));
            CallInst *loadedData = intrinsicCallGenerator->createLoadInstruction(insertionPoint, ptr, predicateVector);
            vMap[&instr] = loadedData;
            toBeRemoved.push(&instr);
        } else if (isa<BinaryOperator>(instr)) {
            if (isa<MulOperator>(instr)) {
                Value *firstOp = nullptr;
                Value *secondOp = nullptr;
                if (vMap.count(instr.getOperand(0))) {
                    firstOp = vMap[instr.getOperand(0)];
                } else {
                    //TODO: ?????
                }

                if (vMap.count(instr.getOperand(1))) {
                    secondOp = vMap[instr.getOperand(1)];
                } else {
                    //TODO: ?????
                }
                auto intrinsic = Intrinsic::aarch64_sve_mul;
                CallInst *multResult = intrinsicCallGenerator->createArithmeticInstruction(insertionPoint, intrinsic,
                                                                                           firstOp, secondOp,
                                                                                           predicateVector);
                vMap[&instr] = multResult;
                toBeRemoved.push(&instr);
            }
        }
    }

    while (!toBeRemoved.empty()) {
        toBeRemoved.top()->eraseFromParent();
        toBeRemoved.pop();
    }
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
    IRBuilder<> builder(preheader->getContext());
    builder.SetInsertPoint(insertionPoint);

    auto tripCount = dyn_cast<Value>(getTripCountInPreheader(preheader));

    //get current vscale
    CallInst *vscale = intrinsicCallGenerator->createVscale64Intrinsic(insertionPoint);

    // check if there are iterations
    ConstantInt *shiftOp = llvm::ConstantInt::get(Type::getInt64Ty(preheader->getContext()),
                                                  int(log2(vectorizationFactor)));
    Value *shiftValue = builder.CreateShl(vscale, shiftOp);
    Value *condition = builder.CreateICmpUGE(tripCount, shiftValue); // if true, there are enough iterations

    // if true must jump to the previous destination of preheader
    auto *remainingIterationsBlock = dyn_cast<BasicBlock>(dyn_cast<BranchInst>(preheader->getTerminator())->getOperand(
            0));   // TODO: what if it's conditional??

    builder.CreateCondBr(condition, preVecBlock, preHeaderForRemaining);

    // remove previous terminator
    preheader->getTerminator()->eraseFromParent();


}


Instruction *SVE_Vectorizer::getTripCountInPreheader(BasicBlock *preheader) {

    // TODO: find  more reliable way...
    for (auto &instr: preheader->getInstList()) {
        if (isa<ZExtInst>(instr)) {
            return &instr;
        }
    }
    return nullptr;
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
    IRBuilder<> builder(preheader->getContext());
    builder.SetInsertPoint(insertionPoint);


    // create step vector
    CallInst *stepVec = intrinsicCallGenerator->createStepVector64Intrinsic(insertionPoint);

    // create the value by which the index should be increased
    //TODO: we assume indices are added by one, make it work for other cases as well
    //should be added by vscale * VFactor * 1  ----> vscale shl log(VFactor)

    CallInst *vscale = intrinsicCallGenerator->createVscale64Intrinsic(insertionPoint);
    ConstantInt *shiftOp = llvm::ConstantInt::get(Type::getInt64Ty(preheader->getContext()),
                                                  int(log2(vectorizationFactor)));
    Value *indexUpdateValue = builder.CreateShl(vscale, shiftOp);

    // create vector by which step vector should be updated
    Value *stepVecUpdateValues = createVectorOfConstants(indexUpdateValue, insertionPoint, "stepVector.update.values");

    results->push_back(stepVec);
    results->push_back(indexUpdateValue);
    results->push_back(stepVecUpdateValues);

    return results;
}

void SVE_Vectorizer::fillVectorizingBlock(BasicBlock *vectorizingBlock, BasicBlock *preVec, Type *indexVarType,
                                          std::vector<Value *> *initialValues,
                                          Value *inductionVar) {

    Instruction *insertionPoint = vectorizingBlock->getTerminator();
    IRBuilder<> builder(vectorizingBlock->getContext());
    builder.SetInsertPoint(insertionPoint);

    // create phi node for loop index
    Constant *contZero = llvm::ConstantInt::get(indexVarType, 0);
    PHINode *indexVarPHI = PHINode::Create(indexVarType, 2, "", insertionPoint);
    indexVarPHI->addIncoming(contZero, preVec);


    // create phi for step vector
    Value *&stepVecInPrevBlock = (*initialValues)[0];
    PHINode *stepVecPhi = PHINode::Create(stepVecInPrevBlock->getType(), 2, "", insertionPoint);
    stepVecPhi->addIncoming(stepVecInPrevBlock, preVec);


    //// vectorizing header and then bodies /////

    // predicates come from header (decision block)
    formPredicateVector(insertionPoint, L->getHeader(), vectorizingBlock, stepVecPhi, inductionVar);



    // update index 
    Value *addOp = (*initialValues)[1];
    Value *updatedIndex = builder.CreateAdd(addOp, indexVarPHI);
    indexVarPHI->addIncoming(updatedIndex, vectorizingBlock);

    //updated step vector
    Value *stepVecUpdateValues = (*initialValues)[2];
    Value *updatedStepVec = builder.CreateAdd(stepVecPhi, stepVecUpdateValues);
    stepVecPhi->addIncoming(updatedStepVec, vectorizingBlock);

}

// TODO: Assumption: there is 1 (for inductionVar) or 0 PHI nodes in the decision block
// TODO: Isn't it the case that limits ALC which Ehsan mentioned(dependency between blocks)?

Value *
SVE_Vectorizer::formPredicateVector(Instruction *insertionPoint, BasicBlock *decisionBlock,
                                    BasicBlock *vectorizingBlock, PHINode *stepVecPhi, Value *inductionVar) {
    IRBuilder<> builder(decisionBlock->getContext());
    builder.SetInsertPoint(insertionPoint);

    // first copy instruction into vectorizing Block, then vectorize them
    llvm::ValueToValueMapTy vMap;
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
    vectorizeInstructions_nonePredicated(&clonedInstructions, vectorizingBlock, stepVecPhi, inductionVar);
    return nullptr;
}


void SVE_Vectorizer::vectorizeInstructions_nonePredicated(std::vector<Instruction *> *instructions, BasicBlock *block,
                                                          Value *stepVector, Value *inductionVar) {
    Instruction *insertionPoint = block->getTerminator();
    IRBuilder<> builder(block->getContext());
    builder.SetInsertPoint(insertionPoint);


    std::map<Value *, Value *> vMap;
    // Should be remove in FILO manner to prevent removing a value that is used in following lines
    std::stack<Instruction *> toBeRemoved;

    // TODO: Complete the list
    for (auto instr: *instructions) {

        if (isa<GEPOperator>(instr)) {
            continue;
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
            LoadInst *loadedData = builder.CreateLoad(instr->getType(), ptr);
            vMap[instr] = loadedData;
            toBeRemoved.push(instr);
        } else if (isa<BinaryOperator>(instr) || isa<ICmpInst>(instr)) { // TODO: ICmp is not binary????
            llvm::outs() << "\n";

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
                case Instruction::URem:
                    result = builder.CreateURem(firstOp, secondOp);
                    break;
                case Instruction::And:
                    result = builder.CreateAnd(firstOp, secondOp);
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
                        case CmpInst::ICMP_EQ:
                            result = builder.CreateICmpEQ(firstOp, secondOp);
                            break;
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

SVE_Vectorizer::SVE_Vectorizer(Loop *l, int vectorizationFactor, LoopInfo *li) : L(l), vectorizationFactor(
        vectorizationFactor), LI(li) {
    module = l->getHeader()->getModule();
    intrinsicCallGenerator = new IntrinsicCallGenerator(vectorizationFactor, module);
}



