//
// Created by rouzbeh on 8/8/22.
//

#include "SVE_Permute.h"


void SVE_Permute::doPermutation() {


    auto &context = L->getHeader()->getContext();

    VectorType *type = VectorType::get(Type::getInt32Ty(context), vectorizationFactor, true);

    refineLoopTripCountAndInitialValue();

    //create initial vectors
    //TODO: what is steps are not 1 ?
    ConstantInt *constZero = llvm::ConstantInt::get(llvm::Type::getInt32Ty(L->getHeader()->getContext()), 0);
    ConstantInt *constOne = llvm::ConstantInt::get(llvm::Type::getInt32Ty(L->getHeader()->getContext()), 1);
    ConstantInt *constVecFactor = llvm::ConstantInt::get(llvm::Type::getInt32Ty(L->getHeader()->getContext()),
                                                         vectorizationFactor);

    Instruction *insertAtPreHeader = L->getLoopPreheader()->getTerminator();
    auto *uniformVector = dyn_cast<Value>(
            createIndexInstruction(insertAtPreHeader, dyn_cast<Value>(constZero), dyn_cast<Value>(constOne)));
    auto *remainingVector = dyn_cast<Value>(
            createIndexInstruction(insertAtPreHeader, dyn_cast<Value>(constVecFactor), dyn_cast<Value>(constOne)));

    Value *uniformVectorPredicates = nullptr;
    Value *remainingVectorPredicates = nullptr;

    //TODO: find induction variable
    auto *inductionVar = dyn_cast<PHINode>(&L->getHeader()->getInstList().front());
    formInitialPredicateVectors(inductionVar, &uniformVector, &remainingVector);



//    Instruction *insertionPoint = newLatch->getTerminator();
//    insertPermutationLogic(insertionPoint, z0, z1, p0, p1);


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

    auto insertAt = L->getHeader()->getTerminator();

    builder.SetInsertPoint(insertAt);


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


void SVE_Permute::refineLoopTripCountAndInitialValue() {
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

    // change initial value
//    PHINode *phiNode = nullptr;
//
//    // TODO: Handle the case where there are other phinNodes
//    for (auto &instr: L->getHeader()->getInstList()) {
//        if (isa<PHINode>(instr)) {
//            phiNode = dyn_cast<PHINode>(&instr);
//            break;
//        }
//    }
//
//    // TODO: what if loop does not start from zero?
//    for (int i = 0; i < phiNode->getNumOperands(); ++i) {
//        Value *operand = phiNode->getOperand(i);
//        if (isa<ConstantInt>(operand)) {
//            auto *newValue = llvm::ConstantInt::get(prevTripCount->getType(), 2 * vectorizationFactor);
//            phiNode->setOperand(i, newValue);
//        }
//    }

}

/** make two blocks after the new latch each for initializing predicate vectors
 *
 *  before:
 *             header
 *                .   \
 *                .     \
 *                .      \
 *                .       \
 *                .        \
 *             newLatch    /
 *               |       /
 *               |      /
 *               |     /
 *              body /
 *
 *
 *
 *   After:
 *
 *          header
 *             .    \
 *             .       \
 *             .          \
 *             .             \
 *             .                \
 *           newLatch              \
 *             |                      \
 *             |                         \
 *             |                            \
 *        firstDecision                        \
 *           /       \                            \
 *          /         \                              \
 *         /           \                                \
 *  firstPredForm       secondDecision                     \
 *   \                           /   \                     /
 *      \                      /      \                   /
 *         \                  /         \                /
 *                          /         secondPredForm   /
 *             \           /            /            /
 *               \       /           /             /
 *                 \    /         /              /
 *                              /              /
 *                  headerPredecessor --------
 *
 *
 *
 *
 * @param initialValue
 */
void
SVE_Permute::formInitialPredicateVectors(Value *inductionVariable, Value **firstPredicates, Value **secondPredicates) {
    LLVMContext &context = L->getHeader()->getContext();
    IRBuilder<> builder(context);
    BasicBlock *firstDecisionBlock = BasicBlock::Create(context, "decision.1", L->getHeader()->getParent(),
                                                        targetedBlock);
    BasicBlock *firstPredsFormingBlock = BasicBlock::Create(context, "preds.1", L->getHeader()->getParent(),
                                                            targetedBlock);
    BasicBlock *secondDecisionBlock = BasicBlock::Create(context, "decision.2", L->getHeader()->getParent(),
                                                         targetedBlock);
    BasicBlock *secondPredsFormingBlock = BasicBlock::Create(context, "preds.2", L->getHeader()->getParent(),
                                                             targetedBlock);
    //create a block as the predecessor of the header
    BasicBlock *headerPredecessor = BasicBlock::Create(context, "headerPredecessor", L->getHeader()->getParent(),
                                                       L->getHeader());
    llvm::BranchInst::Create(L->getHeader(), headerPredecessor); // branch directly to header


    // update latch terminator
    auto *branchTerminator = dyn_cast<BranchInst>(newLatch->getTerminator());
    for (int i = 0; i < branchTerminator->getNumOperands(); ++i) {
        if (branchTerminator->getOperand(i) == targetedBlock) {
            branchTerminator->setOperand(i, firstDecisionBlock);
            break;
        }
    }


    // fill first decision block
    builder.SetInsertPoint(firstDecisionBlock);
    auto *constZero = llvm::ConstantInt::get(inductionVariable->getType(), 0);
    Value *firstCond = builder.CreateICmpEQ(inductionVariable, constZero);
    llvm::BranchInst::Create(firstPredsFormingBlock, secondDecisionBlock, firstCond,
                             firstDecisionBlock);

    // fill first predForming block
    *firstPredicates = formPredicateVector(firstPredsFormingBlock);
    llvm::BranchInst::Create(headerPredecessor, firstPredsFormingBlock); // branch to headerPredecessor


    // fill second decision block
    builder.SetInsertPoint(secondDecisionBlock);
    auto *constVLength = llvm::ConstantInt::get(inductionVariable->getType(), vectorizationFactor);
    Value *secondCond = builder.CreateICmpEQ(inductionVariable, constVLength);
    llvm::BranchInst::Create(secondPredsFormingBlock, targetedBlock, secondCond,
                             secondDecisionBlock);

    // fill second predForming block
    *secondPredicates = formPredicateVector(secondPredsFormingBlock);
    llvm::BranchInst::Create(headerPredecessor, secondPredsFormingBlock); // branch  to headerPredecessor

    // set targetedBlock to branch to new headerPredecessor instead of header
    auto *targetedBlockTerminator = dyn_cast<BranchInst>(targetedBlock->getTerminator());
    targetedBlockTerminator->setOperand(0, headerPredecessor);

    //update phiNode
    auto *phiNode = dyn_cast<PHINode>(inductionVariable);
    Value *updateValue = phiNode->getIncomingValueForBlock(targetedBlock);
    phiNode->removeIncomingValue(targetedBlock);
    phiNode->addIncoming(updateValue, headerPredecessor);


    L->addBasicBlockToLoop(firstDecisionBlock, *LI);
    L->addBasicBlockToLoop(firstPredsFormingBlock, *LI);
    L->addBasicBlockToLoop(secondDecisionBlock, *LI);
    L->addBasicBlockToLoop(secondPredsFormingBlock, *LI);
    L->addBasicBlockToLoop(headerPredecessor, *LI);

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

    VectorType *returnType = VectorType::get(Type::getInt1Ty(context), vectorizationFactor, true);

    Type *int1Ty = Type::getInt1Ty(context);
    Value *predicateHolder = UndefValue::get(returnType);

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





