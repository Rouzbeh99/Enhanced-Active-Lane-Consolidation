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
    targetedBB = findTargetedBB();

    insertionPoint = targetedBB->getTerminator();
    predicateVector = formPredicateVector();
    intrinsicCallGenerator = new IntrinsicCallGenerator(l, vectorizationFactor);
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
            intrinsicCallGenerator->createStoreInstruction(insertionPoint, firstOp, ptr, predicateVector);
            toBeRemoved.push(&instr);
        } else if (isa<LoadInst>(instr)) {
            auto loadInstr = dyn_cast<LoadInst>(&instr);

            auto ptr = dyn_cast<GEPOperator>(instr.getOperand(0));
            CallInst *loadedData = intrinsicCallGenerator->createLoadInstruction(insertionPoint, ptr, predicateVector);
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
                CallInst *multResult = intrinsicCallGenerator->createArithmeticInstruction(insertionPoint, intrinsic,
                                                                                           firstOp, secondOp,
                                                                                           predicateVector);
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

    // predicates should be generated in the new latch
    Instruction *insertAt = targetedBB->getSinglePredecessor()->getTerminator();
    builder.SetInsertPoint(insertAt);

    VectorType *returnType = VectorType::get(Type::getInt1Ty(context), vectorizationFactor, true);

    Type *int1Ty = Type::getInt1Ty(context);
    Value *predicateHolder = UndefValue::get(returnType);

    for (int i = 0; i < vectorizationFactor; ++i) {
        Constant *index = Constant::getIntegerValue(int1Ty, llvm::APInt(1, i));
        predicateHolder = builder.CreateInsertElement(predicateHolder, predicates[i], index);
    }

    return predicateHolder;

}


BasicBlock *SVE_Vectorizer::findTargetedBB() {
    // TODO: make a complete analysis

    for (auto succ: successors(L->getHeader())) {
        if (succ != L->getLoopLatch()) {
            return succ;
        }
    }

    return nullptr;
}


Value *SVE_Vectorizer::getPredicateVector() const {
    return predicateVector;
}

Instruction *SVE_Vectorizer::getInsertionPoint() const {
    return insertionPoint;
}






