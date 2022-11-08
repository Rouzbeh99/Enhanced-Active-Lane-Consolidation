//
// Created by rouzbeh on 8/8/22.
//

#include "SVE_ALC.h"


//
// TODO: check the case in form of a[j] = b[i] + c [i+k]

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

void SVE_ALC::doTransformation_newVersion() {

    auto *header = L->getHeader();
    auto &context = header->getContext();
    auto *inductionVar = L->getCanonicalInductionVariable();
    auto *preheader = L->getLoopPreheader();
    auto *latch = L->getLoopLatch();
    auto *exitBlock = L->getExitBlock();
    Constant *constZero = llvm::ConstantInt::get(inductionVar->getType(), 0, true);


    /// Forming blocks structure

    BasicBlock *preheaderForRemainingBlock = createPreheaderForRemainingIterations();

    //create blocks
    BasicBlock *preALCBlock = createEmptyBlock("pre.alc", latch);
    BasicBlock *middleBlock = createEmptyBlock("middel.block", latch);
    BasicBlock *alcHeader = createEmptyBlock("alc.header", middleBlock);
    BasicBlock *laneGatherBlock = createEmptyBlock("lane.gather", middleBlock);
    BasicBlock *uniformBlock = createEmptyBlock("uniform.block", middleBlock);
    BasicBlock *linearizedBlock = createEmptyBlock("linearized", middleBlock);
    BasicBlock *newLatch = createEmptyBlock("new.latch", middleBlock);
    BasicBlock *joinBlock = createEmptyBlock("join.block", newLatch);

    refinePreheader(preALCBlock, preheaderForRemainingBlock);


    //fill blocks
    std::vector<Value *> *preALCBlockValues = fillPreALCBlock_newVersion(preALCBlock, preheader, alcHeader);
    Value *initialPredicates = formPredicate(header, preALCBlock, inductionVar, constZero); // initial predicates
    std::vector<Value *> *headerOutputs = fillALCHeaderBlock_newVersion(alcHeader, laneGatherBlock, linearizedBlock,
                                                                        preALCBlock,
                                                                        initialPredicates,
                                                                        preALCBlockValues, header, inductionVar);


    std::vector<Value *> *laneGatherOutput = fillLaneGatherBlock_newVersion(laneGatherBlock, uniformBlock, joinBlock,
                                                                            (*headerOutputs)[1], (*headerOutputs)[3],
                                                                            (*headerOutputs)[2],
                                                                            (*headerOutputs)[4], (*headerOutputs)[5],
                                                                            (*headerOutputs)[7]);
    std::vector<Value *> *uniformBlockOutputs = fillUniformBlock_newVersion(uniformBlock, joinBlock,
                                                                            findTargetedBlock(), header,
                                                                            (*laneGatherOutput)[0], inductionVar,
                                                                            (*headerOutputs)[0]);
    fillLinearizedBlock_newVersion(linearizedBlock, newLatch, findTargetedBlock(), (*headerOutputs)[3],
                                   (*headerOutputs)[4],
                                   inductionVar, (*headerOutputs)[0]);
    std::vector<Value *> *joinBlockOutputs = fillJoinBlock(joinBlock, newLatch, uniformBlock, laneGatherBlock,
                                                           headerOutputs->front(),
                                                           laneGatherOutput, uniformBlockOutputs);
    std::vector<Value *> *latchOutputs = fillNewLatchBlock_newVersion(newLatch, alcHeader, middleBlock, joinBlock,
                                                                      linearizedBlock,
                                                                      headerOutputs, joinBlockOutputs,
                                                                      (*preALCBlockValues)[3]);
    fillMiddleBlock_newVersion(middleBlock, preheaderForRemainingBlock, exitBlock, (*preALCBlockValues)[2],
                               (*latchOutputs)[1],
                               (*latchOutputs)[2], inductionVar);

    refinePreHeaderForRemaining(preheaderForRemainingBlock, middleBlock, (*latchOutputs)[0]);
}


