//
// Created by rouzbeh on 8/8/22.
//

#include "Iterative_ALC.h"


void Iterative_ALC::doTransformation_itr_singleIf_simple() {

    auto *header = L->getHeader();
    auto &context = header->getContext();
    ScalarIV = L->getCanonicalInductionVariable();
    assert(isa<PHINode>(ScalarIV) && "Induction variable must be a PHINode!");
    auto *preheader = L->getLoopPreheader();
    auto *latch = L->getLoopLatch();
    auto *exitBlock = L->getExitBlock();
    ConstZeroVectorOfTripCountTy = llvm::ConstantInt::get(TripCountTy, 0, true);

    targetedBlock = findTargetedBlock();
    sharedInstructions =
            findHeaderAndPreheaderInstructionsRequiredInThenBlock(header, preheader,
                                                                  targetedBlock);

    BasicBlock *preheaderForRemainingBlock =
            createPreheaderForRemainingIterations();

    // create blocks
    BasicBlock *preALCBlock = createEmptyBlock("pre.alc", latch);
    BasicBlock *middleBlock = createEmptyBlock("middel.block", latch);
    BasicBlock *alcHeader = createEmptyBlock("alc.header", middleBlock);
    BasicBlock *laneGatherBlock = createEmptyBlock("lane.gather", middleBlock);
    BasicBlock *linearizedBlock = createEmptyBlock("linearized", middleBlock);
    BasicBlock *uniformBlock = createEmptyBlock("uniform.block", middleBlock);
    BasicBlock *newLatch = createEmptyBlock("new.latch", middleBlock);
    BasicBlock *joinBlock = createEmptyBlock("join.block", middleBlock);

    refinePreheader(preALCBlock, preheaderForRemainingBlock);

    // fill blocks
    std::vector<Value *> *preALCBlockValues =
            fillPreALCBlock_itr(preALCBlock, preheader, alcHeader);
    fillALCHeaderBlock_itr(
            alcHeader, laneGatherBlock, linearizedBlock, preALCBlock,
            preALCBlockValues, header);

    fillLaneGatherBlock_itr(laneGatherBlock, uniformBlock, joinBlock);
    std::vector<Value *> *uniformBlockOutputs =
            fillUniformBlock_itr(uniformBlock, joinBlock, targetedBlock,
                                 header, MergedIndices, VectorLoopIndex);
    fillLinearizedBlock_itr(linearizedBlock, newLatch, targetedBlock,
                            IndexVectorOfSecondVector,
                            PredicatesOfSecondVector);
    std::vector<Value *> *joinBlockOutputs =
            fillJoinBlock(joinBlock, newLatch, uniformBlock, laneGatherBlock,
                          VectorLoopIndex, uniformBlockOutputs);
    std::vector<Value *> *latchOutputs = fillNewLatchBlock_itr(
            newLatch, alcHeader, middleBlock, joinBlock, linearizedBlock,
            joinBlockOutputs, (*preALCBlockValues)[3]);

    fillMiddleBlock_itr(middleBlock, preheaderForRemainingBlock, exitBlock,
                        (*preALCBlockValues)[2], (*latchOutputs)[1],
                        (*latchOutputs)[2]);

    refinePreHeaderForRemaining(preheaderForRemainingBlock, middleBlock,
                                (*latchOutputs)[0]);

    DT->applyUpdates(DTUpdates);
    DTUpdates.clear();
}

void Iterative_ALC::doTransformation_itr_singleIf_full_permutation() {
    auto *header = L->getHeader();
    auto &context = header->getContext();
    ScalarIV = L->getCanonicalInductionVariable();
    assert(isa<PHINode>(ScalarIV) && "Induction variable must be a PHINode!");
    auto *preheader = L->getLoopPreheader();
    auto *latch = L->getLoopLatch();
    auto *exitBlock = L->getExitBlock();
    ConstZeroVectorOfTripCountTy = llvm::ConstantInt::get(TripCountTy, 0, true);

    targetedBlock = findTargetedBlock();
    sharedInstructions =
            findHeaderAndPreheaderInstructionsRequiredInThenBlock(header, preheader, targetedBlock);

    BasicBlock *preheaderForRemainingBlock =
            createPreheaderForRemainingIterations();

    // create blocks
    BasicBlock *preALCBlock = createEmptyBlock("pre.alc", latch);
    BasicBlock *middleBlock = createEmptyBlock("middel.block", latch);
    BasicBlock *alcHeader = createEmptyBlock("alc.header", middleBlock);
    BasicBlock *laneGatherBlock = createEmptyBlock("lane.gather", middleBlock);
    BasicBlock *uniformBlock = createEmptyBlock("uniform.block", middleBlock);
    BasicBlock *newLatch = createEmptyBlock("new.latch", middleBlock);

    refinePreheader(preALCBlock, preheaderForRemainingBlock);
    std::vector<Value *> *preALCBlockValues =
            fillPreALCBlock_itr(preALCBlock, preheader, alcHeader);

    fillALCHeader_full_permutation(alcHeader, laneGatherBlock, preALCBlock, preALCBlockValues, header);
    fillLaneGather_full_permutation(laneGatherBlock, uniformBlock, newLatch);
    fillUniformBlock_full_permutation(uniformBlock, newLatch, targetedBlock, header, MergedIndices);
    std::vector<Value *> *latchOutputs = fillNewLatchBlock_full_permutation(newLatch, alcHeader, middleBlock,
                                                                            laneGatherBlock, uniformBlock,
                                                                            (*preALCBlockValues)[3]);

    fillMiddleBlock_itr(middleBlock, preheaderForRemainingBlock, exitBlock,
                        (*preALCBlockValues)[2], (*latchOutputs)[1],
                        (*latchOutputs)[2]);


    refinePreHeaderForRemaining(preheaderForRemainingBlock, middleBlock,
                                (*latchOutputs)[0]);
}


void Iterative_ALC::doTransformation_itr_if_then_else() {

}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////



// TODO: problem in algorithm, in the case where the total number of active
// lanes is not enough to fill a vector, the result vector is not correct
void Iterative_ALC::insertPermutationLogic(BasicBlock *insertAt, Value *&permutedZ0,
                                           Value *&permutedPredicates) {
    // TODO: add code to compute predicates for uniform vector

    IRBuilder<> IRB(insertAt);
    auto *constZero = ConstantInt::get(ActiveLanesInFirstVector->getType(), 0);

    // gather active lanes
    auto *z2 = intrinsicCallGenerator->createCompactInstruction(
            IRB, IndexVectorOfFirstVector, PredicatesOfFirstVector);
    auto *z3 = intrinsicCallGenerator->createCompactInstruction(
            IRB, IndexVectorOfSecondVector, PredicatesOfSecondVector);
    auto *p4 = intrinsicCallGenerator->createWhileltInstruction(
            IRB, constZero, ActiveLanesInFirstVector);
    permutedZ0 = intrinsicCallGenerator->createSpliceInstruction(IRB, z2, z3, p4);
    permutedPredicates = intrinsicCallGenerator->createWhileltInstruction(
            IRB, constZero, ActiveLanesInBothVectors);
}

