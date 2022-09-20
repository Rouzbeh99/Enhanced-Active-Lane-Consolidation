//
// Created by rouzbeh on 8/8/22.
//

#include "SVE_ALC.h"

// TODO: analysis path should exclude cases like c[j] = a[i] + b[i + 1]  in other words, memory access of the operands
//  and result should be the same or it can handle this case by base address??

// TODO: llc does not work on 64 bit elements!!!

void SVE_ALC::doTransformation() {


    auto &context = L->getHeader()->getContext();

    //TODO: find induction variable
    auto *inductionVar = dyn_cast<PHINode>(&L->getHeader()->getInstList().front());


    VectorType *vecType1 = VectorType::get(Type::getInt1Ty(context), vectorizationFactor, true);
    VectorType *vecType32 = VectorType::get(Type::getInt32Ty(context), vectorizationFactor, true);


    Value *initialUniformVector = UndefValue::get(vecType32);
    Value *initialRemainingVector = UndefValue::get(vecType32);

    Value *initialUniformVectorPredicates = UndefValue::get(vecType1);
    Value *initialRemainingVectorPredicates = UndefValue::get(vecType1);

    Value *permutedUniformVector = UndefValue::get(vecType32);
    Value *permutedRemainingVector = UndefValue::get(vecType32);

    Value *permutedPredicates = UndefValue::get(vecType1);

    Value *updatedUniformVector = UndefValue::get(vecType32);
    Value *updatedRemainingVector = UndefValue::get(vecType32);
    Value *updatedUniformVectorPredicates = UndefValue::get(vecType1);
    Value *updatedRemainingVectorPredicates = UndefValue::get(vecType1);


    formInitialPredicateVectors(inductionVar, &initialUniformVectorPredicates, &initialRemainingVectorPredicates,
                                &initialUniformVector,
                                &initialRemainingVector);
    setInitialValueForInductionVariable();

    refineLoopConditionCheck();

    BasicBlock *linearizedBlock = doPermutation(initialUniformVectorPredicates, initialRemainingVectorPredicates,
                                                initialUniformVector,
                                                initialRemainingVector, &permutedUniformVector,
                                                &permutedRemainingVector,
                                                &permutedPredicates);

    // make a copy of targeted block so that we don't need to keep track of when it is vectorized
    BasicBlock *copiedTargetedBlock = makeTemporaryCopyOfTheBlock(targetedBlock);

    // filling linearized path
    // for the case of having only one if statement, it only updates the remaining vector, since we know that when we reach there,
    // all elements in remaining vector is inactive
    std::vector<BasicBlock *> blocks;
    fillBlock(linearizedBlock, blocks);


    //constructing targeted path
    CallInst *allTruePredicates = intrinsicCallGenerator->createAllTruePredicates(targetedBlock->getTerminator());
    makeBlockVectorized(targetedBlock, allTruePredicates, permutedUniformVector);


    //update uniform vectors
    updateVectors(targetedBlock, &updatedUniformVector, &updatedUniformVectorPredicates, inductionVar);
    // adding phi nodes
    insertPhiNodsForVector(updatedUniformVector, initialUniformVector, targetedBlock, linearizedBlock);
    insertPhiNodsForVector(updatedUniformVectorPredicates, initialUniformVectorPredicates, targetedBlock,
                           linearizedBlock);


    // constructing linearized path

//    makeBlockVectorized(linearizedBlock, permutedPredicates, permutedRemainingVector);

    // update remaining vectors
    updateVectors(linearizedBlock, &updatedRemainingVector, &updatedRemainingVectorPredicates, inductionVar);

    // adding phi nodes
    insertPhiNodsForVector(updatedRemainingVector, initialRemainingVector, linearizedBlock, targetedBlock);
    PHINode *latchPhi = insertPhiNodsForVector(updatedRemainingVectorPredicates, initialRemainingVectorPredicates,
                                               linearizedBlock,
                                               targetedBlock);

    ///NOTE: if we go to targeted block, permutation logic will change remaining predicated,
    /// so it will become invalid and we should use permuted predicates. we fix this in here
    latchPhi->setIncomingValueForBlock(targetedBlock, permutedPredicates);

    /**
     * after phi insertion, vector updates will be like following:
     *
     *
     *         initial blocks before loop:
     *                                   initialUniformVector = ....
     *                                   initialUniformVectorPredicates=....
     *                                   initialRemainingVector =....
     *                                   initialRemainingVectorPredicate=....
     *                                              |
     *                                              |
     *                                              |
     *                                              |
     *                      Loop Header Block:
     *                                   UniformVector = Phi (initialUniformVector [from initial blocks], UniformVector [from newLatch]  )
     *                                   UniformVectorPredicates= Phi (initialUniformVectorPredicates [from initial blocks], UniformVectorPredicates [from newLatch] )
     *                                   RemainingVector = Phi (initialRemainingVector [from initial blocks], RemainingVector [from newLatch] )
     *                                   RemainingVectorPredicate= Phi (initialRemainingVectorPredicate [from initial blocks], RemainingVectorPredicate [from newLatch] )
     *                                              |
     *                                              |
     *                                              .
     *                                              .
     *                                              .
     *                                              .
     *                                              .
     *                                              .
     *
     *                                             /   \
     *                                           /       \
     *                                         /           \
     *                                       /               \
     *                                     /                   \
     *                                   /                       \
     *                                 /                           \
     *             lane gather:                                      \
     *                    permutedUniformVector = ....                 \
     *                    permutedRemainingVector = ....                 \
     *                    permutedPredicates = ....                        \
     *                          |                                            \
     *                          |                                              \
     *                          |                                                \
     *                          |                                                  \
     *         targeted block:                                          linearized block:
     *                    updatedUniformVector = .....                            updatedRemainingVector = ....
     *                    updatedUniformPredicateVector = .....                   updatedRemainingPredicateVector = ....
     *                          \                                                            /
     *                             \                                                      /
     *                                \                                                /
     *                                   \                                          /
     *                                      \                                    /
     *                                         \                             /
     *                                            \                      /
     *                                               \               /
     *                                                  \         /
     *                                                       |
     *                                                       |
     *                                      newLatch block:
     *                                                  UniformVector = Phi (updatedUniformVector [from target block] , UniformVector [from loop header])
     *                                                  UniformVectorPredicates= Phi (updatedUniformPredicateVector [from target block], [from loop header])
     *                                                  RemainingVector = Phi (updatedRemainingVector [from linearized block], permutedRemainingVector [from lane gathering block] )
     *                                                  RemainingVectorPredicate= Phi (updatedRemainingPredicateVector [from linearized block], permutedPredicates [from lane gathering block])
     *
     *
     *
     *
     *
     */


    // We need to add linearized code after loop to execute active elements that has not been executed
    // both in uniform and remaining vectors, so we will have two epilogue blocks


    BasicBlock *epilogueBlock1;

    // insert in the block coming immediately after header
    // TODO: make sure the block only contains a single branch
    for (auto BB: successors(L->getHeader())) {
        if (!L->contains(BB)) {
            epilogueBlock1 = BB;
            break;
        }
    }

    epilogueBlock1->setName("epilogueBlock1");

    // create second block
    BasicBlock *epilogueBlock2 = BasicBlock::Create(context, "epilogueBlock2", L->getHeader()->getParent(),
                                                    epilogueBlock1->getSingleSuccessor());

    // correct cfg edges
    BranchInst::Create(epilogueBlock1->getSingleSuccessor(), epilogueBlock2);
    epilogueBlock1->getTerminator()->eraseFromParent();
    BranchInst::Create(epilogueBlock2, epilogueBlock1);

    std::vector<BasicBlock *> blocksToBeCopied;
    blocksToBeCopied.push_back(copiedTargetedBlock);
    fillBlock(epilogueBlock1, blocksToBeCopied);
    fillBlock(epilogueBlock2, blocksToBeCopied);


    // to get index and predicate vector, we kno that there are exactly 5 phi nodes in the header, 1 for induction var
    // 2 for uniform vector and its predicate and 2 for uniform one

    // TODO: find a better way to find vectors in header
    Instruction &inductionVarPhi = L->getHeader()->getInstList().front();
    Instruction *uniformVecPhi = inductionVarPhi.getNextNode();
    Instruction *uniformPredPhi = uniformVecPhi->getNextNode();
    Instruction *remainingVecPhi = uniformPredPhi->getNextNode();
    Instruction *remainingPredPhi = remainingVecPhi->getNextNode();

    // vectorize with uniform vector elements
    makeBlockVectorized(epilogueBlock1, uniformPredPhi, uniformVecPhi);
    makeBlockVectorized(epilogueBlock2, remainingPredPhi, remainingVecPhi);

    copiedTargetedBlock->eraseFromParent();

}


