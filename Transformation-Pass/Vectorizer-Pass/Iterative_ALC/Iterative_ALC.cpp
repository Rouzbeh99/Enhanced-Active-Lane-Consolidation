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

    thenBlock = findThenBlock(header, latch);
    elseBlock = nullptr;


    sharedInstructions =
            findHeaderAndPreheaderInstructionsRequiredForALC(header, preheader);

    BasicBlock *preheaderForRemainingBlock =
            createPreheaderForRemainingIterations();

    // create blocks
    preALCBlock = createEmptyBlock("pre.alc", latch);
    middleBlock = createEmptyBlock("middel.block", latch);
    alcHeader = createEmptyBlock("alc.header", middleBlock);
    laneGatherBlock = createEmptyBlock("lane.gather", middleBlock);
    linearizedBlock = createEmptyBlock("linearized", middleBlock);
    uniformThenBlock = createEmptyBlock("uniform.block", middleBlock);
    newLatch = createEmptyBlock("new.latch", middleBlock);
    joinBlock = createEmptyBlock("join.block", middleBlock);

    refinePreheader(preheaderForRemainingBlock);

    // fill blocks
    std::vector<Value *> *preALCBlockValues =
            fillPreALCBlock_itr(preheader);
    fillALCHeaderBlock_itr(preALCBlockValues, header);

    fillLaneGatherBlock_itr();
    std::vector<Value *> *uniformBlockOutputs = fillUniformBlock_itr(header);
    fillLinearizedBlock_itr(IndexVectorOfSecondVector, PredicatesOfSecondVector);
    std::vector<Value *> *joinBlockOutputs = fillJoinBlock(uniformBlockOutputs);
    std::vector<Value *> *latchOutputs = fillNewLatchBlock_itr(joinBlockOutputs, (*preALCBlockValues)[3]);

    fillMiddleBlock_itr(preheaderForRemainingBlock, exitBlock,
                        (*preALCBlockValues)[2], (*latchOutputs)[1],
                        (*latchOutputs)[2]);

    refinePreHeaderForRemaining(preheaderForRemainingBlock, (*latchOutputs)[0]);


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

    thenBlock = findThenBlock(header, latch);
    elseBlock = nullptr;

    sharedInstructions =
            findHeaderAndPreheaderInstructionsRequiredForALC(header, preheader);

    BasicBlock *preheaderForRemainingBlock =
            createPreheaderForRemainingIterations();

    // create blocks
    preALCBlock = createEmptyBlock("pre.alc", latch);
    middleBlock = createEmptyBlock("middle.block", latch);
    alcHeader = createEmptyBlock("alc.header", middleBlock);
    laneGatherBlock = createEmptyBlock("lane.gather", middleBlock);
    uniformThenBlock = createEmptyBlock("uniform.block", middleBlock);
    newLatch = createEmptyBlock("new.latch", middleBlock);


    refinePreheader(preheaderForRemainingBlock);
    std::vector<Value *> *preALCBlockValues = fillPreALCBlock_itr(preheader);

    fillALCHeader_full_permutation(preALCBlockValues, header);
    fillLaneGather_full_permutation();
    fillUniformBlock_full_permutation(header);
    std::vector<Value *> *latchOutputs = fillNewLatchBlock_full_permutation((*preALCBlockValues)[3]);

    fillMiddleBlock_itr(preheaderForRemainingBlock, exitBlock,
                        (*preALCBlockValues)[2], (*latchOutputs)[1],
                        (*latchOutputs)[2]);

    refinePreHeaderForRemaining(preheaderForRemainingBlock, (*latchOutputs)[0]);
}


void Iterative_ALC::doTransformation_itr_if_then_else() {
    auto *header = L->getHeader();
    auto &context = header->getContext();
    ScalarIV = L->getCanonicalInductionVariable();
    assert(isa<PHINode>(ScalarIV) && "Induction variable must be a PHINode!");
    auto *preheader = L->getLoopPreheader();
    auto *latch = L->getLoopLatch();
    auto *exitBlock = L->getExitBlock();
    ConstZeroVectorOfTripCountTy = llvm::ConstantInt::get(TripCountTy, 0, true);

    thenBlock = findThenBlock(header, latch);
    elseBlock = findElseBlock(header);
    sharedInstructions =
            findHeaderAndPreheaderInstructionsRequiredForALC(header, preheader);

    BasicBlock *preheaderForRemainingBlock =
            createPreheaderForRemainingIterations();

    // create blocks
    preALCBlock = createEmptyBlock("pre.alc", latch);
    middleBlock = createEmptyBlock("middel.block", latch);
    alcHeader = createEmptyBlock("alc.header", middleBlock);
    laneGatherBlock = createEmptyBlock("lane.gather", middleBlock);
    uniformThenBlock = createEmptyBlock("uniform.then", middleBlock);
    uniformElseBlock = createEmptyBlock("uniform.else", middleBlock);
    newLatch = createEmptyBlock("new.latch", middleBlock);
    linearizedThen = createEmptyBlock("linearized.then", middleBlock);
    linearizedElse = createEmptyBlock("linearized.else", middleBlock);
    joinBlock = createEmptyBlock("joinBlock", middleBlock);

    refinePreheader(preheaderForRemainingBlock);
    std::vector<Value *> *preALCBlockValues = fillPreALCBlock_itr(preheader);
    fillALCHeader_if_then_else(preALCBlockValues, header);
    fillLaneGather_if_then_else(false);
    fillUniformThenBlock();
    fillUniformElseBlock();
    std::vector<Value *> *latchOutputs = fillNewLatchBlock_if_then_else((*preALCBlockValues)[3]);
    fillJoinBlock_if_then_else((*latchOutputs)[1]);
    fillLinearizedThen();
    fillLinearizedElse();


    fillMiddleBlock_if_then_else(preheaderForRemainingBlock, exitBlock,
                                 (*preALCBlockValues)[2]);

    refinePreHeaderForRemaining(preheaderForRemainingBlock, (*latchOutputs)[0]);


}

void Iterative_ALC::doTransformation_itr_if_then_else_data_Permutation() {
    auto *header = L->getHeader();
    auto &context = header->getContext();
    ScalarIV = L->getCanonicalInductionVariable();
    assert(isa<PHINode>(ScalarIV) && "Induction variable must be a PHINode!");
    auto *preheader = L->getLoopPreheader();
    auto *latch = L->getLoopLatch();
    auto *exitBlock = L->getExitBlock();
    ConstZeroVectorOfTripCountTy = llvm::ConstantInt::get(TripCountTy, 0, true);

    thenBlock = findThenBlock(header, latch);
    elseBlock = findElseBlock(header);


    sharedInstructions =
            findHeaderAndPreheaderInstructionsRequiredForALC(header, preheader);
    findLoadInstructions();


    dataPermutation = true;


    BasicBlock *preheaderForRemainingBlock =
            createPreheaderForRemainingIterations();

    // create blocks
    preALCBlock = createEmptyBlock("pre.alc", latch);
    middleBlock = createEmptyBlock("middel.block", latch);
    alcHeader = createEmptyBlock("alc.header", middleBlock);
    laneGatherBlock = createEmptyBlock("lane.gather", middleBlock);
    uniformThenBlock = createEmptyBlock("uniform.then", middleBlock);
    uniformElseBlock = createEmptyBlock("uniform.else", middleBlock);
    newLatch = createEmptyBlock("new.latch", middleBlock);
    linearizedThen = createEmptyBlock("linearized.then", middleBlock);
    linearizedElse = createEmptyBlock("linearized.else", middleBlock);
    joinBlock = createEmptyBlock("joinBlock", middleBlock);

    refinePreheader(preheaderForRemainingBlock);
    std::vector<Value *> *preALCBlockValues =
            fillPreALCBlock_itr(preheader);
    std::map<Instruction *, Instruction *> instructionsInPreAlcMap = loadInstructionsInPreALC();

    fillALCHeader_if_then_else(preALCBlockValues, header);

    loadInstructionsInHeader();

    addLoadInstructionPhisInHeader(header, instructionsInPreAlcMap);

    fillLaneGather_if_then_else(true);

    std::vector<Value *> *latchOutputs = fillNewLatchBlock_if_then_else((*preALCBlockValues)[3]);
    addLoadPhisToLatch_if_then_else_data_Permutation();
    fillJoinBlock_if_then_else((*latchOutputs)[1]);

    fillUniformThenBlock();
    fillUniformElseBlock();


    fillLinearizedThen();
    fillLinearizedElse();
    fillMiddleBlock_if_then_else(preheaderForRemainingBlock, exitBlock,
                                 (*preALCBlockValues)[2]);
    refinePreHeaderForRemaining(preheaderForRemainingBlock, (*latchOutputs)[0]);

}


