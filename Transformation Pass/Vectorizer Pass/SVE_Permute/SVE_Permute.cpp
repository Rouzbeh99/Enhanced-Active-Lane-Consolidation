//
// Created by rouzbeh on 8/8/22.
//

#include "SVE_Permute.h"

// TODO: analysis path should exclude cases like c[j] = a[i] + b[i + 1]  in other words, memory access of the operands
//  and result should be the same or it can handle this case by base address??

// TODO: llc does not work on 64 bit elements!!!

void SVE_Permute::doTransformation() {


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

    refineLoopTripCount();

    BasicBlock *linearizedBlock = doPermutation(initialUniformVectorPredicates, initialRemainingVectorPredicates,
                                                initialUniformVector,
                                                initialRemainingVector, &permutedUniformVector,
                                                &permutedRemainingVector,
                                                &permutedPredicates);


    // filling linearized path, should come before vectorizing targeted path
    std::vector<BasicBlock *> blocks;
    blocks.push_back(targetedBlock);
    fillLinearizedBlock(linearizedBlock, blocks);

    //constructing targeted path
    CallInst *allTruePredicates = createAllTruePredicates(targetedBlock->getTerminator());
    makeBlockVectorized(targetedBlock, allTruePredicates, permutedUniformVector);


    //update uniform vectors
    updateVectors(targetedBlock, &updatedUniformVector, &updatedUniformVectorPredicates, inductionVar);
    // adding phi nodes
    insertPhiNodsForVector(updatedUniformVector, initialUniformVector, targetedBlock, linearizedBlock);
    insertPhiNodsForVector(updatedUniformVectorPredicates, initialUniformVectorPredicates, targetedBlock,
                           linearizedBlock);


    // constructing linearized path

    // active lanes in remaining block should be executed
    makeBlockVectorized(linearizedBlock, permutedPredicates, permutedRemainingVector);
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


}


void SVE_Permute::insertPermutationLogic(Instruction *insertAt, Value *z0, Value *z1, Value *p0, Value *p1,
                                         Value **permutedZ0,
                                         Value **permutedZ1, Value **permutedPredicates) {


    IntegerType *int64Type = llvm::Type::getInt64Ty(L->getHeader()->getContext());

    ConstantInt *constZero = llvm::ConstantInt::get(int64Type, 0);

    CallInst *allTruePredicates = createAllTruePredicates(insertAt);


    // gather active lanes
    CallInst *z2 = createCompactInstruction(insertAt, z0, p0);
    CallInst *z3 = createCompactInstruction(insertAt, z1, p1);



    //gather inactive lanes
    Value *p2 = createNotInstruction(insertAt, p0);
    Value *p3 = createNotInstruction(insertAt, p1);

    CallInst *z4 = createCompactInstruction(insertAt, z0, p2);
    CallInst *z5 = createCompactInstruction(insertAt, z1, p3);



    // gathering all active lanes to z0
    auto x0 = dyn_cast<Value>(createCntpInstruction(insertAt, p0, allTruePredicates));

    CallInst *p4 = createWhileltInstruction(insertAt, constZero, x0);


    *permutedZ0 = createSpliceInstruction(insertAt, z2, z3, p4);

    //gather others to z1
    auto x1 = dyn_cast<Value>(createCntpInstruction(insertAt, p1, allTruePredicates));
    auto p5 = createWhileltInstruction(insertAt, constZero, x1);
    z2 = createSpliceInstruction(insertAt, z3, z5, p5); // contains active ... inactive
    CallInst *x2 = createCntpInstruction(insertAt, p2, allTruePredicates);
    p2 = createWhileltInstruction(insertAt, constZero, x2);

    *permutedZ1 = createSelInstruction(insertAt, z4, z2, p2);

    //find result predicate
    p1 = createNotInstruction(insertAt, p2);
    CallInst *x3 = createCntpInstruction(insertAt, p2, allTruePredicates);

    Value *numOfActivesInResult = createAddInstruction(insertAt, createSubInstruction(insertAt, x1, x2), x3);

    p2 = createWhileltInstruction(insertAt, constZero, numOfActivesInResult);
    auto p6 = createNotInstruction(insertAt, p2);

    std::vector<Value *> firstAndOperands;
    firstAndOperands.push_back(p1);
    firstAndOperands.push_back(p2);       // !p6 = p2
    Value *firstAnd = createANDInstruction(insertAt, ArrayRef<Value *>(firstAndOperands));

    std::vector<Value *> secondAndOperands;
    secondAndOperands.push_back(p1);
    secondAndOperands.push_back(p2);
    secondAndOperands.push_back(p6);
    Value *secondAnd = createANDInstruction(insertAt, ArrayRef<Value *>(secondAndOperands));

    std::vector<Value *> orOperands;
    orOperands.push_back(firstAnd);
    orOperands.push_back(secondAnd);

    *permutedPredicates = createORInstruction(insertAt, ArrayRef<Value *>(orOperands));


}


