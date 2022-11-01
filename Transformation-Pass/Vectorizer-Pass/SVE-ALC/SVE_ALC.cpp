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

void SVE_ALC::doTransformation() {


    auto *header = L->getHeader();
    auto &context = header->getContext();
    auto *inductionVar = L->getCanonicalInductionVariable();
    auto *preheader = L->getLoopPreheader();
    auto *latch = L->getLoopLatch();
    auto *exitBlock = L->getExitBlock();

    /// Forming blocks structure

    BasicBlock *preheaderForRemainingBlock = createPreheaderForRemainingIterations();

    //create blocks
    BasicBlock *preALCBlock = createEmptyBlock("pre.alc", latch);
    BasicBlock *middleBlock = createEmptyBlock("middel.block", latch);
    BasicBlock *alcHeader = createEmptyBlock("alc.header", middleBlock);
    BasicBlock *laneGatherBlock = createEmptyBlock("lane.gather", middleBlock);
    BasicBlock *alcAppliedBlock = createEmptyBlock("alc.applied", middleBlock);
    BasicBlock *linearizedBlock = createEmptyBlock("linearized", middleBlock);
    BasicBlock *newLatch = createEmptyBlock("new.latch", middleBlock);

    refinePreheader(preALCBlock, preheaderForRemainingBlock);

    //fill blocks
    std::vector<Value *> *preALCBlockValues = fillPreALCBlock(preALCBlock, preheader, alcHeader);
    fillMiddleBlock(middleBlock, preheaderForRemainingBlock, exitBlock, (*preALCBlockValues)[4]);
    fillALCHeaderBlock(alcHeader, laneGatherBlock, linearizedBlock, preALCBlock, preALCBlockValues);
    fillLaneGatherBlock(laneGatherBlock, alcAppliedBlock);
    fillALCAppliedBlock(alcAppliedBlock, newLatch);
    fillLinearizedBlock(linearizedBlock, newLatch);
    fillNewLatchBlock(newLatch, alcHeader, middleBlock, preheaderForRemainingBlock, preALCBlockValues);


    //// no more needed!!
    /// do it in the header!!
//    std::vector<Value *> *initialPredicates = formInitialPredicates(header, preALCBlock, inductionVar);

    ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//    VectorType *vecType1 = VectorType::get(Type::getInt1Ty(context), vectorizationFactor, true);
//    VectorType *vecType64 = VectorType::get(Type::getInt64Ty(context), vectorizationFactor, true);
//    Value *permutedZ0 = UndefValue::get(vecType64);;
//    Value *permutedZ1 = UndefValue::get(vecType64);;
//    Value *permutedPredicates = UndefValue::get(vecType1);
//
//    insertPermutationLogic(laneGatherBlock->getTerminator(), (*preALCBlockValues)[0], (*preALCBlockValues)[5],
//                           (*initialPredicates)[0], (*initialPredicates)[1], &permutedZ0, &permutedZ1,
//                           &permutedPredicates);


//    VectorType *vecType1 = VectorType::get(Type::getInt1Ty(context), vectorizationFactor, true);
//    VectorType *vecType32 = VectorType::get(Type::getInt32Ty(context), vectorizationFactor, true);
//
//    Value *initialUniformVector = UndefValue::get(vecType32);
//    Value *initialRemainingVector = UndefValue::get(vecType32);
//    Value *initialUniformVectorPredicates = UndefValue::get(vecType1);
//    Value *initialRemainingVectorPredicates = UndefValue::get(vecType1);
//    Value *permutedUniformVector = UndefValue::get(vecType32);
//    Value *permutedRemainingVector = UndefValue::get(vecType32);
//    Value *permutedPredicates = UndefValue::get(vecType1);
//    Value *updatedUniformVector = UndefValue::get(vecType32);
//    Value *updatedRemainingVector = UndefValue::get(vecType32);
//    Value *updatedUniformVectorPredicates = UndefValue::get(vecType1);
//    Value *updatedRemainingVectorPredicates = UndefValue::get(vecType1);


//
//
//    formInitialPredicateVectors(inductionVar, &initialUniformVectorPredicates, &initialRemainingVectorPredicates,
//                                &initialUniformVector,
//                                &initialRemainingVector);
//    setInitialValueForInductionVariable();
//
//    refineLoopConditionCheck();
//
//    BasicBlock *linearizedBlock = doPermutation(initialUniformVectorPredicates, initialRemainingVectorPredicates,
//                                                initialUniformVector,
//                                                initialRemainingVector, &permutedUniformVector,
//                                                &permutedRemainingVector,
//                                                &permutedPredicates);
//
//    // make a copy of targeted block so that we don't need to keep track of when it is vectorized
//    BasicBlock *copiedTargetedBlock = makeTemporaryCopyOfTheBlock(targetedBlock);
//
//    // filling linearized path
//    // for the case of having only one if statement, it only updates the remaining vector, since we know that when we reach there,
//    // all elements in remaining vector is inactive
//    std::vector<BasicBlock *> blocks;
//    fillBlock(linearizedBlock, blocks);
//
//
//    //constructing targeted path
//    IRBuilder<> IRB(targetedBlock->getTerminator());
//    auto *allTruePredicates = intrinsicCallGenerator->createAllTruePredicates(IRB);
//    makeBlockVectorized(targetedBlock, allTruePredicates, permutedUniformVector);
//
//
//    //update uniform vectors
//    updateVectors(targetedBlock, &updatedUniformVector, &updatedUniformVectorPredicates, inductionVar);
//    // adding phi nodes
//    insertPhiNodsForVector(updatedUniformVector, initialUniformVector, targetedBlock, linearizedBlock);
//    insertPhiNodsForVector(updatedUniformVectorPredicates, initialUniformVectorPredicates, targetedBlock,
//                           linearizedBlock);
//
//
//    // constructing linearized path
//
////    makeBlockVectorized(linearizedBlock, permutedPredicates, permutedRemainingVector);
//
//    // update remaining vectors
//    updateVectors(linearizedBlock, &updatedRemainingVector, &updatedRemainingVectorPredicates, inductionVar);
//
//    // adding phi nodes
//    insertPhiNodsForVector(updatedRemainingVector, initialRemainingVector, linearizedBlock, targetedBlock);
//    PHINode *latchPhi = insertPhiNodsForVector(updatedRemainingVectorPredicates, initialRemainingVectorPredicates,
//                                               linearizedBlock,
//                                               targetedBlock);
//
//    ///NOTE: if we go to targeted block, permutation logic will change remaining predicated,
//    /// so it will become invalid and we should use permuted predicates. we fix this in here
//    latchPhi->setIncomingValueForBlock(targetedBlock, permutedPredicates);
//
//    /**
//     * after phi insertion, vector updates will be like following:
//     *
//     *
//     *         initial blocks before loop:
//     *                                   initialUniformVector = ....
//     *                                   initialUniformVectorPredicates=....
//     *                                   initialRemainingVector =....
//     *                                   initialRemainingVectorPredicate=....
//     *                                              |
//     *                                              |
//     *                                              |
//     *                                              |
//     *                      Loop Header Block:
//     *                                   UniformVector = Phi (initialUniformVector [from initial blocks], UniformVector [from newLatch]  )
//     *                                   UniformVectorPredicates= Phi (initialUniformVectorPredicates [from initial blocks], UniformVectorPredicates [from newLatch] )
//     *                                   RemainingVector = Phi (initialRemainingVector [from initial blocks], RemainingVector [from newLatch] )
//     *                                   RemainingVectorPredicate= Phi (initialRemainingVectorPredicate [from initial blocks], RemainingVectorPredicate [from newLatch] )
//     *                                              |
//     *                                              |
//     *                                              .
//     *                                              .
//     *                                              .
//     *                                              .
//     *                                              .
//     *                                              .
//     *
//     *                                             /   \
//     *                                           /       \
//     *                                         /           \
//     *                                       /               \
//     *                                     /                   \
//     *                                   /                       \
//     *                                 /                           \
//     *             lane gather:                                      \
//     *                    permutedUniformVector = ....                 \
//     *                    permutedRemainingVector = ....                 \
//     *                    permutedPredicates = ....                        \
//     *                          |                                            \
//     *                          |                                              \
//     *                          |                                                \
//     *                          |                                                  \
//     *         targeted block:                                          linearized block:
//     *                    updatedUniformVector = .....                            updatedRemainingVector = ....
//     *                    updatedUniformPredicateVector = .....                   updatedRemainingPredicateVector = ....
//     *                          \                                                            /
//     *                             \                                                      /
//     *                                \                                                /
//     *                                   \                                          /
//     *                                      \                                    /
//     *                                         \                             /
//     *                                            \                      /
//     *                                               \               /
//     *                                                  \         /
//     *                                                       |
//     *                                                       |
//     *                                      newLatch block:
//     *                                                  UniformVector = Phi (updatedUniformVector [from target block] , UniformVector [from loop header])
//     *                                                  UniformVectorPredicates= Phi (updatedUniformPredicateVector [from target block], [from loop header])
//     *                                                  RemainingVector = Phi (updatedRemainingVector [from linearized block], permutedRemainingVector [from lane gathering block] )
//     *                                                  RemainingVectorPredicate= Phi (updatedRemainingPredicateVector [from linearized block], permutedPredicates [from lane gathering block])
//     *
//     *
//     *
//     *
//     *
//     */
//
//
//    // We need to add linearized code after loop to execute active elements that has not been executed
//    // both in uniform and remaining vectors, so we will have two epilogue blocks
//
//
//    BasicBlock *epilogueBlock1;
//
//    // insert in the block coming immediately after header
//    // TODO: make sure the block only contains a single branch
//    for (auto BB: successors(L->getHeader())) {
//        if (!L->contains(BB)) {
//            epilogueBlock1 = BB;
//            break;
//        }
//    }
//
//    epilogueBlock1->setName("epilogueBlock1");
//
//    // create second block
//    BasicBlock *epilogueBlock2 = BasicBlock::Create(context, "epilogueBlock2", L->getHeader()->getParent(),
//                                                    epilogueBlock1->getSingleSuccessor());
//
//    // correct cfg edges
//    BranchInst::Create(epilogueBlock1->getSingleSuccessor(), epilogueBlock2);
//    epilogueBlock1->getTerminator()->eraseFromParent();
//    BranchInst::Create(epilogueBlock2, epilogueBlock1);
//
//    std::vector<BasicBlock *> blocksToBeCopied;
//    blocksToBeCopied.push_back(copiedTargetedBlock);
//    fillBlock(epilogueBlock1, blocksToBeCopied);
//    fillBlock(epilogueBlock2, blocksToBeCopied);
//
//
//    // to get index and predicate vector, we kno that there are exactly 5 phi nodes in the header, 1 for induction var
//    // 2 for uniform vector and its predicate and 2 for uniform one
//
//    // TODO: find a better way to find vectors in header
//    Instruction &inductionVarPhi = L->getHeader()->getInstList().front();
//    Instruction *uniformVecPhi = inductionVarPhi.getNextNode();
//    Instruction *uniformPredPhi = uniformVecPhi->getNextNode();
//    Instruction *remainingVecPhi = uniformPredPhi->getNextNode();
//    Instruction *remainingPredPhi = remainingVecPhi->getNextNode();
//
//    // vectorize with uniform vector elements
//    makeBlockVectorized(epilogueBlock1, uniformPredPhi, uniformVecPhi);
//    makeBlockVectorized(epilogueBlock2, remainingPredPhi, remainingVecPhi);
//
//    copiedTargetedBlock->eraseFromParent();

}



