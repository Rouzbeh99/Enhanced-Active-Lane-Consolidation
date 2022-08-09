//
// Created by rouzbeh on 7/25/22.
//

#include "SVE_Vectorizer.h"

#include <utility>
#include <stack>


SVE_Vectorizer::SVE_Vectorizer(Loop *l, int vectorizationFactor, std::vector<Value *> preds) : L(l),
                                                                                               vectorizationFactor(
                                                                                                       vectorizationFactor),
                                                                                               predicates(preds) {
    L = l;
    vectorizationFactor = vectorizationFactor;
    module = L->getBlocks().front()->getParent()->getParent();
    predicates = preds;

    // TODO: how to determine targeted block?
    targetedBB = getTargetedBB();

    insertionPoint = targetedBB->getTerminator();
    predicateVector = formPredicateVector();
}


void SVE_Vectorizer::doVectorization() {

    std::map<Value *, Value *> vMap;

    // Should be remove in FILO manner to prevent removing a value that is used in following lines
    std::stack<Instruction *> toBeRemoved;

    // TODO: Is there any case we could have PHI?
    // TODO: Complete the list
    // TODO: handle binary operation for doubles
    for (auto &instr: targetedBB->getInstList()) {
        if (isa<GEPOperator>(instr)) {
            continue;
        } else if (isa<StoreInst>(instr)) {
            auto storeInstr = dyn_cast<StoreInst>(&instr);
            // it's the value to be stored
            Value *firstOp = nullptr;
            if (vMap.count(storeInstr->getOperand(0))) {
                firstOp = vMap[storeInstr->getOperand(0)];
            } else {
                // TODO: can this happen?
            }
            auto ptr = dyn_cast<GEPOperator>(instr.getOperand(1));
            storeElements(firstOp, ptr);
            toBeRemoved.push(&instr);
        } else if (isa<LoadInst>(instr)) {
            auto loadInstr = dyn_cast<LoadInst>(&instr);

            auto ptr = dyn_cast<GEPOperator>(instr.getOperand(0));
            CallInst *loadedData = loadElements(ptr);
            vMap[&instr] = loadedData;
            toBeRemoved.push(&instr);
        } else if (isa<BinaryOperator>(instr)) {
            if (isa<MulOperator>(instr)) {
                Value *firstOp = nullptr;
                Value *secondOp = nullptr;
                if (vMap.count(instr.getOperand(0))) {
                    firstOp = vMap[instr.getOperand(0)];
                } else {
                    //TODO: ?????
                }

                if (vMap.count(instr.getOperand(1))) {
                    secondOp = vMap[instr.getOperand(1)];
                } else {
                    //TODO: ?????
                }
                auto intrinsic = Intrinsic::aarch64_sve_mul;
                CallInst *multResult = insertArithmeticOrLogicalInstruction(intrinsic, firstOp, secondOp);
                vMap[&instr] = multResult;
                toBeRemoved.push(&instr);
            }
        }
    }

    while (!toBeRemoved.empty()) {
        toBeRemoved.top()->eraseFromParent();
        toBeRemoved.pop();
    }

}


Value *SVE_Vectorizer::formPredicateVector() {

    LLVMContext &context = L->getHeader()->getContext();
    IRBuilder<> builder(context);
    builder.SetInsertPoint(insertionPoint);

    VectorType *returnType = VectorType::get(Type::getInt1Ty(context), vectorizationFactor, true);

    Type *int1Ty = Type::getInt1Ty(context);
    Value *predicateHolder = UndefValue::get(returnType);

    for (int i = 0; i < vectorizationFactor; ++i) {
        Constant *index = Constant::getIntegerValue(int1Ty, llvm::APInt(1, i));
        predicateHolder = builder.CreateInsertElement(predicateHolder, predicates[i], index);
    }

    return predicateHolder;

}

CallInst *SVE_Vectorizer::createAllTruePredicates() {

    LLVMContext &context = L->getHeader()->getContext();
    IRBuilder<> builder(context);
    builder.SetInsertPoint(
            insertionPoint);// append to the end of block, before terminator

    auto intrinsic = Intrinsic::aarch64_sve_ptrue;
    VectorType *returnType = VectorType::get(Type::getInt1Ty(context), vectorizationFactor, true);
    Function *intrinsicFunction = Intrinsic::getDeclaration(module, intrinsic, returnType);
    llvm::Type *i32_type = llvm::IntegerType::getInt32Ty(context);
    llvm::Constant *constantInt = llvm::ConstantInt::get(i32_type, vectorizationFactor, true);
    return builder.CreateCall(intrinsicFunction, constantInt);
}

BasicBlock *SVE_Vectorizer::getLastHeaderCopy() const {
    BasicBlock *BB = L->getHeader();
    for (int i = 0; i < 2 * vectorizationFactor - 1; ++i) {
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
    // TODO: raise error
    return nullptr;
}

CallInst *SVE_Vectorizer::loadElements(GEPOperator *ptr) {

    LLVMContext &context = L->getHeader()->getContext();
    IRBuilder<> builder(context);
    builder.SetInsertPoint(insertionPoint);

    auto intrinsic = Intrinsic::aarch64_sve_ld1;
    VectorType *returnType = VectorType::get(Type::getInt32Ty(context), vectorizationFactor, true);
    Function *intrinsicFunction = Intrinsic::getDeclaration(module, intrinsic, returnType);


    std::vector<Value *> arguments;
    arguments.push_back(predicateVector);
    arguments.push_back(ptr);

    return builder.CreateCall(intrinsicFunction, ArrayRef<Value *>(arguments));


}

void SVE_Vectorizer::storeElements(Value *elementsVector, GEPOperator *ptr) {
    LLVMContext &context = L->getHeader()->getContext();
    IRBuilder<> builder(context);
    builder.SetInsertPoint(insertionPoint);

    auto intrinsic = Intrinsic::aarch64_sve_st1;


    VectorType *returnType = VectorType::get(Type::getInt32Ty(context), vectorizationFactor, true);
    Function *intrinsicFunction = Intrinsic::getDeclaration(module, intrinsic, returnType);


    std::vector<Value *> arguments;
    arguments.push_back(elementsVector);
    arguments.push_back(predicateVector);
    arguments.push_back(ptr);


    builder.CreateCall(intrinsicFunction, ArrayRef<Value *>(arguments));
}

// TODO: handle double types by changing return type and operands
CallInst *
SVE_Vectorizer::insertArithmeticOrLogicalInstruction(Intrinsic::ID intrinsic, Value *firstOp, Value *secondOp) {

    LLVMContext &context = L->getHeader()->getContext();
    IRBuilder<> builder(context);
    builder.SetInsertPoint(insertionPoint);

    VectorType *returnType = VectorType::get(Type::getInt32Ty(context), vectorizationFactor, true);
    Function *intrinsicFunction = Intrinsic::getDeclaration(module, intrinsic, returnType);

//    intrinsicFunction->print(outs());

    std::vector<Value *> arguments;
    arguments.push_back(predicateVector);
    arguments.push_back(firstOp);
    arguments.push_back(secondOp);

    return builder.CreateCall(intrinsicFunction, ArrayRef<Value *>(arguments));
}

Value *SVE_Vectorizer::getPredicateVector() const {
    return predicateVector;
}

Instruction *SVE_Vectorizer::getInsertionPoint() const {
    return insertionPoint;
}