CallInst *SVE_Permute::createAllTruePredicates(Instruction *insertionPoint) {

    LLVMContext &context = L->getHeader()->getContext();
    IRBuilder<> builder(context);
    builder.SetInsertPoint(
            insertionPoint);// append to the end of block, before terminator

    auto intrinsic = Intrinsic::aarch64_sve_ptrue;
    VectorType *type = VectorType::get(Type::getInt1Ty(context), vectorizationFactor, true);
    Function *intrinsicFunction = Intrinsic::getDeclaration(module, intrinsic, type);
    llvm::Type *i32_type = llvm::IntegerType::getInt32Ty(context);
    llvm::Constant *constantInt = llvm::ConstantInt::get(i32_type, vectorizationFactor, true);
    return builder.CreateCall(intrinsicFunction, constantInt);
}


CallInst *
SVE_Permute::createCompactInstruction(Instruction *insertionPoint, Value *toBeCompacted, Value *predicatedVector) {

    LLVMContext &context = L->getHeader()->getContext();
    IRBuilder<> builder(context);
    builder.SetInsertPoint(insertionPoint);


    auto intrinsic = Intrinsic::aarch64_sve_compact;

    VectorType *type = VectorType::get(Type::getInt32Ty(context), vectorizationFactor, true);
    Function *intrinsicFunction = Intrinsic::getDeclaration(module, intrinsic, type);

    std::vector<Value *> arguments;
    arguments.push_back(predicatedVector);
    arguments.push_back(toBeCompacted);


    return builder.CreateCall(intrinsicFunction, ArrayRef<Value *>(arguments));
}

Value *SVE_Permute::createNotInstruction(Instruction *insertionPoint, Value *elements) {
    LLVMContext &context = L->getHeader()->getContext();
    IRBuilder<> builder(context);
    builder.SetInsertPoint(
            insertionPoint);// append to the end of block, before terminator

    return builder.CreateNot(elements);
}

CallInst *SVE_Permute::createCntpInstruction(Instruction *insertionPoint, Value *elements, Value *predicatedVector) {

    LLVMContext &context = L->getHeader()->getContext();
    IRBuilder<> builder(context);
    builder.SetInsertPoint(insertionPoint);

    auto intrinsic = Intrinsic::aarch64_sve_cntp;

    VectorType *type = VectorType::get(Type::getInt1Ty(context), vectorizationFactor, true);
    Function *intrinsicFunction = Intrinsic::getDeclaration(module, intrinsic, type);


    std::vector<Value *> arguments;

    arguments.push_back(predicatedVector);
    arguments.push_back(elements);

    return builder.CreateCall(intrinsicFunction, ArrayRef<Value *>(arguments));
}


CallInst *SVE_Permute::createWhileltInstruction(Instruction *insertionPoint, Value *firstOp, Value *secondOp) {

    LLVMContext &context = L->getHeader()->getContext();
    IRBuilder<> builder(context);
    builder.SetInsertPoint(insertionPoint);

    auto intrinsic = Intrinsic::aarch64_sve_whilelt;

    VectorType *type = VectorType::get(Type::getInt1Ty(context), vectorizationFactor, true);
    std::vector<Type *> types;

    types.push_back(type);
    types.push_back(Type::getInt64Ty(context));

    Function *intrinsicFunction = Intrinsic::getDeclaration(module, intrinsic, ArrayRef<Type *>(types));

    std::vector<Value *> arguments;

    arguments.push_back(firstOp);
    arguments.push_back(secondOp);

    return builder.CreateCall(intrinsicFunction, ArrayRef<Value *>(arguments));
}

