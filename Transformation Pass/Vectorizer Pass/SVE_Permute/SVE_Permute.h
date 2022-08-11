//
// Created by rouzbeh on 8/8/22.
//
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


#ifndef SVE_PERMUTE_SVE_PERMUTE_H
#define SVE_PERMUTE_SVE_PERMUTE_H

using namespace llvm;

class SVE_Permute {
public:

    Loop *L;
    Module *module;
    int vectorizationFactor;
    Instruction *insertionPoint;
    BasicBlock *targetedBlock;
    LoopInfo *LI;


    SVE_Permute(Loop *l, int vectorizationFactor, BasicBlock *targetedBlock, LoopInfo *LI);


public:

    void doPermutation(Value *z0, Value *z1, Value *p0, Value *p1);

private:

    CallInst *createAllTruePredicates();

private:

    CallInst *createCompactInstruction(Value *toBeCompacted, Value *predicatedVector);

private:

    Value *createNotInstruction(Value *elements);

private:

    Value *createANDInstruction(ArrayRef<Value *> elements);

private:

    Value *createORInstruction(ArrayRef<Value *> elements);

private:

    CallInst *createCntpInstruction(Value *elements, Value *predicatedVector);

private:

    CallInst *createWhileltInstruction(Value *firstOp, Value *secondOp);

private:

    CallInst *createSpliceInstruction(Value *firstOp, Value *secondOp, Value *predicatedVector);

private:
    CallInst *createSelInstruction(Value *firstOp, Value *secondOp, Value *predicatedVector);

public:
    CallInst* createIndexInstruction(Value* firstOp, Value* secondOp);

private:
    BasicBlock *createBlockForPermutation();

};


#endif //SVE_PERMUTE_SVE_PERMUTE_H