BasicBlock *Iterative_ALC::findTargetedBlock() {
    // TODO: make a complete analysis

    for (auto succ: successors(L->getHeader())) {
        if (succ->getSingleSuccessor() == L->getLoopLatch()) {
            return succ;
        }
    }

    return nullptr;
}

BasicBlock *Iterative_ALC::createEmptyBlock(const std::string &name,
                                            BasicBlock *insertBefore) {
    BasicBlock *block =
            BasicBlock::Create(L->getHeader()->getContext(), name,
                               L->getHeader()->getParent(), insertBefore);

    L->addBasicBlockToLoop(block, *LI);

    return block;
}

BasicBlock *Iterative_ALC::createPreheaderForRemainingIterations() {
    BasicBlock *block = BasicBlock::Create(
            L->getHeader()->getContext(), "Preheader.for.remaining.iterations",
            L->getHeader()->getParent(), L->getLoopLatch());
    // branch to loop header
    BranchInst::Create(L->getHeader(), block);
    DTUpdates.push_back({DT->Insert, L->getHeader(), block});

    // add to loop
    L->addBasicBlockToLoop(block, *LI);

    auto *headerPHi = dyn_cast<PHINode>(
            &L->getHeader()
                    ->getInstList()
                    .front()); // TODO: what if there are other phi nodes?

    // add PHI Node
    PHINode *inductionVar =
            PHINode::Create(headerPHi->getType(), 2, "", block->getTerminator());
    Constant *contZero = llvm::ConstantInt::get(headerPHi->getType(), 0);
    inductionVar->addIncoming(contZero, L->getLoopPreheader());

    // refine phi Node in the header associated with induction var
    headerPHi->addIncoming(inductionVar, block);
    headerPHi->removeIncomingValue(L->getLoopPreheader(), false);

    return block;
}

void Iterative_ALC::refinePreheader(BasicBlock *preVecBlock,
                                    BasicBlock *preHeaderForRemaining) {

    auto *Terminator = L->getLoopPreheader()->getTerminator();
    IRBuilder<> IRB(Terminator);

    if (TripCountTy == IRB.getInt64Ty()) {
        VscaleFactor = intrinsicCallGenerator->createVscale64Intrinsic(IRB);
    } else {
        VscaleFactor = intrinsicCallGenerator->createVscale32Intrinsic(IRB);
    }


    // check if there are iterations
    Constant *contTwo = llvm::ConstantInt::get(VscaleFactor->getType(), 2);
    Value *mul = IRB.CreateMul(VscaleFactor, contTwo);
    Value *condition =
            IRB.CreateICmpUGE(tripCount, mul); // if true, there are enough iterations

    IRB.CreateCondBr(condition, preVecBlock, preHeaderForRemaining);
    DTUpdates.push_back({DT->Insert, L->getLoopPreheader(), preVecBlock});
    DTUpdates.push_back({DT->Insert, L->getLoopPreheader(), preHeaderForRemaining});

    // remove previous terminator
    Terminator->eraseFromParent();
}

std::vector<Value *> *Iterative_ALC::fillPreALCBlock_itr(
        BasicBlock *preALCBlock, BasicBlock *preheader, BasicBlock *alcHeader) {
    auto *results = new std::vector<Value *>;

    IRBuilder<> builder(preALCBlock);

    // create the value by which the index should be increased
    // TODO: we assume indices are added by one, make it work for other cases as
    // well should be added by vscale * VFactor * 1  ----> vscale shl log(VFactor)

    allTrue = intrinsicCallGenerator->createAllTruePredicates(builder);

    // create step vector
    Constant *constZero = ConstantInt::get(TripCountTy, 0, false);
    Constant *constOne = ConstantInt::get(TripCountTy, 1, false);
    Constant *constTwo = ConstantInt::get(TripCountTy, 2, false);
    Value *initialUniformVec = intrinsicCallGenerator->createIndexInstruction(
            builder, constZero, constOne);
//    Value *stepVal = builder.CreateMul(VscaleFactor, constTwo);
    Value *stepVal = VscaleFactor;
    ActualVectorLength = stepVal;

    // vectorizing block termination condition: index > n - (n % stepValue)
    // forming n - (n % stepValue)


    Value *remResult = builder.CreateURem(tripCount, stepVal);
    Value *mul = builder.CreateMul(stepVal, constTwo);
    Value *add = builder.CreateAdd(mul, remResult);
    Value *totalIterationsToVectorize = builder.CreateSub(tripCount, add,
                                                          "total.iterations.to.be.vectorized");

    builder.CreateBr(alcHeader);

    results->push_back(initialUniformVec);
    results->push_back(stepVal);
    results->push_back(add);
    results->push_back(totalIterationsToVectorize);

    return results;
}

void Iterative_ALC::fillMiddleBlock_itr(BasicBlock *middleBlock,
                                        BasicBlock *preheaderForRemaining,
                                        BasicBlock *exitBlock,
                                        Value *remResult, Value *uniformVec,
                                        Value *uniformVecPredicates) {

    IRBuilder<> builder(preheaderForRemaining->getContext());
    builder.SetInsertPoint(middleBlock);

    Constant *constZero = ConstantInt::get(remResult->getType(), 0, false);
    Value *condition = builder.CreateICmpEQ(remResult, constZero, "condition");
    builder.CreateCondBr(condition, exitBlock, preheaderForRemaining);

    // make linearized path for remaining active lanes in uniform vec

    // since we're using uniform vec as indices, addresses should start from zero
    std::vector<Instruction *> *clonedInstructions =
            cloneInstructions(targetedBlock, middleBlock, constZero);

    // when permuted, all indices in gather/scatter will be computed with respect
    // to indicesVec so index var should be 0
    vectorizeInstructions(clonedInstructions, middleBlock, uniformVec, constZero,
                          uniformVecPredicates, true, false);


}