void SVE_ALC::insertPermutationLogic(Instruction *insertAt, Value *z0, Value *z1, Value *p0, Value *p1,
                                     Value **permutedZ0,
                                     Value **permutedZ1, Value **permutedPredicates) {


    IntegerType *int64Type = llvm::Type::getInt64Ty(L->getHeader()->getContext());

    ConstantInt *constZero = llvm::ConstantInt::get(int64Type, 0);

    CallInst *allTruePredicates = intrinsicCallGenerator->createAllTruePredicates(insertAt);


    // gather active lanes
    CallInst *z2 = intrinsicCallGenerator->createCompactInstruction(insertAt, z0, p0);
    CallInst *z3 = intrinsicCallGenerator->createCompactInstruction(insertAt, z1, p1);



    //gather inactive lanes
    Value *p2 = intrinsicCallGenerator->createNotInstruction(insertAt, p0);
    Value *p3 = intrinsicCallGenerator->createNotInstruction(insertAt, p1);

    CallInst *z4 = intrinsicCallGenerator->createCompactInstruction(insertAt, z0, p2);
    CallInst *z5 = intrinsicCallGenerator->createCompactInstruction(insertAt, z1, p3);



    // gathering all active lanes to z0
    auto x0 = dyn_cast<Value>(intrinsicCallGenerator->createCntpInstruction(insertAt, p0, allTruePredicates));

    CallInst *p4 = intrinsicCallGenerator->createWhileltInstruction(insertAt, constZero, x0);


    *permutedZ0 = intrinsicCallGenerator->createSpliceInstruction(insertAt, z2, z3, p4);

    //gather others to z1
    auto x1 = dyn_cast<Value>(intrinsicCallGenerator->createCntpInstruction(insertAt, p1, allTruePredicates));
    auto p5 = intrinsicCallGenerator->createWhileltInstruction(insertAt, constZero, x1);
    z2 = intrinsicCallGenerator->createSpliceInstruction(insertAt, z3, z5, p5); // contains active ... inactive
    CallInst *x2 = intrinsicCallGenerator->createCntpInstruction(insertAt, p2, allTruePredicates);
    p2 = intrinsicCallGenerator->createWhileltInstruction(insertAt, constZero, x2);

    *permutedZ1 = intrinsicCallGenerator->createSelInstruction(insertAt, z4, z2, p2);

    //find result predicate
    p1 = intrinsicCallGenerator->createNotInstruction(insertAt, p2);
    CallInst *x3 = intrinsicCallGenerator->createCntpInstruction(insertAt, p2, allTruePredicates);

    Value *numOfActivesInResult = intrinsicCallGenerator->createAddInstruction(insertAt, intrinsicCallGenerator->createSubInstruction(insertAt, x1, x2), x3);

    p2 = intrinsicCallGenerator->createWhileltInstruction(insertAt, constZero, numOfActivesInResult);
    auto p6 = intrinsicCallGenerator->createNotInstruction(insertAt, p2);

    std::vector<Value *> firstAndOperands;
    firstAndOperands.push_back(p1);
    firstAndOperands.push_back(p2);       // !p6 = p2
    Value *firstAnd = intrinsicCallGenerator->createANDInstruction(insertAt, ArrayRef<Value *>(firstAndOperands));

    std::vector<Value *> secondAndOperands;
    secondAndOperands.push_back(p1);
    secondAndOperands.push_back(p2);
    secondAndOperands.push_back(p6);
    Value *secondAnd = intrinsicCallGenerator->createANDInstruction(insertAt, ArrayRef<Value *>(secondAndOperands));

    std::vector<Value *> orOperands;
    orOperands.push_back(firstAnd);
    orOperands.push_back(secondAnd);

    *permutedPredicates = intrinsicCallGenerator->createORInstruction(insertAt, ArrayRef<Value *>(orOperands));


}