CallInst *SVE_Permute::createSpliceInstruction(Instruction *insertionPoint, Value *firstOp, Value *secondOp,
                                               Value *predicatedVector) {


    LLVMContext &context = L->getHeader()->getContext();
    IRBuilder<> builder(context);
    builder.SetInsertPoint(insertionPoint);

    auto intrinsic = Intrinsic::aarch64_sve_splice;

    VectorType *type = VectorType::get(Type::getInt32Ty(context), vectorizationFactor, true);

    Function *intrinsicFunction = Intrinsic::getDeclaration(module, intrinsic, type);

    std::vector<Value *> arguments;

    arguments.push_back(predicatedVector);
    arguments.push_back(firstOp);
    arguments.push_back(secondOp);

    return builder.CreateCall(intrinsicFunction, ArrayRef<Value *>(arguments));

}

CallInst *SVE_Permute::createSelInstruction(Instruction *insertionPoint, Value *firstOp, Value *secondOp,
                                            Value *predicatedVector) {
    LLVMContext &context = L->getHeader()->getContext();
    IRBuilder<> builder(context);
    builder.SetInsertPoint(insertionPoint);

    auto intrinsic = Intrinsic::aarch64_sve_sel;

    VectorType *type = VectorType::get(Type::getInt32Ty(context), vectorizationFactor, true);

    Function *intrinsicFunction = Intrinsic::getDeclaration(module, intrinsic, type);

    std::vector<Value *> arguments;

    arguments.push_back(predicatedVector);
    arguments.push_back(firstOp);
    arguments.push_back(secondOp);

    return builder.CreateCall(intrinsicFunction, ArrayRef<Value *>(arguments));

}

Value *SVE_Permute::createORInstruction(Instruction *insertionPoint, ArrayRef<Value *> elements) {
    LLVMContext &context = L->getHeader()->getContext();
    IRBuilder<> builder(context);
    builder.SetInsertPoint(insertionPoint);// append to the end of block, before terminator

    return builder.CreateOr(elements);
}

Value *SVE_Permute::createANDInstruction(Instruction *insertionPoint, ArrayRef<Value *> elements) {
    LLVMContext &context = L->getHeader()->getContext();
    IRBuilder<> builder(context);
    builder.SetInsertPoint(insertionPoint);// append to the end of block, before terminator

    return builder.CreateAnd(elements);
}

CallInst *SVE_Permute::createIndexInstruction(Instruction *insertionPoint, Value *firstOp, Value *secondOp) {
    LLVMContext &context = L->getHeader()->getContext();
    IRBuilder<> builder(context);


    builder.SetInsertPoint(insertionPoint);


    auto intrinsic = Intrinsic::aarch64_sve_index;


    VectorType *type = VectorType::get(Type::getInt32Ty(context), vectorizationFactor, true);

    Function *intrinsicFunction = Intrinsic::getDeclaration(module, intrinsic, type);

    std::vector<Value *> arguments;

    arguments.push_back(firstOp);
    arguments.push_back(secondOp);

    return builder.CreateCall(intrinsicFunction, ArrayRef<Value *>(arguments));
}


Value *SVE_Permute::createAddInstruction(Instruction *insertionPoint, Value *firstOp, Value *secondOp) {
    LLVMContext &context = L->getHeader()->getContext();
    IRBuilder<> builder(context);
    builder.SetInsertPoint(insertionPoint);


    return builder.CreateAdd(firstOp, secondOp);


}

Value *SVE_Permute::createSubInstruction(Instruction *insertionPoint, Value *firstOp, Value *secondOp) {
    LLVMContext &context = L->getHeader()->getContext();
    IRBuilder<> builder(context);
    builder.SetInsertPoint(insertionPoint);

    return builder.CreateSub(firstOp, secondOp);

}