void Iterative_ALC::fillALCHeaderBlock_itr(
        BasicBlock *alcHeader, BasicBlock *laneGatherBlock, BasicBlock *linearized,
        BasicBlock *preALCBlock,
        std::vector<Value *> *initialValues, BasicBlock *header) {

    IRBuilder<> builder(preALCBlock->getTerminator());

    Value *initialPredicates = formPredicate(
            header, preALCBlock, ConstZeroVectorOfTripCountTy); // initial predicates

    // count initial predicates inside the preALC
    IRBuilder<> preALCBuilder(alcHeader->getContext());
    preALCBuilder.SetInsertPoint(preALCBlock->getTerminator());
    Value *initialUniformVecActives =
            intrinsicCallGenerator->createCntpInstruction(
                    preALCBuilder, initialPredicates, initialPredicates);

    if (TripCountTy == builder.getInt32Ty()) {
        initialUniformVecActives = builder.CreateTruncOrBitCast(
                initialUniformVecActives, TripCountTy);
    }

    //IRBuilder<> builder(alcHeader->getContext());
    builder.SetInsertPoint(alcHeader);

    // temporary, to be replaced with actual condition
    ConstantInt *tmpCond = ConstantInt::get(builder.getInt1Ty(), 1);
    builder.CreateCondBr(tmpCond, laneGatherBlock, linearized);
    builder.SetInsertPoint(alcHeader->getTerminator());

    // create phi node for loop index
    VectorLoopIndex =
            builder.CreatePHI(VscaleFactor->getType(), 2, "vector.loop.index");
    VectorLoopIndex->addIncoming(VscaleFactor, preALCBlock);

    // create phi for uniformVec
    Value *&initalUniformVec = (*initialValues)[0];
    IndexVectorOfFirstVector =
            builder.CreatePHI(initalUniformVec->getType(), 2, "uniform.vector");
    static_cast<PHINode *>(IndexVectorOfFirstVector)
            ->addIncoming(initalUniformVec, preALCBlock);

    // create phi for uniformVecPreds
    PredicatesOfFirstVector = builder.CreatePHI(initialPredicates->getType(), 2,
                                                "uniform.vector.predicates");
    static_cast<PHINode *>(PredicatesOfFirstVector)
            ->addIncoming(initialPredicates, preALCBlock);

    // create phi for number of active lanes in uniform vec
    ActiveLanesInFirstVector = builder.CreatePHI(
            initialUniformVecActives->getType(), 2, "uniform.vec.actives");
    static_cast<PHINode *>(ActiveLanesInFirstVector)
            ->addIncoming(initialUniformVecActives, preALCBlock);

    // next iteration index vec
    Constant *constOne =
            llvm::ConstantInt::get(VscaleFactor->getType(), 1, true);
    IndexVectorOfSecondVector = intrinsicCallGenerator->createIndexInstruction(
            builder, VectorLoopIndex, constOne);

    // form predicates
    PredicatesOfSecondVector = formPredicate(header, alcHeader, VectorLoopIndex);

    // form condition for the branch
    ActiveLanesInSecondVector = intrinsicCallGenerator->createCntpInstruction(
            builder, PredicatesOfSecondVector, PredicatesOfSecondVector);

    if (TripCountTy == builder.getInt32Ty()) {
        ActiveLanesInSecondVector = builder.CreateTruncOrBitCast(
                ActiveLanesInSecondVector, TripCountTy);
    }
    ActiveLanesInBothVectors =
            builder.CreateAdd(ActiveLanesInFirstVector, ActiveLanesInSecondVector);
    Value *actualCondition = builder.CreateICmpULE(
            ActiveLanesInBothVectors, VscaleFactor, "condition");

    // hint the branch
//    Intrinsic::IndependentIntrinsics expectIntr = llvm::Intrinsic::expect;
//    Constant *constZeroI1 = llvm::ConstantInt::get(builder.getInt1Ty(), 0, true);
//
//    CallInst *condition_with_hint = builder.CreateIntrinsic(expectIntr, builder.getInt1Ty(),
//                                                            {actualCondition, constZeroI1});
//
//    dyn_cast<BranchInst>(alcHeader->getTerminator())
//            ->setCondition(condition_with_hint);

    dyn_cast<BranchInst>(alcHeader->getTerminator())
            ->setCondition(actualCondition);

}

void Iterative_ALC::fillLaneGatherBlock_itr(BasicBlock *laneGather,
                                            BasicBlock *alcApplied,
                                            BasicBlock *joinBlock) {

    insertPermutationLogic(laneGather, MergedIndices, MergedPredicates);


    IRBuilder<> builder(laneGather);

    ActiveElementsInPermutedVector =
            intrinsicCallGenerator->createCntpInstruction(builder, MergedPredicates,
                                                          MergedPredicates);

    if (TripCountTy == builder.getInt32Ty()) {
        ActiveElementsInPermutedVector = builder.CreateTruncOrBitCast(
                ActiveElementsInPermutedVector, TripCountTy);
    }

    // check if z0 is uniform
    Value *condition =
            builder.CreateICmpULT(ActiveLanesInBothVectors, VscaleFactor);
//
//    Intrinsic::IndependentIntrinsics expectIntr = llvm::Intrinsic::expect;
//    Constant *constZeroI1 = llvm::ConstantInt::get(builder.getInt1Ty(), 0, true);
//
//    CallInst *condition_with_hint = builder.CreateIntrinsic(expectIntr, builder.getInt1Ty(), {condition, constZeroI1});
//
//   builder.CreateCondBr(condition_with_hint, joinBlock, alcApplied);
    builder.CreateCondBr(condition, joinBlock, alcApplied);

}

std::vector<Value *> *Iterative_ALC::fillUniformBlock_itr(
        BasicBlock *uniformBlock, BasicBlock *joinBlock,
        BasicBlock *toBeVectorizedBlock, BasicBlock *header, Value *indices,
        Value *indexPhi) {

    auto outputs = new std::vector<Value *>;

    IRBuilder<> builder(uniformBlock->getContext());
    builder.SetInsertPoint(uniformBlock);
    builder.CreateBr(joinBlock);
    DTUpdates.push_back({DT->Insert, uniformBlock, joinBlock});
    builder.SetInsertPoint(uniformBlock->getTerminator());

    Constant *constOne = llvm::ConstantInt::get(TripCountTy, 1, true);
    Constant *constZero = llvm::ConstantInt::get(TripCountTy, 1, true);

    std::vector<Instruction *> *clonedInstructions = cloneInstructions(
            toBeVectorizedBlock, uniformBlock, ConstZeroVectorOfTripCountTy);


    // TODO: handle cases where instruction uses 0 instead of induction var
    vectorizeInstructions(clonedInstructions, uniformBlock, indices,
                          ConstZeroVectorOfTripCountTy, allTrue, true, false);

    // Form next iteration
    Value *nextItrIndex = builder.CreateAdd(indexPhi, VscaleFactor);
    Value *nextUniformVec = intrinsicCallGenerator->createIndexInstruction(
            builder, nextItrIndex, constOne);
    Value *nextPredicateVec = formPredicate(header, uniformBlock, nextItrIndex);
    Value *activeElements = intrinsicCallGenerator->createCntpInstruction(
            builder, nextPredicateVec, nextPredicateVec);


    if (TripCountTy == builder.getInt32Ty()) {
        activeElements = builder.CreateTruncOrBitCast(activeElements, TripCountTy);
    }

    outputs->push_back(nextItrIndex);
    outputs->push_back(nextUniformVec);
    outputs->push_back(nextPredicateVec);
    outputs->push_back(activeElements);

    return outputs;
}

void Iterative_ALC::fillLinearizedBlock_itr(BasicBlock *linearized,
                                            BasicBlock *newLatch,
                                            BasicBlock *toBeVectorizedBlock,
                                            Value *indexVec,
                                            Value *predicates) {
    IRBuilder<> builder(linearized->getContext());
    builder.SetInsertPoint(linearized);
    builder.CreateBr(newLatch);
    DTUpdates.push_back({DT->Insert, linearized, newLatch});

    std::vector<Instruction *> *clonedInstructions =
            cloneInstructions(toBeVectorizedBlock, linearized, VectorLoopIndex);
    vectorizeInstructions(clonedInstructions, linearized, indexVec,
                          VectorLoopIndex, predicates, false, true);
}

