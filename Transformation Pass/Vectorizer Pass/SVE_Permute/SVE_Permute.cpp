//
// Created by rouzbeh on 8/8/22.
//

#include "SVE_Permute.h"


void
SVE_Permute::doPermutation(Value *z0, Value *z1, Value *p0, Value *p1) {

    ConstantInt *constZero = llvm::ConstantInt::get(llvm::Type::getInt64Ty(L->getHeader()->getContext()), 0);

    BasicBlock *permutationBlock = createBlockForPermutation();

    insertionPoint = permutationBlock->getTerminator();

    CallInst *allTruePredicates = createAllTruePredicates();

    // gather active lanes
    CallInst *z2 = createCompactInstruction(z0, p0);
    CallInst *z3 = createCompactInstruction(z1, p1);
//
    //gather inactive lanes
    Value *p2 = createNotInstruction(p0);
    Value *p3 = createNotInstruction(p1);
    CallInst *z4 = createCompactInstruction(z0, p2);
    CallInst *z5 = createCompactInstruction(z1, p3);

    // gathering all active lanes to z0
    auto x0 = dyn_cast<Value>(createCntpInstruction(p0, allTruePredicates));
    CallInst *p4 = createWhileltInstruction(constZero, x0); ////////////////////////////////////Problem
//
//    //TODO: how to output ???????????????????????
//    z0 = createSpliceInstruction(z2, z3, p4);
//
//    //gather others to z1
//    auto x1 = dyn_cast<Value>(createCntpInstruction(p1, allTruePredicates));
//    auto p5 = createWhileltInstruction(constZero, x1);
//    z2 = createSpliceInstruction(z3, z5, p5); // contains active ... inactive
//    CallInst *x2 = createCntpInstruction(p2, allTruePredicates);
//    p2 = createWhileltInstruction(constZero, x2);
//    //TODO: how to output ??????????????????
//    z1 = createSelInstruction(z4, z2, p2);
//
//    //find result predicate
//    p1 = createNotInstruction(p2);
//    CallInst *x3 = createCntpInstruction(p2, allTruePredicates);
//    ConstantInt *numOfActivesInResult = dyn_cast<ConstantInt>(x1)->getSExtValue() -
//                                        dyn_cast<ConstantInt>(x2)->getSExtValue() +
//                                        dyn_cast<ConstantInt>(x3);
//    p2 = createWhileltInstruction(constZero, numOfActivesInResult);
//    p5 = dyn_cast<CallInst>(createNotInstruction(p2));
//
//
//    std::vector<Value *> firstAndOperands;
//    firstAndOperands.push_back(p1);
//    firstAndOperands.push_back(dyn_cast<Value>(createNotInstruction(p5)));
//    Value *firstAnd = createANDInstruction(ArrayRef<Value *>(firstAndOperands));
//
//    std::vector<Value *> secondAndOperands;
//    firstAndOperands.push_back(p1);
//    firstAndOperands.push_back(p2);
//    firstAndOperands.push_back(p5);
//    Value *secondAnd = createANDInstruction(ArrayRef<Value *>(secondAndOperands));
//
//    std::vector<Value *> orOperands;
//    orOperands.push_back(firstAnd);
//    orOperands.push_back(secondAnd);
//
//    //TODO: how to output ????????????????
//    p1 = createORInstruction(ArrayRef<Value *>(orOperands));


}

