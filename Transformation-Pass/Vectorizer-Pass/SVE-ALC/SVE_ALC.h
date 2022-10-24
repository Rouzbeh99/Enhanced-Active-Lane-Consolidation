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
    LoopStandardAnalysisResults &AR;
    LoopInfo *LI;
    Value *tripCount;
    ScalarEvolution *SE;


public:
    SVE_ALC(Loop *l, int vectorizationFactor, LoopStandardAnalysisResults &ar);

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

private:
    BasicBlock *findTargetedBlock();

private:
    Value *computeTripCount(BasicBlock *latch, Value *inductionVar);

private:
    BasicBlock *createEmptyBlock(const std::string &name, BasicBlock *insertBefore);

private:
    BasicBlock *createPreheaderForRemainingIterations();

private:
    void refinePreheader(BasicBlock *preVecBlock, BasicBlock *preHeaderForRemaining);

private:
    std::vector<Value *> *fillPreALCBlock(BasicBlock *preALCBlock, BasicBlock *preheader, BasicBlock *alcHeader);

private:
    Value *createVectorOfConstants(Value *value, IRBuilder<> &builder, std::string name);

private:
    void fillMiddleBlock(BasicBlock *middleBlock, BasicBlock *preheaderForRemaining, BasicBlock *exitBlock,
                         Value *remResult);

private:
    void
    fillALCHeaderBlock(BasicBlock *alcHeader, BasicBlock *laneGatherBlock, BasicBlock *linearized, BasicBlock *preALC,
                       std::vector<Value *> *initialValues);

private:
    void fillLaneGatherBlock(BasicBlock *laneGather, BasicBlock *alcApplied);

private:
    void fillALCAppliedBlock(BasicBlock *alcApplied, BasicBlock *newLatch);

private:
    void fillLinearizedBlock(BasicBlock *linearized, BasicBlock *newLatch);

private:
    void fillNewLatchBlock(BasicBlock *newLatch, BasicBlock *alcHeader, BasicBlock *middleBlock,
                           BasicBlock *preHeaderForRemaining, std::vector<Value *> *initialValues);

private:
    void refinePreHeaderForRemaining(BasicBlock *preHeaderForRemaining, BasicBlock *middleBlock, Value *value);

private:
    std::vector<Value *> *formInitialPredicates(BasicBlock *decisionBlock, BasicBlock *preAlc,
                                                Value *inductionVar);

private:
    bool usesInductionVar(Value *value, Value *inductionVar);

private:
    std::map<const Value *, const Value *> *
    vectorizeInstructions_nonePredicated(std::vector<Instruction *> *instructions, BasicBlock *block);

private:
    void refineInitialIndexVarPhi(BasicBlock ALCHeader, Value* initialValue);


};


#endif //SVE_PERMUTE_SVE_PERMUTE_H