void Iterative_ALC::doTransformation_itr_singleIf_data_Permutation() {
    auto *header = L->getHeader();
    auto &context = header->getContext();
    ScalarIV = L->getCanonicalInductionVariable();
    assert(isa<PHINode>(ScalarIV) && "Induction variable must be a PHINode!");
    auto *preheader = L->getLoopPreheader();
    auto *latch = L->getLoopLatch();
    auto *exitBlock = L->getExitBlock();
    ConstZeroVectorOfTripCountTy = llvm::ConstantInt::get(TripCountTy, 0, true);

    thenBlock = findThenBlock(header, latch);
    elseBlock = nullptr;


    sharedInstructions =
            findHeaderAndPreheaderInstructionsRequiredForALC(header, preheader);

    findLoadInstructions();
    dataPermutation = true;

    BasicBlock *preheaderForRemainingBlock =
            createPreheaderForRemainingIterations();

    // create blocks
    preALCBlock = createEmptyBlock("pre.alc", latch);
    middleBlock = createEmptyBlock("middel.block", latch);
    alcHeader = createEmptyBlock("alc.header", middleBlock);
    laneGatherBlock = createEmptyBlock("lane.gather", middleBlock);
    linearizedBlock = createEmptyBlock("linearized", middleBlock);
    uniformThenBlock = createEmptyBlock("uniform.block", middleBlock);
    newLatch = createEmptyBlock("new.latch", middleBlock);
    joinBlock = createEmptyBlock("join.block", middleBlock);

    refinePreheader(preheaderForRemainingBlock);

    // fill blocks
    std::vector<Value *> *preALCBlockValues =
            fillPreALCBlock_itr(preheader);
    std::map<Instruction *, Instruction *> instructionsInPreAlcMap = loadInstructionsInPreALC();


    fillALCHeaderBlock_itr(preALCBlockValues, header);
    loadInstructionsInHeader();

    addLoadInstructionPhisInHeader(header, instructionsInPreAlcMap);

    fillLaneGatherBlock_itr();


    std::vector<Value *> *uniformBlockOutputs = fillUniformBlock_itr(header);

    fillLinearizedBlock_itr(IndexVectorOfSecondVector, PredicatesOfSecondVector);
    std::vector<Value *> *joinBlockOutputs = fillJoinBlock(uniformBlockOutputs);
    std::vector<Value *> *latchOutputs = fillNewLatchBlock_itr(joinBlockOutputs, (*preALCBlockValues)[3]);

    addLoadPhisToLatch_singleIf_data_Permutation();

    fillMiddleBlock_itr(preheaderForRemainingBlock, exitBlock,
                        (*preALCBlockValues)[2], (*latchOutputs)[1],
                        (*latchOutputs)[2]);

    refinePreHeaderForRemaining(preheaderForRemainingBlock, (*latchOutputs)[0]);


    DT->applyUpdates(DTUpdates);
    DTUpdates.clear();
}



//////////////////////////////////////////////////////////////////////////////////////////////////////////////////


void Iterative_ALC::insertPermutationLogic(BasicBlock *insertAt) {

    IRBuilder<> IRB(insertAt);
    auto *constZero = ConstantInt::get(ActiveLanesInFirstVector->getType(), 0);

    // gather active lanes
    auto *z2 = intrinsicCallGenerator->createCompactInstruction(
            IRB, IndexVectorOfFirstVector, PredicatesOfFirstVector);
    auto *z3 = intrinsicCallGenerator->createCompactInstruction(
            IRB, IndexVectorOfSecondVector, PredicatesOfSecondVector);
    auto *p4 = intrinsicCallGenerator->createWhileltInstruction(
            IRB, constZero, ActiveLanesInFirstVector);
    MergedIndices = intrinsicCallGenerator->createSpliceInstruction(IRB, z2, z3, p4);
    MergedPredicates = intrinsicCallGenerator->createWhileltInstruction(
            IRB, constZero, ActiveLanesInBothVectors);
}

void Iterative_ALC::insertPermutationLogic_singleIf_data_Permutation(BasicBlock *insertAt) {
    IRBuilder<> IRB(insertAt);
    auto *constZero = ConstantInt::get(ActiveLanesInFirstVector->getType(), 0);

    // gather active lanes
    auto *z2 = intrinsicCallGenerator->createCompactInstruction(
            IRB, IndexVectorOfFirstVector, PredicatesOfFirstVector);
    auto *z3 = intrinsicCallGenerator->createCompactInstruction(
            IRB, IndexVectorOfSecondVector, PredicatesOfSecondVector);
    ///compacting data vectors
    std::map<Instruction *, Value *> compacted_Merge;
    std::map<Instruction *, Value *> compacted_Rem;

    for (auto instr: loadInstructionsToPermute) {
        Value *cmpct1 = intrinsicCallGenerator->createCompactInstruction(
                IRB, MergeLoadInstrMap[instr], PredicatesOfFirstVector);
        compacted_Merge.insert({instr, cmpct1});

        Value *cmpct2 = intrinsicCallGenerator->createCompactInstruction(
                IRB, RemainingLoadInstrMap[instr], PredicatesOfSecondVector);
        compacted_Rem.insert({instr, cmpct2});
    }


    auto *p4 = intrinsicCallGenerator->createWhileltInstruction(
            IRB, constZero, ActiveLanesInFirstVector);
    MergedIndices = intrinsicCallGenerator->createSpliceInstruction(IRB, z2, z3, p4);
    std::map<Instruction *, Value *> mergeMap;
    for (auto instr: loadInstructionsToPermute) {
        Value *merge = intrinsicCallGenerator->createSpliceInstruction(IRB, compacted_Merge[instr],
                                                                       compacted_Rem[instr],
                                                                       p4);
        mergeMap.insert({instr, merge});
        MergeLoadInstrMap[instr] = merge;
    }
    MergedPredicates = intrinsicCallGenerator->createWhileltInstruction(
            IRB, constZero, ActiveLanesInBothVectors);
}

BasicBlock *Iterative_ALC::findThenBlock(BasicBlock *header, BasicBlock *latch) {
    auto *headerBr = dyn_cast<BranchInst>(header->getTerminator());
    assert(headerBr && "header terminator is not conditional branch!!");
    if (!headerBr->isConditional()) {
        assert(headerBr && "header terminator is not conditional branch!!");
    }


    auto *thenBB = dyn_cast<BasicBlock>(headerBr->getSuccessor(0));
    if (thenBB == latch) {
        thenBB = dyn_cast<BasicBlock>(headerBr->getOperand(1));
        negatedCondition = true;
    }

    return thenBB;


}