void SVE_Permute::refineLoopTripCount() {
    auto *brInstr = dyn_cast<BranchInst>(L->getHeader()->getTerminator());
    auto *conditionInstruction = dyn_cast<Instruction>(brInstr->getCondition());


    // set new trip count to  n - (VLength - 1)
    LLVMContext &context = L->getHeader()->getContext();
    IRBuilder<> builder(context);
    builder.SetInsertPoint(conditionInstruction);

    Value *prevTripCount;
    int index;
    // find trip count
    for (int i = 0; i < conditionInstruction->getNumOperands(); ++i) {
        auto *instr = dyn_cast<Instruction>(conditionInstruction->getOperand(i));
        // it should have been calculated in preHeader
        if (instr->getParent() != L->getHeader()) {
            index = i;
            prevTripCount = dyn_cast<Value>(instr);
        }
    }

    auto *constValue = llvm::ConstantInt::get(prevTripCount->getType(), vectorizationFactor - 1);
    Value *newTripCount = createSubInstruction(conditionInstruction, prevTripCount, constValue);
    conditionInstruction->setOperand(index, newTripCount);

}


void
SVE_Permute::formInitialPredicateVectors(Value *inductionVariable, Value **firstPredicates, Value **secondPredicates,
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

    (*firstVector) = createIndexInstruction(lastCopiedBlock->getTerminator(), constZero, constOne);
    (*secondVector) = createIndexInstruction(lastCopiedBlock->getTerminator(), constVFactor, constOne);

}


