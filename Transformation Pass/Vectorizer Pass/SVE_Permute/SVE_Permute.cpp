//
// Created by rouzbeh on 8/8/22.
//

#include "SVE_Permute.h"


void SVE_Permute::doPermutation() {
//
//    Instruction *insertionPoint = L->getHeader()->getTerminator();
//
//    LLVMContext &context = L->getHeader()->getContext();
//    IRBuilder<> builder(context);
//    builder.SetInsertPoint(insertionPoint);
//
//    auto intrinsic = Intrinsic::aarch64_sve_compact;
//
//    VectorType *returnType = VectorType::get(Type::getInt32Ty(context), vectorizationFactor, false);
//    Function *intrinsicFunction = Intrinsic::getDeclaration(module, intrinsic, returnType);
//
//    intrinsicFunction->print(outs());
//
//    std::vector<Value *> arguments;
//    arguments.push_back();
//
//
//    builder.CreateCall(intrinsicFunction, ArrayRef<Value *>(arguments));
}

CallInst *SVE_Permute::createAllTruePredicates() {

    LLVMContext &context = L->getHeader()->getContext();
    IRBuilder<> builder(context);
    builder.SetInsertPoint(
            insertionPoint);// append to the end of block, before terminator

    auto intrinsic = Intrinsic::aarch64_sve_ptrue;
    VectorType *returnType = VectorType::get(Type::getInt1Ty(context), vectorizationFactor, false);
    Function *intrinsicFunction = Intrinsic::getDeclaration(module, intrinsic, returnType);
    llvm::Type *i32_type = llvm::IntegerType::getInt32Ty(context);
    llvm::Constant *constantInt = llvm::ConstantInt::get(i32_type, vectorizationFactor, true);
    return builder.CreateCall(intrinsicFunction, constantInt);
}


SVE_Permute::SVE_Permute(Loop *l, int factor, Value *pred, Instruction *insertPoint) : L(l), vectorizationFactor(
        factor), predicatedVector(pred), insertionPoint(insertPoint) {
    L = l;
    vectorizationFactor = factor;
    module = L->getBlocks().front()->getParent()->getParent();
    predicatedVector = pred;
    insertionPoint = insertPoint;
}