BasicBlock *Iterative_ALC::findElseBlock(BasicBlock *header) {
    auto *headerBr = dyn_cast<BranchInst>(header->getTerminator());
    assert(headerBr && "header terminator is not conditional branch!!");
    if (!headerBr->isConditional()) {
        assert(headerBr && "header terminator is not conditional branch!!");
    }

    return dyn_cast<BasicBlock>(headerBr->getSuccessor(1));
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

void Iterative_ALC::refinePreheader(BasicBlock *preHeaderForRemaining) {

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

    IRB.CreateCondBr(condition, preALCBlock, preHeaderForRemaining);
    DTUpdates.push_back({DT->Insert, L->getLoopPreheader(), preALCBlock});
    DTUpdates.push_back({DT->Insert, L->getLoopPreheader(), preHeaderForRemaining});

    // remove previous terminator
    Terminator->eraseFromParent();
}

std::vector<Value *> *Iterative_ALC::fillPreALCBlock_itr(BasicBlock *preheader) {
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

    fillHoistedInstructionsWithLoadsFromConstantMemoryAddress();

    return results;
}

void Iterative_ALC::fillMiddleBlock_itr(BasicBlock *preheaderForRemaining,
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
    auto instructionsOrder = new std::vector<Instruction *>;
    std::map<Instruction *, Instruction *> *clonedInstructions = cloneInstructions(thenBlock, middleBlock, constZero,
                                                                                   true, instructionsOrder);

    // when permuted, all indices in gather/scatter will be computed with respect
    // to indicesVec so index var should be 0
    vectorizeInstructions(clonedInstructions, instructionsOrder, middleBlock, uniformVec, constZero,
                          uniformVecPredicates, true, false, false);


}

void
Iterative_ALC::fillALCHeaderBlock_itr(std::vector<Value *> *initialValues, BasicBlock *header) {

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
    builder.CreateCondBr(tmpCond, laneGatherBlock, linearizedBlock);
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

void Iterative_ALC::fillLaneGatherBlock_itr() {

    if (dataPermutation) {
        insertPermutationLogic_singleIf_data_Permutation(laneGatherBlock);
    } else {
        insertPermutationLogic(laneGatherBlock);
    }

    IRBuilder<> builder(laneGatherBlock);

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
    builder.CreateCondBr(condition, joinBlock, uniformThenBlock);

}

std::vector<Value *> *Iterative_ALC::fillUniformBlock_itr(BasicBlock *header) {


    auto outputs = new std::vector<Value *>;

    IRBuilder<> builder(uniformThenBlock->getContext());
    builder.SetInsertPoint(uniformThenBlock);
    builder.CreateBr(joinBlock);
    DTUpdates.push_back({DT->Insert, uniformThenBlock, joinBlock});
    builder.SetInsertPoint(uniformThenBlock->getTerminator());

    Constant *constOne = llvm::ConstantInt::get(TripCountTy, 1, true);
    Constant *constZero = llvm::ConstantInt::get(TripCountTy, 1, true);

    auto *instructionsOrder = new std::vector<Instruction *>;

    std::map<Instruction *, Instruction *> *clonedInstructions = cloneInstructions(
            thenBlock, uniformThenBlock, ConstZeroVectorOfTripCountTy, true, instructionsOrder);


    // TODO: handle cases where instruction uses 0 instead of induction var
    vectorizeInstructions(clonedInstructions, instructionsOrder, uniformThenBlock, MergedIndices,
                          ConstZeroVectorOfTripCountTy, allTrue, true, false, false);

    // Form next iteration
    Value *nextItrIndex = builder.CreateAdd(VectorLoopIndex, VscaleFactor);
    Value *nextUniformVec = intrinsicCallGenerator->createIndexInstruction(
            builder, nextItrIndex, constOne);
    Value *nextPredicateVec = formPredicate(header, uniformThenBlock, nextItrIndex);
    Value *activeElements = intrinsicCallGenerator->createCntpInstruction(
            builder, nextPredicateVec, nextPredicateVec);


    if (TripCountTy == builder.getInt32Ty()) {
        activeElements = builder.CreateTruncOrBitCast(activeElements, TripCountTy);
    }

    // in case of data permutation, should load data and update mergeVectors
    if (dataPermutation) {

        for (auto instr: loadInstructionsToPermute) {
            Value *ptr = instr->getPointerOperand();
            if (isa<GEPOperator>(ptr)) {
                Instruction *clonedGEP = dyn_cast<Instruction>(ptr)->clone();
                for (int i = 0; i < clonedGEP->getNumOperands(); ++i) {
                    if (clonedGEP->getOperand(i) == ScalarIV) {
                        clonedGEP->setOperand(i, nextItrIndex);
                    }
                }
                clonedGEP->insertBefore(uniformThenBlock->getTerminator());
                ptr = clonedGEP;
            }

            auto *vecType = VectorType::get(instr->getType(), vectorizationFactor, true);
            LoadInst *vectorLoad = builder.CreateLoad(vecType, ptr, "new_loaded" + ptr->getName());
            RemainingLoadInstrMap[instr] = vectorLoad;
        }

    }

    outputs->push_back(nextItrIndex);
    outputs->push_back(nextUniformVec);
    outputs->push_back(nextPredicateVec);
    outputs->push_back(activeElements);

    return outputs;
}

void Iterative_ALC::fillLinearizedBlock_itr(Value *indexVec, Value *predicates) {
    IRBuilder<> builder(linearizedBlock->getContext());
    builder.SetInsertPoint(linearizedBlock);
    builder.CreateBr(newLatch);
    DTUpdates.push_back({DT->Insert, linearizedBlock, newLatch});

    auto *instructionsOrder = new std::vector<Instruction *>;
    std::map<Instruction *, Instruction *> *clonedInstructions = cloneInstructions(thenBlock, linearizedBlock,
                                                                                   VectorLoopIndex, true,
                                                                                   instructionsOrder);
    vectorizeInstructions(clonedInstructions, instructionsOrder, linearizedBlock, indexVec,
                          VectorLoopIndex, predicates, false, true, false);
}

std::vector<Value *> *
Iterative_ALC::fillNewLatchBlock_itr(std::vector<Value *> *joinBlockOutputs, Value *totalVecIterations) {

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
Iterative_ALC::fillJoinBlock(std::vector<Value *> *uniformBlockOutputs) {

    auto outputs = new std::vector<Value *>;

    IRBuilder<> builder(joinBlock->getContext());
    builder.SetInsertPoint(joinBlock);

    Value *&nextIndex = (*uniformBlockOutputs)[0];
    Value *&nextUniformVec = (*uniformBlockOutputs)[1];
    Value *&nextPredicates = (*uniformBlockOutputs)[2];
    Value *&nextActiveLanesCount = (*uniformBlockOutputs)[3];

    PHINode *indexPhi = builder.CreatePHI(VectorLoopIndex->getType(), 2);
    indexPhi->addIncoming(VectorLoopIndex, laneGatherBlock);
    indexPhi->addIncoming(nextIndex, uniformThenBlock);

    PHINode *uniformVecPhi = builder.CreatePHI(MergedIndices->getType(), 2);
    uniformVecPhi->addIncoming(MergedIndices, laneGatherBlock);
    uniformVecPhi->addIncoming(nextUniformVec, uniformThenBlock);

    PHINode *predicatesPhi = builder.CreatePHI(MergedPredicates->getType(), 2);
    predicatesPhi->addIncoming(MergedPredicates, laneGatherBlock);
    predicatesPhi->addIncoming(nextPredicates, uniformThenBlock);

    PHINode *activeLanesCountPhi =
            builder.CreatePHI(ActiveElementsInPermutedVector->getType(), 2);
    activeLanesCountPhi->addIncoming(ActiveElementsInPermutedVector, laneGatherBlock);
    activeLanesCountPhi->addIncoming(nextActiveLanesCount, uniformThenBlock);

    outputs->push_back(indexPhi);
    outputs->push_back(uniformVecPhi);
    outputs->push_back(predicatesPhi);
    outputs->push_back(activeLanesCountPhi);

    if (dataPermutation) {
        for (auto instr: loadInstructionsToPermute) {
            PHINode *loadPhi = builder.CreatePHI(MergeLoadInstrMap[instr]->getType(), 2, "loadPhi");
            loadPhi->addIncoming(MergeLoadInstrMap[instr], laneGatherBlock);
            loadPhi->addIncoming(RemainingLoadInstrMap[instr], uniformThenBlock);
            joinBlockLoadPhis.insert({instr, loadPhi});
        }
    }

    builder.CreateBr(newLatch);
    DTUpdates.push_back({DT->Insert, joinBlock, newLatch});

    return outputs;
}

Value *Iterative_ALC::formPredicate(BasicBlock *decisionBlock,
                                    BasicBlock *predicateHolderBlock,
                                    Value *inductionVarInitialValue) {


    Instruction *predicates_scalar = nullptr;

    auto *instructionsOrder = new std::vector<Instruction *>;
    std::map<Instruction *, Instruction *> *clonedInstructions = cloneInstructions(
            decisionBlock, predicateHolderBlock, inductionVarInitialValue, false, instructionsOrder);


    BranchInst *clonedBrInstr = dyn_cast<BranchInst>(
            clonedInstructions->at(instructionsOrder->at(instructionsOrder->size() - 1)));

    predicates_scalar = static_cast<Instruction *>(clonedBrInstr->getCondition());


    // now we should vectorize clonedInstructions
    std::map<const Value *, const Value *> *instructionsMap =
            vectorizeInstructions(clonedInstructions, instructionsOrder, predicateHolderBlock, nullptr,
                                  inductionVarInitialValue, nullptr, false, false, true);
    Value *predicates = const_cast<Value *>((*instructionsMap)[predicates_scalar]);
    if (negatedCondition) {
        IRBuilder<> builder(predicateHolderBlock->getContext());
        builder.SetInsertPoint(predicateHolderBlock->getTerminator());

        predicates = builder.CreateNot(predicates);
    }


    return predicates;
}


std::map<const Value *, const Value *> *Iterative_ALC::vectorizeInstructions(
        const std::map<Instruction *, Instruction *> *originalToClonedInstMap,
        std::vector<Instruction *> *instructionsOrder, BasicBlock *block, Value *indices,
        Value *VectorIndex, Value *predicates, bool isPermuted, bool isPredicated, bool predicateFormation) {


    Instruction *insertionPoint = block->getTerminator();
    IRBuilder<> IRB(
            insertionPoint);

    Constant *constOne = llvm::ConstantInt::get(TripCountTy, 1, true);
    Constant *constZero = llvm::ConstantInt::get(TripCountTy, 0, true);
    Value *mutatedVectorIndex = VectorIndex;


    // Move types to i32 so that it's compatible with other instruction types and can be used as operands if needed
    // TODO: what if instruction operands were float??
//    if (vectorizationFactor == 2) {
//        constOne = llvm::ConstantInt::get(IRB.getInt32Ty(), 1, true);
//        mutatedVectorIndex = IRB.CreateTruncOrBitCast(VectorIndex, IRB.getInt32Ty());
//    }

    if (isPermuted) {
        ////////////////////////////////////////////// need to change uniform vector elements type to i32
    } else {
        indices = intrinsicCallGenerator->createIndexInstruction(IRB, mutatedVectorIndex,
                                                                 constOne);
    }


    auto outputMap = new std::map<const Value *, const Value *>;

    std::map<Value *, Value *> vMap;


    Function *function = block->getParent();

    for (auto &arg: function->args()) {
        if (arg.getType()->isIntegerTy() || arg.getType()->isFloatTy() || arg.getType()->isDoubleTy()) {

            Value *vector = createVectorOfValues(dyn_cast<Value>(&arg), IRB, "vector.arg");
            vMap[&arg] = vector;
        }
    }


    // Should be remove in FILO manner to prevent removing a value that is used in
    // following lines
    std::stack<Instruction *> toBeRemoved;

    llvm::outs() << "--------------------------------------\n";
    llvm::outs() << "In block " << block->getName() << "\n";



    // TODO: Complete the list
    for (auto originalInstr: *instructionsOrder) {
        Instruction *instr = (*originalToClonedInstMap).at(originalInstr);

        originalInstr->print(outs());
        llvm::outs() << "   ---->    ";
        instr->print(outs());
        llvm::outs() << "\n";

        if (isa<BranchInst>(instr)) {
            toBeRemoved.push(instr);
            continue;
        }

        if (hoistedInstructions.count(instr)) {
            vMap[instr] = hoistedInstructions[instr];
        } else if (auto *GEP = dyn_cast_or_null<GEPOperator>(instr)) {
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
                firstOp = createVectorOfValues(constValue, IRB, "store.values");
                // TODO: is there any other case ?
            }
            auto ptr = instr->getOperand(1);
            if (vMap.count(ptr)) {
                ptr = vMap[ptr];
            }


            assert(isa<GEPOperator>(ptr) &&
                   "Expected StoreInst PointerOperand to be GetElementPtr!");
            auto GEP = dyn_cast<GEPOperator>(ptr);

            //TODO: analysis pass should check this
//            if (isConstantMemoryLocation) {
//                assert(0 && "can not vectorize storing to the same memory address");
//        }

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

            if (dataPermutation && !predicateFormation) {
                if (block == uniformThenBlock) { // we are vectorizing uniform then block
                    Value *&mergeLoad = MergeLoadInstrMap[dyn_cast<Value>(originalInstr)];
                    if (mergeLoad) {
                        outputMap->insert({instr, mergeLoad});
                        vMap[instr] = mergeLoad;
                        toBeRemoved.push(instr);
                    } else {
                        assert(0 && "permuted load instruction not found!");
                    }
                    continue;
                } else if (block == uniformElseBlock) {
                    Value *&remainingLoad = RemainingLoadInstrMap[dyn_cast<Value>(originalInstr)];
                    if (remainingLoad) {
                        outputMap->insert({instr, remainingLoad});
                        vMap[instr] = remainingLoad;
                        toBeRemoved.push(instr);
                    } else {
                        assert(0 && "permuted load instruction not found!");
                    }
                    continue;
                }
            }

            assert(isa<GEPOperator>(ptr) &&
                   "Expected LoadInst PointerOperand to be GetElementPtr!");

            auto *GEP = static_cast<GEPOperator *>(ptr);

            auto *SrcTy = GEP->getSourceElementType();


//            bool isConstantMemoryLocation = findIfAccessingSameMemAddress(GEP);
//            if (isConstantMemoryLocation) {
//                assert(0 && "should have been hoisted!!");
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
                        createVectorOfValues(ConstantValue, IRB, "first.operand");
            } else {
                assert(0 && "first operand of trunc neither already vectorized nor Constant!");
            }

            // No need to do the trunc, just do the mapping
            vMap[instr] = operand;
            outputMap->insert({instr, operand});
            toBeRemoved.push(instr);


        } else if (isa<UnaryInstruction>(instr)) {

            Value *firstOp = nullptr;
            if (vMap.count(instr->getOperand(0))) {
                firstOp = vMap[instr->getOperand(0)];
            } else if (instr->getOperand(0) ==
                       VectorIndex) {

                firstOp = indices;
            } else {
                if (auto *ConstantValue =
                        dyn_cast_or_null<Constant>(instr->getOperand(0))) {
                    firstOp =
                            createVectorOfValues(ConstantValue, IRB, "first.operand");
                } else {
                    instr->print(outs());
                    llvm::outs() << "   ------ >  ";
                    assert(0 && "first operand neither already vectorized nor Constant!");
                }
            }

            Value *result = nullptr;
            switch (instr->getOpcode()) {
                case Instruction::FNeg:
                    result = IRB.CreateFNeg(firstOp);
                    break;

            }

            assert(result && "Unhandled UnaryOperator!");
            vMap[instr] = result;
            outputMap->insert({instr, result});
            toBeRemoved.push(instr);

        } else if (isa<BinaryOperator>(instr) ||
                   isa<ICmpInst>(instr) || isa<FCmpInst>(instr)) {


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
                            createVectorOfValues(ConstantValue, IRB, "first.operand");
                } else {
                    instr->print(outs());
                    llvm::outs() << "   ------ >  ";
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
                            createVectorOfValues(ConstantValue, IRB, "second.operand");
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
                    break;
                case Instruction::Or:
                    result = IRB.CreateOr(firstOp, secondOp);
                    break;
                case Instruction::ICmp: {
                    switch (dyn_cast<ICmpInst>(instr)->getPredicate()) {
                        case CmpInst::ICMP_EQ:
                            result = IRB.CreateICmpEQ(firstOp, secondOp);
                            break;
                        case CmpInst::ICMP_NE:
                            result = IRB.CreateICmpNE(firstOp, secondOp);
                            break;
                        case CmpInst::ICMP_UGT:
                            result = IRB.CreateICmpUGT(firstOp, secondOp);
                            break;
                        case CmpInst::ICMP_UGE:
                            result = IRB.CreateICmpUGE(firstOp, secondOp);
                            break;
                        case CmpInst::ICMP_ULT:
                            result = IRB.CreateICmpULT(firstOp, secondOp);
                            break;
                        case CmpInst::ICMP_ULE:
                            result = IRB.CreateICmpULE(firstOp, secondOp);
                            break;
                        case CmpInst::ICMP_SGT: {
                            result = IRB.CreateICmpSGT(firstOp, secondOp);
                            break;
                            case CmpInst::ICMP_SGE:
                                result = IRB.CreateICmpSGE(firstOp, secondOp);
                            break;
                            case CmpInst::ICMP_SLT:
                                result = IRB.CreateICmpSLT(firstOp, secondOp);
                            break;
                            case CmpInst::ICMP_SLE:
                                result = IRB.CreateICmpSLE(firstOp, secondOp);
                            break;
                            case CmpInst::BAD_ICMP_PREDICATE:
                                break;
                        }
                    }
                }
                    break;
                case Instruction::FCmp: {
                    switch (dyn_cast<FCmpInst>(instr)->getPredicate()) {
                        case CmpInst::FCMP_FALSE:
                            break;
                        case CmpInst::FCMP_OEQ:
                            result = IRB.CreateFCmpOEQ(firstOp, secondOp);
                            break;
                        case CmpInst::FCMP_OGT:
                            result = IRB.CreateFCmpOGT(firstOp, secondOp);
                            break;
                        case CmpInst::FCMP_OGE:
                            result = IRB.CreateFCmpOGE(firstOp, secondOp);
                            break;
                        case CmpInst::FCMP_OLT:
                            result = IRB.CreateFCmpOLT(firstOp, secondOp);
                            break;
                        case CmpInst::FCMP_OLE:
                            result = IRB.CreateFCmpOLE(firstOp, secondOp);
                            break;
                        case CmpInst::FCMP_ONE:
                            result = IRB.CreateFCmpONE(firstOp, secondOp);
                            break;
                        case CmpInst::FCMP_ORD:
                            result = IRB.CreateFCmpORD(firstOp, secondOp);
                            break;
                        case CmpInst::FCMP_UNO:
                            result = IRB.CreateFCmpUNO(firstOp, secondOp);
                            break;
                        case CmpInst::FCMP_UEQ:
                            result = IRB.CreateFCmpUEQ(firstOp, secondOp);
                            break;
                        case CmpInst::FCMP_UGT:
                            result = IRB.CreateFCmpUGT(firstOp, secondOp);
                            break;
                        case CmpInst::FCMP_UGE:
                            result = IRB.CreateFCmpUGE(firstOp, secondOp);
                            break;
                        case CmpInst::FCMP_ULT:
                            result = IRB.CreateFCmpULT(firstOp, secondOp);
                            break;
                        case CmpInst::FCMP_ULE:
                            result = IRB.CreateICmpULE(firstOp, secondOp);
                            break;
                        case CmpInst::FCMP_UNE:
                            result = IRB.CreateFCmpUNE(firstOp, secondOp);
                            break;
                        case CmpInst::FCMP_TRUE:
                            break;
                        case CmpInst::BAD_FCMP_PREDICATE:
                            break;

                    }
                }
            }
            assert(result && "Unhandled BinaryOperator!");
            vMap[instr] = result;
            outputMap->insert({instr, result});
            toBeRemoved.push(instr);


        } else if (isa<IntrinsicInst>(instr)) {
            auto *intrinsicInstr = dyn_cast<IntrinsicInst>(instr);

            Value *firstOp = nullptr;
            Value *secondOp = nullptr;
            Value *thirdOp = nullptr;
            if (vMap.count(instr->getOperand(0))) {
                firstOp = vMap[instr->getOperand(0)];
            } else if (instr->getOperand(0) ==
                       VectorIndex) {

                firstOp = indices;
            } else {
                if (auto *ConstantValue =
                        dyn_cast_or_null<Constant>(instr->getOperand(0))) {
                    firstOp =
                            createVectorOfValues(ConstantValue, IRB, "first.operand");
                } else {
                    instr->print(outs());
                    llvm::outs() << "   ------ >  ";
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
                            createVectorOfValues(ConstantValue, IRB, "second.operand");
                } else {
                    instr->getOperand(1)->print(outs());
                    llvm::outs() << "\n";
                    assert(0 &&
                           "second operand neither already vectorized nor Constant!");
                }
            }

            Value *result = nullptr;
            switch (intrinsicInstr->getIntrinsicID()) {
                case 143: {              // fmuladd intrinsic

                    if (vMap.count(instr->getOperand(2))) {
                        thirdOp = vMap[instr->getOperand(2)];
                    } else if (instr->getOperand(2) == VectorIndex) {
                        thirdOp = indices;
                    } else {
                        if (auto *ConstantValue =
                                dyn_cast_or_null<Constant>(instr->getOperand(2))) {
                            thirdOp =
                                    createVectorOfValues(ConstantValue, IRB, "second.operand");
                        } else {
                            instr->getOperand(2)->print(outs());
                            llvm::outs() << "\n";
                            assert(0 &&
                                   "second operand neither already vectorized nor Constant!");
                        }
                    }
                }
                    Value *mul = IRB.CreateFMul(firstOp, secondOp);
                    result = IRB.CreateFAdd(mul, thirdOp);
                    break;
            }

            assert(result && "Unhandled BinaryOperator!");
            vMap[instr] = result;
            outputMap->insert({instr, result});
            toBeRemoved.push(instr);


        }

    }


//    llvm::outs() << "\n\n";
    while (!toBeRemoved.empty()) {
//        toBeRemoved.top()->print(outs());
//        llvm::outs() << "\n";
        toBeRemoved.top()->eraseFromParent();
        toBeRemoved.pop();
    }


    return outputMap;
}

