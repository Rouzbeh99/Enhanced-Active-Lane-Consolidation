//
// Created by rouzbeh on 7/25/22.
//

#include "SVE_Vectorizer.h"


SVE_Vectorizer::SVE_Vectorizer(Loop *l, int factor) : L(l), vectorizingFactor(factor) {
    L = l;
    vectorizingFactor = factor;
    module = L->getBlocks().front()->getParent()->getParent();
}

CallInst *SVE_Vectorizer::formPredicateVector(std::vector<Value *> predicates, Instruction *insertionPoint) {
    
    LLVMContext &context = L->getHeader()->getContext();
    IRBuilder<> builder(context);
    builder.SetInsertPoint(insertionPoint);

    auto intrinsic = Intrinsic::aarch64_sve_convert_to_svbool;
    VectorType *type = VectorType::get(Type::getInt1Ty(context), 4, false);
    Function *intrinsicFunction = Intrinsic::getDeclaration(module, intrinsic, type);
    Type *int1Ty = Type::getInt1Ty(context);
    Value *predicateHolder = UndefValue::get(type);

    for (int i = 0; i < 4; ++i) {
        Constant *index = Constant::getIntegerValue(int1Ty, llvm::APInt(1, i));
        predicateHolder = builder.CreateInsertElement(predicateHolder, predicates[i], index);
    }


    CallInst *vectorPredicate = builder.CreateCall(intrinsicFunction, predicateHolder);

    return vectorPredicate;

}

CallInst *SVE_Vectorizer::createAllTruePredicates(Instruction *insertionPoint) {

    LLVMContext &context = L->getHeader()->getContext();
    IRBuilder<> builder(context);
    builder.SetInsertPoint(
            insertionPoint);// append to the end of block, before terminator

    auto intrinsic = Intrinsic::aarch64_sve_ptrue;
    VectorType *type = VectorType::get(Type::getInt1Ty(context), vectorizingFactor, false);

    Function *intrinsicFunction = Intrinsic::getDeclaration(module, intrinsic, type);
    llvm::Type *i32_type = llvm::IntegerType::getInt32Ty(context);
    llvm::Constant *constantInt = llvm::ConstantInt::get(i32_type, 4, true);
    return builder.CreateCall(intrinsicFunction, constantInt);
}


