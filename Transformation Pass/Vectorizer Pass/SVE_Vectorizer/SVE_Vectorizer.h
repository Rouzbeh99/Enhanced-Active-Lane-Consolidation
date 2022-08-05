
#ifndef ALC_VECTORIZER_SVE_VECTORIZER_H
#define ALC_VECTORIZER_SVE_VECTORIZER_H

#include "llvm/Analysis/LoopInfo.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/IntrinsicInst.h"
#include "llvm/IR/IntrinsicsAArch64.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/IR/PassManager.h"
#include "llvm/Pass.h"
#include "llvm/IR/ValueMap.h"
#include "llvm/Transforms/Utils/Cloning.h"
#include "llvm/Transforms/Utils/BasicBlockUtils.h"
#include "map"

using namespace llvm;

class SVE_Vectorizer {
public:
    Loop *L;

    SVE_Vectorizer(Loop *l, int vectorizingFactor);

    int vectorizingFactor;

private:
    Module *module;


public:

    void doVectorization(std::vector<Value *> predicates);

private:

    Value *formPredicateVector(std::vector<Value *> predicates, Instruction *insertionPoint);

private:

    CallInst *createAllTruePredicates(Instruction *insertionPoint);

private:

    CallInst *loadElements(Value *predicateVector, GEPOperator *ptr, Instruction *insertionPoint);

private:

    void storeElements(Value *elementsVector, Value *predicateVector, GEPOperator *ptr, Instruction *insertionPoint);

private:

    BasicBlock *getTargetedBB();

private:

    BasicBlock *getLastHeaderCopy() const;

private:

    CallInst* insertArithmeticOrLogicalInstruction(Intrinsic::ID intrinsic, Value *firstOp, Value *secondOp, Value *predicateVector, Instruction *insertionPoint);
};


#endif //ALC_VECTORIZER_SVE_VECTORIZER_H
