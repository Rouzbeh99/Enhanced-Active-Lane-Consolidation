//
// Created by rouzbeh on 7/25/22.
//

#include "SVE_Vectorizer.h"

#include <utility>


SVE_Vectorizer::SVE_Vectorizer(Loop *l, int factor) : L(l), vectorizingFactor(factor) {
    L = l;
    vectorizingFactor = factor;
    module = L->getBlocks().front()->getParent()->getParent();
}


void SVE_Vectorizer::doVectorization(std::vector<Value *> predicates) {

    Instruction *insertionPoint = getLastHeaderCopy()->getTerminator();
    CallInst *allTrue = createAllTruePredicates(insertionPoint);
    Value *predicateVector = formPredicateVector(std::move(predicates), insertionPoint);
    BasicBlock *targetedBB = getTargetedBB();
    ///////////////////////////////////////////////////////////////////////


    Instruction *instr = targetedBB->getFirstNonPHI();
    GEPOperator *ptr = nullptr;
    if (isa<GEPOperator>(instr)) {
        ptr = dyn_cast<GEPOperator>(instr);
    }

    CallInst *loadedElements = loadElements(predicateVector, ptr, targetedBB->getTerminator());
    storeElements(loadedElements, predicateVector, ptr, targetedBB->getTerminator());

    auto intrinsic = Intrinsic::aarch64_sve_mul;
    insertArithmeticInstruction(intrinsic, loadedElements, loadedElements, predicateVector,
                                targetedBB->getTerminator());


}


Value *SVE_Vectorizer::formPredicateVector(std::vector<Value *> predicates, Instruction *insertionPoint) {

    LLVMContext &context = L->getHeader()->getContext();
    IRBuilder<> builder(context);
    builder.SetInsertPoint(insertionPoint);

    VectorType *returnType = VectorType::get(Type::getInt1Ty(context), vectorizingFactor, false);
//    auto intrinsic = Intrinsic::aarch64_sve_convert_to_svbool;
//    Function *intrinsicFunction = Intrinsic::getDeclaration(module, intrinsic, returnType);


    Type *int1Ty = Type::getInt1Ty(context);
    Value *predicateHolder = UndefValue::get(returnType);

    for (int i = 0; i < vectorizingFactor; ++i) {
        Constant *index = Constant::getIntegerValue(int1Ty, llvm::APInt(1, i));
        predicateHolder = builder.CreateInsertElement(predicateHolder, predicates[i], index);
    }

//    CallInst *vectorPredicates = builder.CreateCall(intrinsicFunction, predicateHolder);

    return predicateHolder;

}

CallInst *SVE_Vectorizer::createAllTruePredicates(Instruction *insertionPoint) {

    LLVMContext &context = L->getHeader()->getContext();
    IRBuilder<> builder(context);
    builder.SetInsertPoint(
            insertionPoint);// append to the end of block, before terminator

    auto intrinsic = Intrinsic::aarch64_sve_ptrue;
    VectorType *returnType = VectorType::get(Type::getInt1Ty(context), vectorizingFactor, false);
    Function *intrinsicFunction = Intrinsic::getDeclaration(module, intrinsic, returnType);
    llvm::Type *i32_type = llvm::IntegerType::getInt32Ty(context);
    llvm::Constant *constantInt = llvm::ConstantInt::get(i32_type, vectorizingFactor, true);
    return builder.CreateCall(intrinsicFunction, constantInt);
}

BasicBlock *SVE_Vectorizer::getLastHeaderCopy() const {
    BasicBlock *BB = L->getHeader();
    for (int i = 0; i < 2 * vectorizingFactor - 1; ++i) {
        BB = BB->getNextNode();
    }

    return BB;
}

BasicBlock *SVE_Vectorizer::getTargetedBB() {
    BasicBlock *lastLatchBlock = getLastHeaderCopy()->getNextNode();

    // it has two successors, exiting block and then block. we find then block 
    for (auto BB: successors(lastLatchBlock)) {

        // only then block belongs to the loop
        if (L->contains(BB)) {
            return BB;
        }
    }
    return nullptr;
}

CallInst *SVE_Vectorizer::loadElements(Value *predicateVector, GEPOperator *ptr, Instruction *insertionPoint) {

    LLVMContext &context = L->getHeader()->getContext();
    IRBuilder<> builder(context);
    builder.SetInsertPoint(insertionPoint);

    auto intrinsic = Intrinsic::aarch64_sve_ld1;

    VectorType *returnType = VectorType::get(Type::getInt32Ty(context), vectorizingFactor, false);
    Function *intrinsicFunction = Intrinsic::getDeclaration(module, intrinsic, returnType);

    std::vector<Value *> arguments;
    arguments.push_back(predicateVector);
    arguments.push_back(ptr);

    return builder.CreateCall(intrinsicFunction, ArrayRef<Value *>(arguments));


}

void SVE_Vectorizer::storeElements(Value *elementsVector, Value *predicateVector, GEPOperator *ptr,
                                   Instruction *insertionPoint) {
    LLVMContext &context = L->getHeader()->getContext();
    IRBuilder<> builder(context);
    builder.SetInsertPoint(insertionPoint);

    auto intrinsic = Intrinsic::aarch64_sve_st1;


    VectorType *returnType = VectorType::get(Type::getInt32Ty(context), vectorizingFactor, false);
    Function *intrinsicFunction = Intrinsic::getDeclaration(module, intrinsic, returnType);


    std::vector<Value *> arguments;
    arguments.push_back(elementsVector);
    arguments.push_back(predicateVector);
    arguments.push_back(ptr);


    builder.CreateCall(intrinsicFunction, ArrayRef<Value *>(arguments));
}

// TODO: handle double types by changing return type and operands
CallInst *SVE_Vectorizer::insertArithmeticInstruction(Intrinsic::ID intrinsic, Value *firstOp, Value *secondOp,
                                                      Value *predicateVector, Instruction *insertionPoint) {

    LLVMContext &context = L->getHeader()->getContext();
    IRBuilder<> builder(context);
    builder.SetInsertPoint(insertionPoint);

    VectorType *returnType = VectorType::get(Type::getInt32Ty(context), vectorizingFactor, false);
    Function *intrinsicFunction = Intrinsic::getDeclaration(module, intrinsic, returnType);

    intrinsicFunction->print(outs());

    std::vector<Value *> arguments;
    arguments.push_back(predicateVector);
    arguments.push_back(firstOp);
    arguments.push_back(secondOp);

    return builder.CreateCall(intrinsicFunction, ArrayRef<Value *>(arguments));
}






