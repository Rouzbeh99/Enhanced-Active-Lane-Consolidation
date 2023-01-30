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

#ifndef SVE_PERMUTE_SVE_PERMUTE_H
#define SVE_PERMUTE_SVE_PERMUTE_H

using namespace llvm;

class Iterative_ALC {

private:
    Loop *L;
    IntrinsicCallGenerator *intrinsicCallGenerator;
    Module *module;
    int vectorizationFactor;
    LoopStandardAnalysisResults &AR;
    LoopInfo *LI;
    DominatorTree *DT;
    std::vector<DominatorTree::UpdateType> DTUpdates;
    Value *tripCount;


private:
    Type *TripCountTy;
    ScalarEvolution *SE;
    PHINode *VectorLoopIndex;
    Value *VscaleFactor;
    Value *ActualVectorLength;
    Value *IndexVectorOfFirstVector;
    Value *PredicatesOfFirstVector;
    Value *ActiveLanesInFirstVector;
    Value *IndexVectorOfSecondVector;
    Value *PredicatesOfSecondVector;
    Value *ActiveLanesInSecondVector;
    Value *ActiveLanesInBothVectors;
    Value *MergedIndices;
    Value *MergedPredicates;
    Value *RemainingIndices;
    Value *RemainingPredicates;
    Value *ActiveElementsInPermutedVector;
    Value *allTrue;
    Constant *ConstZeroVectorOfTripCountTy;
    PHINode *ScalarIV;
    BasicBlock *thenBlock;
    BasicBlock *elseBlock;
    std::vector<Instruction *> *sharedInstructions;
    std::map<Instruction *, Instruction *> hoistedInstructions;

public:
    Iterative_ALC(Loop *l, int vectorizationFactor,
                  LoopStandardAnalysisResults &ar, Value *tripCount);

public:
    void doTransformation_itr_singleIf_simple();

    void doTransformation_itr_singleIf_full_permutation();

    void doTransformation_itr_if_then_else();

private:
    BasicBlock *findThenBlock(BasicBlock* header, BasicBlock* latch);

private:
    BasicBlock *findElseBlock(BasicBlock* header);

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
    std::vector<Value *> *fillPreALCBlock_itr(BasicBlock *preALCBlock,
                                              BasicBlock *preheader,
                                              BasicBlock *alcHeader);

private:
    Value *createVectorOfValues(Value *value, IRBuilder<> &builder,
                                std::string name);

private:
    void fillMiddleBlock_itr(BasicBlock *middleBlock,
                             BasicBlock *preheaderForRemaining,
                             BasicBlock *exitBlock, Value *remResult,
                             Value *uniformVec,
                             Value *uniformVecPredicates);

private:
    void fillALCHeaderBlock_itr(
            BasicBlock *alcHeader, BasicBlock *laneGatherBlock,
            BasicBlock *linearized, BasicBlock *preALC,
            std::vector<Value *> *initialValues, BasicBlock *header);

private:
    void fillLaneGatherBlock_itr(BasicBlock *laneGather,
                                 BasicBlock *alcApplied,
                                 BasicBlock *joinBlock);

private:
    std::vector<Value *> *
    fillUniformBlock_itr(BasicBlock *uniformBlock, BasicBlock *joinBlock,
                         BasicBlock *toBeVectorizedBlock,
                         BasicBlock *header, Value *indices,
                         Value *indexPhi);

private:
    void fillLinearizedBlock_itr(BasicBlock *linearized,
                                 BasicBlock *newLatch,
                                 BasicBlock *toBeVectorizedBlock,
                                 Value *indexVec, Value *predicates);

private:
    std::vector<Value *> *
    fillJoinBlock(BasicBlock *joinBlock, BasicBlock *newLatch,
                  BasicBlock *uniformBlock, BasicBlock *laneGather,
                  Value *headerIndex, std::vector<Value *> *uniformBlockOutputs);

private:
    std::vector<Value *> *fillNewLatchBlock_itr(
            BasicBlock *newLatch, BasicBlock *alcHeader, BasicBlock *middleBlock,
            BasicBlock *joinBlock, BasicBlock *linearizedBlock,
            std::vector<Value *> *joinBlockOutputs, Value *totalVecIterations);

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
    std::vector<Instruction *> *
    findHeaderAndPreheaderInstructionsRequiredInThenBlock(BasicBlock *header, BasicBlock *preheader,
                                                          BasicBlock *thenBlock);

private:
    void addBranchHint(BranchInst *branchInst);

private:
    void fillALCHeader_full_permutation(BasicBlock *alcHeader, BasicBlock *laneGatherBlock,
                                        BasicBlock *preALCBlock,
                                        std::vector<Value *> *initialValues, BasicBlock *header);

    void fillLaneGather_full_permutation(BasicBlock *laneGather, BasicBlock *uniformBlock, BasicBlock *latch);

    void insertPermutationLogic_full_permutation(BasicBlock *insertAt, Value *&permutedZ0, Value *&permutedZ1,
                                                 Value *&permutedP0, Value *&permutedP1);

    std::vector<Value *> *fillNewLatchBlock_full_permutation(
            BasicBlock *newLatch, BasicBlock *alcHeader, BasicBlock *middleBlock, BasicBlock *laneGather,
            BasicBlock *uniformBlock, Value *totalVecIterations);

    void
    fillUniformBlock_full_permutation(BasicBlock *uniformBlock, BasicBlock *latch,
                                      BasicBlock *toBeVectorizedBlock,
                                      BasicBlock *header, Value *indices);

    bool findIfAccessingSameMemAddress(GEPOperator *GEP);

    void fillHoistedInstructionsWithLoadsFromConstantMemoryAddress(BasicBlock *preALC);

};

#endif // SVE_PERMUTE_SVE_PERMUTE_H