//
//
//void SVE_ALC::setInitialValueForInductionVariable() {
//    Instruction &firstInstr = L->getHeader()->getInstList().front();
//    auto *phiNode = dyn_cast<PHINode>(&firstInstr);
//    for (auto pred: predecessors(L->getHeader())) {
//        if (!L->contains(pred)) {
//            Constant *initialValue = llvm::ConstantInt::get(phiNode->getType(), 2 * vectorizationFactor);
//            phiNode->setIncomingValueForBlock(pred, initialValue);
//        }
//    }
//}
//
//
//void SVE_ALC::refineLoopConditionCheck() {
//    auto *brInstr = dyn_cast<BranchInst>(L->getHeader()->getTerminator());
//    auto *oldConditionInstruction = dyn_cast<Instruction>(brInstr->getCondition());
//
//
//    LLVMContext &context = L->getHeader()->getContext();
//    IRBuilder<> builder(context);
//    builder.SetInsertPoint(oldConditionInstruction);
//
//    Value *tripCount;
//    Value *inductionVar;
//    // find trip count
//    for (int i = 0; i < oldConditionInstruction->getNumOperands(); ++i) {
//        auto *instr = dyn_cast<Instruction>(oldConditionInstruction->getOperand(i));
//        // it should have been calculated in preHeader
//        if (instr->getParent() != L->getHeader()) {
//            tripCount = dyn_cast<Value>(instr);
//        } else {
//            inductionVar = oldConditionInstruction->getOperand(i);
//        }
//    }
//
////    auto *constValue = llvm::ConstantInt::get(prevTripCount->getType(), vectorizationFactor - 1);
////      // set new trip count to  n - (VLength - 1)
////    Value *newTripCount = intrinsicCallGenerator->createSubInstruction(oldConditionInstruction, prevTripCount, constValue);
//
//    // refine condition instruction
//    // TODO: how to find proper compare instruction?
//    Value *newCondition = builder.CreateICmpUGE(inductionVar, tripCount);
//    brInstr->setCondition(newCondition);
//    oldConditionInstruction->eraseFromParent();
//
//    // TODO: check to jump to correct blocks based on condition
//
//
//}
//
//
//void
//SVE_ALC::formInitialPredicateVectors(Value *inductionVariable, Value **firstPredicates, Value **secondPredicates,
//                                     Value **firstVector, Value **secondVector) {
//
//    auto *firstInitialPredicates = new std::vector<Value *>;
//    auto *secondInitialPredicates = new std::vector<Value *>;
//
//    BasicBlock *lastCopiedBlock = duplicateBlocksForInitialPredicateGeneration(inductionVariable,
//                                                                               firstInitialPredicates,
//                                                                               secondInitialPredicates);
//
//    LLVMContext &context = L->getHeader()->getContext();
//    IRBuilder<> builder(lastCopiedBlock->getTerminator());
//
//    int index = 0;
//    for (auto value: *firstInitialPredicates) {
//        (*firstPredicates) = builder.CreateInsertElement((*firstPredicates), value, index++);
//    }
//
//    index = 0;
//    for (auto value: *secondInitialPredicates) {
//        (*secondPredicates) = builder.CreateInsertElement((*secondPredicates), value, index++);
//    }
//
//
//    ConstantInt *constZero = llvm::ConstantInt::get(Type::getInt32Ty(context), 0, true);
//    ConstantInt *constOne = llvm::ConstantInt::get(Type::getInt32Ty(context), 1, true);
//    ConstantInt *constVFactor = llvm::ConstantInt::get(Type::getInt32Ty(context), vectorizationFactor, true);
//
//    (*firstVector) = intrinsicCallGenerator->createIndexInstruction(builder,
//                                                                    constZero, constOne);
//    (*secondVector) = intrinsicCallGenerator->createIndexInstruction(builder,
//                                                                     constVFactor, constOne);
//
//}
//
//// TODO: makes loop preHeader invalid
//BasicBlock *SVE_ALC::duplicateBlocksForInitialPredicateGeneration(Value *inductionVariable,
//                                                                  std::vector<Value *> *firstInitialPredicates,
//                                                                  std::vector<Value *> *secondInitialPredicates) {
//
//    // find preHeaderBlock
//    BasicBlock *preHeader;
//    for (auto pred: predecessors(L->getHeader())) {
//        if (!L->contains(pred)) { // initialBlocks does not contain pred
//            preHeader = pred;
//        }
//    }
//
//    BasicBlock *header = L->getHeader();
//
//    //gather phi nodes in header
//    std::vector<PHINode *> headerPhiNodes;
//    for (BasicBlock::iterator I = L->getHeader()->begin(); isa<PHINode>(I); ++I) {
//        headerPhiNodes.push_back(cast<PHINode>(I));
//    }
//
//    auto blockInsertPt = std::next(preHeader->getIterator());
//    ValueToValueMapTy VMap1;
//
//
//    // First copy
//    BasicBlock *firstCopiedBlock = CloneBasicBlock(header, VMap1, ".init.1");
//    preHeader->getParent()->getBasicBlockList().insert(blockInsertPt, firstCopiedBlock);
//    for (PHINode *OrigPHI: headerPhiNodes) {
//        auto *newPHI = cast<PHINode>(VMap1[OrigPHI]);
//        Value *inVal = llvm::ConstantInt::get(inductionVariable->getType(), 0);
//        VMap1[OrigPHI] = inVal;                           // replace phi node with 0
//        firstCopiedBlock->getInstList().erase(newPHI);
//    }
//
//    for (ValueToValueMapTy::iterator VI = VMap1.begin(), VE = VMap1.end();
//         VI != VE; ++VI) {
//        VMap1[VI->first] = VI->second;
//    }
//
//    SmallVector<BasicBlock *, 1> newlyGeneratedBlock1;
//    newlyGeneratedBlock1.push_back(firstCopiedBlock);
//    remapInstructionsInBlocks(newlyGeneratedBlock1, VMap1);
//
//    //getting the last value for induction variable to be used in the next copy
//    Value *lastInductionVariableValue = nullptr;
//    auto *condInstr = dyn_cast<Instruction>(dyn_cast<BranchInst>(firstCopiedBlock->getTerminator())->getCondition());
//    for (int i = 0; i < condInstr->getNumOperands(); ++i) {
//        Value *operand = condInstr->getOperand(i);
//        if (isa<Instruction>(operand) && dyn_cast<Instruction>(operand)->getParent() == firstCopiedBlock) {
//            lastInductionVariableValue = operand;
//            break;
//        }
//    }
//
//    //second copy
//    ValueToValueMapTy VMap2;
//
//    BasicBlock *secondCopiedBlock = CloneBasicBlock(header, VMap2, ".init.2");
//
//    preHeader->getParent()->getBasicBlockList().insert(blockInsertPt, secondCopiedBlock);
//    for (PHINode *OrigPHI: headerPhiNodes) {
//        auto *newPHI = cast<PHINode>(VMap2[OrigPHI]);
//        VMap2[OrigPHI] = lastInductionVariableValue;
//        secondCopiedBlock->getInstList().erase(newPHI);
//    }
//
//    for (ValueToValueMapTy::iterator VI = VMap2.begin(), VE = VMap2.end();
//         VI != VE; ++VI) {
//        VMap2[VI->first] = VI->second;
//    }
//
//    SmallVector<BasicBlock *, 1> newlyGeneratedBlock2;
//    newlyGeneratedBlock2.push_back(secondCopiedBlock);
//    remapInstructionsInBlocks(newlyGeneratedBlock2, VMap2);
//
//    //remove copied blocks terminators and redundant instructions
//    auto *condInstruction1 = dyn_cast<Instruction>(
//            dyn_cast<BranchInst>(firstCopiedBlock->getTerminator())->getCondition());
//    firstCopiedBlock->getTerminator()->eraseFromParent();
//    condInstruction1->eraseFromParent();
//
//    auto *condInstruction2 = dyn_cast<Instruction>(
//            dyn_cast<BranchInst>(secondCopiedBlock->getTerminator())->getCondition());
//    secondCopiedBlock->getTerminator()->eraseFromParent();
//    condInstruction2->eraseFromParent();
//
//    // add branch instructions for new blocks
//    BranchInst::Create(secondCopiedBlock, firstCopiedBlock);
//    BranchInst::Create(header, secondCopiedBlock);
//
//    // refine Phi node in header
//    auto *phiNode = dyn_cast<PHINode>(&header->getInstList().front());
//    phiNode->replaceIncomingBlockWith(preHeader, secondCopiedBlock);
//
//    // preHeader should branch to the first new block
//    preHeader->getTerminator()->eraseFromParent();
//    BranchInst::Create(firstCopiedBlock, preHeader);
//
//    //gather predicates
//    for (auto predicate: predicates) {
//        for (auto pair: VMap1) {
//            if (pair.first == predicate) {
//                firstInitialPredicates->push_back(pair.second);
//                break;
//            }
//        }
//        for (auto pair: VMap2) {
//            if (pair.first == predicate) {
//                secondInitialPredicates->push_back(pair.second);
//                break;
//            }
//        }
//    }
//
//    return secondCopiedBlock;
//
//}
//
//
//BasicBlock *SVE_ALC::doPermutation(Value *firstPredicates, Value *secondPredicates, Value *firstVector,
//                                   Value *secondVector, Value **permutedZ0,
//                                   Value **permutedZ1, Value **permutedPredicates) {
//
//
//    LLVMContext &context = L->getHeader()->getContext();
//    BasicBlock *permuteDecision = BasicBlock::Create(context, "permute.decision", L->getHeader()->getParent(),
//                                                     targetedBlock);
//    BasicBlock *laneGatheringBlock = BasicBlock::Create(context, "lane.gather", L->getHeader()->getParent(),
//                                                        targetedBlock);
//    BasicBlock *linearizedBlock = BasicBlock::Create(context, "linearized", L->getHeader()->getParent(),
//                                                     targetedBlock);
//
//
//
//    // make targetedBlock's pred branch to permute decision instead of targetedBlock
//    auto *brInstr = dyn_cast<BranchInst>(targetedBlock->getSinglePredecessor()->getTerminator());
//    for (int i = 0; i < brInstr->getNumOperands(); ++i) {
//        if (brInstr->getOperand(i) == targetedBlock) {
//            brInstr->setOperand(i, permuteDecision);
//            break;
//        }
//    }
//
//
//    // create temporary terminator
//    BranchInst::Create(laneGatheringBlock, permuteDecision);
//
//    Instruction *insertAt = permuteDecision->getTerminator();
//    IRBuilder<> builder(insertAt);
//
//    auto *allTruePredicates = intrinsicCallGenerator->createAllTruePredicates(builder);
//
//    //insert instructions to check if there are enough active lanes
//    builder.SetInsertPoint(permuteDecision->getTerminator());
//    auto *numOfFirstActives = dyn_cast<Value>(
//            intrinsicCallGenerator->createCntpInstruction(builder, firstPredicates, allTruePredicates));
//    auto *numOfSecondActives = dyn_cast<Value>(
//            intrinsicCallGenerator->createCntpInstruction(builder, secondPredicates, allTruePredicates));
//    Value *addResult = builder.CreateAdd(numOfFirstActives, numOfSecondActives);
//    auto *constVecFactor = llvm::ConstantInt::get(addResult->getType(), vectorizationFactor);
//    Value *condition = builder.CreateICmpUGE(addResult, constVecFactor);
//
//
//
//    //change permute decision block terminator to conditional branch
//    permuteDecision->getTerminator()->eraseFromParent();
//    BranchInst::Create(laneGatheringBlock, linearizedBlock, condition, permuteDecision);
//
//    // linearized block should branch latch
//    BranchInst::Create(newLatch, linearizedBlock);
//
//    // laneGathering block should branch to targeted block
//    BranchInst::Create(targetedBlock, laneGatheringBlock);
//
//
//    insertPermutationLogic(laneGatheringBlock->getTerminator(), firstVector, secondVector, firstPredicates,
//                           secondPredicates, permutedZ0, permutedZ1, permutedPredicates);
//
//
//    L->addBasicBlockToLoop(permuteDecision, *LI);
//    L->addBasicBlockToLoop(laneGatheringBlock, *LI);
//    L->addBasicBlockToLoop(linearizedBlock, *LI);
//
//    return linearizedBlock;
//}
//
//void SVE_ALC::makeBlockVectorized(BasicBlock *block, Value *predicateVector, Value *indices) {
//
//    Instruction *insertionPoint = block->getTerminator();
//    IRBuilder<> builder(insertionPoint);
//
//    std::map<Value *, Value *> vMap;
//
//    // Should be remove in FILO manner to prevent removing a value that is used in following lines
//    std::stack<Instruction *> toBeRemoved;
//
//
//    // TODO: Is there any case we could have PHI?
//    // TODO: Complete the list
//    // TODO: handle binary operation for doubles
//    // TODO: exclude newly generated instruction from iteration
//    for (auto &instr: block->getInstList()) {
//
//        if (isa<GEPOperator>(instr)) {
//            continue;
//        } else if (isa<StoreInst>(instr)) {
//            auto storeInstr = dyn_cast<StoreInst>(&instr);
//            // it's the value to be stored
//            Value *firstOp = nullptr;
//            if (vMap.count(storeInstr->getOperand(0))) {
//                firstOp = vMap[storeInstr->getOperand(0)];
//            } else {
//                // TODO: can this happen?
//            }
//            auto ptr = dyn_cast<GEPOperator>(instr.getOperand(1));
//            intrinsicCallGenerator->createScatterStoreInstruction(builder, firstOp, ptr, predicateVector,
//                                                                  indices);
//            toBeRemoved.push(&instr);
//
//            ////////////////////////////////////////////////////////////////////////////////////////////////////
//            VectorType *vecInt64Type = VectorType::get(builder.getInt64Ty(), vectorizationFactor, /*Scalable*/ true);
//            Value *extendedIndices = builder.CreateZExt(indices, vecInt64Type);
//            intrinsicCallGenerator->createScatterStoreInstruction(builder, indices, ptr, predicateVector,
//                                                                  indices);
//            ///////////////////////////////////////////////////////////////////////////////////////////////////////
//
//        } else if (isa<LoadInst>(instr)) {
//            auto ptr = dyn_cast<GEPOperator>(instr.getOperand(0));
//            auto *loadedData = intrinsicCallGenerator->createGatherLoadInstruction(builder, ptr,
//                                                                                   predicateVector, indices);
//            vMap[&instr] = loadedData;
//            toBeRemoved.push(&instr);
//        } else if (isa<BinaryOperator>(instr)) {
//            if (isa<MulOperator>(instr)) {
//                Value *firstOp = nullptr;
//                Value *secondOp = nullptr;
//                if (vMap.count(instr.getOperand(0))) {
//                    firstOp = vMap[instr.getOperand(0)];
//                } else {
//                    //TODO: ?????
//                }
//
//                if (vMap.count(instr.getOperand(1))) {
//                    secondOp = vMap[instr.getOperand(1)];
//                } else {
//                    //TODO: ?????
//                }
//                auto intrinsic = Intrinsic::aarch64_sve_mul;
//                auto *multResult = intrinsicCallGenerator->createArithmeticInstruction(builder, intrinsic,
//                                                                                       firstOp, secondOp,
//                                                                                       predicateVector);
//                vMap[&instr] = multResult;
//                toBeRemoved.push(&instr);
//            }
//        }
//    }
//
//    while (!toBeRemoved.empty()) {
//        toBeRemoved.top()->eraseFromParent();
//        toBeRemoved.pop();
//    }
//
//}
//
//
//void SVE_ALC::fillBlock(BasicBlock *blockToBeFilled, const std::vector<BasicBlock *> &blocks) {
//    llvm::ValueToValueMapTy vMap;
//    std::vector<llvm::Instruction *> new_instructions;
//
//    for (auto BB: blocks) {
//        for (auto &instr: BB->getInstList()) {
//            if (&instr == BB->getTerminator()) {
//                break;
//            }
//            Instruction *clonedInstr = instr.clone();
//            clonedInstr->insertBefore(blockToBeFilled->getTerminator());
//            vMap[&instr] = clonedInstr;
//            new_instructions.push_back(clonedInstr);
//
//        }
//
//        for (auto &cloned_instr: new_instructions) {
//            llvm::RemapInstruction(cloned_instr, vMap, RF_NoModuleLevelChanges | RF_IgnoreMissingLocals);
//        }
//    }
//
//}
//
//BasicBlock *SVE_ALC::findTargetedBB() {
//    // TODO: make a complete analysis
//
//    for (auto succ: successors(L->getHeader())) {
//        if (succ->getSingleSuccessor() == newLatch) {
//            return succ;
//        }
//    }
//
//    return nullptr;
//}
//
//void SVE_ALC::updateVectors(BasicBlock *insertAt, Value **indicesVector, Value **predicateVector,
//                            Value *inductionVariable) {
//
//    // updating predicate
//    IRBuilder<> builder(insertAt->getTerminator());
//
//    VectorType *type = VectorType::get(builder.getInt1Ty(), vectorizationFactor, /*Scalable*/ true);
//
//    Type *int1Ty = builder.getInt1Ty();
//    Value *predicateHolder = UndefValue::get(type);
//
//    for (int i = 0; i < vectorizationFactor; ++i) {
//        Constant *index = Constant::getIntegerValue(int1Ty, llvm::APInt(1, i));
//        predicateHolder = builder.CreateInsertElement(predicateHolder, predicates[i], index);
//    }
//
//    *predicateVector = predicateHolder;
//
//    // updating indices
//    Constant *constOne = llvm::ConstantInt::get(builder.getInt32Ty(), 1, /*Scalable*/ true);
//    Value *castedIndVar = builder.CreateIntCast(inductionVariable, builder.getInt32Ty(), /*Scalable*/ false);
//    *indicesVector = intrinsicCallGenerator->createIndexInstruction(builder, castedIndVar, constOne);
//
//
//}
//
//
//PHINode *SVE_ALC::insertPhiNodsForVector(Value *updatedValue, Value *initialValue,
//                                         BasicBlock *mainPath, BasicBlock *otherPath) {
//
//    // there should be one phi in the latch which is the joint point for linearized path and vectorized path
//    Instruction *insertAt = L->getLoopLatch()->getTerminator();
//    PHINode *latchPhi = PHINode::Create(updatedValue->getType(), 2);
//    latchPhi->insertBefore(insertAt);
//    latchPhi->addIncoming(updatedValue, mainPath);
//    latchPhi->addIncoming(initialValue, otherPath);   // to be change, should get the value of header phi
//
//    // then there should be another phi in the loop header
//    insertAt = L->getHeader()->getFirstNonPHI();
//    PHINode *headerPhi = PHINode::Create(updatedValue->getType(), 2);
//    headerPhi->insertBefore(insertAt);
//    headerPhi->addIncoming(latchPhi, L->getLoopLatch());
//
//    // get the other predecessor of header
//    BasicBlock *pred = nullptr;
//    for (auto BB: predecessors(L->getHeader())) {
//        if (BB != L->getLoopLatch()) {
//            pred = BB;
//        }
//    }
//    headerPhi->addIncoming(initialValue, pred);
//
//
//    // replace all usages of initialValues inside the loop with the header phi value
//    std::map<Instruction *, int> toBeChanged;
//    auto *instr = dyn_cast<Instruction>(initialValue);
//    for (auto user: instr->users()) {
//
//        auto *userInstr = dyn_cast<Instruction>(user);
//        if (!L->contains(userInstr)) {
//            continue;
//        }
//        if (isa<PHINode>(userInstr)) {
//            continue;
//        }
//        for (int i = 0; i < userInstr->getNumOperands(); ++i) {
//            if (userInstr->getOperand(i) == initialValue) {
//                toBeChanged.insert({userInstr, i});
//            }
//        }
//    }
//
//    // do the same for the updatedValue
//    instr = dyn_cast<Instruction>(updatedValue);
//    for (auto user: instr->users()) {
//        auto *userInstr = dyn_cast<Instruction>(user);
//        if (!L->contains(userInstr)) {
//            continue;
//        }
//        if (isa<PHINode>(userInstr)) {
//            continue;
//        }
//        for (int i = 0; i < userInstr->getNumOperands(); ++i) {
//            if (userInstr->getOperand(i) == updatedValue) {
//                toBeChanged.insert({userInstr, i});
//            }
//        }
//    }
//    for (auto pair: toBeChanged) {
//        pair.first->setOperand(pair.second, headerPhi);
//    }
//
//
//    //Finally, update phiNode in the latch to get value from header phi
//    latchPhi->setIncomingValueForBlock(otherPath, headerPhi);
//
//    return latchPhi;
//}
//
//BasicBlock *SVE_ALC::makeTemporaryCopyOfTheBlock(BasicBlock *block) {
//    ValueToValueMapTy VMap;
//    BasicBlock *clonedBlock = CloneBasicBlock(block, VMap, "tempCopy", L->getHeader()->getParent());
//    SmallVector<BasicBlock *, 1> newBlocks;
//    newBlocks.push_back(clonedBlock);
//    remapInstructionsInBlocks(newBlocks, VMap);
//    return clonedBlock;
//}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// TODO: problem in algorithm, in the case where the total number of active lanes is not enough to fill a vector, the result vector is not correct
void SVE_ALC::insertPermutationLogic(Instruction *insertAt, Value *z0, Value *z1, Value *p0, Value *p1,
                                     Value **permutedZ0,
                                     Value **permutedZ1, Value **permutedPredicates) {
    // TODO: add code to compute predicates for uniform vector

    IRBuilder<> IRB(insertAt);
    auto *constZero = IRB.getInt64(0);

    auto *allTruePredicates = intrinsicCallGenerator->createAllTruePredicates(IRB);

    // gather active lanes
    auto *z2 = intrinsicCallGenerator->createCompactInstruction(IRB, z0, p0);
    auto *z3 = intrinsicCallGenerator->createCompactInstruction(IRB, z1, p1);

    //gather inactive lanes
    Value *p2 = IRB.CreateNot(p0);
    Value *p3 = IRB.CreateNot(p1);

    auto *z4 = intrinsicCallGenerator->createCompactInstruction(IRB, z0, p2);
    auto *z5 = intrinsicCallGenerator->createCompactInstruction(IRB, z1, p3);

    // gathering all active lanes to z0
    auto x0 = intrinsicCallGenerator->createCntpInstruction(IRB, p0, allTruePredicates);
    auto *p4 = intrinsicCallGenerator->createWhileltInstruction(IRB, constZero, x0);
    *permutedZ0 = intrinsicCallGenerator->createSpliceInstruction(IRB, z2, z3, p4);

    //gather others to z1
    auto x1 = intrinsicCallGenerator->createCntpInstruction(IRB, p1, allTruePredicates);
    auto p5 = intrinsicCallGenerator->createWhileltInstruction(IRB, constZero, x1);
    z2 = intrinsicCallGenerator->createSpliceInstruction(IRB, z3, z5, p5); // contains active ... inactive
    auto *x2 = intrinsicCallGenerator->createCntpInstruction(IRB, p2, allTruePredicates);
    p2 = intrinsicCallGenerator->createWhileltInstruction(IRB, constZero, x2);
    *permutedZ1 = intrinsicCallGenerator->createSelInstruction(IRB, z4, z2, p2);

    //find result predicate
    p1 = IRB.CreateNot(p2);

    *permutedPredicates = IRB.CreateAnd(p1, p5);
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

std::vector<Value *> *
SVE_ALC::fillPreALCBlock(BasicBlock *preALCBlock, BasicBlock *preheader, BasicBlock *alcHeader) {
    auto *results = new std::vector<Value *>;

    IRBuilder<> builder(preALCBlock);

    // create the value by which the index should be increased
    //TODO: we assume indices are added by one, make it work for other cases as well
    //should be added by vscale * VFactor * 1  ----> vscale shl log(VFactor)

    // create step vector
    Value *uniformVec = nullptr;
    Value *remainingVec = nullptr;
    Value *uniformVecPreds = nullptr;
    Value *remainingVecPreds = nullptr;
    Value *stepVal = nullptr;

    if (tripCount->getType() == Type::getInt64Ty(preheader->getContext())) {
        stepVal = intrinsicCallGenerator->createVscale64Intrinsic(builder);
        uniformVec = intrinsicCallGenerator->createStepVector64Intrinsic(builder, "uniform.vector");
    } else {
        stepVal = intrinsicCallGenerator->createVscale32Intrinsic(builder);
        uniformVec = intrinsicCallGenerator->createStepVector32Intrinsic(builder, "uniform.vector");
    }

    // vectorizing block termination condition: index > n - (n % stepValue)
    // forming n - (n % stepValue)

    Value *remResult = builder.CreateURem(tripCount, stepVal);
    Value *totalVecIterations = builder.CreateSub(tripCount, remResult, "total.iterations.to.be.vectorized");

    // create vector by which step vector should be updated
    Value *stepVecUpdateValues = createVectorOfConstants(stepVal, builder, "stepVector.update.values");

    // initial value for remaining vector is adding uniform vec to update vec
    remainingVec = builder.CreateAdd(uniformVec, stepVecUpdateValues, "remaining.vector");

    builder.CreateBr(alcHeader);

    results->push_back(uniformVec);
    results->push_back(stepVal);
    results->push_back(stepVecUpdateValues);
    results->push_back(totalVecIterations);
    results->push_back(remResult);
    results->push_back(remainingVec);

    return results;
}

void SVE_ALC::fillMiddleBlock(BasicBlock *middleBlock, BasicBlock *preheaderForRemaining, BasicBlock *exitBlock,
                              Value *remResult) {

    IRBuilder<> builder(preheaderForRemaining->getContext());
    builder.SetInsertPoint(middleBlock);

    Constant *constZero = ConstantInt::get(remResult->getType(), 0, false);
    Value *condition = builder.CreateICmpEQ(remResult, constZero, "condition");


    BranchInst::Create(exitBlock, preheaderForRemaining, condition, middleBlock);

}

void SVE_ALC::fillALCHeaderBlock(BasicBlock *alcHeader, BasicBlock *laneGatherBlock, BasicBlock *linearized,
                                 BasicBlock *preALC,
                                 std::vector<Value *> *initialValues) {
    IRBuilder<> builder(alcHeader->getContext());
    builder.SetInsertPoint(alcHeader);

    // create phi node for loop index
    Type *indexUpdatedValueType = (*initialValues)[1]->getType();   // it's the same as tripCount type
    Constant *contZero = llvm::ConstantInt::get(indexUpdatedValueType, 0);
    PHINode *indexVarPHI = builder.CreatePHI(indexUpdatedValueType, 2);
    indexVarPHI->addIncoming(contZero, preALC);

    // create phi for uniformVec
    Value *&uniformVec = (*initialValues)[0];
    PHINode *uniformVecPhi = builder.CreatePHI(uniformVec->getType(), 2);
    uniformVecPhi->addIncoming(uniformVec, preALC);

    // create phi for uniformVec
    Value *&remainingVec = (*initialValues)[5];
    PHINode *remainingVecPhi = builder.CreatePHI(uniformVec->getType(), 2);
    remainingVecPhi->addIncoming(remainingVec, preALC);

    /// condition logic ///



    //TODO: temporary, to be replaced with actual condition
    ConstantInt *condition = ConstantInt::get(builder.getInt1Ty(), 1);

    builder.CreateCondBr(condition, laneGatherBlock, linearized);

}

void SVE_ALC::fillLaneGatherBlock(BasicBlock *laneGather, BasicBlock *alcApplied) {
    IRBuilder<> builder(laneGather->getContext());
    builder.SetInsertPoint(laneGather);

    builder.CreateBr(alcApplied);
}

void SVE_ALC::fillALCAppliedBlock(BasicBlock *alcApplied, BasicBlock *newLatch) {
    IRBuilder<> builder(alcApplied->getContext());
    builder.SetInsertPoint(alcApplied);

    builder.CreateBr(newLatch);
}

void SVE_ALC::fillLinearizedBlock(BasicBlock *linearized, BasicBlock *newLatch) {
    IRBuilder<> builder(linearized->getContext());
    builder.SetInsertPoint(linearized);

    builder.CreateBr(newLatch);
}

void SVE_ALC::fillNewLatchBlock(BasicBlock *newLatch, BasicBlock *alcHeader, BasicBlock *middleBlock,
                                BasicBlock *preHeaderForRemaining,
                                std::vector<Value *> *initialValues) {
    IRBuilder<> builder(newLatch->getContext());
    builder.SetInsertPoint(newLatch);

    // update index
    Value *stepValue = (*initialValues)[1];
    auto *indexVarPHI = dyn_cast<PHINode>(&alcHeader->getInstList().front()); // first PHI in alcHeader is indexVarPhi
    Value *updatedIndex = builder.CreateAdd(stepValue, indexVarPHI);
    indexVarPHI->addIncoming(updatedIndex, newLatch);

    ///////////////////////////////////////////////////////////////////////////////////////////
    //updated uniform and remaining vectors
    Value *stepVecUpdateValues = (*initialValues)[2];
    auto *uniformVecPhi = dyn_cast<PHINode>(indexVarPHI->getNextNode()); // next instruction is phi node for step vec
    Value *updatedUniformPhi = builder.CreateAdd(uniformVecPhi, stepVecUpdateValues);
    uniformVecPhi->addIncoming(updatedUniformPhi, newLatch);

    auto *remainingVecPhi = dyn_cast<PHINode>(uniformVecPhi->getNextNode());
    Value *updatedRemainingVec = builder.CreateAdd(remainingVecPhi, stepVecUpdateValues);
    remainingVecPhi->addIncoming(updatedRemainingVec, newLatch);
    //////////////////////////////////////////////////////////////////////////////////////////


    refinePreHeaderForRemaining(preHeaderForRemaining, middleBlock, updatedIndex);

    //TODO: temporary, to be replaced with actual condition
    ConstantInt *condition = ConstantInt::get(builder.getInt1Ty(), 1);
    builder.CreateCondBr(condition, alcHeader, middleBlock);
}

std::vector<Value *> *
SVE_ALC::formInitialPredicates(BasicBlock *decisionBlock, BasicBlock *preAlc,
                               Value *inductionVar) {

    auto initialPredicateVectors = new std::vector<Value *>;

    IRBuilder<> builder(preAlc->getContext());


    Instruction *firstPred_scalar = nullptr;
    Instruction *secondPred_scalar = nullptr;

    std::vector<Instruction *> toBeVectorized;

    // TODO: assumption : there might be exactly one phi node that is the induction var (since decision block is header)
    for (int i = 0; i < 2; ++i) {

        llvm::ValueToValueMapTy vMap;
        // first copy instruction into vectorizing Block, then vectorize them
        std::vector<Instruction *> clonedInstructions;

        for (auto &instr: decisionBlock->instructionsWithoutDebug()) {
            if (&instr == decisionBlock->getTerminator()) {
                break;
            }
            if (isa<PHINode>(instr)) {
                continue;
            }

            Instruction *clonedInstr = instr.clone();
            clonedInstr->insertBefore(preAlc->getTerminator());
            vMap[&instr] = clonedInstr;
            clonedInstructions.push_back(clonedInstr);

            for (auto &cloned_instr: clonedInstructions) {
                llvm::RemapInstruction(cloned_instr, vMap, RF_NoModuleLevelChanges | RF_IgnoreMissingLocals);
            }

            toBeVectorized.push_back(clonedInstr);
        }


        Value *vscale = nullptr;
        // replace induction vars
        for (auto clonedInstr: clonedInstructions) {


            if (usesInductionVar(clonedInstr, inductionVar)) {
                // for the getElementPtr we only need to replace it with 0 and the corresponding value
                if (isa<GetElementPtrInst>(clonedInstr)) {

                    for (int j = 0; j < clonedInstr->getNumOperands(); ++j) {
                        if (clonedInstr->getOperand(j) == inductionVar) {

                            if (i == 0) {
                                Constant *constZero = ConstantInt::get(inductionVar->getType(), 0);
                                clonedInstr->setOperand(j, constZero);
                            } else {
                                builder.SetInsertPoint(clonedInstr);
                                if (!vscale) {
                                    if (inductionVar->getType() == builder.getInt64Ty()) {
                                        vscale = intrinsicCallGenerator->createVscale64Intrinsic(builder);
                                    } else {
                                        vscale = intrinsicCallGenerator->createVscale32Intrinsic(builder);
                                    }
                                }

                                clonedInstr->setOperand(j, vscale);
                            }
                        }
                    }
                }else{
                    // first one should be step vector, second should be added step vec

                }
            }
        }


        if (i == 0) {
            firstPred_scalar = clonedInstructions.back();
        } else {
            secondPred_scalar = clonedInstructions.back();
        }

    }

    // now we should vectorize clonedInstructions
    std::map<const Value *, const Value *> *instructionsMap = vectorizeInstructions_nonePredicated(&toBeVectorized,
                                                                                                   preAlc);


    const Value *&firstPred_Vectorized = (*instructionsMap)[(Value *) firstPred_scalar];
    const Value *&secondPred_Vectorized = (*instructionsMap)[(Value *) secondPred_scalar];

    initialPredicateVectors->push_back((Value *) firstPred_Vectorized);
    initialPredicateVectors->push_back((Value *) secondPred_Vectorized);

    return initialPredicateVectors;
}

std::map<const Value *, const Value *> *
SVE_ALC::vectorizeInstructions_nonePredicated(std::vector<Instruction *> *instructions, BasicBlock *block) {

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
            builder.CreateStore(firstOp, ptr);
            toBeRemoved.push(instr);
        } else if (isa<LoadInst>(instr)) {

            auto ptr = dyn_cast<GEPOperator>(instr->getOperand(0));
            Type *elementType = instr->getType();
            LoadInst *loadedData = builder.CreateLoad(VectorType::get(elementType, vectorizationFactor, true), ptr);
            vMap[instr] = loadedData;
            toBeRemoved.push(instr);

        } else if (isa<BinaryOperator>(instr) || isa<ICmpInst>(instr)) { // TODO: ICmp is not binary????

            instr->print(outs());
            llvm::outs() << "\n";

            Value *firstOp = nullptr;
            Value *secondOp = nullptr;
            if (vMap.count(instr->getOperand(0))) {
                firstOp = vMap[instr->getOperand(0)];
            } else if (isa<Constant>(instr->getOperand(0))) {
                auto *constValue = dyn_cast<Constant>(instr->getOperand(0));
                firstOp = createVectorOfConstants(constValue, builder, "first.operand");
            } else {
                /** operand is related to vscale **/
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

void SVE_ALC::refinePreHeaderForRemaining(BasicBlock *preHeaderForRemaining, BasicBlock *middleBlock, Value *value) {
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

SVE_ALC::SVE_ALC(Loop *l, int vectorizationFactor, LoopStandardAnalysisResults &ar)
        : L(l), vectorizationFactor(vectorizationFactor), AR(ar) {
    LI = &AR.LI;
    SE = &AR.SE;
    module = L->getHeader()->getModule();
    intrinsicCallGenerator = new IntrinsicCallGenerator(vectorizationFactor, module);
    tripCount = computeTripCount(L->getLoopLatch(), L->getCanonicalInductionVariable());
}