void Iterative_ALC::refinePreHeaderForRemaining(BasicBlock *preHeaderForRemaining, Value *value) {
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


std::map<Instruction *, Instruction *> *Iterative_ALC::cloneInstructions(BasicBlock *From,
                                                                         BasicBlock *to,
                                                                         Value *VectorIndex,
                                                                         bool useSharedInstructions,
                                                                         std::vector<Instruction *> *instructionsOrder) {

    // TODO: assumption : there are no more than one phi node that is the
    // induction var (since decision block is header)

    llvm::ValueToValueMapTy vMap;
    // first copy instruction into vectorizing Block, then vectorize them
    auto *result = new std::map<Instruction *, Instruction *>;



    // initialize clonedInstructions with sharedInstruction from header

    if (useSharedInstructions) {
        for (auto instr: *sharedInstructions) {
            Instruction *clonedInstr = instr->clone();
            clonedInstr->insertBefore(to->getTerminator());
            result->insert({instr, clonedInstr});
            instructionsOrder->push_back(instr);
            vMap[instr] = clonedInstr;
        }
    }


    for (auto &instr: From->instructionsWithoutDebug()) {

//        if (&instr == From->getTerminator()) {
//            break;
//        }

        if (isa<PHINode>(instr)) {
            continue;
        }


        if (hoistedInstructions.count(&instr)) {
            vMap[&instr] = &instr;
            result->insert({&instr, &instr});
            instructionsOrder->push_back(&instr);
            continue;
        }

        Instruction *clonedInstr = instr.clone();
        clonedInstr->insertBefore(to->getTerminator());
        vMap[&instr] = clonedInstr;
        result->insert({&instr, clonedInstr});
        instructionsOrder->push_back(&instr);

        for (auto pair: *result) {
            llvm::RemapInstruction(pair.second, vMap,
                                   RF_NoModuleLevelChanges | RF_IgnoreMissingLocals);
        }
    }


    // replace induction vars with inductionVarInitialValue
    for (auto pair: *result) {
        Instruction *clonedInstr = pair.second;
        if (usesInductionVar(clonedInstr, ScalarIV)) {
            for (int j = 0; j < clonedInstr->getNumOperands(); ++j) {
                if (clonedInstr->getOperand(j) == ScalarIV) {
                    clonedInstr->setOperand(j, VectorIndex);
                }
            }
        }
    }

    return result;
}


// TODO: how to handle in data permutation?
std::vector<Instruction *> *
Iterative_ALC::findHeaderAndPreheaderInstructionsRequiredForALC(BasicBlock *header, BasicBlock *preheader) {


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


    if (elseBlock) {


        for (auto &elseInstr: elseBlock->instructionsWithoutDebug()) {

            if (&elseInstr == elseBlock->getTerminator()) {
                break;
            }
            for (int i = 0; i < elseInstr.getNumOperands(); ++i) {

                std::vector<Instruction *> toCheckOperands;
                auto operand = elseInstr.getOperand(i);
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

    Function &F = *thenBlock->getParent();
    LLVMContext &C = F.getContext();
    LLVMContext &context = branchInst->getContext();
    llvm::IntegerType *Int32Ty = llvm::Type::getInt32Ty(context);

    MDString *mdString = MDString::get(context, "branch_weights");

    ConstantAsMetadata *trueProbability = llvm::ConstantAsMetadata::get(llvm::ConstantInt::get(Int32Ty, 10));
    ConstantAsMetadata *falseProbability = llvm::ConstantAsMetadata::get(llvm::ConstantInt::get(Int32Ty, 90));

    MDTuple *md = MDNode::get(context, {mdString, trueProbability, falseProbability});
    branchInst->setMetadata(LLVMContext::MD_prof, md);


}


void Iterative_ALC::fillALCHeader_full_permutation(std::vector<Value *> *initialValues, BasicBlock *header) {
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
Iterative_ALC::fillLaneGather_full_permutation() {

    insertPermutationLogic_full_permutation(laneGatherBlock);
    IRBuilder<> builder(laneGatherBlock);

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
    builder.CreateCondBr(condition, newLatch, uniformThenBlock);
}


void
Iterative_ALC::insertPermutationLogic_full_permutation(BasicBlock *insertAt) {

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
    MergedIndices = intrinsicCallGenerator->createSpliceInstruction(IRB, z2, z3, p4);
    // in the case where there are not enough active lanes to fill merge vec, the false elements should come from INITIAL elements z5 (compact z1 by not preds)
    MergedPredicates = intrinsicCallGenerator->createWhileltInstruction(
            IRB, constZero, ActiveLanesInBothVectors);
    MergedIndices = intrinsicCallGenerator->createSpliceInstruction(IRB, MergedIndices, z5, MergedPredicates);


    auto *constZero64 = ConstantInt::get(IRB.getInt64Ty(), 0);

    Value *x1 = intrinsicCallGenerator->createCntpInstruction(IRB, PredicatesOfSecondVector,
                                                              PredicatesOfSecondVector);
    Value *p5 = intrinsicCallGenerator->createWhileltInstruction(IRB, constZero64, x1);
    z2 = intrinsicCallGenerator->createSpliceInstruction(IRB, z3, z5, p5); // contains active ... inactive
    Value *x2 = intrinsicCallGenerator->createCntpInstruction(IRB, p2, p2);
    p2 = intrinsicCallGenerator->createWhileltInstruction(IRB, constZero64, x2);
    RemainingIndices = intrinsicCallGenerator->createSelInstruction(IRB, z4, z2, p2);


    Value *p6 = IRB.CreateNot(p2);      // mask based on first vector false elements
    Value *x3 = intrinsicCallGenerator->createCntpInstruction(IRB, p3, p3);
    Value *truncResult = IRB.CreateSExt(ActualVectorLength, x3->getType());
    Value *subResult = IRB.CreateSub(truncResult, x3);
    Value *p7 = intrinsicCallGenerator->createWhileltInstruction(IRB, constZero64,
                                                                 subResult);  // mask based on second vector false elements
    RemainingPredicates = IRB.CreateAnd(p6, p7);

}

void Iterative_ALC::fillUniformBlock_full_permutation(BasicBlock *header) {
    IRBuilder<> builder(uniformThenBlock->getContext());
    builder.SetInsertPoint(uniformThenBlock);
    builder.CreateBr(newLatch);
    DTUpdates.push_back({DT->Insert, uniformThenBlock, newLatch});
    builder.SetInsertPoint(uniformThenBlock->getTerminator());

    Constant *constOne = llvm::ConstantInt::get(TripCountTy, 1, true);
    auto *instructionsOrder = new std::vector<Instruction *>;
    std::map<Instruction *, Instruction *> *clonedInstructions = cloneInstructions(
            thenBlock, uniformThenBlock, ConstZeroVectorOfTripCountTy, true, instructionsOrder);


    // TODO: handle cases where instruction uses 0 instead of induction var
    vectorizeInstructions(clonedInstructions, instructionsOrder, uniformThenBlock, MergedIndices,
                          ConstZeroVectorOfTripCountTy, allTrue, true, false, false);

}

std::vector<Value *> *
Iterative_ALC::fillNewLatchBlock_full_permutation(Value *totalVecIterations) {
    auto outputs = new std::vector<Value *>;

    IRBuilder<> builder(newLatch->getContext());
    builder.SetInsertPoint(newLatch);


    PHINode *uniformVecPhi = builder.CreatePHI(IndexVectorOfFirstVector->getType(), 2);
    uniformVecPhi->addIncoming(RemainingIndices, uniformThenBlock);
    uniformVecPhi->addIncoming(MergedIndices, laneGatherBlock);

    PHINode *predicatesPhi = builder.CreatePHI(PredicatesOfFirstVector->getType(), 2);
    predicatesPhi->addIncoming(RemainingPredicates, uniformThenBlock);
    predicatesPhi->addIncoming(MergedPredicates, laneGatherBlock);


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


void
Iterative_ALC::fillALCHeader_if_then_else(std::vector<Value *> *initialValues, BasicBlock *header) {

    IRBuilder<> builder(preALCBlock->getTerminator());


    Value *initialPredicates = formPredicate(
            header, preALCBlock, ConstZeroVectorOfTripCountTy); // initial predicates


    //IRBuilder<> builder(alcHeader->getContext());
    builder.SetInsertPoint(alcHeader);


    builder.CreateBr(laneGatherBlock);
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

}

void Iterative_ALC::fillLaneGather_if_then_else(bool hasDataPermutation) {

    IRBuilder<> builder(laneGatherBlock);

    ActiveLanesInFirstVector = intrinsicCallGenerator->createCntpInstruction(builder, PredicatesOfFirstVector,
                                                                             PredicatesOfFirstVector);

    ActiveLanesInSecondVector = intrinsicCallGenerator->createCntpInstruction(builder, PredicatesOfSecondVector,
                                                                              PredicatesOfSecondVector);
    if (TripCountTy == builder.getInt32Ty()) {
        ActiveLanesInFirstVector = builder.CreateTruncOrBitCast(
                ActiveLanesInFirstVector, TripCountTy);
    }
    if (TripCountTy == builder.getInt32Ty()) {
        ActiveLanesInSecondVector = builder.CreateTruncOrBitCast(
                ActiveLanesInSecondVector, TripCountTy);
    }

    ActiveLanesInBothVectors =
            builder.CreateAdd(ActiveLanesInFirstVector, ActiveLanesInSecondVector);

    if (hasDataPermutation) {
        insertPermutationLogic_data_permutation(laneGatherBlock);
    } else {
        insertPermutationLogic_full_permutation(laneGatherBlock);
    }

    ActiveElementsInPermutedVector =
            intrinsicCallGenerator->createCntpInstruction(builder, MergedPredicates,
                                                          MergedPredicates);

    if (TripCountTy == builder.getInt32Ty()) {
        ActiveElementsInPermutedVector = builder.CreateTruncOrBitCast(
                ActiveElementsInPermutedVector, TripCountTy);
    }

    // check if z0 is uniform
    Value *condition =
            builder.CreateICmpUGT(ActiveLanesInBothVectors, VscaleFactor);
    builder.CreateCondBr(condition, uniformThenBlock, uniformElseBlock);


}

std::vector<Value *> *
Iterative_ALC::fillNewLatchBlock_if_then_else(Value *totalVecIterations) {
    auto outputs = new std::vector<Value *>;

    IRBuilder<> builder(newLatch->getContext());
    builder.SetInsertPoint(newLatch);


    PHINode *uniformVecPhi = builder.CreatePHI(IndexVectorOfFirstVector->getType(), 2);
    uniformVecPhi->addIncoming(RemainingIndices, uniformThenBlock);
    uniformVecPhi->addIncoming(MergedIndices, uniformElseBlock);

    PHINode *predicatesPhi = builder.CreatePHI(PredicatesOfFirstVector->getType(), 2);
    predicatesPhi->addIncoming(RemainingPredicates, uniformThenBlock);
    predicatesPhi->addIncoming(MergedPredicates, uniformElseBlock);


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
    builder.CreateCondBr(condition, joinBlock, alcHeader);

    outputs->push_back(updatedIndex);
    outputs->push_back(uniformVecPhi);
    outputs->push_back(predicatesPhi);

    return outputs;
}

void
Iterative_ALC::fillUniformThenBlock() {

    IRBuilder<> builder(uniformThenBlock->getContext());
    builder.SetInsertPoint(uniformThenBlock);
    builder.CreateBr(newLatch);
    DTUpdates.push_back({DT->Insert, uniformThenBlock, newLatch});
    builder.SetInsertPoint(uniformThenBlock->getTerminator());

    auto *instructionsOrder = new std::vector<Instruction *>;
    std::map<Instruction *, Instruction *> *clonedInstructions = cloneInstructions(
            thenBlock, uniformThenBlock, ConstZeroVectorOfTripCountTy, true, instructionsOrder);



    // TODO: handle cases where instruction uses 0 instead of induction var
    vectorizeInstructions(clonedInstructions, instructionsOrder, uniformThenBlock, MergedIndices,
                          ConstZeroVectorOfTripCountTy, allTrue, true, false, false);

}

void
Iterative_ALC::fillUniformElseBlock() {

    IRBuilder<> builder(uniformElseBlock->getContext());
    builder.SetInsertPoint(uniformElseBlock);
    builder.CreateBr(newLatch);
    DTUpdates.push_back({DT->Insert, uniformElseBlock, newLatch});
    builder.SetInsertPoint(uniformElseBlock->getTerminator());

    auto *instructionsOrder = new std::vector<Instruction *>;
    std::map<Instruction *, Instruction *> *clonedInstructions = cloneInstructions(
            elseBlock, uniformElseBlock, ConstZeroVectorOfTripCountTy, true, instructionsOrder);


    // TODO: handle cases where instruction uses 0 instead of induction var
    vectorizeInstructions(clonedInstructions, instructionsOrder, uniformElseBlock, RemainingIndices,
                          ConstZeroVectorOfTripCountTy, allTrue, true, false, false);

}


void Iterative_ALC::fillMiddleBlock_if_then_else(BasicBlock *preheaderForRemaining,
                                                 BasicBlock *exitBlock, Value *remResult) {

    IRBuilder<> builder(preheaderForRemaining->getContext());
    builder.SetInsertPoint(middleBlock);

    Constant *constZero = ConstantInt::get(remResult->getType(), 0, false);
    builder.CreateBr(preheaderForRemaining);
    builder.SetInsertPoint(middleBlock->getTerminator());

}

void Iterative_ALC::fillLinearizedThen() {

    IRBuilder<> builder(linearizedThen->getContext());
    builder.SetInsertPoint(linearizedThen);
    builder.CreateBr(middleBlock);
    builder.SetInsertPoint(linearizedThen->getTerminator());

    Constant *constZero = ConstantInt::get(VectorLoopIndex->getType(), 0, false);
    auto *instructionsOrder = new std::vector<Instruction *>;

    // since we're using uniform vec as indices, addresses should start from zero
    std::map<Instruction *, Instruction *> *clonedInstructions = cloneInstructions(thenBlock, linearizedThen,
                                                                                   constZero, true, instructionsOrder);


    // when permuted, all indices in gather/scatter will be computed with respect
    // to indicesVec so index var should be 0
    vectorizeInstructions(clonedInstructions, instructionsOrder, linearizedThen, MergedIndices, constZero,
                          MergedPredicates, true, true, false);

    // execute false elements in merge vector
    auto *instructionsOrder2 = new std::vector<Instruction *>;
    clonedInstructions =
            cloneInstructions(elseBlock, linearizedThen, constZero, true, instructionsOrder2);
    Value *mergeNot = builder.CreateNot(MergedPredicates);
    vectorizeInstructions(clonedInstructions, instructionsOrder2, linearizedThen, MergedIndices, constZero,
                          mergeNot, true, true, false);


}

void Iterative_ALC::fillLinearizedElse() {

    IRBuilder<> builder(linearizedElse->getContext());
    builder.SetInsertPoint(linearizedElse);
    builder.CreateBr(middleBlock);
    builder.SetInsertPoint(linearizedElse->getTerminator());

    Constant *constZero = ConstantInt::get(VectorLoopIndex->getType(), 0, false);


    Value *remainingNot = builder.CreateNot(RemainingPredicates);

    auto *instructionsOrder = new std::vector<Instruction *>;

    std::map<Instruction *, Instruction *> *clonedInstructions = cloneInstructions(elseBlock, linearizedElse,
                                                                                   constZero, true, instructionsOrder);
    vectorizeInstructions(clonedInstructions, instructionsOrder, linearizedElse, RemainingIndices, constZero,
                          remainingNot, true, true, false);

    auto *instructionsOrder2 = new std::vector<Instruction *>;
    clonedInstructions =
            cloneInstructions(thenBlock, linearizedElse, constZero, true, instructionsOrder2);
    vectorizeInstructions(clonedInstructions, instructionsOrder2, linearizedElse, RemainingIndices, constZero,
                          RemainingPredicates, true, true, false);


}

void Iterative_ALC::fillJoinBlock_if_then_else(Value *latchVector) {
    IRBuilder<> builder(joinBlock->getContext());
    builder.SetInsertPoint(joinBlock);


    Value *compareResult = builder.CreateICmpEQ(latchVector, MergedIndices);
    Value *cntpResult = intrinsicCallGenerator->createCntpInstruction(builder, compareResult, compareResult);

    if (TripCountTy == builder.getInt32Ty()) {
        cntpResult = builder.CreateTruncOrBitCast(
                cntpResult, TripCountTy);
    }

    Value *condition = builder.CreateICmpEQ(cntpResult, VscaleFactor);
    builder.CreateCondBr(condition, linearizedThen, linearizedElse);

}


void Iterative_ALC::loadInstructionsInHeader() {
    IRBuilder<> builder(alcHeader->getContext());
    builder.SetInsertPoint(alcHeader->getTerminator());


    for (auto instr: loadInstructionsToPermute) {
        Value *ptr = instr->getPointerOperand();
        if (isa<GEPOperator>(ptr)) {
            Instruction *clonedGEP = dyn_cast<Instruction>(ptr)->clone();
            for (int i = 0; i < clonedGEP->getNumOperands(); ++i) {
                if (clonedGEP->getOperand(i) == ScalarIV) {
                    clonedGEP->setOperand(i, VectorLoopIndex);
                }
            }
            clonedGEP->insertBefore(alcHeader->getTerminator());
            ptr = clonedGEP;
        }

        auto *vecType = VectorType::get(instr->getType(), vectorizationFactor, true);
        LoadInst *vectorLoad = builder.CreateLoad(vecType, ptr, "remaining_load" + ptr->getName());
        RemainingLoadInstrMap.insert({instr, vectorLoad});
    }

}

std::map<Instruction *, Instruction *> Iterative_ALC::loadInstructionsInPreALC() {
    IRBuilder<> builder(preALCBlock->getContext());
    builder.SetInsertPoint(preALCBlock->getTerminator());

    std::map<Instruction *, Instruction *> initialLoadsMap;

    Constant *constZero = ConstantInt::get(builder.getInt64Ty(), 0, false);


    for (auto instr: loadInstructionsToPermute) {
        Value *ptr = instr->getPointerOperand();
        if (isa<GEPOperator>(ptr)) {
            Instruction *clonedGEP = dyn_cast<Instruction>(ptr)->clone();
            for (int i = 0; i < clonedGEP->getNumOperands(); ++i) {
                if (clonedGEP->getOperand(i) == ScalarIV) {
                    clonedGEP->setOperand(i, constZero);
                }
            }
            clonedGEP->insertBefore(preALCBlock->getTerminator());
            ptr = clonedGEP;
        }


        auto *vecType = VectorType::get(instr->getType(), vectorizationFactor, true);
        LoadInst *vectorLoad = builder.CreateLoad(vecType, ptr, "initial_load" + ptr->getName());

        initialLoadsMap.insert({instr, vectorLoad});


    }


    return initialLoadsMap;
}

void Iterative_ALC::addLoadInstructionPhisInHeader(BasicBlock *header,
                                                   std::map<Instruction *, Instruction *> &instructionsInPreAlcMap) {
    Instruction *insertionPoint;
    // finding insertion point
    for (auto &instr: alcHeader->instructionsWithoutDebug()) {
        if (isa<PHINode>(instr)) {
            continue;
        }
        insertionPoint = &instr;
        break;
    }
    IRBuilder<> builder(header->getContext());
    builder.SetInsertPoint(insertionPoint);

    for (auto pair: instructionsInPreAlcMap) {
        Instruction *preALCLoad = pair.second;
        Instruction *scalarLoad = pair.first;
        PHINode *phi = builder.CreatePHI(preALCLoad->getType(), 2,
                                         "uniformLoad");
        phi->addIncoming(preALCLoad, preALCBlock);
        headerLoadPhis.insert({scalarLoad, phi});
        MergeLoadInstrMap.insert({scalarLoad, phi});
    }


}

void
Iterative_ALC::insertPermutationLogic_data_permutation(BasicBlock *insertAt) {


    IRBuilder<> IRB(insertAt);
    auto *constZero = ConstantInt::get(ActiveLanesInFirstVector->getType(), 0);
    // gather active lanes
    auto *z2 = intrinsicCallGenerator->createCompactInstruction(
            IRB, IndexVectorOfFirstVector, PredicatesOfFirstVector);
    auto *z3 = intrinsicCallGenerator->createCompactInstruction(
            IRB, IndexVectorOfSecondVector, PredicatesOfSecondVector);


    ///compacting data vectors 
    std::map<Instruction *, Value *> compacted_Merge;
    std::map<Instruction *, Value *> compacted_Rem;


    for (auto instr: loadInstructionsToPermute) {
        Value *cmpct1 = intrinsicCallGenerator->createCompactInstruction(
                IRB, MergeLoadInstrMap[instr], PredicatesOfFirstVector);
        compacted_Merge.insert({instr, cmpct1});

        Value *cmpct2 = intrinsicCallGenerator->createCompactInstruction(
                IRB, RemainingLoadInstrMap[instr], PredicatesOfSecondVector);
        compacted_Rem.insert({instr, cmpct2});
    }


    Value *p2 = IRB.CreateNot(PredicatesOfFirstVector);
    Value *p3 = IRB.CreateNot(PredicatesOfSecondVector);
    Value *z4 = intrinsicCallGenerator->createCompactInstruction(IRB, IndexVectorOfFirstVector, p2);
    Value *z5 = intrinsicCallGenerator->createCompactInstruction(IRB, IndexVectorOfSecondVector, p3);

    ///compacting data vectors by negated predicates
    std::map<Instruction *, Value *> compacted_negated_Merge;
    std::map<Instruction *, Value *> compacted_negated_Rem;
    for (auto instr: loadInstructionsToPermute) {
        Value *cmpct1 = intrinsicCallGenerator->createCompactInstruction(IRB, MergeLoadInstrMap[instr], p2);
        compacted_negated_Merge.insert({instr, cmpct1});

        Value *cmpct2 = intrinsicCallGenerator->createCompactInstruction(IRB, RemainingLoadInstrMap[instr], p3);
        compacted_negated_Rem.insert({instr, cmpct2});
    }


    auto *p4 = intrinsicCallGenerator->createWhileltInstruction(
            IRB, constZero, ActiveLanesInFirstVector);
    MergedIndices = intrinsicCallGenerator->createSpliceInstruction(IRB, z2, z3, p4);
    ///create merge vectors for data vectors
    std::map<Instruction *, Value *> mergeMap;
    for (auto instr: loadInstructionsToPermute) {
        Value *merge = intrinsicCallGenerator->createSpliceInstruction(IRB, compacted_Merge[instr],
                                                                       compacted_Rem[instr],
                                                                       p4);
        mergeMap.insert({instr, merge});
        MergeLoadInstrMap[instr] = merge;
    }



    // in the case where there are not enough active lanes to fill merge vec, the false elements should come from INITIAL elements z5 (compact z1 by not preds)
    MergedPredicates = intrinsicCallGenerator->createWhileltInstruction(
            IRB, constZero, ActiveLanesInBothVectors);
    MergedIndices = intrinsicCallGenerator->createSpliceInstruction(IRB, MergedIndices, z5, MergedPredicates);

    //create splice for data vectors
    for (auto instr: loadInstructionsToPermute) {
        Value *merge = intrinsicCallGenerator->createSpliceInstruction(IRB, mergeMap[instr],
                                                                       compacted_negated_Rem[instr],
                                                                       MergedPredicates);
        MergeLoadInstrMap[instr] = merge;
    }


    auto *constZero64 = ConstantInt::get(IRB.getInt64Ty(), 0);

    Value *x1 = intrinsicCallGenerator->createCntpInstruction(IRB, PredicatesOfSecondVector,
                                                              PredicatesOfSecondVector);
    Value *p5 = intrinsicCallGenerator->createWhileltInstruction(IRB, constZero64, x1);

    z2 = intrinsicCallGenerator->createSpliceInstruction(IRB, z3, z5, p5); // contains active ... inactive

    // create splice for data vectors
    std::map<Instruction *, Value *> spliceMap;
    for (auto instr: loadInstructionsToPermute) {
        Value *splice = intrinsicCallGenerator->createSpliceInstruction(IRB, compacted_Rem[instr],
                                                                        compacted_negated_Rem[instr],
                                                                        p5); // contains active ... inactive
        spliceMap.insert({instr, splice});
    }


    Value *x2 = intrinsicCallGenerator->createCntpInstruction(IRB, p2, p2);
    p2 = intrinsicCallGenerator->createWhileltInstruction(IRB, constZero64, x2);
    RemainingIndices = intrinsicCallGenerator->createSelInstruction(IRB, z4, z2, p2);

    // create Remaining data vector
    for (auto instr: loadInstructionsToPermute) {
        Value *sel = intrinsicCallGenerator->createSelInstruction(IRB, compacted_negated_Merge[instr], spliceMap[instr],
                                                                  p2);
        RemainingLoadInstrMap[instr] = sel;
    }


    Value *p6 = IRB.CreateNot(p2);      // mask based on first vector false elements
    Value *x3 = intrinsicCallGenerator->createCntpInstruction(IRB, p3, p3);
    Value *truncResult = IRB.CreateSExt(ActualVectorLength, x3->getType());
    Value *subResult = IRB.CreateSub(truncResult, x3);
    Value *p7 = intrinsicCallGenerator->createWhileltInstruction(IRB, constZero64,
                                                                 subResult);  // mask based on second vector false elements
    RemainingPredicates = IRB.CreateAnd(p6, p7);

}

void Iterative_ALC::addLoadPhisToLatch_if_then_else_data_Permutation() {

    Instruction *insertionPoint;
    //finding insertion point
    for (auto &instr: newLatch->instructionsWithoutDebug()) {
        if (isa<PHINode>(instr)) {
            continue;
        }
        insertionPoint = &instr;
        break;
    }
    IRBuilder<> builder(newLatch->getContext());
    builder.SetInsertPoint(insertionPoint);


    for (auto instr: loadInstructionsToPermute) {
        Value *&mergeLoadVec = MergeLoadInstrMap[instr];
        Value *&remainingLoadVec = RemainingLoadInstrMap[instr];
        PHINode *phi = builder.CreatePHI(remainingLoadVec->getType(), 2,
                                         "");
        phi->addIncoming(mergeLoadVec, uniformElseBlock);
        phi->addIncoming(remainingLoadVec, uniformThenBlock);

        headerLoadPhis[instr]->addIncoming(phi, newLatch);
    }

}


void Iterative_ALC::addLoadPhisToLatch_singleIf_data_Permutation() {

    Instruction *insertionPoint;
    //finding insertion point
    for (auto &instr: newLatch->instructionsWithoutDebug()) {
        if (isa<PHINode>(instr)) {
            continue;
        }
        insertionPoint = &instr;
        break;
    }
    IRBuilder<> builder(newLatch->getContext());
    builder.SetInsertPoint(insertionPoint);


    for (auto instr: loadInstructionsToPermute) {
        Instruction *&joinBlockPhi = joinBlockLoadPhis[instr];
        PHINode *phi = builder.CreatePHI(joinBlockPhi->getType(), 2,
                                         "");
        phi->addIncoming(joinBlockPhi, joinBlock);
        phi->addIncoming(headerLoadPhis[instr], linearizedBlock);

        headerLoadPhis[instr]->addIncoming(phi, newLatch);
    }

}


Value *Iterative_ALC::createVectorOfValues(Value *value, IRBuilder<> &builder,
                                           const std::string &name) {


    auto *vecType = VectorType::get(value->getType(), vectorizationFactor, true);

    uint64_t indexZero = 0;
    Value *UndefVec = UndefValue::get(vecType);

    Value *splatInsert = builder.CreateInsertElement(UndefVec, value, indexZero);

    ConstantAggregateZero *zeroInitializer = ConstantAggregateZero::get(vecType);


    return builder.CreateShuffleVector(splatInsert, UndefVec, zeroInitializer,
                                       name);
}

void Iterative_ALC::fillHoistedInstructionsWithLoadsFromConstantMemoryAddress() {

    IRBuilder<> builder(preALCBlock->getContext());
    builder.SetInsertPoint(preALCBlock->getTerminator());


    for (auto &instr: thenBlock->instructionsWithoutDebug()) {
        if (auto loadInstr = dyn_cast<LoadInst>(&instr)) {
            Value *ptr = loadInstr->getPointerOperand();
            if (auto GEP = dyn_cast<GEPOperator>(ptr)) {

                if (findIfAccessingSameMemAddress(GEP)) {
                    // clone GEP and load to the header
                    Instruction *clonedGEP = dyn_cast<Instruction>(GEP)->clone();
                    clonedGEP->insertBefore(
                            preALCBlock->getTerminator()); // we are sure that we do not need to change operands
                    Instruction *clonedLdr = loadInstr->clone();
                    clonedLdr->insertBefore(preALCBlock->getTerminator());
                    clonedLdr->setOperand(0, clonedGEP);

                    // create vector
                    Value *vectorOfValues = createVectorOfValues(clonedLdr, builder, "hoisted.load");
                    hoistedInstructions[&instr] = dyn_cast<Instruction>(vectorOfValues);
                }
            }
        }
    }
}

// TODO: we assume all load instructions in then and else block use index var as offset for address
void Iterative_ALC::findLoadInstructions() {

    for (auto &instr: thenBlock->instructionsWithoutDebug()) {
        if (auto loadInstr = dyn_cast<LoadInst>(&instr)) {
            loadInstructionsToPermute.push_back(loadInstr);
        }
    }
    if (elseBlock) {
        for (auto &instr: elseBlock->instructionsWithoutDebug()) {
            if (auto loadInstr = dyn_cast<LoadInst>(&instr)) {
                loadInstructionsToPermute.push_back(loadInstr);
            }
        }
    }

    for (auto instr: *sharedInstructions) {
        if (auto loadInstr = dyn_cast<LoadInst>(instr)) {
            loadInstructionsToPermute.push_back(loadInstr);
        }
    }
}

bool Iterative_ALC::findIfAccessingSameMemAddress(GEPOperator *GEP) {
    bool isConstantMemoryLocation = true;
    for (int i = 1; i < GEP->getNumOperands(); ++i) {
        if (!isa<Constant>(GEP->getOperand(i))) {
            if (auto GEPOpInstr = dyn_cast<Instruction>(GEP->getOperand(i))) {
                if (!L->contains(GEPOpInstr->getParent())) {
                    continue;
                }
            }
            isConstantMemoryLocation = false;
        }
    }

    return isConstantMemoryLocation;

}

Iterative_ALC::Iterative_ALC(Loop *l, int vectorizationFactor,
                             LoopStandardAnalysisResults &ar, Value *tripCount)
        : L(l), vectorizationFactor(vectorizationFactor), AR(ar), tripCount(tripCount) {
    LI = &AR.LI;
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



















