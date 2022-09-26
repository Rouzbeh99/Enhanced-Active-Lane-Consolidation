#include "IntrinsicCallGenerator.h"

CallInst *IntrinsicCallGenerator::createAllTruePredicates(Instruction *insertionPoint) {

    LLVMContext &context = module->getContext();
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
IntrinsicCallGenerator::createCompactInstruction(Instruction *insertionPoint, Value *toBeCompacted,
                                                 Value *predicatedVector) {

    LLVMContext &context = module->getContext();
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

Value *IntrinsicCallGenerator::createNotInstruction(Instruction *insertionPoint, Value *elements) {
    LLVMContext &context = module->getContext();
    IRBuilder<> builder(context);
    builder.SetInsertPoint(
            insertionPoint);// append to the end of block, before terminator

    return builder.CreateNot(elements);
}

CallInst *
IntrinsicCallGenerator::createCntpInstruction(Instruction *insertionPoint, Value *elements, Value *predicatedVector) {

    LLVMContext &context = module->getContext();
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


CallInst *
IntrinsicCallGenerator::createWhileltInstruction(Instruction *insertionPoint, Value *firstOp, Value *secondOp) {

    LLVMContext &context = module->getContext();
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

CallInst *IntrinsicCallGenerator::createSpliceInstruction(Instruction *insertionPoint, Value *firstOp, Value *secondOp,
                                                          Value *predicatedVector) {


    LLVMContext &context = module->getContext();
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

CallInst *IntrinsicCallGenerator::createSelInstruction(Instruction *insertionPoint, Value *firstOp, Value *secondOp,
                                                       Value *predicatedVector) {
    LLVMContext &context = module->getContext();
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

Value *IntrinsicCallGenerator::createORInstruction(Instruction *insertionPoint, ArrayRef<Value *> elements) {
    LLVMContext &context = module->getContext();
    IRBuilder<> builder(context);
    builder.SetInsertPoint(insertionPoint);// append to the end of block, before terminator

    return builder.CreateOr(elements);
}

Value *IntrinsicCallGenerator::createANDInstruction(Instruction *insertionPoint, ArrayRef<Value *> elements) {
    LLVMContext &context = module->getContext();
    IRBuilder<> builder(context);
    builder.SetInsertPoint(insertionPoint);// append to the end of block, before terminator

    return builder.CreateAnd(elements);
}

CallInst *IntrinsicCallGenerator::createIndexInstruction(Instruction *insertionPoint, Value *firstOp, Value *secondOp) {
    LLVMContext &context = module->getContext();
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


Value *IntrinsicCallGenerator::createAddInstruction(Instruction *insertionPoint, Value *firstOp, Value *secondOp) {
    LLVMContext &context = module->getContext();
    IRBuilder<> builder(context);
    builder.SetInsertPoint(insertionPoint);


    return builder.CreateAdd(firstOp, secondOp);


}

Value *IntrinsicCallGenerator::createSubInstruction(Instruction *insertionPoint, Value *firstOp, Value *secondOp) {
    LLVMContext &context = module->getContext();
    IRBuilder<> builder(context);
    builder.SetInsertPoint(insertionPoint);

    return builder.CreateSub(firstOp, secondOp);

}

CallInst *
IntrinsicCallGenerator::createGatherLoadInstruction(Instruction *insertionPoint, Value *ptr,
                                                    Value *predicatedVector,
                                                    Value *indices) {

    LLVMContext &context = module->getContext();
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


CallInst *
IntrinsicCallGenerator::createLoadInstruction(Instruction *insertionPoint, Value *ptr,
                                              Value *predicatedVector) {

    LLVMContext &context = module->getContext();
    IRBuilder<> builder(context);
    builder.SetInsertPoint(insertionPoint);

    auto intrinsic = Intrinsic::aarch64_sve_ld1;

    VectorType *type = VectorType::get(Type::getInt32Ty(context), vectorizationFactor, true);
    Function *intrinsicFunction = Intrinsic::getDeclaration(module, intrinsic, type);


    std::vector<Value *> arguments;
    arguments.push_back(predicatedVector);
    arguments.push_back(ptr);


    return builder.CreateCall(intrinsicFunction, ArrayRef<Value *>(arguments));

}


void IntrinsicCallGenerator::createScatterStoreInstruction(Instruction *insertionPoint, Value *elementsVector,
                                                           Value *ptr,
                                                           Value *predicatedVector, Value *indices) {
    LLVMContext &context = module->getContext();
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

void IntrinsicCallGenerator::createStoreInstruction(Instruction *insertionPoint, Value *elementsVector,
                                                    Value *ptr,
                                                    Value *predicatedVector) {
    LLVMContext &context = module->getContext();
    IRBuilder<> builder(context);
    builder.SetInsertPoint(insertionPoint);

    auto intrinsic = Intrinsic::aarch64_sve_st1;

    Function *intrinsicFunction = Intrinsic::getDeclaration(module, intrinsic, elementsVector->getType());

    std::vector<Value *> arguments;
    arguments.push_back(elementsVector);
    arguments.push_back(predicatedVector);
    arguments.push_back(ptr);

    builder.CreateCall(intrinsicFunction, ArrayRef<Value *>(arguments));
}

// TODO: handle double types by changing return type and operands
CallInst *
IntrinsicCallGenerator::createArithmeticInstruction(Instruction *insertionPoint, unsigned int intrinsic, Value *firstOp,
                                                    Value *secondOp, Value *predicatedVector) {
    LLVMContext &context = module->getContext();
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

CallInst *IntrinsicCallGenerator::createVscale64Intrinsic(Instruction *insertionPoint) {
    LLVMContext &context = module->getContext();
    IRBuilder<> builder(context);
    builder.SetInsertPoint(insertionPoint);

    auto intrinsic = Intrinsic::vscale;

    auto type = Type::getInt64Ty(context);
    Function *intrinsicFunction = Intrinsic::getDeclaration(module, intrinsic, type);

    return builder.CreateCall(intrinsicFunction);
}

CallInst *IntrinsicCallGenerator::createStepVector64Intrinsic(Instruction *insertionPoint) {

    LLVMContext &context = module->getContext();
    IRBuilder<> builder(context);
    builder.SetInsertPoint(insertionPoint);

    auto intrinsic = Intrinsic::experimental_stepvector;

    auto vecType = VectorType::get(Type::getInt64Ty(context), vectorizationFactor, true);
    Function *intrinsicFunction = Intrinsic::getDeclaration(module, intrinsic, vecType);

    return builder.CreateCall(intrinsicFunction);
}

IntrinsicCallGenerator::IntrinsicCallGenerator(int vectorizationFactor, Module *module1) : vectorizationFactor(
        vectorizationFactor), module(module1) {
}