void SVE_ALC::doTransformation_simpleVersion() {
    auto *header = L->getHeader();
    auto &context = header->getContext();
    auto *inductionVar = L->getCanonicalInductionVariable();
    auto *preheader = L->getLoopPreheader();
    auto *latch = L->getLoopLatch();
    auto *exitBlock = L->getExitBlock();
    Constant *constZero = llvm::ConstantInt::get(inductionVar->getType(), 0, true);


    /// Forming blocks structure

    BasicBlock *preheaderForRemainingBlock = createPreheaderForRemainingIterations();

    //create blocks
    BasicBlock *preALCBlock = createEmptyBlock("pre.alc", latch);
    BasicBlock *middleBlock = createEmptyBlock("middel.block", latch);
    BasicBlock *alcHeader = createEmptyBlock("alc.header", middleBlock);
    BasicBlock *laneGatherBlock = createEmptyBlock("lane.gather", middleBlock);
    BasicBlock *uniformBlock = createEmptyBlock("uniform.block", middleBlock);
    BasicBlock *linearizedBlock = createEmptyBlock("linearized", middleBlock);
    BasicBlock *newLatch = createEmptyBlock("new.latch", middleBlock);

    refinePreheader(preALCBlock, preheaderForRemainingBlock);

    std::vector<Value *> *preALCBlockValues = fillPreALCBlock_simpleVersion(preALCBlock, alcHeader);
    std::vector<Value *> *headerOutputs = fillALCHeaderBlock_simpleVersion(alcHeader, laneGatherBlock, linearizedBlock,
                                                                           preALCBlock, preALCBlockValues, header,
                                                                           (*preALCBlockValues)[3], inductionVar);
    std::vector<Value *> *laneGatherOutputs = fillLaneGatherBlock_simpleVersion(laneGatherBlock, uniformBlock,
                                                                                (*headerOutputs)[1],
                                                                                (*headerOutputs)[5],
                                                                                (*headerOutputs)[2],
                                                                                (*headerOutputs)[6],
                                                                                (*headerOutputs)[3],
                                                                                (*headerOutputs)[8]);

    fillUniformBlock_simpleVersion(uniformBlock, newLatch, findTargetedBlock(), (*laneGatherOutputs)[0], inductionVar,
                                   (*headerOutputs)[0], (*laneGatherOutputs)[1]);

    fillLinearizedBlock_simpleVersion(linearizedBlock, newLatch, findTargetedBlock(), (*headerOutputs)[2],
                                      (*headerOutputs)[6], inductionVar, (*headerOutputs)[0], (*headerOutputs)[4]);

    std::vector<Value *> *newLatchOutputs = fillNewLatchBlock_simpleVersion(newLatch, alcHeader, middleBlock,
                                                                            (*headerOutputs)[4],
                                                                            (*preALCBlockValues)[2]);

    fillMiddleBlock_simpleVersion(middleBlock, preheaderForRemainingBlock, exitBlock, (*preALCBlockValues)[1]);

    refinePreHeaderForRemaining(preheaderForRemainingBlock, middleBlock, (*newLatchOutputs)[0]);

}


// TODO: problem in algorithm, in the case where the total number of active lanes is not enough to fill a vector, the result vector is not correct
void
SVE_ALC::insertPermutationLogic(BasicBlock *insertAt, Value *z0, Value *z1, Value *p0, Value *p1,
                                Value *firstActives,
                                Value *bothActives,
                                Value **permutedZ0,
                                Value **permutedPredicates) {
    // TODO: add code to compute predicates for uniform vector

    IRBuilder<> IRB(insertAt);
    auto *constZero = ConstantInt::get(firstActives->getType(), 0);

    // gather active lanes
    auto *z2 = intrinsicCallGenerator->createCompactInstruction(IRB, z0, p0);
    auto *z3 = intrinsicCallGenerator->createCompactInstruction(IRB, z1, p1);
    auto *p4 = intrinsicCallGenerator->createWhileltInstruction(IRB, constZero, firstActives);
    *permutedZ0 = intrinsicCallGenerator->createSpliceInstruction(IRB, z2, z3, p4);
    *permutedPredicates = intrinsicCallGenerator->createWhileltInstruction(IRB, constZero, bothActives);
}

BasicBlock *SVE_ALC::findTargetedBlock() {
    // TODO: make a complete analysis

    for (auto succ: successors(L->getHeader())) {
        if (succ->getSingleSuccessor() != L->getLoopLatch()) {
            return succ;
        }
    }

    return nullptr;
}

BasicBlock *SVE_ALC::createEmptyBlock(const std::string &name, BasicBlock *insertBefore) {
    BasicBlock *block = BasicBlock::Create(L->getHeader()->getContext(), name,
                                           L->getHeader()->getParent(),
                                           insertBefore);

    L->addBasicBlockToLoop(block, *LI);

    return block;
}