void SVE_ALC::setInitialValueForInductionVariable() {
    Instruction &firstInstr = L->getHeader()->getInstList().front();
    auto *phiNode = dyn_cast<PHINode>(&firstInstr);
    for (auto pred: predecessors(L->getHeader())) {
        if (!L->contains(pred)) {
            Constant *initialValue = llvm::ConstantInt::get(phiNode->getType(), 2 * vectorizationFactor);
            phiNode->setIncomingValueForBlock(pred, initialValue);
        }
    }
}


void SVE_ALC::refineLoopConditionCheck() {
    auto *brInstr = dyn_cast<BranchInst>(L->getHeader()->getTerminator());
    auto *oldConditionInstruction = dyn_cast<Instruction>(brInstr->getCondition());


    LLVMContext &context = L->getHeader()->getContext();
    IRBuilder<> builder(context);
    builder.SetInsertPoint(oldConditionInstruction);

    Value *tripCount;
    Value *inductionVar;
    // find trip count
    for (int i = 0; i < oldConditionInstruction->getNumOperands(); ++i) {
        auto *instr = dyn_cast<Instruction>(oldConditionInstruction->getOperand(i));
        // it should have been calculated in preHeader
        if (instr->getParent() != L->getHeader()) {
            tripCount = dyn_cast<Value>(instr);
        } else {
            inductionVar = oldConditionInstruction->getOperand(i);
        }
    }

//    auto *constValue = llvm::ConstantInt::get(prevTripCount->getType(), vectorizationFactor - 1);
//      // set new trip count to  n - (VLength - 1)
//    Value *newTripCount = intrinsicCallGenerator->createSubInstruction(oldConditionInstruction, prevTripCount, constValue);

    // refine condition instruction
    // TODO: how to find proper compare instruction?
    Value *newCondition = builder.CreateICmpUGE(inductionVar, tripCount);
    brInstr->setCondition(newCondition);
    oldConditionInstruction->eraseFromParent();

    // TODO: check to jump to correct blocks based on condition


}


