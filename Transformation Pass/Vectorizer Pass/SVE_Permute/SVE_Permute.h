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

private:

    Loop *L;
    Module *module;
    int vectorizationFactor;
    BasicBlock *targetedBlock;
    LoopInfo *LI;
    BasicBlock* newLatch;
    Value *predicateVector;

    Value * permutedZ0;
    Value * permutedZ1;
    Value * permutedPredicates;


public:
    SVE_Permute(Loop *l, int vectorizationFactor, BasicBlock *targetedBlock, LoopInfo *LI, BasicBlock* newLatch, Value* predicateVector);


public:

  void doPermutation();

private:
    void formInitialPredicateVectors(int initialValue);

private:
    void insertPermutationLogic(Instruction* insertionPoint, Value *z0, Value *z1, Value *p0, Value *p1);

private:

    CallInst *createAllTruePredicates(Instruction* insertionPoint);

private:

    CallInst *createCompactInstruction(Instruction* insertionPoint, Value *toBeCompacted, Value *predicatedVector);

private:

    Value *createNotInstruction(Instruction* insertionPoint, Value *elements);

private:

    Value *createANDInstruction(Instruction* insertionPoint, ArrayRef<Value *> elements);

private:

    Value *createORInstruction(Instruction* insertionPoint, ArrayRef<Value *> elements);

private:

    CallInst *createCntpInstruction(Instruction* insertionPoint, Value *elements, Value *predicatedVector);

private:

    CallInst *createWhileltInstruction(Instruction* insertionPoint, Value *firstOp, Value *secondOp);

private:

    CallInst *createSpliceInstruction(Instruction* insertionPoint, Value *firstOp, Value *secondOp, Value *predicatedVector);

private:
    CallInst *createSelInstruction(Instruction* insertionPoint, Value *firstOp, Value *secondOp, Value *predicatedVector);

public:
    CallInst *createIndexInstruction(Instruction* insertionPoint, Value *firstOp, Value *secondOp);

private:
    Value *createAddInstruction(Instruction* insertionPoint, Value *firstOp, Value *secondOp);

private:
    Value *createSubInstruction(Instruction* insertionPoint, Value *firstOp, Value *secondOp);

private:

    BasicBlock *createBlockForPermutation(Function *F);

private:
   void refineLoopTripCountAndInitialValue();

};


#endif //SVE_PERMUTE_SVE_PERMUTE_H
