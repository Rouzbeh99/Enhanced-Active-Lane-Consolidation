//
// Created by rouzbeh on 8/8/22.
//
#include "../IntrinsicCallGenerator/IntrinsicCallGenerator.h"
#include "map"
#include "stack"
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/IntrinsicInst.h"
#include "llvm/IR/IntrinsicsAArch64.h"
#include "llvm/IR/PassManager.h"
#include "llvm/IR/ValueMap.h"
#include "llvm/Pass.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/Transforms/Utils/BasicBlockUtils.h"
#include "llvm/Transforms/Utils/Cloning.h"
#include "llvm/IR/Metadata.h"


#ifndef SIMPLE_ALC
#define SIMPLE_ALC

using namespace llvm;

class Simple_ALC {

private:
    Loop *L;
    IntrinsicCallGenerator *intrinsicCallGenerator;
    Module *module;
    int vectorizationFactor;
    LoopStandardAnalysisResults &AR;
    LoopInfo *LI;
    Value *tripCount;
    Type *TripCountTy;
    ScalarEvolution *SE;
    PHINode *VectorLoopIndex;
    Value *VectorLoopNextIndex = nullptr;
    Value *VectorizedStepValue;
    Value *NonVectorizedIterations;
    Value *VectorizedIterations;
    Value *StepVector;
    Value *IndexVectorOfFirstVector;
    Value *PredicatesOfFirstVector;
    Value *ActiveLanesInFirstVector;
    Value *IndexVectorOfSecondVector;
    Value *PredicatesOfSecondVector;
    Value *ActiveLanesInSecondVector;
    Value *ActiveLanesInBothVectors;
    Value *PermutedIndices;

private:
    Value *PermutedPredicates;
    Value *ActiveElementsInPermutedVector;
    Value *allTrue;
    Constant *ConstZeroVectorOfTripCountTy;
    PHINode *ScalarIV;
    BasicBlock *targetedBlock;
    std::vector<Instruction *> *sharedInstructions;

public:
    Simple_ALC(Loop *l, int vectorizationFactor,
               LoopStandardAnalysisResults &ar, Value *tripCount);

public:

    void doTransformation();

private:
    BasicBlock *findTargetedBlock();

private:
    void insertPermutationLogic(BasicBlock *insertAt, Value *&permutedZ0,
                                Value *&permutedPredicates);


private:
    BasicBlock *createEmptyBlock(const std::string &name,
                                 BasicBlock *insertBefore);

private:
    BasicBlock *createPreheaderForRemainingIterations();

private:
    void refinePreheader(BasicBlock *preVecBlock,
                         BasicBlock *preHeaderForRemaining);

private:
    void refinePreHeaderForRemaining(BasicBlock *preHeaderForRemaining,
                                     BasicBlock *middleBlock, Value *value);

private:
    Value *formPredicate(BasicBlock *decisionBlock,
                         BasicBlock *predicateHolderBlock,
                         Value *inductionVarInitialValue);

private:
    std::vector<Instruction *> *
    cloneInstructions(BasicBlock *From, BasicBlock *to, Value *VectorIndex);

private:
    bool usesInductionVar(Value *value, Value *inductionVar);

private:
    std::map<const Value *, const Value *> *vectorizeInstructions(
            std::vector<Instruction *> *instructions, BasicBlock *block,
            Value *indices, Value *VectorIndex, Value *predicates, bool isPermuted,
            bool isPredicated);

private:
    void fillALCHeaderBlock_simpleVersion(BasicBlock *alcHeader,
                                          BasicBlock *laneGatherBlock,
                                          BasicBlock *linearized,
                                          BasicBlock *preALC, BasicBlock *header);

private:
    void fillPreALCBlock_simpleVersion(BasicBlock *preALCBlock,
                                       BasicBlock *alcHeader);

private:
    void fillLaneGatherBlock_simpleVersion(BasicBlock *laneGather,
                                           BasicBlock *alcApplied);

private:
    void fillUniformBlock_simpleVersion(BasicBlock *uniformBlock,
                                        BasicBlock *latch,
                                        BasicBlock *toBeVectorizedBlock);

private:
    void fillLinearizedBlock_simpleVersion(BasicBlock *linearized,
                                           BasicBlock *newLatch,
                                           BasicBlock *toBeVectorizedBlock);

private:
    std::vector<Value *> *
    fillNewLatchBlock_simpleVersion(BasicBlock *newLatch, BasicBlock *alcHeader,
                                    BasicBlock *middleBlock,
                                    Value *totalVecIterations);

private:
    void fillMiddleBlock_simpleVersion(BasicBlock *middleBlock,
                                       BasicBlock *preheaderForRemaining,
                                       BasicBlock *exitBlock, Value *remResult);

private:
    std::vector<Instruction *> *
    findHeaderInstructionsRequiredInThenBlock(BasicBlock *header,
                                              BasicBlock *thenBlock);

private:
    void addBranchHint(BranchInst* branchInst);
private:
    Value *createVectorOfConstants(Value *value, IRBuilder<> &builder, std::string name);
};

#endif