void
SVE_ALC::formInitialPredicateVectors(Value *inductionVariable, Value **firstPredicates, Value **secondPredicates,
                                     Value **firstVector, Value **secondVector) {

    auto *firstInitialPredicates = new std::vector<Value *>;
    auto *secondInitialPredicates = new std::vector<Value *>;

    BasicBlock *lastCopiedBlock = duplicateBlocksForInitialPredicateGeneration(inductionVariable,
                                                                               firstInitialPredicates,
                                                                               secondInitialPredicates);

    LLVMContext &context = L->getHeader()->getContext();
    IRBuilder<> builder(context);
    builder.SetInsertPoint(lastCopiedBlock->getTerminator());

    int index = 0;
    for (auto value: *firstInitialPredicates) {
        (*firstPredicates) = builder.CreateInsertElement((*firstPredicates), value, index++);
    }

    index = 0;
    for (auto value: *secondInitialPredicates) {
        (*secondPredicates) = builder.CreateInsertElement((*secondPredicates), value, index++);
    }


    ConstantInt *constZero = llvm::ConstantInt::get(Type::getInt32Ty(context), 0, true);
    ConstantInt *constOne = llvm::ConstantInt::get(Type::getInt32Ty(context), 1, true);
    ConstantInt *constVFactor = llvm::ConstantInt::get(Type::getInt32Ty(context), vectorizationFactor, true);

    (*firstVector) = intrinsicCallGenerator->createIndexInstruction(lastCopiedBlock->getTerminator(), constZero, constOne);
    (*secondVector) = intrinsicCallGenerator->createIndexInstruction(lastCopiedBlock->getTerminator(), constVFactor, constOne);

}