// TODO: makes loop preHeader invalid
BasicBlock *SVE_Permute::duplicateBlocksForInitialPredicateGeneration(Value *inductionVariable,
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

BasicBlock *SVE_Permute::doPermutation(Value *firstPredicates, Value *secondPredicates, Value *firstVector,
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

    CallInst *allTruePredicates = createAllTruePredicates(insertAt);

    //insert instructions to check if there are enough active lanes
    builder.SetInsertPoint(permuteDecision->getTerminator());
    auto *numOfFirstActives = dyn_cast<Value>(createCntpInstruction(insertAt, firstPredicates, allTruePredicates));
    auto *numOfSecondActives = dyn_cast<Value>(createCntpInstruction(insertAt, secondPredicates, allTruePredicates));
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


void SVE_Permute::makeBlockVectorized(BasicBlock *block, Value *predicateVector, Value *indices) {

    Instruction *insertionPoint = block->getTerminator();


    std::map<Value *, Value *> vMap;

    // Should be remove in FILO manner to prevent removing a value that is used in following lines
    std::stack<Instruction *> toBeRemoved;

    // TODO: Is there any case we could have PHI?
    // TODO: Complete the list
    // TODO: handle binary operation for doubles
    for (auto &instr: targetedBlock->getInstList()) {
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
            createScatterStoreInstruction(insertionPoint, firstOp, ptr, predicateVector, indices);
            toBeRemoved.push(&instr);

            ////////////////////////////////////////////////////////////////////////////////////////////////////
            LLVMContext &context = L->getHeader()->getContext();
            IRBuilder<> builder(context);
            builder.SetInsertPoint(insertionPoint);
            VectorType *vecInt64Type = VectorType::get(Type::getInt64Ty(context), vectorizationFactor, true);
            Value *extendedIndices = builder.CreateZExt(indices, vecInt64Type);
            createScatterStoreInstruction(insertionPoint, indices, ptr, predicateVector, indices);
            ///////////////////////////////////////////////////////////////////////////////////////////////////////

        } else if (isa<LoadInst>(instr)) {
            auto ptr = dyn_cast<GEPOperator>(instr.getOperand(0));
            CallInst *loadedData = createGatherLoadInstruction(insertionPoint, ptr, predicateVector, indices);
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
                CallInst *multResult = createArithmeticInstruction(insertionPoint, intrinsic, firstOp, secondOp,
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

CallInst *
SVE_Permute::createGatherLoadInstruction(Instruction *insertionPoint, GEPOperator *ptr, Value *predicatedVector,
                                         Value *indices) {

    LLVMContext &context = L->getHeader()->getContext();
    IRBuilder<> builder(context);
    builder.SetInsertPoint(insertionPoint);

    auto intrinsic = Intrinsic::aarch64_sve_ld1_gather_sxtw_index;


    VectorType *type = VectorType::get(Type::getInt32Ty(context), vectorizationFactor, true);
    Function *intrinsicFunction = Intrinsic::getDeclaration(module, intrinsic, type);


    std::vector<Value *> arguments;
    arguments.push_back(predicatedVector);
    arguments.push_back(ptr);
    arguments.push_back(indices);


    return builder.CreateCall(intrinsicFunction, ArrayRef<Value *>(arguments));


}

void SVE_Permute::createScatterStoreInstruction(Instruction *insertionPoint, Value *elementsVector, GEPOperator *ptr,
                                                Value *predicatedVector, Value *indices) {
    LLVMContext &context = L->getHeader()->getContext();
    IRBuilder<> builder(context);
    builder.SetInsertPoint(insertionPoint);


    auto intrinsic = Intrinsic::aarch64_sve_st1_scatter_sxtw;

    Function *intrinsicFunction = Intrinsic::getDeclaration(module, intrinsic, elementsVector->getType());

    std::vector<Value *> arguments;
    arguments.push_back(elementsVector);
    arguments.push_back(predicatedVector);
    arguments.push_back(ptr);
    arguments.push_back(indices);

    builder.CreateCall(intrinsicFunction, ArrayRef<Value *>(arguments));
}

// TODO: handle double types by changing return type and operands
CallInst *
SVE_Permute::createArithmeticInstruction(Instruction *insertionPoint, unsigned int intrinsic, Value *firstOp,
                                         Value *secondOp, Value *predicatedVector) {
    LLVMContext &context = L->getHeader()->getContext();
    IRBuilder<> builder(context);
    builder.SetInsertPoint(insertionPoint);

    VectorType *type = VectorType::get(Type::getInt32Ty(context), vectorizationFactor, true);
    Function *intrinsicFunction = Intrinsic::getDeclaration(module, intrinsic, type);


    std::vector<Value *> arguments;
    arguments.push_back(predicatedVector);
    arguments.push_back(firstOp);
    arguments.push_back(secondOp);

    return builder.CreateCall(intrinsicFunction, ArrayRef<Value *>(arguments));
}

void SVE_Permute::fillLinearizedBlock(BasicBlock *linearizedBlock, const std::vector<BasicBlock *> &blocks) {
    llvm::ValueToValueMapTy vMap;
    std::vector<llvm::Instruction *> new_instructions;

    for (auto BB: blocks) {
        for (auto &instr: BB->getInstList()) {
            if (&instr == BB->getTerminator()) {
                break;
            }
            Instruction *clonedInstr = instr.clone();
            clonedInstr->insertBefore(linearizedBlock->getTerminator());
            vMap[&instr] = clonedInstr;
            new_instructions.push_back(clonedInstr);

        }

        for (auto &cloned_instr: new_instructions) {
            llvm::RemapInstruction(cloned_instr, vMap, RF_NoModuleLevelChanges | RF_IgnoreMissingLocals);
        }
    }

}

BasicBlock *SVE_Permute::findTargetedBB() {
    // TODO: make a complete analysis

    for (auto succ: successors(L->getHeader())) {
        if (succ->getSingleSuccessor() == newLatch) {
            return succ;
        }
    }

    return nullptr;
}

void SVE_Permute::updateVectors(BasicBlock *insertAt, Value **indicesVector, Value **predicateVector,
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
    *indicesVector = createIndexInstruction(insertAt->getTerminator(), castedIndVar, constOne);


}

PHINode *SVE_Permute::insertPhiNodsForVector(Value *updatedValue, Value *initialValue,
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


SVE_Permute::SVE_Permute(Loop *l, int factor, LoopInfo *loopInfo, BasicBlock *latch, std::vector<Value *> preds)
        : L(l),
          vectorizationFactor(
                  factor),
          LI(loopInfo),
          newLatch(
                  latch),
          predicates(preds) {
    L = l;
    vectorizationFactor = factor;
    module = L->getBlocks().front()->getParent()->getParent();
    LI = loopInfo;
    newLatch = latch;
    predicates = preds;
    targetedBlock = findTargetedBB();
}



















