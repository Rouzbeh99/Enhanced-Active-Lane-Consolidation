#include "IntrinsicCallGenerator.h"

Value *IntrinsicCallGenerator::createAllTruePredicates(IRBuilder<> &IRB) {
    auto intrinsic = Intrinsic::aarch64_sve_ptrue;
    VectorType *type = VectorType::get(IRB.getInt1Ty(), vectorizationFactor, /*Scalable*/ true);
    Function *intrinsicFunction = Intrinsic::getDeclaration(module, intrinsic, type);
    llvm::Constant *constantInt = llvm::ConstantInt::get(IRB.getInt32Ty(), vectorizationFactor, /*Scalable*/ true);
    return IRB.CreateCall(intrinsicFunction, constantInt);
}


Value *
IntrinsicCallGenerator::createCompactInstruction(IRBuilder<> &IRB, Value *toBeCompacted,
                                                 Value *predicatedVector) {
    auto intrinsic = Intrinsic::aarch64_sve_compact;

    VectorType *type = VectorType::get(IRB.getInt32Ty(), vectorizationFactor, /*Scalable*/ true);
    Function *intrinsicFunction = Intrinsic::getDeclaration(module, intrinsic, type);

    std::vector<Value *> arguments;
    arguments.push_back(predicatedVector);
    arguments.push_back(toBeCompacted);

    return IRB.CreateCall(intrinsicFunction, ArrayRef<Value *>(arguments));
}

Value *
IntrinsicCallGenerator::createCntpInstruction(IRBuilder<> &IRB, Value *elements, Value *predicatedVector) {

    auto intrinsic = Intrinsic::aarch64_sve_cntp;

    VectorType *type = VectorType::get(IRB.getInt1Ty(), vectorizationFactor, true);
    Function *intrinsicFunction = Intrinsic::getDeclaration(module, intrinsic, type);

    std::vector<Value *> arguments;

    arguments.push_back(predicatedVector);
    arguments.push_back(elements);

    return IRB.CreateCall(intrinsicFunction, ArrayRef<Value *>(arguments));
}


Value *
IntrinsicCallGenerator::createWhileltInstruction(IRBuilder<> &IRB, Value *firstOp, Value *secondOp) {

    auto intrinsic = Intrinsic::aarch64_sve_whilelt;

    VectorType *type = VectorType::get(IRB.getInt1Ty(), vectorizationFactor, /*Scalable*/ true);
    std::vector<Type *> types;

    types.push_back(type);
    types.push_back(IRB.getInt64Ty());

    Function *intrinsicFunction = Intrinsic::getDeclaration(module, intrinsic, ArrayRef<Type *>(types));

    std::vector<Value *> arguments;

    arguments.push_back(firstOp);
    arguments.push_back(secondOp);

    return IRB.CreateCall(intrinsicFunction, ArrayRef<Value *>(arguments));
}

Value *IntrinsicCallGenerator::createSpliceInstruction(IRBuilder<> &IRB, Value *firstOp, Value *secondOp,
                                                          Value *predicatedVector) {

    auto intrinsic = Intrinsic::aarch64_sve_splice;

    VectorType *type = VectorType::get(IRB.getInt32Ty(), vectorizationFactor, /*Scalable*/ true);

    Function *intrinsicFunction = Intrinsic::getDeclaration(module, intrinsic, type);

    std::vector<Value *> arguments;

    arguments.push_back(predicatedVector);
    arguments.push_back(firstOp);
    arguments.push_back(secondOp);

    return IRB.CreateCall(intrinsicFunction, ArrayRef<Value *>(arguments));

}

Value *IntrinsicCallGenerator::createSelInstruction(IRBuilder<> &IRB, Value *firstOp, Value *secondOp,
                                                       Value *predicatedVector) {

    auto intrinsic = Intrinsic::aarch64_sve_sel;

    VectorType *type = VectorType::get(IRB.getInt32Ty(), vectorizationFactor, /*Scalable*/ true);

    Function *intrinsicFunction = Intrinsic::getDeclaration(module, intrinsic, type);

    std::vector<Value *> arguments;

    arguments.push_back(predicatedVector);
    arguments.push_back(firstOp);
    arguments.push_back(secondOp);

    return IRB.CreateCall(intrinsicFunction, ArrayRef<Value *>(arguments));

}

Value *IntrinsicCallGenerator::createIndexInstruction(IRBuilder<> &IRB, Value *firstOp, Value *secondOp) {
    auto intrinsic = Intrinsic::aarch64_sve_index;

    VectorType *type = VectorType::get(IRB.getInt32Ty(), vectorizationFactor, /*Scalable*/ true);

    Function *intrinsicFunction = Intrinsic::getDeclaration(module, intrinsic, type);

    std::vector<Value *> arguments;

    arguments.push_back(firstOp);
    arguments.push_back(secondOp);

    return IRB.CreateCall(intrinsicFunction, ArrayRef<Value *>(arguments));
}