std::vector<Value *> *Iterative_ALC::fillNewLatchBlock_itr(
        BasicBlock *newLatch, BasicBlock *alcHeader, BasicBlock *middleBlock,
        BasicBlock *joinBlock, BasicBlock *linearizedBlock,
        std::vector<Value *> *joinBlockOutputs, Value *totalVecIterations) {

    auto outputs = new std::vector<Value *>;

    IRBuilder<> builder(newLatch->getContext());
    builder.SetInsertPoint(newLatch);

    Value *&joinBlockIndex = (*joinBlockOutputs)[0];
    Value *&joinBlockUniformVec = (*joinBlockOutputs)[1];
    Value *&joinBlockPredicates = (*joinBlockOutputs)[2];
    Value *&joinBlockActiveCount = (*joinBlockOutputs)[3];

    PHINode *indexPhi = builder.CreatePHI(joinBlockIndex->getType(), 2);
    indexPhi->addIncoming(joinBlockIndex, joinBlock);
    indexPhi->addIncoming(VectorLoopIndex, linearizedBlock);

    PHINode *uniformVecPhi = builder.CreatePHI(joinBlockUniformVec->getType(), 2);
    uniformVecPhi->addIncoming(joinBlockUniformVec, joinBlock);
    uniformVecPhi->addIncoming(IndexVectorOfFirstVector, linearizedBlock);

    PHINode *predicatesPhi = builder.CreatePHI(joinBlockPredicates->getType(), 2);
    predicatesPhi->addIncoming(joinBlockPredicates, joinBlock);
    predicatesPhi->addIncoming(PredicatesOfFirstVector, linearizedBlock);

    PHINode *activeCountPhi =
            builder.CreatePHI(joinBlockActiveCount->getType(), 2);
    activeCountPhi->addIncoming(joinBlockActiveCount, joinBlock);
    activeCountPhi->addIncoming(ActiveLanesInFirstVector, linearizedBlock);

    // update phi nodes in header
    const BasicBlock::phi_iterator &headerIndexPhi = alcHeader->phis().begin();
    Value *updatedIndex = builder.CreateAdd(indexPhi, VscaleFactor);
    headerIndexPhi->addIncoming(updatedIndex, newLatch);

    const BasicBlock::phi_iterator &headerUniformVecPhi =
            std::next(headerIndexPhi, 1);
    headerUniformVecPhi->addIncoming(uniformVecPhi, newLatch);

    const BasicBlock::phi_iterator &headerPredicatesPhi =
            std::next(headerUniformVecPhi, 1);
    headerPredicatesPhi->addIncoming(predicatesPhi, newLatch);

    const BasicBlock::phi_iterator &headerActiveCountPhi =
            std::next(headerPredicatesPhi, 1);
    headerActiveCountPhi->addIncoming(activeCountPhi, newLatch);

    Value *condition = builder.CreateICmpUGE(updatedIndex, totalVecIterations);
    builder.CreateCondBr(condition, middleBlock, alcHeader);

    outputs->push_back(updatedIndex);
    outputs->push_back(uniformVecPhi);
    outputs->push_back(predicatesPhi);

    return outputs;
}

std::vector<Value *> *
Iterative_ALC::fillJoinBlock(BasicBlock *joinBlock, BasicBlock *newLatch,
                             BasicBlock *uniformBlock, BasicBlock *laneGather,
                             Value *headerIndex,
                             std::vector<Value *> *uniformBlockOutputs) {

    auto outputs = new std::vector<Value *>;

    IRBuilder<> builder(joinBlock->getContext());
    builder.SetInsertPoint(joinBlock);

    Value *&nextIndex = (*uniformBlockOutputs)[0];
    Value *&nextUniformVec = (*uniformBlockOutputs)[1];
    Value *&nextPredicates = (*uniformBlockOutputs)[2];
    Value *&nextActiveLanesCount = (*uniformBlockOutputs)[3];

    PHINode *indexPhi = builder.CreatePHI(headerIndex->getType(), 2);
    indexPhi->addIncoming(headerIndex, laneGather);
    indexPhi->addIncoming(nextIndex, uniformBlock);

    PHINode *uniformVecPhi = builder.CreatePHI(MergedIndices->getType(), 2);
    uniformVecPhi->addIncoming(MergedIndices, laneGather);
    uniformVecPhi->addIncoming(nextUniformVec, uniformBlock);

    PHINode *predicatesPhi = builder.CreatePHI(MergedPredicates->getType(), 2);
    predicatesPhi->addIncoming(MergedPredicates, laneGather);
    predicatesPhi->addIncoming(nextPredicates, uniformBlock);

    PHINode *activeLanesCountPhi =
            builder.CreatePHI(ActiveElementsInPermutedVector->getType(), 2);
    activeLanesCountPhi->addIncoming(ActiveElementsInPermutedVector, laneGather);
    activeLanesCountPhi->addIncoming(nextActiveLanesCount, uniformBlock);

    outputs->push_back(indexPhi);
    outputs->push_back(uniformVecPhi);
    outputs->push_back(predicatesPhi);
    outputs->push_back(activeLanesCountPhi);

    builder.CreateBr(newLatch);
    DTUpdates.push_back({DT->Insert, joinBlock, newLatch});

    return outputs;
}

Value *Iterative_ALC::formPredicate(BasicBlock *decisionBlock,
                                    BasicBlock *predicateHolderBlock,
                                    Value *inductionVarInitialValue) {

    Instruction *predicates_scalar = nullptr;

    std::vector<Instruction *> *clonedInstructions = cloneInstructions(
            decisionBlock, predicateHolderBlock, inductionVarInitialValue);

    predicates_scalar = clonedInstructions->back();


    // now we should vectorize clonedInstructions
    std::map<const Value *, const Value *> *instructionsMap =
            vectorizeInstructions(clonedInstructions, predicateHolderBlock, nullptr,
                                  inductionVarInitialValue, nullptr, false, false);
    const Value *&predicates = (*instructionsMap)[(Value *) predicates_scalar];

    // TODO: find a bette way to determine negated condition
    auto *brInstr = dyn_cast<BranchInst>(decisionBlock->getTerminator());
    const StringRef &condName = brInstr->getCondition()->getName();
    if (condName.find("not") != std::string::npos) {

        IRBuilder<> builder(predicateHolderBlock->getContext());
        builder.SetInsertPoint(predicateHolderBlock->getTerminator());

        return builder.CreateNot(const_cast<Value *>(predicates));
    }

    return const_cast<Value *>(predicates);
}


