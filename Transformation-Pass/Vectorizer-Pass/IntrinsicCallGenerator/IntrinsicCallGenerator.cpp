#include "IntrinsicCallGenerator.h"
#include "llvm/IR/IntrinsicsAArch64.h"

Value *IntrinsicCallGenerator::createAllTruePredicates(IRBuilder<> &IRB) {
  auto *VecTy = VectorType::get(IRB.getInt1Ty(), VF, /*Scalable*/ true);
  auto *constantInt =
      llvm::ConstantInt::get(IRB.getInt32Ty(), 31, /*Scalable*/ true);
  return IRB.CreateIntrinsic(Intrinsic::aarch64_sve_ptrue, {VecTy},
                             {constantInt});
}

Value *IntrinsicCallGenerator::createCompactInstruction(
    IRBuilder<> &IRB, Value *toBeCompacted, Value *predicatedVector) {
  return IRB.CreateIntrinsic(Intrinsic::aarch64_sve_compact,
                             {toBeCompacted->getType()},
                             {predicatedVector, toBeCompacted});
}

Value *IntrinsicCallGenerator::createCntpInstruction(IRBuilder<> &IRB,
                                                     Value *elements,
                                                     Value *predicatedVector) {
  auto *VecTy = VectorType::get(IRB.getInt1Ty(), VF, true);
  return IRB.CreateIntrinsic(Intrinsic::aarch64_sve_cntp, {VecTy},
                             {predicatedVector, elements});
}

Value *IntrinsicCallGenerator::createWhileltInstruction(IRBuilder<> &IRB,
                                                        Value *LHSOp,
                                                        Value *RHSOp) {
  auto *VecTy = VectorType::get(IRB.getInt1Ty(), VF, /*Scalable*/ true);
  auto *IndexType = static_cast<VectorType*>(LHSOp->getType())->getScalarType();
  return IRB.CreateIntrinsic(Intrinsic::aarch64_sve_whilelt,
                             {VecTy, IndexType}, {LHSOp, RHSOp});
}

Value *IntrinsicCallGenerator::createWhileleInstruction(IRBuilder<> &IRB,
                                                        Value *LHSOp,
                                                        Value *RHSOp) {
    auto *VecTy = VectorType::get(IRB.getInt1Ty(), VF, /*Scalable*/ true);
    auto *IndexType = static_cast<VectorType*>(LHSOp->getType())->getScalarType();
    return IRB.CreateIntrinsic(Intrinsic::aarch64_sve_whilele,
                               {VecTy, IndexType}, {LHSOp, RHSOp});
}

Value *IntrinsicCallGenerator::createWhileloInstruction(IRBuilder<> &IRB,
                                                        Value *LHSOp,
                                                        Value *RHSOp) {
    auto *VecTy = VectorType::get(IRB.getInt1Ty(), VF, /*Scalable*/ true);
    auto *IndexType = static_cast<VectorType*>(LHSOp->getType())->getScalarType();
    return IRB.CreateIntrinsic(Intrinsic::aarch64_sve_whilelo,
                               {VecTy, IndexType}, {LHSOp, RHSOp});
}

Value *
IntrinsicCallGenerator::createSpliceInstruction(IRBuilder<> &IRB,
                                                Value *firstOp, Value *secondOp,
                                                Value *predicatedVector) {

  return IRB.CreateIntrinsic(Intrinsic::aarch64_sve_splice,
                             {firstOp->getType()},
                             {predicatedVector, firstOp, secondOp});
}

Value *IntrinsicCallGenerator::createSelInstruction(IRBuilder<> &IRB,
                                                    Value *firstOp,
                                                    Value *secondOp,
                                                    Value *predicatedVector) {

  return IRB.CreateIntrinsic(Intrinsic::aarch64_sve_sel, {firstOp->getType()},
                             {predicatedVector, firstOp, secondOp});
}

Value *IntrinsicCallGenerator::createIndexInstruction(IRBuilder<> &IRB,
                                                      Value *firstOp,
                                                      Value *secondOp) {
  auto *VecTy = VectorType::get(firstOp->getType(), VF, /*Scalable*/ true);
  return IRB.CreateIntrinsic(Intrinsic::aarch64_sve_index, {VecTy},
                             {firstOp, secondOp});
}