// TODO: makes loop preHeader invalid
BasicBlock *SVE_ALC::duplicateBlocksForInitialPredicateGeneration(Value *inductionVariable,
                                                                  std::vector<Value *> *firstInitialPredicates,
                                                                  std::vector<Value *> *secondInitialPredicates) {

    // find preHeaderBlock
    BasicBlock *preHeader;
    for (auto pred: predecessors(L->getHeader())) {
        if (!L->contains(pred)) { // initialBlocks does not contain pred
            preHeader = pred;
        }
    }

    BasicBlock *header = L->getHeader();

    //gather phi nodes in header
    std::vector<PHINode *> headerPhiNodes;
    for (BasicBlock::iterator I = L->getHeader()->begin(); isa<PHINode>(I); ++I) {
        headerPhiNodes.push_back(cast<PHINode>(I));
    }

    auto blockInsertPt = std::next(preHeader->getIterator());
    ValueToValueMapTy VMap1;


    // First copy
    BasicBlock *firstCopiedBlock = CloneBasicBlock(header, VMap1, ".init.1");
    preHeader->getParent()->getBasicBlockList().insert(blockInsertPt, firstCopiedBlock);
    for (PHINode *OrigPHI: headerPhiNodes) {
        auto *newPHI = cast<PHINode>(VMap1[OrigPHI]);
        Value *inVal = llvm::ConstantInt::get(inductionVariable->getType(), 0);
        VMap1[OrigPHI] = inVal;                           // replace phi node with 0
        firstCopiedBlock->getInstList().erase(newPHI);
    }

    for (ValueToValueMapTy::iterator VI = VMap1.begin(), VE = VMap1.end();
         VI != VE; ++VI) {
        VMap1[VI->first] = VI->second;
    }

    SmallVector<BasicBlock *, 1> newlyGeneratedBlock1;
    newlyGeneratedBlock1.push_back(firstCopiedBlock);
    remapInstructionsInBlocks(newlyGeneratedBlock1, VMap1);

    //getting the last value for induction variable to be used in the next copy
    Value *lastInductionVariableValue = nullptr;
    auto *condInstr = dyn_cast<Instruction>(dyn_cast<BranchInst>(firstCopiedBlock->getTerminator())->getCondition());
    for (int i = 0; i < condInstr->getNumOperands(); ++i) {
        Value *operand = condInstr->getOperand(i);
        if (isa<Instruction>(operand) && dyn_cast<Instruction>(operand)->getParent() == firstCopiedBlock) {
            lastInductionVariableValue = operand;
            break;
        }
    }

    //second copy
    ValueToValueMapTy VMap2;

    BasicBlock *secondCopiedBlock = CloneBasicBlock(header, VMap2, ".init.2");

    preHeader->getParent()->getBasicBlockList().insert(blockInsertPt, secondCopiedBlock);
    for (PHINode *OrigPHI: headerPhiNodes) {
        auto *newPHI = cast<PHINode>(VMap2[OrigPHI]);
        VMap2[OrigPHI] = lastInductionVariableValue;
        secondCopiedBlock->getInstList().erase(newPHI);
    }

    for (ValueToValueMapTy::iterator VI = VMap2.begin(), VE = VMap2.end();
         VI != VE; ++VI) {
        VMap2[VI->first] = VI->second;
    }

    SmallVector<BasicBlock *, 1> newlyGeneratedBlock2;
    newlyGeneratedBlock2.push_back(secondCopiedBlock);
    remapInstructionsInBlocks(newlyGeneratedBlock2, VMap2);

    //remove copied blocks terminators and redundant instructions
    auto *condInstruction1 = dyn_cast<Instruction>(
            dyn_cast<BranchInst>(firstCopiedBlock->getTerminator())->getCondition());
    firstCopiedBlock->getTerminator()->eraseFromParent();
    condInstruction1->eraseFromParent();

    auto *condInstruction2 = dyn_cast<Instruction>(
            dyn_cast<BranchInst>(secondCopiedBlock->getTerminator())->getCondition());
    secondCopiedBlock->getTerminator()->eraseFromParent();
    condInstruction2->eraseFromParent();

    // add branch instructions for new blocks
    BranchInst::Create(secondCopiedBlock, firstCopiedBlock);
    BranchInst::Create(header, secondCopiedBlock);

    // refine Phi node in header
    auto *phiNode = dyn_cast<PHINode>(&header->getInstList().front());
    phiNode->replaceIncomingBlockWith(preHeader, secondCopiedBlock);

    // preHeader should branch to the first new block
    preHeader->getTerminator()->eraseFromParent();
    BranchInst::Create(firstCopiedBlock, preHeader);

    //gather predicates
    for (auto predicate: predicates) {
        for (auto pair: VMap1) {
            if (pair.first == predicate) {
                firstInitialPredicates->push_back(pair.second);
                break;
            }
        }
        for (auto pair: VMap2) {
            if (pair.first == predicate) {
                secondInitialPredicates->push_back(pair.second);
                break;
            }
        }
    }

    return secondCopiedBlock;

}


