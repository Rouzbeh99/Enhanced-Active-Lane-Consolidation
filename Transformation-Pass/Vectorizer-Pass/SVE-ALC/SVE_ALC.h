//
// Created by rouzbeh on 8/8/22.
//
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/IntrinsicInst.h"
#include "llvm/IR/IntrinsicsAArch64.h"
#include "llvm/IR/IntrinsicsAArch64.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/IR/PassManager.h"
#include "llvm/Pass.h"
#include "llvm/IR/ValueMap.h"
#include "llvm/Transforms/Utils/Cloning.h"
#include "llvm/Transforms/Utils/BasicBlockUtils.h"
#include "../IntrinsicCallGenerator/IntrinsicCallGenerator.h"
#include "stack"
#include "map"


#ifndef SVE_PERMUTE_SVE_PERMUTE_H
#define SVE_PERMUTE_SVE_PERMUTE_H

using namespace llvm;

class SVE_ALC {

private:

    Loop *L;
    IntrinsicCallGenerator *intrinsicCallGenerator;
    Module *module;
    int vectorizationFactor;
    BasicBlock *targetedBlock;
    LoopInfo *LI;
    BasicBlock *newLatch;
    std::vector<Value *> predicates;


public:
    SVE_ALC(Loop *l, int vectorizationFactor, LoopInfo *LI, BasicBlock *newLatch,
            std::vector<Value *> predicateVector);


public:

    void doTransformation();

private:
    void formInitialPredicateVectors(Value *inductionVariable, Value **firstPredicates, Value **secondPredicates,
                                     Value **firstVector, Value **secondVector);
    // returns last generated block
private:
    BasicBlock *duplicateBlocksForInitialPredicateGeneration(Value *inductionVariable,
                                                             std::vector<Value *> *firstInitialPredicates,
                                                             std::vector<Value *> *secondInitialPredicates);

private:
    void
    insertPermutationLogic(Instruction *insertAt, Value *z0, Value *z1, Value *p0, Value *p1, Value **permutedZ0,
                           Value **permutedZ1, Value **permutedPredicates);

private:
    BasicBlock *doPermutation(Value *firstPredicates, Value *secondPredicates, Value *firstVector, Value *secondVector,
                              Value **permutedZ0,
                              Value **permutedZ1, Value **permutedPredicates);

private:
    BasicBlock *findTargetedBB();

private:
    void updateVectors(BasicBlock *insertAt, Value **indicesVector, Value **predicateVector, Value *inductionVariable);

    //returns latch phi node
private:
    PHINode *
    insertPhiNodsForVector(Value *updatedValue, Value *initialValue, BasicBlock *mainPath, BasicBlock *otherPath);


private:
    void makeBlockVectorized(BasicBlock *block, Value *predicateVector, Value *indices);

    //blocks contain scalar code
private:
    void fillBlock(BasicBlock *blockToBeFilled, const std::vector<BasicBlock *> &blocks);

private:
    void refineLoopConditionCheck();

private:
    void setInitialValueForInductionVariable();

private:
    BasicBlock *makeTemporaryCopyOfTheBlock(BasicBlock *block);

};


#endif //SVE_PERMUTE_SVE_PERMUTE_H
