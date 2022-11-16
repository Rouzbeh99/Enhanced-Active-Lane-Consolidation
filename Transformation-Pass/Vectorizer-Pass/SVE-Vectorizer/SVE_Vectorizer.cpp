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
    ScalarIV = L->getCanonicalInductionVariable();
    assert(isa<PHINode>(ScalarIV) && "Induction variable must be a PHINode!");

    // computing TripCount;
    computeTripCount(latch);


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


    fillPreVecBlock(preVectorizationBlock);
    fillVectorizingBlock(vectorizingBlock, preVectorizationBlock, preHeaderForRemaining, exitBlock, middleBlock);


}


bool SVE_Vectorizer::is_a_condition_block(BasicBlock *block) {
    Instruction *terminator = block->getTerminator();
    assert(isa<BranchInst>(terminator) && "Expected a BranchInst!");
    auto *brInstr = static_cast<BranchInst*>(terminator);
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


void SVE_Vectorizer::computeTripCount(BasicBlock *latch) {
    auto *terminator = latch->getTerminator();
    assert(isa<BranchInst>(terminator) && "Expected a BranchInst!");
    auto *brIns = static_cast<BranchInst*>(terminator);
    auto *MaybeCondInst = brIns->getCondition();
    assert(isa<Instruction>(MaybeCondInst) && "Expected a Instruction as condition!");
    auto *conditionInst = static_cast<Instruction*>(MaybeCondInst);

    // one of the operands is the induction var and the other one is trip count
    for (int i = 0; i < conditionInst->getNumOperands(); ++i) {
        bool flag = false;
        for (auto user: ScalarIV->users()) {
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

void SVE_Vectorizer::fillPreVecBlock(BasicBlock *preVecBlock) {

    IRBuilder<> IRB(preVecBlock->getTerminator());

    // create the value by which the index should be increased
    //TODO: we assume indices are added by one, make it work for other cases as well
    //should be added by vscale * VFactor * 1  ----> vscale shl log(VFactor)

    if (tripCount->getType() == IRB.getInt64Ty()) {
        VectorizedStepValue = intrinsicCallGenerator->createVscale64Intrinsic(IRB);
        VectorIVInitializer = intrinsicCallGenerator->createStepVector64Intrinsic(IRB, "induction.vector");
    } else {
        VectorizedStepValue = intrinsicCallGenerator->createVscale32Intrinsic(IRB);
        VectorIVInitializer = intrinsicCallGenerator->createStepVector32Intrinsic(IRB, "induction.vector");
    }

    // vectorizing block termination condition: index > n - (n % stepValue)
    // forming n - (n % stepValue)
    NonVectorizedIterations = IRB.CreateURem(tripCount, VectorizedStepValue, "num.non-vectorized.iterations");
    VectorizedIterations = IRB.CreateSub(tripCount, NonVectorizedIterations, "num.vectorized.iterations");

    // create vector by which step vector should be updated
    StepVector = createVectorOfConstants(VectorizedStepValue, IRB, "step.vector");
}

void SVE_Vectorizer::fillVectorizingBlock(BasicBlock *vectorizingBlock, BasicBlock *preVec,
                                          BasicBlock *preheaderForRemainingIterations,
                                          BasicBlock *exitBlock,
                                          BasicBlock *middleBlock) {


    IRBuilder<> IRB(vectorizingBlock->getTerminator());

    // create phi node for loop index
    auto *indexUpdatedValueType = VectorizedStepValue->getType();   // it's the same as tripcount size
    Constant *contZero = llvm::ConstantInt::get(indexUpdatedValueType, 0);
    VectorLoopIndex = IRB.CreatePHI(indexUpdatedValueType, 2);
    VectorLoopIndex->addIncoming(contZero, preVec);


    // create phi for step vector
    VectorIV = IRB.CreatePHI(VectorIVInitializer->getType(), 2);
    VectorIV->addIncoming(VectorIVInitializer, preVec);


    //// vectorizing header and then bodies /////
    BasicBlock *targetedBlock = findTargetedBlock();
    // predicates come from header (decision block)
    std::map<const Value *, const Value *> *headerInstructionsMap = nullptr;
    Value *predicates = formPredicateVector(IRB, L->getHeader(), vectorizingBlock, targetedBlock,
        &headerInstructionsMap);

    // add vectorized instruction of then body
    vectorizeTargetedBlockInstructions(vectorizingBlock, targetedBlock,
                                       predicates, headerInstructionsMap);



    // update index
    Value *updatedIndex = IRB.CreateAdd(VectorizedStepValue, VectorLoopIndex);
    VectorLoopIndex->addIncoming(updatedIndex, vectorizingBlock);



    //updated step vector
    Value *NextVectorIV = IRB.CreateAdd(VectorIV, StepVector);
    VectorIV->addIncoming(NextVectorIV, vectorizingBlock);


    // vectorizing block termination condition: index > n - (n % stepValue)
    Value *VecTermCond = IRB.CreateICmpUGE(updatedIndex, VectorizedIterations, "vectorize.term.cond");

    // remove previous terminator and create branch instruction
    vectorizingBlock->getTerminator()->eraseFromParent();
    BranchInst::Create(middleBlock, vectorizingBlock, VecTermCond, vectorizingBlock);

    fillMiddleBlock(middleBlock, preheaderForRemainingIterations, exitBlock, NonVectorizedIterations);

    // fix PHI node in preHeaderForRemaining
    refinePreHeaderForRemaining(preheaderForRemainingIterations, middleBlock, updatedIndex);

}

// TODO: Assumption: there is 1 (for inductionVar) or 0 PHI nodes in the decision block
// TODO: Isn't it the case that limits ALC which Ehsan mentioned(dependency between blocks)?

Value *
SVE_Vectorizer::formPredicateVector(IRBuilder<> &IRB, BasicBlock *decisionBlock,
                                    BasicBlock *vectorizingBlock, BasicBlock *targetedBlock,
                                    std::map<const Value *, const Value *> **outputVMap) {


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
            vMap);

    // output map
    (*outputVMap) = headerInstrunctionsMap;

    // TODO: find a better way to find the predicate vector
    auto *predicateVec = dyn_cast<Value>(vectorizingBlock->getTerminator()->getPrevNonDebugInstruction());

    // find if we should negate the predicates
    auto *brInstr = dyn_cast<BranchInst>(decisionBlock->getTerminator());
    BasicBlock *branchTrueTarget = brInstr->getSuccessor(0);

    if (branchTrueTarget != targetedBlock) {  // should negate
        predicateVec = IRB.CreateNot(predicateVec, "negated.vector");
    }


    return predicateVec;
}


// TODO: how to vectorize this code?: t = a[i] + b[i]
//                                     ... = t * ...
void SVE_Vectorizer::vectorizeTargetedBlockInstructions(BasicBlock *vectorizingBlock, BasicBlock *targetedBlock,
                                                        Value *predicates,
                                                        std::map<const Value *, const Value *> *headerInstructionsMap) {

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

    vectorizeInstructions_Predicated(&clonedInstructions, vectorizingBlock,
                                     predicates, headerInstructionsMap);

}

void SVE_Vectorizer::fillMiddleBlock(BasicBlock *middleBlock, BasicBlock *preheader, BasicBlock *exitBlock,
                                     Value *remResult) {
    IRBuilder<> IRB(middleBlock);
    Constant *constZero = ConstantInt::get(remResult->getType(), 0, false);
    Value *condition = IRB.CreateICmpEQ(remResult, constZero, "condition");
    IRB.CreateCondBr(condition, exitBlock, preheader);
}


void
SVE_Vectorizer::refinePreHeaderForRemaining(BasicBlock *preHeaderForRemaining, BasicBlock *middleBlock, Value *value) {
    IRBuilder<> IRB(middleBlock->getTerminator());

    // The first instruction is a phi node
    auto *FirstInst = &preHeaderForRemaining->getInstList().front();
    assert(isa<PHINode>(FirstInst) && "Expected first instruction to be PHINode!");
    PHINode *phiNode = static_cast<PHINode*>(FirstInst);

    // one is i32 the other is i64
    if (value->getType() != phiNode->getType()) {
        value = IRB.CreateCast(Instruction::CastOps::ZExt, value, phiNode->getType());

    }

    phiNode->addIncoming(value, middleBlock);
}

std::map<const Value *, const Value *> *
SVE_Vectorizer::vectorizeInstructions_nonePredicated(std::vector<Instruction *> *instructions, BasicBlock *block,
                                                     ValueToValueMapTy &inputMap) {
    IRBuilder<> IRB(block->getTerminator());


    auto outputMap = new std::map<const Value *, const Value *>;
    ValueToValueMapTy vMap;
    // Should be remove in FILO manner to prevent removing a value that is used in following lines
    std::stack<Instruction *> toBeRemoved;

    // TODO: Complete the list
    for (auto *Inst: *instructions) {
      if (auto *GEP = dyn_cast_or_null<GEPOperator>(Inst)) {
        assert(GEP->getNumIndices() == 1 && "Expected GetElementPtr with one index operand!");
        if (GEP->getOperand(1) == ScalarIV) {
          GEP->setOperand(1, VectorLoopIndex);
        }
      } else if (auto *Store = dyn_cast_or_null<StoreInst>(Inst)) {
        auto *ValOp = Store->getValueOperand();
        Value *NewValOp = vMap[ValOp];
        if (auto *ConstantValue = dyn_cast_or_null<Constant>(ValOp)) {
          ValOp = createVectorOfConstants(ConstantValue, IRB, "store.with.constant.val.op");
          // TODO: is there any other case ?
        }
        auto *PtrOp = Store->getPointerOperand();
        assert(isa<GEPOperator>(PtrOp) && "Expected StoreInst PointerOperand to be GetElementPtr!");
        auto *GEP = static_cast<GEPOperator*>(PtrOp);
        IRB.CreateStore(ValOp, GEP);
        toBeRemoved.push(Inst);
      } else if (auto *Load = dyn_cast_or_null<LoadInst>(Inst)) {
        auto *PtrOp = Load->getPointerOperand();
        assert(isa<GEPOperator>(PtrOp) && "Expected LoadInst PointerOperand to be GetElementPtr!");
        auto *GEP = static_cast<GEPOperator*>(PtrOp);
        auto *VTy = VectorType::get(GEP->getSourceElementType(), vectorizationFactor, true);
        auto *NewLoad = IRB.CreateLoad(VTy, PtrOp);
        vMap[Inst] = NewLoad;
        toBeRemoved.push(Inst);
      } else if (auto *CInst = dyn_cast_or_null<CmpInst>(Inst)) {
        Value *FirstOp = vMap[CInst->getOperand(0)];
        if (FirstOp == nullptr) {
          if (auto *ConstantValue = dyn_cast_or_null<Constant>(CInst->getOperand(0))) {
            FirstOp = createVectorOfConstants(ConstantValue, IRB, "cmpinst.first.operand");
          } else
            assert(0 && "CmpInst first operand neither already vectorized nor Constant!");
        }
        Value *SecondOp = vMap[CInst->getOperand(1)];
        if (SecondOp == nullptr) {
          if (auto *ConstantValue = dyn_cast_or_null<Constant>(CInst->getOperand(1))) {
            SecondOp = createVectorOfConstants(ConstantValue, IRB, "cmpinst.second.operand");
          } else
            assert(0 && "CmpInst second operand neither already vectorized nor Constant!");
        }
        Value *NewInst = nullptr;
        switch (CInst->getPredicate()) {
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
                                   auto *ICmpInst = IRB.CreateICmpEQ(FirstOp, SecondOp);
                                   NewInst = IRB.CreateBitCast(ICmpInst,
                                       VectorType::get(Type::getInt1Ty(block->getContext()),
                                         vectorizationFactor, true));
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
                                    NewInst = IRB.CreateICmpSGT(FirstOp, SecondOp);
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
        assert(NewInst && "Unhandled CmpInst!");
        vMap[Inst] = NewInst;
        toBeRemoved.push(Inst);
      } else if (auto *BinOp = dyn_cast_or_null<BinaryOperator>(Inst)) {
        Value *FirstOp = vMap[BinOp->getOperand(0)];
        if (FirstOp == nullptr) {
          if (auto *ConstantValue = dyn_cast_or_null<Constant>(BinOp->getOperand(0))) {
            FirstOp = createVectorOfConstants(ConstantValue, IRB, "binop.first.operand");
          } else
            assert(0 && "BinaryOperator first operand neither already vectorized nor Constant!");
        }
        Value *SecondOp = vMap[BinOp->getOperand(1)];
        if (SecondOp == nullptr) {
          if (auto *ConstantValue = dyn_cast_or_null<Constant>(BinOp->getOperand(1))) {
            SecondOp = createVectorOfConstants(ConstantValue, IRB, "binop.second.operand");
          } else
            assert(0 && "BinaryOperator second operand neither already vectorized nor Constant!");
        }
        Value *NewInst = nullptr;
        switch (Inst->getOpcode()) {
          case Instruction::Add:
            NewInst = IRB.CreateAdd(FirstOp, SecondOp);
            break;
          case Instruction::Mul:
            NewInst = IRB.CreateMul(FirstOp, SecondOp);
            break;
          case Instruction::SDiv:
            NewInst = IRB.CreateSDiv(FirstOp, SecondOp);
            break;
          case Instruction::URem:
            NewInst = IRB.CreateURem(FirstOp, SecondOp);
            break;
          case Instruction::And:
            NewInst = IRB.CreateAnd(FirstOp, SecondOp);
            break;
          case Instruction::Shl:
            NewInst = IRB.CreateShl(FirstOp, SecondOp);
            break;
        }
        assert(NewInst && "Unhandled BinaryOperator!");
        vMap[Inst] = NewInst;
        toBeRemoved.push(Inst);
      } else
        assert(0 && "Unhandled Instruction!");
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

Value *SVE_Vectorizer::createVectorOfConstants(Value *value, IRBuilder<> &IRB, std::string name) {

    auto *vecType = VectorType::get(value->getType(), vectorizationFactor, true);
    auto poisonVec = PoisonValue::get(vecType);
    u_int64_t indexZero = 0;
    Value *splatInsert = IRB.CreateInsertElement(poisonVec, value, indexZero);

    ConstantAggregateZero *zeroInitializer = ConstantAggregateZero::get(vecType);

    return IRB.CreateShuffleVector(splatInsert, poisonVec, zeroInitializer, name);
}


// TODO: what if the operand was defined in another block?
void SVE_Vectorizer::vectorizeInstructions_Predicated(std::vector<Instruction *> *instructions, BasicBlock *block,
                                                      Value *predicates,
                                                      std::map<const Value *, const Value *> *headerInstructionsMap) {

    IRBuilder<> IRB(block->getTerminator());


    std::map<Value *, Value *> vMap;

    // initialize vMap with headerInstructionsMap
    for (auto pair: *headerInstructionsMap) {
        vMap[(Value *) pair.first] = (Value *) pair.second;
    }


    // Should be remove in FILO manner to prevent removing a value that is used in following lines
    std::stack<Instruction *> toBeRemoved;

    // TODO: Complete the list
    for (auto Inst: *instructions) {
      Inst->print(outs());
      llvm::outs() << "\n";
      if (auto *GEP = dyn_cast_or_null<GEPOperator>(Inst)) {
        assert(GEP->getNumIndices() == 1 && "Expected GetElementPtr with one index operand!");
        if (GEP->getOperand(1) == ScalarIV) {
          GEP->setOperand(1, VectorLoopIndex);
        }
      } else if (auto *Store = dyn_cast_or_null<StoreInst>(Inst)) {
        auto *ValOp = Store->getValueOperand();
        Value *NewValOp = vMap[ValOp];
        if (auto *ConstantValue = dyn_cast_or_null<Constant>(ValOp)) {
          ValOp = createVectorOfConstants(ConstantValue, IRB, "store.with.constant.val.op");
          // TODO: is there any other case ?
        }
        assert(NewValOp && "StoreInst ValueOperand not vectorized!");
        // TODO: We need to check if PtrOp is defined inside the loop, because
        // in that case it might need to be handled differently here.
        //auto *NewPtrOp = vMap[Store->getPointerOperand()];
        //assert(NewPtrOp && "StoreInst PointerOperand not vectorized!");
        auto *NewPtrOp = Store->getPointerOperand();
        assert(isa<GEPOperator>(NewPtrOp) && "Expected StoreInst PointerOperand to be GetElementPtr!");
        auto *GEP = static_cast<GEPOperator*>(NewPtrOp);
        intrinsicCallGenerator->createStoreInstruction(IRB, NewValOp, NewPtrOp, predicates);
        toBeRemoved.push(Inst);
      } else if (auto *Load = dyn_cast_or_null<LoadInst>(Inst)) {
        // TODO: We need to check if PtrOp is defined inside the loop, because
        // in that case it might need to be handled differently here.
        //auto *NewPtrOp = vMap[Load->getPointerOperand()];
        //assert(NewPtrOp && "LoadInst PointerOperand not vectorized!");
        auto *NewPtrOp = Load->getPointerOperand();
        assert(isa<GEPOperator>(NewPtrOp) && "Expected LoadInst PointerOperand to be GetElementPtr!");
        auto *GEP = static_cast<GEPOperator*>(NewPtrOp);
        auto *NewLoad = intrinsicCallGenerator->createLoadInstruction(IRB, NewPtrOp, predicates);
        vMap[Inst] = NewLoad;
        toBeRemoved.push(Inst);
      } else if (auto *CInst = dyn_cast_or_null<CmpInst>(Inst)) {
        Value *NewInst = nullptr;
        switch (CInst->getPredicate()) {
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
        assert(NewInst && "Unhandled CmpInst!");
        vMap[Inst] = NewInst;
        toBeRemoved.push(Inst);
      } else if (auto *BinOp = dyn_cast_or_null<BinaryOperator>(Inst)) {
        Value *FirstOp = vMap[BinOp->getOperand(0)];
        if (FirstOp == nullptr) {
          if (auto *ConstantValue = dyn_cast_or_null<Constant>(BinOp->getOperand(0))) {
            FirstOp = createVectorOfConstants(ConstantValue, IRB, "binop.first.operand");
          } else
            assert(0 && "BinaryOperator first operand neither already vectorized nor Constant!");
        }
        Value *SecondOp = vMap[BinOp->getOperand(1)];
        if (SecondOp == nullptr) {
          if (auto *ConstantValue = dyn_cast_or_null<Constant>(BinOp->getOperand(1))) {
            SecondOp = createVectorOfConstants(ConstantValue, IRB, "binop.second.operand");
          } else
            assert(0 && "BinaryOperator second operand neither already vectorized nor Constant!");
        }
        Value *NewInst = nullptr;
        switch (Inst->getOpcode()) {
          case Instruction::Add:
            NewInst = IRB.CreateAdd(FirstOp, SecondOp);
            break;
          case Instruction::Mul:
            NewInst = IRB.CreateMul(FirstOp, SecondOp);
            break;
          case Instruction::Sub:
            NewInst = IRB.CreateSub(FirstOp, SecondOp);
            break;
          case Instruction::SDiv:
            NewInst = IRB.CreateSDiv(FirstOp, SecondOp);
            break;
          case Instruction::URem:
            // TODO
            break;
          case Instruction::And:
            // TODO
            break;
          case Instruction::Shl:
            NewInst = IRB.CreateShl(FirstOp, SecondOp);
            break;
        }
        assert(NewInst && "Unhandled BinaryOperator!");
        vMap[Inst] = NewInst;
        toBeRemoved.push(Inst);
      } else
        assert(0 && "Unhandled Instruction!");
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



