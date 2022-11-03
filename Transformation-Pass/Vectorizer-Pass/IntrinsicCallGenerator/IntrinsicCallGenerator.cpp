#include "IntrinsicCallGenerator.h"
#include "llvm/IR/IntrinsicsAArch64.h"

Value *IntrinsicCallGenerator::createAllTruePredicates(IRBuilder<> &IRB) {
    auto *VecTy = VectorType::get(IRB.getInt1Ty(), VF, /*Scalable*/ true);
    auto *constantInt =
            llvm::ConstantInt::get(IRB.getInt32Ty(), VF, /*Scalable*/ true);
    return IRB.CreateIntrinsic(Intrinsic::aarch64_sve_ptrue, {VecTy},
                               {constantInt});
}

Value *IntrinsicCallGenerator::createCompactInstruction(
        IRBuilder<> &IRB, Value *toBeCompacted, Value *predicatedVector) {
    return IRB.CreateIntrinsic(Intrinsic::aarch64_sve_compact, {toBeCompacted->getType()},
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
    return IRB.CreateIntrinsic(Intrinsic::aarch64_sve_whilelt,
                               {VecTy, IRB.getInt64Ty()}, {LHSOp, RHSOp});
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
        IRBuilder<> &IRB, Value *ptr, Value *predicatedVector, Value *indices) {
    auto *VecTy = VectorType::get(IRB.getInt32Ty(), VF, /*Scalable*/ true);
    return IRB.CreateIntrinsic(Intrinsic::aarch64_sve_ld1_gather_index,
                               {VecTy}, {predicatedVector, ptr, indices});
}

Value *IntrinsicCallGenerator::createLoadInstruction(IRBuilder<> &IRB,
                                                     Value *ptr,
                                                     Value *predicatedVector) {
    VectorType *type = VectorType::get(IRB.getInt32Ty(), VF, /*Scalable*/ true);
    return IRB.CreateMaskedLoad(
            type, ptr, Align(VF * (IRB.getInt32Ty()->getScalarSizeInBits() / 8)),
            predicatedVector);
}

void IntrinsicCallGenerator::createScatterStoreInstruction(
        IRBuilder<> &IRB, Value *elementsVector, Value *ptr,
        Value *predicatedVector, Value *indices) {
    auto *VecTy = VectorType::get(IRB.getInt32Ty(), VF, /*Scalable*/ true);
    IRB.CreateIntrinsic(Intrinsic::aarch64_sve_st1_scatter_index, {VecTy},
                        {elementsVector, predicatedVector, ptr, indices});
}

void IntrinsicCallGenerator::createStoreInstruction(IRBuilder<> &IRB,
                                                    Value *elementsVector,
                                                    Value *ptr,
                                                    Value *predicatedVector) {
    IRB.CreateMaskedStore(
            elementsVector, ptr,
            Align(VF * (IRB.getInt32Ty()->getScalarSizeInBits() / 8)),
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

Value *IntrinsicCallGenerator::createStepVector64Intrinsic(IRBuilder<> &IRB, std::string name) {
    return IRB.CreateStepVector(
            VectorType::get(IRB.getInt64Ty(), VF, /*Scalable*/ true), name);
}

Value *IntrinsicCallGenerator::createStepVector32Intrinsic(IRBuilder<> &IRB, std::string name) {
    return IRB.CreateStepVector(
            VectorType::get(IRB.getInt32Ty(), VF, /*Scalable*/ true), name);
}