BasicBlock *SVE_ALC::doPermutation(Value *firstPredicates, Value *secondPredicates, Value *firstVector,
                                   Value *secondVector, Value **permutedZ0,
                                   Value **permutedZ1, Value **permutedPredicates) {


    LLVMContext &context = L->getHeader()->getContext();
    IRBuilder<> builder(context);
    BasicBlock *permuteDecision = BasicBlock::Create(context, "permute.decision", L->getHeader()->getParent(),
                                                     targetedBlock);
    BasicBlock *laneGatheringBlock = BasicBlock::Create(context, "lane.gather", L->getHeader()->getParent(),
                                                        targetedBlock);
    BasicBlock *linearizedBlock = BasicBlock::Create(context, "linearized", L->getHeader()->getParent(),
                                                     targetedBlock);



    // make targetedBlock's pred branch to permute decision instead of targetedBlock
    auto *brInstr = dyn_cast<BranchInst>(targetedBlock->getSinglePredecessor()->getTerminator());
    for (int i = 0; i < brInstr->getNumOperands(); ++i) {
        if (brInstr->getOperand(i) == targetedBlock) {
            brInstr->setOperand(i, permuteDecision);
            break;
        }
    }


    // create temporary terminator
    BranchInst::Create(laneGatheringBlock, permuteDecision);

    Instruction *insertAt = permuteDecision->getTerminator();

    CallInst *allTruePredicates = intrinsicCallGenerator->createAllTruePredicates(insertAt);

    //insert instructions to check if there are enough active lanes
    builder.SetInsertPoint(permuteDecision->getTerminator());
    auto *numOfFirstActives = dyn_cast<Value>(intrinsicCallGenerator->createCntpInstruction(insertAt, firstPredicates, allTruePredicates));
    auto *numOfSecondActives = dyn_cast<Value>(intrinsicCallGenerator->createCntpInstruction(insertAt, secondPredicates, allTruePredicates));
    Value *addResult = builder.CreateAdd(numOfFirstActives, numOfSecondActives);
    auto *constVecFactor = llvm::ConstantInt::get(addResult->getType(), vectorizationFactor);
    Value *condition = builder.CreateICmpUGE(addResult, constVecFactor);



    //change permute decision block terminator to conditional branch
    permuteDecision->getTerminator()->eraseFromParent();
    BranchInst::Create(laneGatheringBlock, linearizedBlock, condition, permuteDecision);

    // linearized block should branch latch
    BranchInst::Create(newLatch, linearizedBlock);

    // laneGathering block should branch to targeted block
    BranchInst::Create(targetedBlock, laneGatheringBlock);


    insertPermutationLogic(laneGatheringBlock->getTerminator(), firstVector, secondVector, firstPredicates,
                           secondPredicates, permutedZ0, permutedZ1, permutedPredicates);


    L->addBasicBlockToLoop(permuteDecision, *LI);
    L->addBasicBlockToLoop(laneGatheringBlock, *LI);
    L->addBasicBlockToLoop(linearizedBlock, *LI);

    return linearizedBlock;
}

