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

    /////////////////////////////////////////how to form initial conditions?

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


BasicBlock *SVE_Permute::createBlockForPermutation(Function *F) {
    BasicBlock *header = L->getHeader();
    BasicBlock *blockInsertionPoint = header->getNextNode();
    LLVMContext &context = L->getHeader()->getContext();

    BasicBlock *permuteBlock = BasicBlock::Create(context, "permute", F);
    permuteBlock->setName("loop.permute");

    llvm::ReturnInst::Create(context, permuteBlock);

    // The new latch which jumps conditionally to targeted block should now branch to permute block instead of targeted block
    BasicBlock *latch = targetedBlock->getSinglePredecessor();
    auto *brInstr = dyn_cast<BranchInst>(latch->getTerminator());
    for (int i = 0; i < brInstr->getNumOperands(); ++i) {
        if (brInstr->getOperand(i) == targetedBlock) {
//            brInstr->setOperand(i, permuteBlock);
        }
    }

    //create terminator
//    llvm::BranchInst::Create(targetedBlock, permuteBlock);

    //register to the loop
//    L->addBasicBlockToLoop(permuteBlock, *LI);

    return permuteBlock;
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


void SVE_Permute::formInitialPredicateVectors(int initialValue) {

}


SVE_Permute::SVE_Permute(Loop *l, int factor, BasicBlock *block, LoopInfo *loopInfo, BasicBlock *latch, Value *preds)
        : L(l),
          vectorizationFactor(
                  factor),
          targetedBlock(
                  block),
          LI(loopInfo),
          newLatch(
                  latch),
          predicateVector(preds) {
    L = l;
    vectorizationFactor = factor;
    module = L->getBlocks().front()->getParent()->getParent();
    targetedBlock = block;
    LI = loopInfo;
    newLatch = latch;
    predicateVector = preds;
}





