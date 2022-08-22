//
// Created by rouzbeh on 8/8/22.
//

#include "SVE_Permute.h"

////// How to use permuted vectors ?????????????????????????????????????????????
void SVE_Permute::doTransformation() {


    auto &context = L->getHeader()->getContext();

    //TODO: find induction variable
    auto *inductionVar = dyn_cast<PHINode>(&L->getHeader()->getInstList().front());


    refineLoopTripCount();

    VectorType *vecType1 = VectorType::get(Type::getInt1Ty(context), vectorizationFactor, true);
    VectorType *vecType32 = VectorType::get(Type::getInt32Ty(context), vectorizationFactor, true);


    Value *uniformVector = UndefValue::get(vecType32);
    Value *remainingVector = UndefValue::get(vecType32);

    Value *uniformVectorPredicates = UndefValue::get(vecType1);
    Value *remainingVectorPredicates = UndefValue::get(vecType1);

    formInitialPredicateVectors(inductionVar, &uniformVectorPredicates, &remainingVectorPredicates, &uniformVector,
                                &remainingVector);

    BasicBlock *linearizedBlock = doPermutation(uniformVectorPredicates, remainingVectorPredicates, uniformVector,
                                                remainingVector);

    std::vector<BasicBlock *> blocks;
    blocks.push_back(targetedBlock);
    fillLinearizedBlock(linearizedBlock, blocks);

    CallInst *allTruePredicates = createAllTruePredicates(targetedBlock->getTerminator());
    makeBlockVectorized(targetedBlock, allTruePredicates);


}


void SVE_Permute::insertPermutationLogic(Instruction *insertAt, Value *z0, Value *z1, Value *p0, Value *p1) {


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


    permutedZ0 = createSpliceInstruction(insertAt, z2, z3, p4);

    //gather others to z1
    auto x1 = dyn_cast<Value>(createCntpInstruction(insertAt, p1, allTruePredicates));
    auto p5 = createWhileltInstruction(insertAt, constZero, x1);
    z2 = createSpliceInstruction(insertAt, z3, z5, p5); // contains active ... inactive
    CallInst *x2 = createCntpInstruction(insertAt, p2, allTruePredicates);
    p2 = createWhileltInstruction(insertAt, constZero, x2);

    permutedZ1 = createSelInstruction(insertAt, z4, z2, p2);

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

    permutedPredicates = createORInstruction(insertAt, ArrayRef<Value *>(orOperands));


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

    VectorType *returnType = VectorType::get(Type::getInt1Ty(context), vectorizationFactor, true);
    std::vector<Type *> types;

    types.push_back(returnType);
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

    VectorType *returnType = VectorType::get(Type::getInt32Ty(context), vectorizationFactor, true);

    Function *intrinsicFunction = Intrinsic::getDeclaration(module, intrinsic, returnType);

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

    VectorType *returnType = VectorType::get(Type::getInt32Ty(context), vectorizationFactor, true);

    Function *intrinsicFunction = Intrinsic::getDeclaration(module, intrinsic, returnType);

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


    VectorType *returnType = VectorType::get(Type::getInt32Ty(context), vectorizationFactor, true);

    Function *intrinsicFunction = Intrinsic::getDeclaration(module, intrinsic, returnType);

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
    auto *brInstr = dyn_cast<BranchInst>(newLatch->getTerminator());
    auto *condition = dyn_cast<Instruction>(brInstr->getCondition());


    // set new trip count to  n - (VLength - 1)
    LLVMContext &context = L->getHeader()->getContext();
    IRBuilder<> builder(context);
    builder.SetInsertPoint(condition);

    Value *prevTripCount;
    int index;
    // find trip count
    for (int i = 0; i < condition->getNumOperands(); ++i) {
        auto *instr = dyn_cast<Instruction>(condition->getOperand(i));
        if (instr->getParent() != newLatch) {
            index = i;
            prevTripCount = dyn_cast<Value>(instr);
        }
    }

    auto *constValue = llvm::ConstantInt::get(prevTripCount->getType(), vectorizationFactor - 1);
    Value *newTripCount = createSubInstruction(condition, prevTripCount, constValue);
    condition->setOperand(index, newTripCount);

}


