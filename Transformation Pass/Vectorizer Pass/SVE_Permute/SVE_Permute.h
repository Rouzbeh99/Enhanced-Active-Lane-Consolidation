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
    BasicBlock *newLatch;
    std::vector<Value *> predicates;
    BasicBlock *headerPredecessor;

    Value *permutedZ0;
    Value *permutedZ1;
    Value *permutedPredicates;


public:
    SVE_Permute(Loop *l, int vectorizationFactor, LoopInfo *LI, BasicBlock *newLatch,
                std::vector<Value *> predicateVector);


public:

    void doTransformation();

private:
    void formInitialPredicateVectors(Value *inductionVariable, Value **firstPredicates, Value **secondPredicates,
                                     Value **firstVector, Value **secondVector);
    // returns last generated latch
private:
    BasicBlock *duplicateBlocksForInitialPredicateGeneration(Value *inductionVariable);

private:
    void insertPermutationLogic(Instruction *insertionPoint, Value *z0, Value *z1, Value *p0, Value *p1);

private:
    void doPermutation(Value *firstPredicates, Value *secondPredicates, Value *firstVector, Value *secondVector);

private:
    BasicBlock *findTargetedBB();

private:
    Value *formPredicateVector(BasicBlock *insertAt);

private:
    BasicBlock *getLastHeaderCopy();

private:

    CallInst *createAllTruePredicates(Instruction *insertionPoint);

private:

    CallInst *createCompactInstruction(Instruction *insertionPoint, Value *toBeCompacted, Value *predicatedVector);

private:

    Value *createNotInstruction(Instruction *insertionPoint, Value *elements);

private:

    Value *createANDInstruction(Instruction *insertionPoint, ArrayRef<Value *> elements);

private:

    Value *createORInstruction(Instruction *insertionPoint, ArrayRef<Value *> elements);

private:

    CallInst *createCntpInstruction(Instruction *insertionPoint, Value *elements, Value *predicatedVector);

private:

    CallInst *createWhileltInstruction(Instruction *insertionPoint, Value *firstOp, Value *secondOp);

private:

    CallInst *
    createSpliceInstruction(Instruction *insertionPoint, Value *firstOp, Value *secondOp, Value *predicatedVector);

private:
    CallInst *
    createSelInstruction(Instruction *insertionPoint, Value *firstOp, Value *secondOp, Value *predicatedVector);

public:
    CallInst *createIndexInstruction(Instruction *insertionPoint, Value *firstOp, Value *secondOp);

private:
    Value *createAddInstruction(Instruction *insertionPoint, Value *firstOp, Value *secondOp);

private:
    Value *createSubInstruction(Instruction *insertionPoint, Value *firstOp, Value *secondOp);

private:
    void refineLoopTripCount();

};


#endif //SVE_PERMUTE_SVE_PERMUTE_H