std::map<const Value *, const Value *> *Iterative_ALC::vectorizeInstructions(
        std::vector<Instruction *> *instructions, BasicBlock *block, Value *indices,
        Value *VectorIndex, Value *predicates, bool isPermuted, bool isPredicated) {


    Instruction *insertionPoint = block->getTerminator();
    IRBuilder<> IRB(insertionPoint);
    Constant *constOne = llvm::ConstantInt::get(TripCountTy, 1, true);
    Constant *constZero = llvm::ConstantInt::get(TripCountTy, 0, true);
    Value *mutatedVectorIndex = VectorIndex;

    // Move types to i32 so that it's compatible with other instruction types and can be used as operands if needed
    // TODO: what if instruction operands were float??
    if (vectorizationFactor == 2) {
        constOne = llvm::ConstantInt::get(IRB.getInt32Ty(), 1, true);
        mutatedVectorIndex = IRB.CreateTruncOrBitCast(VectorIndex, IRB.getInt32Ty());
    }

    if (isPermuted) {
        ////////////////////////////////////////////// need to change uniform vector elements type to i32
    } else {
        indices = intrinsicCallGenerator->createIndexInstruction(IRB, mutatedVectorIndex,
                                                                 constOne);
    }


    auto outputMap = new std::map<const Value *, const Value *>;

    std::map<Value *, Value *> vMap;


    // create vector instructions from function arguments
    Function *function = block->getParent();

    for (auto &arg: function->args()) {
        if (arg.getType()->isIntegerTy() || arg.getType()->isFloatTy() || arg.getType()->isDoubleTy()) {

            Value *vector = createVectorOfConstants(dyn_cast<Value>(&arg), IRB, "vector.arg");
            vMap[&arg] = vector;
        }
    }


    // Should be remove in FILO manner to prevent removing a value that is used in
    // following lines
    std::stack<Instruction *> toBeRemoved;


    // TODO: Complete the list
    for (auto instr: *instructions) {

        if (auto *GEP = dyn_cast_or_null<GEPOperator>(instr)) {
            //            assert(GEP->getNumIndices() == 1 && "Expected GetElementPtr
            //            with one index operand!");
            for (int i = 0; i < instr->getNumOperands(); ++i) {
                if (instr->getOperand(i) == ScalarIV) {
                    if (isPermuted) {
                        instr->setOperand(i, constZero);
                    } else {
                        instr->setOperand(i, VectorIndex);
                    }
                }
            }

        } else if (isa<StoreInst>(instr)) {

            auto storeInstr = dyn_cast<StoreInst>(instr);
            // it's the value to be stored
            Value *firstOp = nullptr;
            if (vMap.count(storeInstr->getOperand(0))) {
                firstOp = vMap[storeInstr->getOperand(0)];
            } else if (storeInstr->getOperand(0) == VectorIndex) {
                firstOp = indices;
            } else {
                // it's constant
                auto *constValue = dyn_cast<Constant>(storeInstr->getOperand(0));
                firstOp = createVectorOfConstants(constValue, IRB, "store.values");
                // TODO: is there any other case ?
            }
            auto ptr = instr->getOperand(1);
            if (vMap.count(ptr)) {
                ptr = vMap[ptr];
            }


            assert(isa<GEPOperator>(ptr) &&
                   "Expected StoreInst PointerOperand to be GetElementPtr!");
            if (isPermuted) {
                intrinsicCallGenerator->createScatterStoreInstruction(
                        IRB, firstOp, ptr, predicates, indices);
            } else if (isPredicated) {
                intrinsicCallGenerator->createStoreInstruction(IRB, firstOp, ptr,
                                                               predicates);
            } else {
                IRB.CreateStore(firstOp, ptr);
            }


            toBeRemoved.push(instr);
        } else if (isa<LoadInst>(instr)) {

            auto ptr = instr->getOperand(0);
            if (vMap.count(ptr)) {
                ptr = vMap[ptr];
            }
            Value *loadedData = nullptr;

            if (instr->getType()->isPointerTy()) {
                outputMap->insert({instr, instr});
                continue;
            }

            assert(isa<GEPOperator>(ptr) &&
                   "Expected LoadInst PointerOperand to be GetElementPtr!");

            auto *GEP = static_cast<GEPOperator *>(ptr);

            auto *SrcTy = GEP->getSourceElementType();

//            // the first two ones are always type and base address
//            bool isConstantMemoryLocation = true;
//            for (int i = 2; i < GEP->getNumOperands(); ++i) {
//                if (!isa<Constant>(GEP->getOperand(i))) {
//                    isConstantMemoryLocation = false;
//                }
//            }


            if (isPermuted) {
                // need to determine source type
                if (SrcTy->isArrayTy() || SrcTy->isStructTy()) {
                    SrcTy = GEP->getResultElementType();
                }

                loadedData = intrinsicCallGenerator->createGatherLoadInstruction(
                        IRB, SrcTy, ptr, predicates, indices);

            } else if (isPredicated) {

                if (SrcTy->isArrayTy() || SrcTy->isStructTy()) {
                    llvm::outs()<<"HERE \n";
                    instr->print(outs());
                    llvm::outs()<<"\n";
                    SrcTy = GEP->getResultElementType();
                }

                loadedData = intrinsicCallGenerator->createLoadInstruction(
                        IRB, SrcTy, ptr, predicates);
            } else {
                loadedData = IRB.CreateLoad(
                        VectorType::get(instr->getType(), vectorizationFactor, true), ptr);
            }

            vMap[instr] = loadedData;
            toBeRemoved.push(instr);

        } else if (auto *truncInstr = dyn_cast_or_null<TruncInst>(instr)) {

            Value *operand = nullptr;

            if (vMap.count(truncInstr->getOperand(0))) {
                operand = vMap[truncInstr->getOperand(0)];
            } else if (truncInstr->getOperand(0) ==
                       VectorIndex) {
                operand = indices;
            } else if (auto *ConstantValue =
                    dyn_cast_or_null<Constant>(truncInstr->getOperand(0))) {

                //TODO: doesn't work for floats
                auto value = ConstantValue->getUniqueInteger().getLimitedValue();

                ConstantValue = ConstantInt::get(truncInstr->getDestTy(), value);
                operand =
                        createVectorOfConstants(ConstantValue, IRB, "first.operand");
            } else {
                assert(0 && "first operand of trunc neither already vectorized nor Constant!");
            }

            // No need to do the trunc, just do the mapping
            vMap[instr] = operand;
            outputMap->insert({instr, operand});
            toBeRemoved.push(instr);


        } else if (isa<BinaryOperator>(instr) ||
                   isa<ICmpInst>(instr)) {


            Value *firstOp = nullptr;
            Value *secondOp = nullptr;
            Type *destinationType = nullptr;

            if (vMap.count(instr->getOperand(0))) {
                firstOp = vMap[instr->getOperand(0)];
            } else if (instr->getOperand(0) ==
                       VectorIndex) {
                firstOp = indices;
            } else {
                if (auto *ConstantValue =
                        dyn_cast_or_null<Constant>(instr->getOperand(0))) {
                    firstOp =
                            createVectorOfConstants(ConstantValue, IRB, "first.operand");
                } else {
                    instr->getOperand(0)->print(outs());
                    assert(0 && "first operand neither already vectorized nor Constant!");
                }
            }

            if (vMap.count(instr->getOperand(1))) {
                secondOp = vMap[instr->getOperand(1)];
            } else if (instr->getOperand(1) == VectorIndex) {
                secondOp = indices;
            } else {
                if (auto *ConstantValue =
                        dyn_cast_or_null<Constant>(instr->getOperand(1))) {
                    secondOp =
                            createVectorOfConstants(ConstantValue, IRB, "second.operand");
                } else {
                    instr->getOperand(1)->print(outs());
                    llvm::outs() << "\n";
                    assert(0 &&
                           "second operand neither already vectorized nor Constant!");
                }
            }


            Value *result = nullptr;
            switch (instr->getOpcode()) {
                case Instruction::Add:
                    result = IRB.CreateAdd(firstOp, secondOp);
                    break;
                case Instruction::Mul:
                    result = IRB.CreateMul(firstOp, secondOp);
                    break;
                case Instruction::SDiv:
                    result = IRB.CreateSDiv(firstOp, secondOp);
                    break;
                case Instruction::Sub:
                    result = IRB.CreateSub(firstOp, secondOp);
                    break;
                case Instruction::URem:
                    result = IRB.CreateURem(firstOp, secondOp);
                    break;
                case Instruction::SRem:
                    result = IRB.CreateSRem(firstOp, secondOp);
                    break;
                case Instruction::And:
                    result = IRB.CreateAnd(firstOp, secondOp);
                    break;
                case Instruction::Shl:
                    result = IRB.CreateShl(firstOp, secondOp);
                    break;
                case Instruction::Trunc:
                    result = IRB.CreateTruncOrBitCast(firstOp, destinationType);
                    break;
                case Instruction::FAdd:
                    result = IRB.CreateFAdd(firstOp, secondOp);
                    break;
                case Instruction::FSub:
                    result = IRB.CreateFSub(firstOp, secondOp);
                    break;
                case Instruction::FMul:
                    result = IRB.CreateFMul(firstOp, secondOp);
                    break;
                case Instruction::FDiv:
                    result = IRB.CreateFDiv(firstOp, secondOp);
                    break;
                case Instruction::FRem:
                    result = IRB.CreateFRem(firstOp, secondOp);
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
                            result = IRB.CreateICmpULE(firstOp, secondOp);
                            break;
                            break;
                        case CmpInst::FCMP_UNE:
                            break;
                        case CmpInst::FCMP_TRUE:
                            break;
                        case CmpInst::BAD_FCMP_PREDICATE:
                            break;
                        case CmpInst::ICMP_EQ: {
                            Value *ICmpInst = IRB.CreateICmpEQ(firstOp, secondOp);
                            result = dyn_cast<Value>(ICmpInst);
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
                            Value *ICmpInst = IRB.CreateICmpSGT(firstOp, secondOp);
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
            assert(result && "Unhandled BinaryOperator!");
            vMap[instr] = result;
            outputMap->insert({instr, result});
            toBeRemoved.push(instr);
        }

    }


    while (!toBeRemoved.empty()) {
        toBeRemoved.top()->eraseFromParent();
        toBeRemoved.pop();
    }


    return outputMap;
}

void Iterative_ALC::refinePreHeaderForRemaining(BasicBlock *preHeaderForRemaining,
                                                BasicBlock *middleBlock,
                                                Value *value) {
    IRBuilder<> builder(middleBlock->getContext());
    builder.SetInsertPoint(middleBlock->getTerminator());

    // The first instruction is a phi node
    auto *phiNode =
            dyn_cast<PHINode>(&preHeaderForRemaining->getInstList().front());

    // one is i32 the other is i64
    if (value->getType() != phiNode->getType()) {
        value = builder.CreateCast(Instruction::CastOps::ZExt, value,
                                   phiNode->getType());
    }
    phiNode->addIncoming(value, middleBlock);
}


std::vector<Instruction *> *Iterative_ALC::cloneInstructions(BasicBlock *From,
                                                             BasicBlock *to,
                                                             Value *VectorIndex) {

    // TODO: assumption : there are no more than one phi node that is the
    // induction var (since decision block is header)

    llvm::ValueToValueMapTy vMap;
    // first copy instruction into vectorizing Block, then vectorize them
    auto *clonedInstructions = new std::vector<Instruction *>;

    // initialize clonedInstructions with sharedInstruction from header


    for (auto instr: *sharedInstructions) {
        Instruction *clonedInstr = instr->clone();
        clonedInstr->insertBefore(to->getTerminator());
        clonedInstructions->push_back(clonedInstr);
        vMap[instr] = clonedInstr;
    }

    for (auto &instr: From->instructionsWithoutDebug()) {
        if (&instr == From->getTerminator()) {
            break;
        }
        if (isa<PHINode>(instr)) {
            continue;
        }

        Instruction *clonedInstr = instr.clone();
        clonedInstr->insertBefore(to->getTerminator());
        vMap[&instr] = clonedInstr;
        clonedInstructions->push_back(clonedInstr);

        for (auto &cloned_instr: *clonedInstructions) {
            llvm::RemapInstruction(cloned_instr, vMap,
                                   RF_NoModuleLevelChanges | RF_IgnoreMissingLocals);
        }
    }

    // replace induction vars with inductionVarInitialValue
    for (auto clonedInstr: *clonedInstructions) {

        if (usesInductionVar(clonedInstr, ScalarIV)) {
            for (int j = 0; j < clonedInstr->getNumOperands(); ++j) {
                if (clonedInstr->getOperand(j) == ScalarIV) {
                    clonedInstr->setOperand(j, VectorIndex);
                }
            }
        }
    }

    return clonedInstructions;
}

std::vector<Instruction *> *
Iterative_ALC::findHeaderAndPreheaderInstructionsRequiredInThenBlock(BasicBlock *header, BasicBlock *preheader,
                                                                     BasicBlock *thenBlock) {


    auto output = new std::vector<Instruction *>();
    for (auto &thenInstr: thenBlock->instructionsWithoutDebug()) {

        if (&thenInstr == thenBlock->getTerminator()) {
            break;
        }

        for (int i = 0; i < thenInstr.getNumOperands(); ++i) {

            std::vector<Instruction *> toCheckOperands;
            auto operand = thenInstr.getOperand(i);
            if (operand == ScalarIV || !isa<Instruction>(operand)) {
                continue;
            }
            auto *instruction = dyn_cast<Instruction>(operand);

            if ((instruction->getParent() == header || instruction->getParent() == preheader) &&
                (std::find(output->begin(), output->end(), instruction) ==
                 output->end())) {
                output->push_back(instruction);
                toCheckOperands.push_back(instruction);
            }

            for (int k = 0; k < toCheckOperands.size(); ++k) {
                for (int j = 0; j < toCheckOperands[k]->getNumOperands(); ++j) {
                    Value *innerOp = toCheckOperands[k]->getOperand(j);
                    if (innerOp == ScalarIV || !isa<Instruction>(innerOp)) {
                        continue;
                    }
                    auto opInstr = dyn_cast<Instruction>(innerOp);
                    if ((opInstr->getParent() == header || instruction->getParent() == preheader) &&
                        (std::find(output->begin(), output->end(), opInstr) ==
                         output->end())) {
                        output->push_back(opInstr);
                        toCheckOperands.push_back(opInstr);
                    }
                }
            }
        }
    }

    for (auto &headerInstr: header->instructionsWithoutDebug()) {

        if (&headerInstr == thenBlock->getTerminator()) {
            break;
        }

        for (int i = 0; i < headerInstr.getNumOperands(); ++i) {

            std::vector<Instruction *> toCheckOperands;
            auto operand = headerInstr.getOperand(i);
            if (operand == ScalarIV || !isa<Instruction>(operand)) {
                continue;
            }
            auto *instruction = dyn_cast<Instruction>(operand);

            if ((instruction->getParent() == preheader) &&
                (std::find(output->begin(), output->end(), instruction) ==
                 output->end())) {
                output->push_back(instruction);
                toCheckOperands.push_back(instruction);
            }

            for (int k = 0; k < toCheckOperands.size(); ++k) {
                for (int j = 0; j < toCheckOperands[k]->getNumOperands(); ++j) {
                    Value *innerOp = toCheckOperands[k]->getOperand(j);
                    if (innerOp == ScalarIV || !isa<Instruction>(innerOp)) {
                        continue;
                    }
                    auto opInstr = dyn_cast<Instruction>(innerOp);
                    if ((instruction->getParent() == preheader) &&
                        (std::find(output->begin(), output->end(), opInstr) ==
                         output->end())) {
                        output->push_back(opInstr);
                        toCheckOperands.push_back(opInstr);
                    }
                }
            }
        }
    }

    // should revers the output so that each instruction comes after the
    // instruction it depends on
    std::reverse(output->begin(), output->end());
    return output;
}

bool Iterative_ALC::usesInductionVar(Value *value, Value *inductionVar) {
    if (value == inductionVar) {
        return true;
    }
    for (auto user: inductionVar->users()) {
        if (user == value) {

            return true;
        }
    }
    return false;
}


void Iterative_ALC::addBranchHint(BranchInst *branchInst) {

    Function &F = *targetedBlock->getParent();
    LLVMContext &C = F.getContext();
    LLVMContext &context = branchInst->getContext();
    llvm::IntegerType *Int32Ty = llvm::Type::getInt32Ty(context);

    MDString *mdString = MDString::get(context, "branch_weights");

    ConstantAsMetadata *trueProbability = llvm::ConstantAsMetadata::get(llvm::ConstantInt::get(Int32Ty, 10));
    ConstantAsMetadata *falseProbability = llvm::ConstantAsMetadata::get(llvm::ConstantInt::get(Int32Ty, 90));

    MDTuple *md = MDNode::get(context, {mdString, trueProbability, falseProbability});
    branchInst->setMetadata(LLVMContext::MD_prof, md);


}


void Iterative_ALC::fillALCHeader_full_permutation(BasicBlock *alcHeader, BasicBlock *laneGatherBlock,
                                                   BasicBlock *preALCBlock,
                                                   std::vector<Value *> *initialValues, BasicBlock *header) {
    IRBuilder<> builder(preALCBlock->getTerminator());

    Value *initialPredicates = formPredicate(
            header, preALCBlock, ConstZeroVectorOfTripCountTy); // initial predicates

    // count initial predicates inside the preALC
    IRBuilder<> preALCBuilder(alcHeader->getContext());
    preALCBuilder.SetInsertPoint(preALCBlock->getTerminator());
    Value *initialUniformVecActives =
            intrinsicCallGenerator->createCntpInstruction(
                    preALCBuilder, initialPredicates, initialPredicates);

    if (TripCountTy == builder.getInt32Ty()) {
        initialUniformVecActives = builder.CreateTruncOrBitCast(
                initialUniformVecActives, TripCountTy);
    }

    //IRBuilder<> builder(alcHeader->getContext());
    builder.SetInsertPoint(alcHeader);

    builder.CreateBr(laneGatherBlock);
    DTUpdates.push_back({DT->Insert, alcHeader, laneGatherBlock});
    builder.SetInsertPoint(alcHeader->getTerminator());

    // create phi node for loop index
    VectorLoopIndex =
            builder.CreatePHI(VscaleFactor->getType(), 2, "vector.loop.index");
    VectorLoopIndex->addIncoming(VscaleFactor, preALCBlock);

    // create phi for uniformVec
    Value *&initalUniformVec = (*initialValues)[0];
    IndexVectorOfFirstVector =
            builder.CreatePHI(initalUniformVec->getType(), 2, "uniform.vector");
    static_cast<PHINode *>(IndexVectorOfFirstVector)
            ->addIncoming(initalUniformVec, preALCBlock);

    // create phi for uniformVecPreds
    PredicatesOfFirstVector = builder.CreatePHI(initialPredicates->getType(), 2,
                                                "uniform.vector.predicates");
    static_cast<PHINode *>(PredicatesOfFirstVector)
            ->addIncoming(initialPredicates, preALCBlock);


    // next iteration index vec
    Constant *constOne =
            llvm::ConstantInt::get(VscaleFactor->getType(), 1, true);
    IndexVectorOfSecondVector = intrinsicCallGenerator->createIndexInstruction(
            builder, VectorLoopIndex, constOne);

    // form predicates
    PredicatesOfSecondVector = formPredicate(header, alcHeader, VectorLoopIndex);


    ActiveLanesInFirstVector = intrinsicCallGenerator->createCntpInstruction(builder, PredicatesOfFirstVector,
                                                                             PredicatesOfFirstVector);
    ActiveLanesInSecondVector = intrinsicCallGenerator->createCntpInstruction(
            builder, PredicatesOfSecondVector, PredicatesOfSecondVector);

    if (TripCountTy == builder.getInt32Ty()) {
        ActiveLanesInSecondVector = builder.CreateTruncOrBitCast(
                ActiveLanesInSecondVector, TripCountTy);
        ActiveLanesInFirstVector = builder.CreateTruncOrBitCast(
                ActiveLanesInFirstVector, TripCountTy
        );
    }
    ActiveLanesInBothVectors =
            builder.CreateAdd(ActiveLanesInFirstVector, ActiveLanesInSecondVector);

}

void
Iterative_ALC::fillLaneGather_full_permutation(BasicBlock *laneGather, BasicBlock *uniformBlock, BasicBlock *latch) {

    insertPermutationLogic_full_permutation(laneGather, MergedIndices, RemainingIndices, MergedPredicates,
                                            RemainingPredicates);
    IRBuilder<> builder(laneGather);

    ActiveElementsInPermutedVector =
            intrinsicCallGenerator->createCntpInstruction(builder, MergedPredicates,
                                                          MergedPredicates);

    if (TripCountTy == builder.getInt32Ty()) {
        ActiveElementsInPermutedVector = builder.CreateTruncOrBitCast(
                ActiveElementsInPermutedVector, TripCountTy);
    }

    // check if z0 is uniform
    Value *condition =
            builder.CreateICmpULT(ActiveLanesInBothVectors, VscaleFactor);
    builder.CreateCondBr(condition, latch, uniformBlock);
}


void
Iterative_ALC::insertPermutationLogic_full_permutation(BasicBlock *insertAt, Value *&permutedZ0, Value *&permutedZ1,
                                                       Value *&permutedP0, Value *&permutedP1) {

    IRBuilder<> IRB(insertAt);
    auto *constZero = ConstantInt::get(ActiveLanesInFirstVector->getType(), 0);
    // gather active lanes
    auto *z2 = intrinsicCallGenerator->createCompactInstruction(
            IRB, IndexVectorOfFirstVector, PredicatesOfFirstVector);
    auto *z3 = intrinsicCallGenerator->createCompactInstruction(
            IRB, IndexVectorOfSecondVector, PredicatesOfSecondVector);

    Value *p2 = IRB.CreateNot(PredicatesOfFirstVector);
    Value *p3 = IRB.CreateNot(PredicatesOfSecondVector);
    Value *z4 = intrinsicCallGenerator->createCompactInstruction(IRB, IndexVectorOfFirstVector, p2);
    Value *z5 = intrinsicCallGenerator->createCompactInstruction(IRB, IndexVectorOfSecondVector, p3);


    auto *p4 = intrinsicCallGenerator->createWhileltInstruction(
            IRB, constZero, ActiveLanesInFirstVector);
    permutedZ0 = intrinsicCallGenerator->createSpliceInstruction(IRB, z2, z3, p4);
    permutedP0 = intrinsicCallGenerator->createWhileltInstruction(
            IRB, constZero, ActiveLanesInBothVectors);


    auto *constZero64 = ConstantInt::get(IRB.getInt64Ty(), 0);

    Value *x1 = intrinsicCallGenerator->createCntpInstruction(IRB, PredicatesOfFirstVector,
                                                              PredicatesOfFirstVector);
    Value *p5 = intrinsicCallGenerator->createWhileltInstruction(IRB, constZero64, x1);
    z2 = intrinsicCallGenerator->createSpliceInstruction(IRB, z3, z5, p5); // contains active ... inactive
    Value *x2 = intrinsicCallGenerator->createCntpInstruction(IRB, p2, p2);
    p2 = intrinsicCallGenerator->createWhileltInstruction(IRB, constZero64, x2);
    permutedZ1 = intrinsicCallGenerator->createSelInstruction(IRB, z4, z2, p2);


    Value *p6 = IRB.CreateNot(p2);      // mask based on first vector false elements
    Value *x3 = intrinsicCallGenerator->createCntpInstruction(IRB, p3, p3);
    Value *truncResult = IRB.CreateSExt(ActualVectorLength, x3->getType());
    Value *subResult = IRB.CreateSub(truncResult, x3);
    Value *p7 = intrinsicCallGenerator->createWhileltInstruction(IRB, constZero64,
                                                                 subResult);  // mask based on second vector false elements
    permutedP1 = IRB.CreateAnd(p6, p7);

}

void Iterative_ALC::fillUniformBlock_full_permutation(BasicBlock *uniformBlock, BasicBlock *latch,
                                                      BasicBlock *toBeVectorizedBlock,
                                                      BasicBlock *header, Value *indices) {
    IRBuilder<> builder(uniformBlock->getContext());
    builder.SetInsertPoint(uniformBlock);
    builder.CreateBr(latch);
    DTUpdates.push_back({DT->Insert, uniformBlock, latch});
    builder.SetInsertPoint(uniformBlock->getTerminator());

    Constant *constOne = llvm::ConstantInt::get(TripCountTy, 1, true);

    std::vector<Instruction *> *clonedInstructions = cloneInstructions(
            toBeVectorizedBlock, uniformBlock, ConstZeroVectorOfTripCountTy);


    // TODO: handle cases where instruction uses 0 instead of induction var
    vectorizeInstructions(clonedInstructions, uniformBlock, indices,
                          ConstZeroVectorOfTripCountTy, allTrue, true, false);

}

std::vector<Value *> *
Iterative_ALC::fillNewLatchBlock_full_permutation(BasicBlock *newLatch, BasicBlock *alcHeader, BasicBlock *middleBlock,
                                                  BasicBlock *laneGather, BasicBlock *uniformBlock,
                                                  Value *totalVecIterations) {
    auto outputs = new std::vector<Value *>;

    IRBuilder<> builder(newLatch->getContext());
    builder.SetInsertPoint(newLatch);


    PHINode *uniformVecPhi = builder.CreatePHI(IndexVectorOfFirstVector->getType(), 2);
    uniformVecPhi->addIncoming(RemainingIndices, uniformBlock);
    uniformVecPhi->addIncoming(MergedIndices, laneGather);

    PHINode *predicatesPhi = builder.CreatePHI(PredicatesOfFirstVector->getType(), 2);
    predicatesPhi->addIncoming(RemainingPredicates, uniformBlock);
    predicatesPhi->addIncoming(MergedPredicates, laneGather);


    // update phi nodes in header
    const BasicBlock::phi_iterator &headerIndexPhi = alcHeader->phis().begin();
    Value *updatedIndex = builder.CreateAdd(VectorLoopIndex, VscaleFactor);
    headerIndexPhi->addIncoming(updatedIndex, newLatch);

    const BasicBlock::phi_iterator &headerUniformVecPhi =
            std::next(headerIndexPhi, 1);
    headerUniformVecPhi->addIncoming(uniformVecPhi, newLatch);

    const BasicBlock::phi_iterator &headerPredicatesPhi =
            std::next(headerUniformVecPhi, 1);
    headerPredicatesPhi->addIncoming(predicatesPhi, newLatch);


    Value *condition = builder.CreateICmpUGE(updatedIndex, totalVecIterations);
    builder.CreateCondBr(condition, middleBlock, alcHeader);

    outputs->push_back(updatedIndex);
    outputs->push_back(uniformVecPhi);
    outputs->push_back(predicatesPhi);

    return outputs;
}

Value *Iterative_ALC::createVectorOfConstants(Value *value, IRBuilder<> &builder,
                                              std::string name) {


    auto *vecType = VectorType::get(value->getType(), vectorizationFactor, true);

    uint64_t indexZero = 0;
    Value *UndefVec = UndefValue::get(vecType);

    Value *splatInsert = builder.CreateInsertElement(UndefVec, value, indexZero);

    ConstantAggregateZero *zeroInitializer = ConstantAggregateZero::get(vecType);


    return builder.CreateShuffleVector(splatInsert, UndefVec, zeroInitializer,
                                       name);
}

Iterative_ALC::Iterative_ALC(Loop *l, int vectorizationFactor,
                             LoopStandardAnalysisResults &ar, Value *tripCount)
        : L(l), vectorizationFactor(vectorizationFactor), AR(ar), tripCount(tripCount) {
    LI = &AR.LI;
    SE = &AR.SE;
    DT = &AR.DT;
    module = L->getHeader()->getModule();

    TripCountTy = tripCount->getType();
    if (vectorizationFactor == 4 && TripCountTy == Type::getInt64Ty(tripCount->getContext())) {
        errs() << "warning: Requested VF = 4 but TripCountTy is i64. Reverting VF to 2\n";
        this->vectorizationFactor = 2;
    }
    intrinsicCallGenerator =
            new IntrinsicCallGenerator(this->vectorizationFactor, module);
}