void
SVE_Permute::formInitialPredicateVectors(Value *inductionVariable, Value **firstPredicates, Value **secondPredicates,
                                         Value **firstVector, Value **secondVector) {

    BasicBlock *lastLatch = duplicateBlocksForInitialPredicateGeneration(inductionVariable);


    LLVMContext &context = L->getHeader()->getContext();
    IRBuilder<> builder(context);
    builder.SetInsertPoint(lastLatch->getTerminator());



    // find first generated header copy
    BasicBlock *BB = lastLatch;
    for (int i = 0; i < 4 * vectorizationFactor - 1; ++i) {
        BB = BB->getPrevNode();
    }


    // forming first predicate vector
    for (int i = 0; i < vectorizationFactor; ++i) {
        /// heuristic: the predicate is the condition for a conditional branch that was replaced with
        /// a unconditional one so it should come before the existing branch
        Instruction *condInstruction = BB->getTerminator()->getPrevNonDebugInstruction();
        (*firstPredicates) = builder.CreateInsertElement((*firstPredicates), condInstruction, i);
        BB = BB->getNextNode()->getNextNode();
    }

    //forming second predicate vector
    for (int i = 0; i < vectorizationFactor; ++i) {
        /// heuristic: the predicate is the condition for a conditional branch that was replaced with
        /// a unconditional one so it should come before the existing branch
        Instruction *condInstruction = BB->getTerminator()->getPrevNonDebugInstruction();
        (*secondPredicates) = builder.CreateInsertElement((*secondPredicates), condInstruction, i);
        BB = BB->getNextNode()->getNextNode();
    }

    ConstantInt *constZero = llvm::ConstantInt::get(Type::getInt32Ty(context), 0, true);
    ConstantInt *constOne = llvm::ConstantInt::get(Type::getInt32Ty(context), 1, true);
    ConstantInt *constVFactor = llvm::ConstantInt::get(Type::getInt32Ty(context), vectorizationFactor, true);

    (*firstVector) = createIndexInstruction(lastLatch->getTerminator(), constZero, constOne);
    (*secondVector) = createIndexInstruction(lastLatch->getTerminator(), constVFactor, constOne);

}


// TODO: makes loop preHeader invalid
BasicBlock *SVE_Permute::duplicateBlocksForInitialPredicateGeneration(Value *inductionVariable) {
    // gather header and latch copy blocks

    std::vector<BasicBlock *> initialBlocks;
    BasicBlock *BB = L->getHeader();
    for (int i = 0; i < 2 * vectorizationFactor; ++i) {
        initialBlocks.push_back(BB);
        BB = BB->getSingleSuccessor();
    }

    // find preHeaderBlock
    BasicBlock *preHeader;
    for (auto pred: predecessors(L->getHeader())) {
        if (!std::count(initialBlocks.begin(), initialBlocks.end(), pred)) { // initialBlocks does not contain pred
            preHeader = pred;
        }
    }


    // cloning all blocks

    std::vector<PHINode *> headerPhiNodes;
    for (BasicBlock::iterator I = L->getHeader()->begin(); isa<PHINode>(I); ++I) {
        headerPhiNodes.push_back(cast<PHINode>(I));
    }

    std::vector<BasicBlock *> firstNewBlocks;

    auto blockInsertPt = std::next(preHeader->getIterator());
    ValueToValueMapTy lastValueMap;

    for (auto block: initialBlocks) {

        SmallVector<BasicBlock *, 2> newlyGeneratedBlock;
        ValueToValueMapTy VMap;

        BasicBlock *newBB = CloneBasicBlock(block, VMap, ".init.1");
        preHeader->getParent()->getBasicBlockList().insert(blockInsertPt, newBB);

        // remove phi node from first block
        if (block == L->getHeader()) {
            for (PHINode *OrigPHI: headerPhiNodes) {
                auto *newPHI = cast<PHINode>(VMap[OrigPHI]);
                Value *inVal = llvm::ConstantInt::get(inductionVariable->getType(), 0);
                VMap[OrigPHI] = inVal;                           // replace phi node with its value coming from latch
                newBB->getInstList().erase(newPHI);
            }
        }

        newlyGeneratedBlock.push_back(newBB);
        firstNewBlocks.push_back(newBB);

        for (ValueToValueMapTy::iterator VI = VMap.begin(), VE = VMap.end();
             VI != VE; ++VI) {
            lastValueMap[VI->first] = VI->second;
        }

        remapInstructionsInBlocks(newlyGeneratedBlock, lastValueMap);
    }

//    // refine branch instructions
    for (int i = 0; i < firstNewBlocks.size() - 1; ++i) {
        firstNewBlocks[i]->getTerminator()->setOperand(0, firstNewBlocks[i + 1]);
    }

    //preHeader block should jump to the first new block
    preHeader->getTerminator()->setOperand(0, firstNewBlocks.front());


    // keep last block
    BasicBlock *lastLatchInFirstCopies = firstNewBlocks.back();


    ///////////////////////////////////////////////////////////////////////////////////////////////////////////////
    /// Second predicates

    // should find the last value of induction variable to be used in the next block
    //TODO: find a way to detect it
    auto *lastValueForInductionVar = dyn_cast<Value>(lastLatchInFirstCopies->getFirstNonPHI());

    std::vector<BasicBlock *> secondNewBlocks;

    for (auto block: initialBlocks) {

        SmallVector<BasicBlock *, 2> newlyGeneratedBlock;
        ValueToValueMapTy VMap;

        BasicBlock *newBB = CloneBasicBlock(block, VMap, ".init.2");
        preHeader->getParent()->getBasicBlockList().insert(blockInsertPt, newBB);

        // remove phi node from first block
        if (block == L->getHeader()) {
            for (PHINode *OrigPHI: headerPhiNodes) {
                auto *newPHI = cast<PHINode>(VMap[OrigPHI]);
                Value *inVal = lastValueForInductionVar;
                VMap[OrigPHI] = inVal;
                newBB->getInstList().erase(newPHI);
            }
        }

        newlyGeneratedBlock.push_back(newBB);
        secondNewBlocks.push_back(newBB);

        for (ValueToValueMapTy::iterator VI = VMap.begin(), VE = VMap.end();
             VI != VE; ++VI) {
            lastValueMap[VI->first] = VI->second;
        }

        remapInstructionsInBlocks(newlyGeneratedBlock, lastValueMap);
    }

    // refine branch instructions
    for (int i = 0; i < secondNewBlocks.size() - 1; ++i) {
        secondNewBlocks[i]->getTerminator()->setOperand(0, secondNewBlocks[i + 1]);
    }

    //the last latch of first set of copies  should branch to the first block of the new set of block copies
    lastLatchInFirstCopies->getTerminator()->eraseFromParent();
    BranchInst::Create(secondNewBlocks.front(), lastLatchInFirstCopies);

    // new latch copy should branch to loop header
    newLatch = secondNewBlocks.back();
    auto brInstr = newLatch->getTerminator();
    for (int i = 0; i < brInstr->getNumOperands(); ++i) {
        if (isa<BasicBlock>(brInstr->getOperand(i)) &&
            L->contains(dyn_cast<BasicBlock>(brInstr->getOperand(i)))) {  // it's then block

            brInstr->setOperand(i, L->getHeader());
        }
    }

    // update phi node predecessor in the header
    auto *phiNode = dyn_cast<PHINode>(&L->getHeader()->getInstList().front());
    for (int i = 0; i < phiNode->getNumIncomingValues(); ++i) {
        if (phiNode->getIncomingBlock(i) == preHeader) {
            phiNode->setIncomingBlock(i, newLatch);
        }
    }

    return secondNewBlocks.back();
}

