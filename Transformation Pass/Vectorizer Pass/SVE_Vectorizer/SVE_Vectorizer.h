
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
#include "../IntrinsicCallGenerator/IntrinsicCallGenerator.h"
#include "map"

using namespace llvm;

class SVE_Vectorizer {
public:
    Loop *L;
    Value *predicateVector;
    IntrinsicCallGenerator *intrinsicCallGenerator;
    BasicBlock *targetedBB;
    Instruction *insertionPoint;
    std::vector<Value *> predicates;
    int vectorizationFactor;

    SVE_Vectorizer(Loop *l, int vectorizationFactor, std::vector<Value *> predicates);

    Value *getPredicateVector() const;

    Instruction *getInsertionPoint() const;

private:
    Module *module;


public:

    void doVectorization();

private:
    BasicBlock *getTargetedBB() const;

private:

    Value *formPredicateVector();


private:

    BasicBlock *findTargetedBB();


};

BasicBlock *SVE_Vectorizer::getTargetedBB() const {
    return targetedBB;
}


#endif //ALC_VECTORIZER_SVE_VECTORIZER_H