Value *
IntrinsicCallGenerator::createGatherLoadInstruction(IRBuilder<> &IRB, Value *ptr,
                                                    Value *predicatedVector,
                                                    Value *indices) {
    auto intrinsic = Intrinsic::aarch64_sve_ld1_gather_sxtw_index;

    VectorType *type = VectorType::get(IRB.getInt32Ty(), vectorizationFactor, /*Scalable*/ true);
    Function *intrinsicFunction = Intrinsic::getDeclaration(module, intrinsic, type);

    std::vector<Value *> arguments;
    arguments.push_back(predicatedVector);
    arguments.push_back(ptr);
    arguments.push_back(indices);

    return IRB.CreateCall(intrinsicFunction, ArrayRef<Value *>(arguments));
}


Value *
IntrinsicCallGenerator::createLoadInstruction(IRBuilder<> &IRB, Value *ptr,
                                              Value *predicatedVector) {
  auto intrinsic = Intrinsic::aarch64_sve_ld1;

  VectorType *type = VectorType::get(IRB.getInt32Ty(), vectorizationFactor, /*Scalable*/ true);
  Function *intrinsicFunction = Intrinsic::getDeclaration(module, intrinsic, type);


  std::vector<Value *> arguments;
  arguments.push_back(predicatedVector);
  arguments.push_back(ptr);


  return IRB.CreateCall(intrinsicFunction, ArrayRef<Value *>(arguments));
}


void IntrinsicCallGenerator::createScatterStoreInstruction(IRBuilder<> &IRB, Value *elementsVector,
                                                           Value *ptr,
                                                           Value *predicatedVector, Value *indices) {

    auto intrinsic = Intrinsic::aarch64_sve_st1_scatter_sxtw;

    Function *intrinsicFunction = Intrinsic::getDeclaration(module, intrinsic, elementsVector->getType());

    std::vector<Value *> arguments;
    arguments.push_back(elementsVector);
    arguments.push_back(predicatedVector);
    arguments.push_back(ptr);
    arguments.push_back(indices);

    IRB.CreateCall(intrinsicFunction, ArrayRef<Value *>(arguments));
}

void IntrinsicCallGenerator::createStoreInstruction(IRBuilder<> &IRB, Value *elementsVector,
                                                    Value *ptr,
                                                    Value *predicatedVector) {
    auto intrinsic = Intrinsic::aarch64_sve_st1;

    Function *intrinsicFunction = Intrinsic::getDeclaration(module, intrinsic, elementsVector->getType());

    std::vector<Value *> arguments;
    arguments.push_back(elementsVector);
    arguments.push_back(predicatedVector);
    arguments.push_back(ptr);

    IRB.CreateCall(intrinsicFunction, ArrayRef<Value *>(arguments));
}

// TODO: handle double types by changing return type and operands
Value *
IntrinsicCallGenerator::createArithmeticInstruction(IRBuilder<> &IRB, unsigned int intrinsic, Value *firstOp,
                                                    Value *secondOp, Value *predicatedVector) {
    VectorType *type = VectorType::get(IRB.getInt32Ty(), vectorizationFactor, /*Scalable*/ true);
    Function *intrinsicFunction = Intrinsic::getDeclaration(module, intrinsic, type);

    std::vector<Value *> arguments;
    arguments.push_back(predicatedVector);
    arguments.push_back(firstOp);
    arguments.push_back(secondOp);

    return IRB.CreateCall(intrinsicFunction, ArrayRef<Value *>(arguments));
}

Value *IntrinsicCallGenerator::createVscale64Intrinsic(IRBuilder<> &IRB, uint64_t Scaling) {
    return IRB.CreateVScale(IRB.getInt64(Scaling));
}

Value *IntrinsicCallGenerator::createVscale32Intrinsic(IRBuilder<> &IRB, uint32_t Scaling) {
    return IRB.CreateVScale(IRB.getInt32(Scaling));
}

Value *IntrinsicCallGenerator::createStepVector64Intrinsic(IRBuilder<> &IRB, uint64_t Scaling) {
    return IRB.CreateStepVector(VectorType::get(IRB.getInt64Ty(), Scaling, /*Scalable*/ true));
}

Value *IntrinsicCallGenerator::createStepVector32Intrinsic(IRBuilder<> &IRB, uint32_t Scaling) {
    return IRB.CreateStepVector(VectorType::get(IRB.getInt32Ty(), Scaling, /*Scalable*/ true));
}

IntrinsicCallGenerator::IntrinsicCallGenerator(int vectorizationFactor, Module *module1) : vectorizationFactor(
        vectorizationFactor), module(module1) {
}