BasicBlock *SVE_ALC::createPreheaderForRemainingIterations() {
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

void SVE_ALC::refinePreheader(BasicBlock *preVecBlock, BasicBlock *preHeaderForRemaining) {


    BasicBlock *preheader = L->getLoopPreheader();
    Instruction *insertionPoint = preheader->getTerminator();
    IRBuilder<> IRB(insertionPoint);


    if (tripCount->getType() == Type::getInt64Ty(preheader->getContext())) {
        vectorLength = intrinsicCallGenerator->createVscale64Intrinsic(IRB);
    } else {
        vectorLength = intrinsicCallGenerator->createVscale32Intrinsic(IRB);
    }



    // check if there are iterations
    Constant *contTwo = llvm::ConstantInt::get(vectorLength->getType(), 2);
    Value *add = IRB.CreateMul(vectorLength, contTwo);
    Value *condition = IRB.CreateICmpUGE(tripCount, add); // if true, there are enough iterations

    IRB.CreateCondBr(condition, preVecBlock, preHeaderForRemaining);

    // remove previous terminator
    preheader->getTerminator()->eraseFromParent();
}

std::vector<Value *> *
SVE_ALC::fillPreALCBlock_newVersion(BasicBlock *preALCBlock, BasicBlock *preheader, BasicBlock *alcHeader) {
    auto *results = new std::vector<Value *>;

    IRBuilder<> builder(preALCBlock);

    // create the value by which the index should be increased
    //TODO: we assume indices are added by one, make it work for other cases as well
    //should be added by vscale * VFactor * 1  ----> vscale shl log(VFactor)


    allTrue = intrinsicCallGenerator->createAllTruePredicates(builder);

    // create step vector
    Constant *constZero = ConstantInt::get(tripCount->getType(), 0, false);
    Constant *constOne = ConstantInt::get(tripCount->getType(), 1, false);
    Value *initialUniformVec = intrinsicCallGenerator->createIndexInstruction(builder, constZero, constOne);
    Value *stepVal = vectorLength;


    // vectorizing block termination condition: index > n - (n % stepValue)
    // forming n - (n % stepValue)

    Value *remResult = builder.CreateURem(tripCount, stepVal);
    Value *sub = builder.CreateSub(tripCount, remResult, "total.iterations.to.be.vectorized");

    builder.CreateBr(alcHeader);

    results->push_back(initialUniformVec);
    results->push_back(stepVal);
    results->push_back(remResult);
    results->push_back(sub);

    return results;
}

void
SVE_ALC::fillMiddleBlock_newVersion(BasicBlock *middleBlock, BasicBlock *preheaderForRemaining, BasicBlock *exitBlock,
                                    Value *remResult, Value *uniformVec, Value *uniformVecPredicates,
                                    Value *inductionVar
) {


    IRBuilder<> builder(preheaderForRemaining->getContext());
    builder.SetInsertPoint(middleBlock);

    Constant *constZero = ConstantInt::get(remResult->getType(), 0, false);
    Value *condition = builder.CreateICmpEQ(remResult, constZero, "condition");
    builder.CreateCondBr(condition, exitBlock, preheaderForRemaining);

    // make linearized path for remaining active lanes in uniform vec

    // since we're using uniform vec as indices, addresses should start from zero
    std::vector<Instruction *> *clonedInstructions = cloneInstructions(findTargetedBlock(), middleBlock, inductionVar,
                                                                       constZero);
    vectorizeInstructions_Predicated(clonedInstructions, middleBlock, uniformVec, inductionVar, constZero,
                                     uniformVecPredicates,
                                     true, nullptr);


}

std::vector<Value *> *
SVE_ALC::fillALCHeaderBlock_newVersion(BasicBlock *alcHeader, BasicBlock *laneGatherBlock, BasicBlock *linearized,
                                       BasicBlock *preALC, Value *initialPredicates,
                                       std::vector<Value *> *initialValues, BasicBlock *header, Value *inductionVar) {


    auto outputs = new std::vector<Value *>;

    IRBuilder<> builder(alcHeader->getContext());
    builder.SetInsertPoint(alcHeader);

    //temporary, to be replaced with actual condition
    ConstantInt *tmpCond = ConstantInt::get(builder.getInt1Ty(), 1);
    builder.CreateCondBr(tmpCond, laneGatherBlock, linearized);
    builder.SetInsertPoint(alcHeader->getTerminator());

    // create phi node for loop index
    Value *&indexUpdateValue = (*initialValues)[1];
    Type *indexUpdatedValueType = indexUpdateValue->getType();   // it's the same as tripCount type
    PHINode *index = builder.CreatePHI(indexUpdatedValueType, 2, "index");
    index->addIncoming(vectorLength, preALC);

    // create phi for uniformVec
    Value *&initalUniformVec = (*initialValues)[0];
    PHINode *uniformVec = builder.CreatePHI(initalUniformVec->getType(), 2, "uniform.vector");
    uniformVec->addIncoming(initalUniformVec, preALC);

    // create phi for uniformVecPreds
    PHINode *uniformVecPredicates = builder.CreatePHI(initialPredicates->getType(), 2, "uniform.vector.predicates");
    uniformVecPredicates->addIncoming(initialPredicates, preALC);

    // count initial predicates inside the preALC
    IRBuilder<> preALCBuilder(alcHeader->getContext());
    preALCBuilder.SetInsertPoint(preALC->getTerminator());
    Value *initialUniformVecActives = intrinsicCallGenerator->createCntpInstruction(preALCBuilder,
                                                                                    initialPredicates,
                                                                                    initialPredicates);


    // create phi for number of active lanes in uniform vec
    PHINode *numberOfUniformVecActives = builder.CreatePHI(initialUniformVecActives->getType(), 2,
                                                           "uniform.vec.actives");
    numberOfUniformVecActives->addIncoming(initialUniformVecActives, preALC);

    //next iteration index vec
    Constant *constOne = llvm::ConstantInt::get(inductionVar->getType(), 1, true);
    Value *indexVector = intrinsicCallGenerator->createIndexInstruction(builder, index, constOne);

    //form predicates
    Value *indexVecPredicates = formPredicate(header, alcHeader, inductionVar, index);

    //form condition for the branch
    Value *numberOfSecondActives = intrinsicCallGenerator->createCntpInstruction(builder, indexVecPredicates,
                                                                                 indexVecPredicates);
    Value *addResult = builder.CreateAdd(numberOfUniformVecActives, numberOfSecondActives);
    Value *actualCondition = builder.CreateICmpULE(addResult, vectorLength, "condition");
    dyn_cast<BranchInst>(alcHeader->getTerminator())->setCondition(actualCondition);


    outputs->push_back(index);
    outputs->push_back(uniformVec);
    outputs->push_back(uniformVecPredicates);
    outputs->push_back(indexVector);
    outputs->push_back(indexVecPredicates);
    outputs->push_back(numberOfUniformVecActives);
    outputs->push_back(numberOfSecondActives);
    outputs->push_back(addResult);
    return outputs;

}

std::vector<Value *> *
SVE_ALC::fillLaneGatherBlock_newVersion(BasicBlock *laneGather, BasicBlock *alcApplied, BasicBlock *joinBlock,
                                        Value *z0,
                                        Value *z1, Value *p0, Value *p1,
                                        Value *firstActives,
                                        Value *bothActives) {
    auto *outputs = new std::vector<Value *>;
    Value *permutedZ0;
    Value *permutedPredicates;

    insertPermutationLogic(laneGather, z0, z1, p0, p1, firstActives, bothActives, &permutedZ0,
                           &permutedPredicates);

    IRBuilder<> builder(laneGather->getContext());
    builder.SetInsertPoint(laneGather);

    Value *activeCount = intrinsicCallGenerator->createCntpInstruction(builder, permutedPredicates, permutedPredicates);

    // check if z0 is uniform
    Value *condition = builder.CreateICmpEQ(bothActives, vectorLength);
    builder.CreateCondBr(condition, alcApplied, joinBlock);

    outputs->push_back(permutedZ0);
    outputs->push_back(permutedPredicates);
    outputs->push_back(activeCount);
    return outputs;
}

std::vector<Value *> *
SVE_ALC::fillUniformBlock_newVersion(BasicBlock *uniformBlock, BasicBlock *joinBlock, BasicBlock *toBeVectorizedBlock,
                                     BasicBlock *header,
                                     Value *indices, Value *inductionVar, Value *indexPhi) {

    auto outputs = new std::vector<Value *>;

    IRBuilder<> builder(uniformBlock->getContext());
    builder.SetInsertPoint(uniformBlock);
    builder.CreateBr(joinBlock);
    builder.SetInsertPoint(uniformBlock->getTerminator());

    Constant *constZero = llvm::ConstantInt::get(inductionVar->getType(), 0, true);
    Constant *constOne = llvm::ConstantInt::get(inductionVar->getType(), 1, true);

    std::vector<Instruction *> *clonedInstructions = cloneInstructions(toBeVectorizedBlock, uniformBlock,
                                                                       inductionVar,
                                                                       constZero);

    // TODO: handle cases where instruction uses 0 instead of induction var
    vectorizeInstructions_nonePredicated(clonedInstructions, uniformBlock, indices);

    //Form next iteration
    Value *nextItrIndex = builder.CreateAdd(indexPhi, vectorLength);
    Value *nextUniformVec = intrinsicCallGenerator->createIndexInstruction(builder, nextItrIndex, constOne);
    Value *nextPredicateVec = formPredicate(header, uniformBlock, inductionVar, nextItrIndex);
    Value *activeElements = intrinsicCallGenerator->createCntpInstruction(builder, nextPredicateVec,
                                                                          nextPredicateVec);

    outputs->push_back(nextItrIndex);
    outputs->push_back(nextUniformVec);
    outputs->push_back(nextPredicateVec);
    outputs->push_back(activeElements);

    return outputs;

}

void
SVE_ALC::fillLinearizedBlock_newVersion(BasicBlock *linearized, BasicBlock *newLatch, BasicBlock *toBeVectorizedBlock,
                                        Value *indexVec, Value *predicates, Value *inductionVar, Value *indexPhi) {
    IRBuilder<> builder(linearized->getContext());
    builder.SetInsertPoint(linearized);
    builder.CreateBr(newLatch);

    std::vector<Instruction *> *clonedInstructions = cloneInstructions(toBeVectorizedBlock, linearized,
                                                                       inductionVar,
                                                                       indexPhi);
    vectorizeInstructions_Predicated(clonedInstructions, linearized, indexVec, inductionVar, indexPhi, predicates,
                                     false,
                                     nullptr);

}

std::vector<Value *> *
SVE_ALC::fillNewLatchBlock_newVersion(BasicBlock *newLatch, BasicBlock *alcHeader, BasicBlock *middleBlock,
                                      BasicBlock *joinBlock, BasicBlock *linearizedBlock,
                                      std::vector<Value *> *alcHeaderOutputs,
                                      std::vector<Value *> *joinBlockOutputs,
                                      Value *totalVecIterations) {

    auto outputs = new std::vector<Value *>;

    IRBuilder<> builder(newLatch->getContext());
    builder.SetInsertPoint(newLatch);

    Value *&joinBlockIndex = (*joinBlockOutputs)[0];
    Value *&joinBlockUniformVec = (*joinBlockOutputs)[1];
    Value *&joinBlockPredicates = (*joinBlockOutputs)[2];
    Value *&joinBlockActiveCount = (*joinBlockOutputs)[3];

    Value *&headerIndex = (*alcHeaderOutputs)[0];
    Value *&headerUniformVec = (*alcHeaderOutputs)[1];
    Value *&headerPredicates = (*alcHeaderOutputs)[2];
    Value *&headerActiveCount = (*alcHeaderOutputs)[5];

    PHINode *indexPhi = builder.CreatePHI(joinBlockIndex->getType(), 2);
    indexPhi->addIncoming(joinBlockIndex, joinBlock);
    indexPhi->addIncoming(headerIndex, linearizedBlock);

    PHINode *uniformVecPhi = builder.CreatePHI(joinBlockUniformVec->getType(), 2);
    uniformVecPhi->addIncoming(joinBlockUniformVec, joinBlock);
    uniformVecPhi->addIncoming(headerUniformVec, linearizedBlock);

    PHINode *predicatesPhi = builder.CreatePHI(joinBlockPredicates->getType(), 2);
    predicatesPhi->addIncoming(joinBlockPredicates, joinBlock);
    predicatesPhi->addIncoming(headerPredicates, linearizedBlock);

    PHINode *activeCountPhi = builder.CreatePHI(joinBlockActiveCount->getType(), 2);
    activeCountPhi->addIncoming(joinBlockActiveCount, joinBlock);
    activeCountPhi->addIncoming(headerActiveCount, linearizedBlock);



    // update phi nodes in header
    const BasicBlock::phi_iterator &headerIndexPhi = alcHeader->phis().begin();
    Value *updatedIndex = builder.CreateAdd(indexPhi, vectorLength);
    headerIndexPhi->addIncoming(updatedIndex, newLatch);

    const BasicBlock::phi_iterator &headerUniformVecPhi = std::next(headerIndexPhi, 1);
    headerUniformVecPhi->addIncoming(uniformVecPhi, newLatch);

    const BasicBlock::phi_iterator &headerPredicatesPhi = std::next(headerUniformVecPhi, 1);
    headerPredicatesPhi->addIncoming(predicatesPhi, newLatch);

    const BasicBlock::phi_iterator &headerActiveCountPhi = std::next(headerPredicatesPhi, 1);
    headerActiveCountPhi->addIncoming(activeCountPhi, newLatch);


    Value *condition = builder.CreateICmpUGE(updatedIndex, totalVecIterations);
    builder.CreateCondBr(condition, middleBlock, alcHeader);

    outputs->push_back(updatedIndex);
    outputs->push_back(uniformVecPhi);
    outputs->push_back(predicatesPhi);

    return outputs;
}

std::vector<Value *> *
SVE_ALC::fillJoinBlock(BasicBlock *joinBlock, BasicBlock *newLatch, BasicBlock *uniformBlock,
                       BasicBlock *laneGather, Value *headerIndex,
                       std::vector<Value *> *laneGatherOutputs, std::vector<Value *> *uniformBlockOutputs) {

    auto outputs = new std::vector<Value *>;

    IRBuilder<> builder(joinBlock->getContext());
    builder.SetInsertPoint(joinBlock);


    Value *&oldUniformVec = (*laneGatherOutputs)[0];
    Value *&oldPredicates = (*laneGatherOutputs)[1];
    Value *&oldActiveCount = (*laneGatherOutputs)[2];


    Value *&nextIndex = (*uniformBlockOutputs)[0];
    Value *&nextUniformVec = (*uniformBlockOutputs)[1];
    Value *&nextPredicates = (*uniformBlockOutputs)[2];
    Value *&nextActiveLanesCount = (*uniformBlockOutputs)[3];

    PHINode *indexPhi = builder.CreatePHI(headerIndex->getType(), 2);
    indexPhi->addIncoming(headerIndex, laneGather);
    indexPhi->addIncoming(nextIndex, uniformBlock);

    PHINode *uniformVecPhi = builder.CreatePHI(oldUniformVec->getType(), 2);
    uniformVecPhi->addIncoming(oldUniformVec, laneGather);
    uniformVecPhi->addIncoming(nextUniformVec, uniformBlock);

    PHINode *predicatesPhi = builder.CreatePHI(oldPredicates->getType(), 2);
    predicatesPhi->addIncoming(oldPredicates, laneGather);
    predicatesPhi->addIncoming(nextPredicates, uniformBlock);

    PHINode *activeLanesCountPhi = builder.CreatePHI(oldActiveCount->getType(), 2);
    activeLanesCountPhi->addIncoming(oldActiveCount, laneGather);
    activeLanesCountPhi->addIncoming(nextActiveLanesCount, uniformBlock);

    outputs->push_back(indexPhi);
    outputs->push_back(uniformVecPhi);
    outputs->push_back(predicatesPhi);
    outputs->push_back(activeLanesCountPhi);

    builder.CreateBr(newLatch);

    return outputs;

}


Value *
SVE_ALC::formPredicate(BasicBlock *decisionBlock, BasicBlock *predicateHolderBlock,
                       Value *inductionVar, Value *inductionVarInitialValue) {


    Instruction *predicates_scalar = nullptr;

    std::vector<Instruction *> *clonedInstructions = cloneInstructions(decisionBlock, predicateHolderBlock,
                                                                       inductionVar, inductionVarInitialValue);

    predicates_scalar = clonedInstructions->back();

    // now we should vectorize clonedInstructions
    std::map<const Value *, const Value *> *instructionsMap = vectorizeInstructions_nonePredicated(
            clonedInstructions,
            predicateHolderBlock,
            nullptr);
    const Value *&predicates = (*instructionsMap)[(Value *)
            predicates_scalar];


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

std::map<const Value *, const Value *> *
SVE_ALC::vectorizeInstructions_nonePredicated(std::vector<Instruction *> *instructions, BasicBlock *block,
                                              Value *indices) {

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
            continue;

        } else if (isa<StoreInst>(instr)) {
            auto storeInstr = dyn_cast<StoreInst>(instr);
            // it's the value to be stored
            Value *firstOp = nullptr;
            if (vMap.count(storeInstr->getOperand(0))) {
                firstOp = vMap[storeInstr->getOperand(0)];
            } else {
                // it's constant
                auto *constValue = dyn_cast<Constant>(storeInstr->getOperand(0));
                firstOp = createVectorOfConstants(constValue, builder, "store.values");
                // TODO: is there any other case ?
            }
            auto ptr = dyn_cast<GEPOperator>(instr->getOperand(1));
            if (indices == nullptr) {
                builder.CreateStore(firstOp, ptr);
            } else {
                intrinsicCallGenerator->createScatterStoreInstruction(builder, firstOp, ptr, allTrue, indices);
            }
            toBeRemoved.push(instr);
        } else if (isa<LoadInst>(instr)) {

            auto ptr = dyn_cast<GEPOperator>(instr->getOperand(0));
            Type *elementType = instr->getType();
            Value *loadedData = nullptr;
            if (indices == nullptr) {
                loadedData = builder.CreateLoad(VectorType::get(elementType, vectorizationFactor, true), ptr);
            } else {
                loadedData = intrinsicCallGenerator->createGatherLoadInstruction(builder, ptr, allTrue, indices);
            }
            vMap[instr] = loadedData;
            toBeRemoved.push(instr);

        } else if (isa<BinaryOperator>(instr) || isa<ICmpInst>(instr)) { // TODO: ICmp is not binary????


            Value *firstOp = nullptr;
            Value *secondOp = nullptr;
            if (vMap.count(instr->getOperand(0))) {
                firstOp = vMap[instr->getOperand(0)];
            } else if (isa<Constant>(instr->getOperand(0))) {
                auto *constValue = dyn_cast<Constant>(instr->getOperand(0));
                firstOp = createVectorOfConstants(constValue, builder, "first.operand");
            } else {
                /** operand is related to vscale **/
                //TODO: what else?
                firstOp = instr->getOperand(0);
            }


            if (vMap.count(instr->getOperand(1))) {
                secondOp = vMap[instr->getOperand(1)];
            } else if (isa<Constant>(instr->getOperand(1))) {
                auto *constValue = dyn_cast<Constant>(instr->getOperand(1));
                secondOp = createVectorOfConstants(constValue, builder, "second.operand");
            } else {
                secondOp = instr->getOperand(1);
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
                            result = builder.CreateICmpULE(firstOp, secondOp);
                            break;
                            break;
                        case CmpInst::FCMP_UNE:
                            break;
                        case CmpInst::FCMP_TRUE:
                            break;
                        case CmpInst::BAD_FCMP_PREDICATE:
                            break;
                        case CmpInst::ICMP_EQ: {
                            Value *ICmpInst = builder.CreateICmpEQ(firstOp, secondOp);
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


void SVE_ALC::vectorizeInstructions_Predicated(std::vector<Instruction *> *instructions, BasicBlock *block,
                                               Value *indices, Value *inductionVar, Value *indexVar,
                                               Value *predicates, bool isPermuted,
                                               std::map<const Value *, const Value *> *headerInstructionsMap) {

    Instruction *insertionPoint = block->getTerminator();
    IRBuilder<> IRB(insertionPoint);

    Constant *constOne = llvm::ConstantInt::get(inductionVar->getType(), 1, true);
    if (indices == nullptr) {
        indices = intrinsicCallGenerator->createIndexInstruction(IRB, indexVar, constOne);
    }


    std::map<Value *, Value *> vMap;

    //TODO:
    // initialize vMap with headerInstructionsMap
//    for (auto pair: *headerInstructionsMap) {
//        vMap[(Value *) pair.first] = (Value *) pair.second;
//    }


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

            if (isPermuted) {
                intrinsicCallGenerator->createScatterStoreInstruction(IRB, firstOp, ptr, predicates, indices);
            } else {
                intrinsicCallGenerator->createStoreInstruction(IRB, firstOp, ptr, predicates);
            }

            toBeRemoved.push(instr);
        } else if (isa<LoadInst>(instr)) {

            auto ptr = instr->getOperand(0);
            if (vMap.count(ptr)) {
                ptr = vMap[ptr];
            }
            Value *loadedData = nullptr;

            if (isPermuted) {
                loadedData = intrinsicCallGenerator->createGatherLoadInstruction(IRB, ptr, predicates, indices);
            } else {
                loadedData = intrinsicCallGenerator->createLoadInstruction(IRB, ptr, predicates);
            }

            vMap[instr] = loadedData;
            toBeRemoved.push(instr);
        } else if (isa<BinaryOperator>(instr) || isa<ICmpInst>(instr)) { // TODO: ICmp is not binary????

            Value *firstOp = nullptr;
            Value *secondOp = nullptr;
            if (vMap.count(instr->getOperand(0))) {
                firstOp = vMap[instr->getOperand(0)];
            } else if (instr->getOperand(0)->getName() == inductionVar->getName()) {  // TODO: is it safe?
                firstOp = indices;
            } else {
                auto *constValue = dyn_cast<Constant>(instr->getOperand(0));
                firstOp = createVectorOfConstants(constValue, IRB, "first.operand");
            }

            if (vMap.count(instr->getOperand(1))) {
                secondOp = vMap[instr->getOperand(1)];
            } else if (instr->getOperand(1)->getName() == inductionVar->getName()) {
                secondOp = indices;
            } else {
                auto *constValue = dyn_cast<Constant>(instr->getOperand(1));
                secondOp = createVectorOfConstants(constValue, IRB, "second.operand");
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


void
SVE_ALC::refinePreHeaderForRemaining(BasicBlock *preHeaderForRemaining, BasicBlock *middleBlock, Value *value) {
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
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

std::vector<Value *> *
SVE_ALC::fillALCHeaderBlock_simpleVersion(BasicBlock *alcHeader, BasicBlock *laneGatherBlock, BasicBlock *linearized,
                                          BasicBlock *preALC, std::vector<Value *> *preALCOutputs, BasicBlock *header,
                                          Value *vecUpdateValue, Value *inductionVar) {

    auto outputs = new std::vector<Value *>;

    IRBuilder<> builder(alcHeader->getContext());
    builder.SetInsertPoint(alcHeader);

    //temporary, to be replaced with actual condition
    ConstantInt *tmpCond = ConstantInt::get(builder.getInt1Ty(), 1);
    builder.CreateCondBr(tmpCond, laneGatherBlock, linearized);
    builder.SetInsertPoint(alcHeader->getTerminator());

    Constant *constZero = llvm::ConstantInt::get(inductionVar->getType(), 0, true);

    // create phi node for loop index
    Value *&indexUpdateValue = (*preALCOutputs)[0];
    Type *indexUpdatedValueType = indexUpdateValue->getType();   // it's the same as tripCount type
    PHINode *index = builder.CreatePHI(indexUpdatedValueType, 2, "index");
    index->addIncoming(constZero, preALC);


    //index vec
    Constant *constOne = llvm::ConstantInt::get(inductionVar->getType(), 1, true);
    Value *firstIndexVec = intrinsicCallGenerator->createIndexInstruction(builder, index, constOne);

    //form predicates
    Value *firstPredicates = formPredicate(header, alcHeader, inductionVar, index);

    //form condition for the branch
    Value *numberOfFirstActives = intrinsicCallGenerator->createCntpInstruction(builder, firstPredicates,
                                                                                firstPredicates);

    // nexr itr
    Value *nextIndex = builder.CreateAdd(index, vectorLength);
    Value *secondIndexVec = builder.CreateAdd(firstIndexVec, vecUpdateValue);
    Value *secondPredicates = formPredicate(header, alcHeader, inductionVar, nextIndex);
    Value *numberOfSecondActives = intrinsicCallGenerator->createCntpInstruction(builder, secondPredicates,
                                                                                 secondPredicates);


    Value *addResult = builder.CreateAdd(numberOfFirstActives, numberOfSecondActives);
    Value *actualCondition = builder.CreateICmpULE(addResult, vectorLength, "condition");
    dyn_cast<BranchInst>(alcHeader->getTerminator())->setCondition(actualCondition);


    outputs->push_back(index);
    outputs->push_back(firstIndexVec);
    outputs->push_back(firstPredicates);
    outputs->push_back(numberOfFirstActives);
    outputs->push_back(nextIndex);
    outputs->push_back(secondIndexVec);
    outputs->push_back(secondPredicates);
    outputs->push_back(numberOfSecondActives);
    outputs->push_back(addResult);
    return outputs;

}

std::vector<Value *> *
SVE_ALC::fillPreALCBlock_simpleVersion(BasicBlock *preALCBlock, BasicBlock *alcHeader) {
    auto *results = new std::vector<Value *>;

    IRBuilder<> builder(preALCBlock);

    // create the value by which the index should be increased
    //TODO: we assume indices are added by one, make it work for other cases as well
    //should be added by vscale * VFactor * 1  ----> vscale shl log(VFactor)


    allTrue = intrinsicCallGenerator->createAllTruePredicates(builder);

    // create step vector
    Value *stepVal = vectorLength;
    Constant *constOne = llvm::ConstantInt::get(stepVal->getType(), 1, true);
    Value *vectorUpdateValue = createVectorOfConstants(constOne, builder, "vector.Update.Value");


    // vectorizing block termination condition: index > n - (n % stepValue)
    // forming n - (n % stepValue)

    Value *remResult = builder.CreateURem(tripCount, stepVal);
    Value *totalIterationToVectorize = builder.CreateSub(tripCount, remResult, "total.iterations.to.be.vectorized");

    builder.CreateBr(alcHeader);

    results->push_back(stepVal);
    results->push_back(remResult);
    results->push_back(totalIterationToVectorize);
    results->push_back(vectorUpdateValue);

    return results;
}

std::vector<Value *> *
SVE_ALC::fillLaneGatherBlock_simpleVersion(BasicBlock *laneGather, BasicBlock *alcApplied,
                                           Value *z0, Value *z1, Value *p0, Value *p1, Value *firstActives,
                                           Value *bothActives) {

    auto *outputs = new std::vector<Value *>;
    Value *permutedZ0;
    Value *permutedPredicates;

    insertPermutationLogic(laneGather, z0, z1, p0, p1, firstActives, bothActives, &permutedZ0,
                           &permutedPredicates);

    IRBuilder<> builder(laneGather->getContext());
    builder.SetInsertPoint(laneGather);

    Value *activeCount = intrinsicCallGenerator->createCntpInstruction(builder, permutedPredicates, permutedPredicates);


    builder.CreateBr(alcApplied);

    outputs->push_back(permutedZ0);
    outputs->push_back(permutedPredicates);
    outputs->push_back(activeCount);
    return outputs;

}

void
SVE_ALC::fillUniformBlock_simpleVersion(BasicBlock *uniformBlock, BasicBlock *latch, BasicBlock *toBeVectorizedBlock,
                                        Value *indices, Value *inductionVar, Value *indexVar, Value *predicates) {

    IRBuilder<> builder(uniformBlock->getContext());
    builder.SetInsertPoint(uniformBlock);
    builder.CreateBr(latch);
    builder.SetInsertPoint(uniformBlock->getTerminator());

    Constant *constZero = llvm::ConstantInt::get(inductionVar->getType(), 0, true);

    std::vector<Instruction *> *clonedInstructions = cloneInstructions(toBeVectorizedBlock, uniformBlock,
                                                                       inductionVar,
                                                                       constZero);

    // TODO: handle cases where instruction uses 0 instead of induction var
    vectorizeInstructions_Predicated(clonedInstructions, uniformBlock, indices, inductionVar, indexVar, predicates,
                                     true,
                                     nullptr);

}

void SVE_ALC::fillLinearizedBlock_simpleVersion(BasicBlock *linearized, BasicBlock *newLatch,
                                                BasicBlock *toBeVectorizedBlock,
                                                Value *firstPredicates, Value *secondPredicates, Value *inductionVar,
                                                Value *index, Value *nextItrIndex) {

    IRBuilder<> builder(linearized->getContext());
    builder.SetInsertPoint(linearized);
    builder.CreateBr(newLatch);

    std::vector<Instruction *> *clonedInstructions = cloneInstructions(toBeVectorizedBlock, linearized,
                                                                       inductionVar,
                                                                       index);
    vectorizeInstructions_Predicated(clonedInstructions, linearized, nullptr, inductionVar, index, firstPredicates,
                                     false,
                                     nullptr);

    std::vector<Instruction *> *clonedInstructions2 = cloneInstructions(toBeVectorizedBlock, linearized,
                                                                        inductionVar,
                                                                        nextItrIndex);
    vectorizeInstructions_Predicated(clonedInstructions2, linearized, nullptr, inductionVar, nextItrIndex,
                                     secondPredicates,
                                     false,
                                     nullptr);

}

std::vector<Value *> *
SVE_ALC::fillNewLatchBlock_simpleVersion(BasicBlock *newLatch, BasicBlock *alcHeader, BasicBlock *middleBlock,
                                         Value *nextItrIndex, Value *totalVecIterations) {

    auto outputs = new std::vector<Value *>;

    IRBuilder<> builder(newLatch->getContext());
    builder.SetInsertPoint(newLatch);


    // update phi nodes in header
    const BasicBlock::phi_iterator &headerIndexPhi = alcHeader->phis().begin();
    Value *updatedIndex = builder.CreateAdd(nextItrIndex, vectorLength);
    headerIndexPhi->addIncoming(updatedIndex, newLatch);


    Value *condition = builder.CreateICmpEQ(updatedIndex, totalVecIterations);
    builder.CreateCondBr(condition, middleBlock, alcHeader);

    outputs->push_back(updatedIndex);

    return outputs;

}

void SVE_ALC::fillMiddleBlock_simpleVersion(BasicBlock *middleBlock, BasicBlock *preheaderForRemaining,
                                            BasicBlock *exitBlock, Value *remResult) {

    IRBuilder<> builder(preheaderForRemaining->getContext());
    builder.SetInsertPoint(middleBlock);

    Constant *constZero = ConstantInt::get(remResult->getType(), 0, false);
    Value *condition = builder.CreateICmpEQ(remResult, constZero, "condition");
    builder.CreateCondBr(condition, exitBlock, preheaderForRemaining);


}

std::vector<Instruction *> *
SVE_ALC::cloneInstructions(BasicBlock *From, BasicBlock *to, Value *inductionVar, Value *inductionVarInitialValue) {

    // TODO: assumption : there are no more than one phi node that is the induction var (since decision block is header)

    llvm::ValueToValueMapTy vMap;
    // first copy instruction into vectorizing Block, then vectorize them
    auto *clonedInstructions = new std::vector<Instruction *>;

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
            llvm::RemapInstruction(cloned_instr, vMap, RF_NoModuleLevelChanges | RF_IgnoreMissingLocals);
        }

    }


    // replace induction vars with inductionVarInitialValue
    for (auto clonedInstr: *clonedInstructions) {

        if (usesInductionVar(clonedInstr, inductionVar)) {
            for (int j = 0; j < clonedInstr->getNumOperands(); ++j) {
                if (clonedInstr->getOperand(j) == inductionVar) {
                    clonedInstr->setOperand(j, inductionVarInitialValue);
                }
            }
        }
    }

    return clonedInstructions;
}

bool SVE_ALC::usesInductionVar(Value *value, Value *inductionVar) {
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

Value *SVE_ALC::computeTripCount(BasicBlock *latch, Value *inductionVar) {
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
            return conditionInst->getOperand(i);
        }
    }

    // TODO: raise error
    return nullptr;
}

Value *SVE_ALC::createVectorOfConstants(Value *value, IRBuilder<> &builder, std::string name) {


    auto *vecType = VectorType::get(value->getType(), vectorizationFactor, true);
    auto poisonVec = PoisonValue::get(vecType);
    u_int64_t indexZero = 0;
    Value *splatInsert = builder.CreateInsertElement(poisonVec, value, indexZero);

    ConstantAggregateZero *zeroInitializer = ConstantAggregateZero::get(vecType);

    return builder.CreateShuffleVector(splatInsert, poisonVec, zeroInitializer, name);
}

SVE_ALC::SVE_ALC(Loop *l, int
vectorizationFactor, LoopStandardAnalysisResults &ar)
        : L(l), vectorizationFactor(vectorizationFactor), AR(ar) {
    LI = &AR.LI;
    SE = &AR.SE;
    module = L->getHeader()->getModule();
    intrinsicCallGenerator = new IntrinsicCallGenerator(vectorizationFactor, module);
    tripCount = computeTripCount(L->getLoopLatch(), L->getCanonicalInductionVariable());
}