Value *IntrinsicCallGenerator::createGatherLoadInstruction(
    IRBuilder<> &IRB, Type *SrcTy, Value *ptr, Value *predicatedVector, Value *indices) {
  auto *VecTy = VectorType::get(SrcTy, VF, /*Scalable*/ true);
  auto *IndexType = static_cast<VectorType*>(indices->getType())->getScalarType();
  assert((IRB.getInt32Ty() == IndexType || IRB.getInt64Ty() == IndexType)
      && "Index type must be either i32 or i64");
  auto IntrinsicID = Intrinsic::aarch64_sve_ld1_gather_index;
  if (IndexType == IRB.getInt32Ty())
    IntrinsicID = Intrinsic::aarch64_sve_ld1_gather_sxtw_index;
  return IRB.CreateIntrinsic(IntrinsicID, {VecTy}, {predicatedVector, ptr, indices});
}

Value *IntrinsicCallGenerator::createLoadInstruction(IRBuilder<> &IRB,
                                                     Type *SrcTy, Value *ptr,
                                                     Value *predicatedVector) {
  auto *VTy = VectorType::get(SrcTy, VF, /*Scalable*/ true);
  // TODO: Fix alignment
  auto AlignNumBytes = 4;
  auto *Load = IRB.CreateMaskedLoad(VTy, ptr, Align(VF * AlignNumBytes),
                                    predicatedVector);
  return Load;
}

void IntrinsicCallGenerator::createScatterStoreInstruction(
    IRBuilder<> &IRB, Value *elementsVector, Value *ptr,
    Value *predicatedVector, Value *indices) {
  auto *SrcTy = static_cast<VectorType*>(elementsVector->getType())->getScalarType();
  auto *VecTy = VectorType::get(SrcTy, VF, /*Scalable*/ true);
  auto *IndexType = static_cast<VectorType*>(indices->getType())->getScalarType();
  assert((IRB.getInt32Ty() == IndexType || IRB.getInt64Ty() == IndexType)
      && "Index type must be either i32 or i64");
  auto IntrinsicID = Intrinsic::aarch64_sve_st1_scatter_index;
  if (IndexType == IRB.getInt32Ty())
    IntrinsicID = Intrinsic::aarch64_sve_st1_scatter_sxtw_index;
  IRB.CreateIntrinsic(IntrinsicID, {VecTy}, {elementsVector, predicatedVector, ptr, indices});
}

void IntrinsicCallGenerator::createStoreInstruction(IRBuilder<> &IRB,
                                                    Value *elementsVector,
                                                    Value *ptr,
                                                    Value *predicatedVector) {
  // TODO: Fix alignment
  auto AlignNumBytes = 4;
  IRB.CreateMaskedStore(elementsVector, ptr, Align(VF * (AlignNumBytes)),
                        predicatedVector);
}

// TODO: handle double types by changing return type and operands
Value *IntrinsicCallGenerator::createArithmeticInstruction(
    IRBuilder<> &IRB, unsigned int intrinsic, Value *firstOp, Value *secondOp,
    Value *predicatedVector) {
  auto *VecTy = VectorType::get(IRB.getInt32Ty(), VF, /*Scalable*/ true);
  return IRB.CreateIntrinsic(intrinsic, {VecTy},
                             {predicatedVector, firstOp, secondOp});
}

Value *IntrinsicCallGenerator::createVscale64Intrinsic(IRBuilder<> &IRB) {
  return IRB.CreateVScale(IRB.getInt64(VF));
}

Value *IntrinsicCallGenerator::createVscale32Intrinsic(IRBuilder<> &IRB) {
  return IRB.CreateVScale(IRB.getInt32(VF));
}

Value *IntrinsicCallGenerator::createStepVector64Intrinsic(IRBuilder<> &IRB,
                                                           std::string name) {
  return IRB.CreateStepVector(
      VectorType::get(IRB.getInt64Ty(), VF, /*Scalable*/ true), name);
}

Value *IntrinsicCallGenerator::createStepVector32Intrinsic(IRBuilder<> &IRB,
                                                           std::string name) {
  return IRB.CreateStepVector(
      VectorType::get(IRB.getInt32Ty(), VF, /*Scalable*/ true), name);
}