void SVE_ALC::makeBlockVectorized(BasicBlock *block, Value *predicateVector, Value *indices) {

    Instruction *insertionPoint = block->getTerminator();


    std::map<Value *, Value *> vMap;

    // Should be remove in FILO manner to prevent removing a value that is used in following lines
    std::stack<Instruction *> toBeRemoved;


    // TODO: Is there any case we could have PHI?
    // TODO: Complete the list
    // TODO: handle binary operation for doubles
    // TODO: exclude newly generated instruction from iteration
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
            intrinsicCallGenerator->createScatterStoreInstruction(insertionPoint, firstOp, ptr, predicateVector, indices);
            toBeRemoved.push(&instr);

            ////////////////////////////////////////////////////////////////////////////////////////////////////
            LLVMContext &context = L->getHeader()->getContext();
            IRBuilder<> builder(context);
            builder.SetInsertPoint(insertionPoint);
            VectorType *vecInt64Type = VectorType::get(Type::getInt64Ty(context), vectorizationFactor, true);
            Value *extendedIndices = builder.CreateZExt(indices, vecInt64Type);
            intrinsicCallGenerator->createScatterStoreInstruction(insertionPoint, indices, ptr, predicateVector, indices);
            ///////////////////////////////////////////////////////////////////////////////////////////////////////

        } else if (isa<LoadInst>(instr)) {
            auto ptr = dyn_cast<GEPOperator>(instr.getOperand(0));
            CallInst *loadedData = intrinsicCallGenerator->createGatherLoadInstruction(insertionPoint, ptr, predicateVector, indices);
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
                CallInst *multResult = intrinsicCallGenerator->createArithmeticInstruction(insertionPoint, intrinsic, firstOp, secondOp,
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


void SVE_ALC::fillBlock(BasicBlock *blockToBeFilled, const std::vector<BasicBlock *> &blocks) {
    llvm::ValueToValueMapTy vMap;
    std::vector<llvm::Instruction *> new_instructions;

    for (auto BB: blocks) {
        for (auto &instr: BB->getInstList()) {
            if (&instr == BB->getTerminator()) {
                break;
            }
            Instruction *clonedInstr = instr.clone();
            clonedInstr->insertBefore(blockToBeFilled->getTerminator());
            vMap[&instr] = clonedInstr;
            new_instructions.push_back(clonedInstr);

        }

        for (auto &cloned_instr: new_instructions) {
            llvm::RemapInstruction(cloned_instr, vMap, RF_NoModuleLevelChanges | RF_IgnoreMissingLocals);
        }
    }

}

BasicBlock *SVE_ALC::findTargetedBB() {
    // TODO: make a complete analysis

    for (auto succ: successors(L->getHeader())) {
        if (succ->getSingleSuccessor() == newLatch) {
            return succ;
        }
    }

    return nullptr;
}

void SVE_ALC::updateVectors(BasicBlock *insertAt, Value **indicesVector, Value **predicateVector,
                            Value *inductionVariable) {

    // updating predicate
    LLVMContext &context = L->getHeader()->getContext();
    IRBuilder<> builder(context);

    builder.SetInsertPoint(insertAt->getTerminator());

    VectorType *type = VectorType::get(Type::getInt1Ty(context), vectorizationFactor, true);

    Type *int1Ty = Type::getInt1Ty(context);
    Value *predicateHolder = UndefValue::get(type);

    for (int i = 0; i < vectorizationFactor; ++i) {
        Constant *index = Constant::getIntegerValue(int1Ty, llvm::APInt(1, i));
        predicateHolder = builder.CreateInsertElement(predicateHolder, predicates[i], index);
    }

    *predicateVector = predicateHolder;

    // updating indices
    Constant *constOne = llvm::ConstantInt::get(Type::getInt32Ty(context), 1, true);
    Value *castedIndVar = builder.CreateIntCast(inductionVariable, Type::getInt32Ty(context), false);
    *indicesVector = intrinsicCallGenerator->createIndexInstruction(insertAt->getTerminator(), castedIndVar, constOne);


}


PHINode *SVE_ALC::insertPhiNodsForVector(Value *updatedValue, Value *initialValue,
                                         BasicBlock *mainPath, BasicBlock *otherPath) {

    // there should be one phi in the latch which is the joint point for linearized path and vectorized path
    Instruction *insertAt = L->getLoopLatch()->getTerminator();
    PHINode *latchPhi = PHINode::Create(updatedValue->getType(), 2);
    latchPhi->insertBefore(insertAt);
    latchPhi->addIncoming(updatedValue, mainPath);
    latchPhi->addIncoming(initialValue, otherPath);   // to be change, should get the value of header phi

    // then there should be another phi in the loop header
    insertAt = L->getHeader()->getFirstNonPHI();
    PHINode *headerPhi = PHINode::Create(updatedValue->getType(), 2);
    headerPhi->insertBefore(insertAt);
    headerPhi->addIncoming(latchPhi, L->getLoopLatch());

    // get the other predecessor of header
    BasicBlock *pred = nullptr;
    for (auto BB: predecessors(L->getHeader())) {
        if (BB != L->getLoopLatch()) {
            pred = BB;
        }
    }
    headerPhi->addIncoming(initialValue, pred);


    // replace all usages of initialValues inside the loop with the header phi value
    std::map<Instruction *, int> toBeChanged;
    auto *instr = dyn_cast<Instruction>(initialValue);
    for (auto user: instr->users()) {

        auto *userInstr = dyn_cast<Instruction>(user);
        if (!L->contains(userInstr)) {
            continue;
        }
        if (isa<PHINode>(userInstr)) {
            continue;
        }
        for (int i = 0; i < userInstr->getNumOperands(); ++i) {
            if (userInstr->getOperand(i) == initialValue) {
                toBeChanged.insert({userInstr, i});
            }
        }
    }

    // do the same for the updatedValue
    instr = dyn_cast<Instruction>(updatedValue);
    for (auto user: instr->users()) {
        auto *userInstr = dyn_cast<Instruction>(user);
        if (!L->contains(userInstr)) {
            continue;
        }
        if (isa<PHINode>(userInstr)) {
            continue;
        }
        for (int i = 0; i < userInstr->getNumOperands(); ++i) {
            if (userInstr->getOperand(i) == updatedValue) {
                toBeChanged.insert({userInstr, i});
            }
        }
    }
    for (auto pair: toBeChanged) {
        pair.first->setOperand(pair.second, headerPhi);
    }


    //Finally, update phiNode in the latch to get value from header phi
    latchPhi->setIncomingValueForBlock(otherPath, headerPhi);

    return latchPhi;
}

BasicBlock *SVE_ALC::makeTemporaryCopyOfTheBlock(BasicBlock *block) {
    ValueToValueMapTy VMap;
    BasicBlock *clonedBlock = CloneBasicBlock(block, VMap, "tempCopy", L->getHeader()->getParent());
    SmallVector<BasicBlock *, 1> newBlocks;
    newBlocks.push_back(clonedBlock);
    remapInstructionsInBlocks(newBlocks, VMap);
    return clonedBlock;
}

SVE_ALC::SVE_ALC(Loop *l, int factor, LoopInfo *loopInfo, BasicBlock *latch, std::vector<Value *> preds)
        : L(l),
          vectorizationFactor(
                  factor),
          LI(loopInfo),
          newLatch(
                  latch),
          predicates(preds) {
    L = l;
    intrinsicCallGenerator = new IntrinsicCallGenerator(l, vectorizationFactor);
    vectorizationFactor = factor;
    module = L->getBlocks().front()->getParent()->getParent();
    LI = loopInfo;
    newLatch = latch;
    predicates = preds;
    targetedBlock = findTargetedBB();
}




















