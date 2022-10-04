#include "IntrinsicCallGenerator.h"
#include "llvm/IR/IntrinsicsAArch64.h"

Value *IntrinsicCallGenerator::createAllTruePredicates(IRBuilder<> &IRB) {
  auto *VecTy = VectorType::get(IRB.getInt1Ty(), vectorizationFactor, /*Scalable*/ true);
  auto *constantInt = llvm::ConstantInt::get(IRB.getInt32Ty(), vectorizationFactor, /*Scalable*/ true);
  return IRB.CreateIntrinsic(Intrinsic::aarch64_sve_ptrue, {VecTy}, {constantInt});
}


Value *
IntrinsicCallGenerator::createCompactInstruction(IRBuilder<> &IRB, Value *toBeCompacted,
    Value *predicatedVector) {
  auto *VecTy = VectorType::get(IRB.getInt32Ty(), vectorizationFactor, /*Scalable*/ true);
  return IRB.CreateIntrinsic(Intrinsic::aarch64_sve_compact, {VecTy} , {predicatedVector, toBeCompacted});
}

Value *
IntrinsicCallGenerator::createCntpInstruction(IRBuilder<> &IRB, Value *elements, Value *predicatedVector) {
  auto *VecTy = VectorType::get(IRB.getInt1Ty(), vectorizationFactor, true);
  return IRB.CreateIntrinsic(Intrinsic::aarch64_sve_cntp, {VecTy} , {predicatedVector, elements});
}


Value *
IntrinsicCallGenerator::createWhileltInstruction(IRBuilder<> &IRB, Value *LHSOp, Value *RHSOp) {
  auto *VecTy = VectorType::get(IRB.getInt1Ty(), vectorizationFactor, /*Scalable*/ true);
  return IRB.CreateIntrinsic(Intrinsic::aarch64_sve_whilelt, {VecTy, IRB.getInt64Ty()} , {LHSOp, RHSOp});
}

Value *IntrinsicCallGenerator::createSpliceInstruction(IRBuilder<> &IRB, Value *firstOp, Value *secondOp,
    Value *predicatedVector) {
  auto *VecTy = VectorType::get(IRB.getInt32Ty(), vectorizationFactor, /*Scalable*/ true);
  return IRB.CreateIntrinsic(Intrinsic::aarch64_sve_splice, {VecTy, IRB.getInt64Ty()} , {predicatedVector, firstOp, secondOp});

}

Value *IntrinsicCallGenerator::createSelInstruction(IRBuilder<> &IRB, Value *firstOp, Value *secondOp,
    Value *predicatedVector) {
  auto *VecTy = VectorType::get(IRB.getInt32Ty(), vectorizationFactor, /*Scalable*/ true);
  return IRB.CreateIntrinsic(Intrinsic::aarch64_sve_sel, {VecTy} , {predicatedVector, firstOp, secondOp});

}

Value *IntrinsicCallGenerator::createIndexInstruction(IRBuilder<> &IRB, Value *firstOp, Value *secondOp) {
  auto *VecTy = VectorType::get(IRB.getInt32Ty(), vectorizationFactor, /*Scalable*/ true);
  return IRB.CreateIntrinsic(Intrinsic::aarch64_sve_index, {VecTy} , {firstOp, secondOp});
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
  VectorType *type = VectorType::get(IRB.getInt32Ty(), vectorizationFactor, /*Scalable*/ true);
  // FIXME: Use proper value for Alignment
  return IRB.CreateMaskedLoad(type, ptr, Align(), predicatedVector);
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
  // FIXME: Use proper value for Alignment
  IRB.CreateMaskedStore(elementsVector, ptr, Align(), predicatedVector);
}

// TODO: handle double types by changing return type and operands
Value *
IntrinsicCallGenerator::createArithmeticInstruction(IRBuilder<> &IRB, unsigned int intrinsic, Value *firstOp,
    Value *secondOp, Value *predicatedVector) {
  auto *VecTy = VectorType::get(IRB.getInt32Ty(), vectorizationFactor, /*Scalable*/ true);
  return IRB.CreateIntrinsic(intrinsic, {VecTy}, {predicatedVector, firstOp, secondOp});
}

Value *IntrinsicCallGenerator::createVscale64Intrinsic(IRBuilder<> &IRB) {
  return IRB.CreateVScale(IRB.getInt64(vectorizationFactor));
}

Value *IntrinsicCallGenerator::createVscale32Intrinsic(IRBuilder<> &IRB) {
  return IRB.CreateVScale(IRB.getInt32(vectorizationFactor));
}

Value *IntrinsicCallGenerator::createStepVector64Intrinsic(IRBuilder<> &IRB) {
    return IRB.CreateStepVector(VectorType::get(IRB.getInt64Ty(), vectorizationFactor, /*Scalable*/ true));
}

Value *IntrinsicCallGenerator::createStepVector32Intrinsic(IRBuilder<> &IRB) {
    return IRB.CreateStepVector(VectorType::get(IRB.getInt32Ty(), vectorizationFactor, /*Scalable*/ true));
}

IntrinsicCallGenerator::IntrinsicCallGenerator(int vectorizationFactor, Module *module1) : vectorizationFactor(
        vectorizationFactor), module(module1) {
}