BasicBlock *SVE_Permute::doPermutation(Value *firstPredicates, Value *secondPredicates, Value *firstVector,
                                       Value *secondVector) {

    LLVMContext &context = L->getHeader()->getContext();
    IRBuilder<> builder(context);
    BasicBlock *permuteDecision = BasicBlock::Create(context, "permute.decision", L->getHeader()->getParent(),
                                                     targetedBlock);
    BasicBlock *laneGatheringBlock = BasicBlock::Create(context, "lane.gather", L->getHeader()->getParent(),
                                                        targetedBlock);
    BasicBlock *linearizedBlock = BasicBlock::Create(context, "linearized", L->getHeader()->getParent(),
                                                     targetedBlock);


    // make targetedBlock's pred branch to permuteBlock instead of targetedBlock
    auto *brInstr = dyn_cast<BranchInst>(targetedBlock->getSinglePredecessor()->getTerminator());
    for (int i = 0; i < brInstr->getNumOperands(); ++i) {
        if (brInstr->getOperand(i) == targetedBlock) {
            brInstr->setOperand(i, permuteDecision);
            break;
        }
    }


    // create temporary terminator
    BranchInst::Create(targetedBlock, permuteDecision);

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

    // linearized block should branch to where targeted block branches to
    BranchInst::Create(targetedBlock->getSingleSuccessor(), linearizedBlock);

    // laneGathering block should branch to targeted block
    BranchInst::Create(targetedBlock, laneGatheringBlock);

    /**
     * Results will be in:
     *  -permutedZ0
     *  -permutedZ1
     *  -permutedPredicates
     */
    insertPermutationLogic(laneGatheringBlock->getTerminator(), firstVector, secondVector, firstPredicates,
                           secondPredicates);


    L->addBasicBlockToLoop(permuteDecision, *LI);
    L->addBasicBlockToLoop(laneGatheringBlock, *LI);
    L->addBasicBlockToLoop(linearizedBlock, *LI);

    return linearizedBlock;
}