CallInst *SVE_Permute::createAllTruePredicates() {

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


CallInst *SVE_Permute::createCompactInstruction(Value *toBeCompacted, Value *predicatedVector) {

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

//TODO: does it work with vscale??
Value *SVE_Permute::createNotInstruction(Value *elements) {
    LLVMContext &context = L->getHeader()->getContext();
    IRBuilder<> builder(context);
    builder.SetInsertPoint(
            insertionPoint);// append to the end of block, before terminator

    return builder.CreateNot(elements);
}

CallInst *SVE_Permute::createCntpInstruction(Value *elements, Value *predicatedVector) {

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


CallInst *SVE_Permute::createWhileltInstruction(Value *firstOp, Value *secondOp) {

    LLVMContext &context = L->getHeader()->getContext();
    IRBuilder<> builder(context);
    builder.SetInsertPoint(insertionPoint);

    auto intrinsic = Intrinsic::aarch64_sve_whilelt;

    VectorType *returnType = VectorType::get(Type::getInt1Ty(context), vectorizationFactor, true);
    std::vector<Type *> types;

    types.push_back(returnType);
    types.push_back(Type::getInt32Ty(context));
    types.push_back(Type::getInt32Ty(context));

    Function *intrinsicFunction = Intrinsic::getDeclaration(module, intrinsic, ArrayRef<Type *>(types));

    std::vector<Value *> arguments;

    arguments.push_back(firstOp);
    arguments.push_back(secondOp);

    return builder.CreateCall(intrinsicFunction, ArrayRef<Value *>(arguments));
}

CallInst *SVE_Permute::createSpliceInstruction(Value *firstOp, Value *secondOp, Value *predicatedVector) {


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

CallInst *SVE_Permute::createSelInstruction(Value *firstOp, Value *secondOp, Value *predicatedVector) {
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

Value *SVE_Permute::createORInstruction(ArrayRef<Value *> elements) {
    LLVMContext &context = L->getHeader()->getContext();
    IRBuilder<> builder(context);
    builder.SetInsertPoint(
            insertionPoint);// append to the end of block, before terminator

    return builder.CreateOr(elements);
}

Value *SVE_Permute::createANDInstruction(ArrayRef<Value *> elements) {
    LLVMContext &context = L->getHeader()->getContext();
    IRBuilder<> builder(context);
    builder.SetInsertPoint(
            insertionPoint);// append to the end of block, before terminator

    return builder.CreateAnd(elements);
}

CallInst *SVE_Permute::createIndexInstruction(Value *firstOp, Value *secondOp) {
    LLVMContext &context = L->getHeader()->getContext();
    IRBuilder<> builder(context);

    insertionPoint = L->getHeader()->getTerminator();

    builder.SetInsertPoint(insertionPoint);


    auto intrinsic = Intrinsic::aarch64_sve_index;


    VectorType *returnType = VectorType::get(Type::getInt32Ty(context), vectorizationFactor, true);

    Function *intrinsicFunction = Intrinsic::getDeclaration(module, intrinsic, returnType);

    std::vector<Value *> arguments;

    arguments.push_back(firstOp);
    arguments.push_back(secondOp);

    return builder.CreateCall(intrinsicFunction, ArrayRef<Value *>(arguments));
}


BasicBlock *SVE_Permute::createBlockForPermutation() {
    BasicBlock *header = L->getHeader();
    BasicBlock *blockInsertionPoint = header->getNextNode();
    LLVMContext &context = L->getHeader()->getContext();
    BasicBlock *permuteBlock = BasicBlock::Create(context, "permute", header->getParent(), blockInsertionPoint);
    permuteBlock->setName("loop.permute");

    // The new latch which jumps conditionally to targeted block should now branch to permute block instead of targeted block
    BasicBlock *latch = targetedBlock->getSinglePredecessor();
    auto *brInstr = dyn_cast<BranchInst>(latch->getTerminator());
    for (int i = 0; i < brInstr->getNumOperands(); ++i) {
        if (brInstr->getOperand(i) == targetedBlock) {
            brInstr->setOperand(i, permuteBlock);
        }
    }

    //create terminator
    llvm::BranchInst::Create(targetedBlock, permuteBlock);

    //register to the loop
    L->addBasicBlockToLoop(permuteBlock, *LI);

    return permuteBlock;
}


SVE_Permute::SVE_Permute(Loop *l, int factor, BasicBlock *block, LoopInfo *loopInfo) : L(l),
                                                                                       vectorizationFactor(factor),
                                                                                       targetedBlock(block),
                                                                                       LI(loopInfo) {
    L = l;
    vectorizationFactor = factor;
    module = L->getBlocks().front()->getParent()->getParent();
    targetedBlock = block;
    LI = loopInfo;
}