void SVE_Permute::makeBlockVectorized(BasicBlock *block, Value *predicateVector) {

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
            createStoreInstruction(insertionPoint, firstOp, ptr, predicateVector);
            toBeRemoved.push(&instr);
        } else if (isa<LoadInst>(instr)) {
            auto loadInstr = dyn_cast<LoadInst>(&instr);

            auto ptr = dyn_cast<GEPOperator>(instr.getOperand(0));
            CallInst *loadedData = createLoadInstruction(insertionPoint, ptr, predicateVector);
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

CallInst *SVE_Permute::createLoadInstruction(Instruction *insertionPoint, GEPOperator *ptr, Value *predicatedVector) {

    LLVMContext &context = L->getHeader()->getContext();
    IRBuilder<> builder(context);
    builder.SetInsertPoint(insertionPoint);

    auto intrinsic = Intrinsic::aarch64_sve_ld1;
    VectorType *returnType = VectorType::get(Type::getInt32Ty(context), vectorizationFactor, true);
    Function *intrinsicFunction = Intrinsic::getDeclaration(module, intrinsic, returnType);


    std::vector<Value *> arguments;
    arguments.push_back(predicatedVector);
    arguments.push_back(ptr);

    return builder.CreateCall(intrinsicFunction, ArrayRef<Value *>(arguments));


}

void SVE_Permute::createStoreInstruction(Instruction *insertionPoint, Value *elementsVector, GEPOperator *ptr,
                                         Value *predicatedVector) {
    LLVMContext &context = L->getHeader()->getContext();
    IRBuilder<> builder(context);
    builder.SetInsertPoint(insertionPoint);

    auto intrinsic = Intrinsic::aarch64_sve_st1;


    VectorType *returnType = VectorType::get(Type::getInt32Ty(context), vectorizationFactor, true);
    Function *intrinsicFunction = Intrinsic::getDeclaration(module, intrinsic, returnType);


    std::vector<Value *> arguments;
    arguments.push_back(elementsVector);
    arguments.push_back(predicatedVector);
    arguments.push_back(ptr);


    builder.CreateCall(intrinsicFunction, ArrayRef<Value *>(arguments));
}

// TODO: handle double types by changing return type and operands
CallInst *
SVE_Permute::createArithmeticInstruction(Instruction *insertionPoint, unsigned int intrinsic, Value *firstOp,
                                         Value *secondOp, Value *predicatedVector) {
    LLVMContext &context = L->getHeader()->getContext();
    IRBuilder<> builder(context);
    builder.SetInsertPoint(insertionPoint);

    VectorType *returnType = VectorType::get(Type::getInt32Ty(context), vectorizationFactor, true);
    Function *intrinsicFunction = Intrinsic::getDeclaration(module, intrinsic, returnType);

//    intrinsicFunction->print(outs());

    std::vector<Value *> arguments;
    arguments.push_back(predicatedVector);
    arguments.push_back(firstOp);
    arguments.push_back(secondOp);

    return builder.CreateCall(intrinsicFunction, ArrayRef<Value *>(arguments));
}

void SVE_Permute::fillLinearizedBlock(BasicBlock *linearizedBlock, const std::vector<BasicBlock *> &blocks) {
    llvm::ValueToValueMapTy vMap;

    for (auto BB: blocks) {
        for (auto &instr: BB->getInstList()) {
            if (&instr == BB->getTerminator()) {
                break;
            }
            Instruction *clonedInstr = instr.clone();
            clonedInstr->insertBefore(linearizedBlock->getTerminator());
            vMap[&instr] = clonedInstr;
            llvm::RemapInstruction(clonedInstr, vMap, RF_NoModuleLevelChanges | RF_IgnoreMissingLocals);
        }
    }
}

BasicBlock *SVE_Permute::findTargetedBB() {
    BasicBlock *lastLatchBlock = getLastHeaderCopy()->getNextNode();

    // it has two successors, exiting block and then block. we find then block
    for (auto BB: successors(lastLatchBlock)) {

        // only then block belongs to the loop
        if (L->contains(BB)) {
            return BB;
        }
    }
    // TODO: raise error
    return nullptr;
}

Value *SVE_Permute::formPredicateVector(BasicBlock *insertAt) {

    LLVMContext &context = L->getHeader()->getContext();
    IRBuilder<> builder(context);

    builder.SetInsertPoint(insertAt);

    VectorType *type = VectorType::get(Type::getInt1Ty(context), vectorizationFactor, true);

    Type *int1Ty = Type::getInt1Ty(context);
    Value *predicateHolder = UndefValue::get(type);

    for (int i = 0; i < vectorizationFactor; ++i) {
        Constant *index = Constant::getIntegerValue(int1Ty, llvm::APInt(1, i));
        predicateHolder = builder.CreateInsertElement(predicateHolder, predicates[i], index);
    }

    return predicateHolder;

}

BasicBlock *SVE_Permute::getLastHeaderCopy() {
    BasicBlock *BB = L->getHeader();
    for (int i = 0; i < 2 * vectorizationFactor - 1; ++i) {
        BB = BB->getNextNode();
    }

    return BB;
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
















