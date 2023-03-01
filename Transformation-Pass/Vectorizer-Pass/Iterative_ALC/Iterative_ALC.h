//
// Created by rouzbeh on 8/8/22.
//
#include "../IntrinsicCallGenerator/IntrinsicCallGenerator.h"
#include "map"
#include "stack"
#include <unordered_map>
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
    BasicBlock *preALCBlock;
    BasicBlock *middleBlock;
    BasicBlock *alcHeader;
    BasicBlock *laneGatherBlock;
    BasicBlock *uniformThenBlock;
    BasicBlock *uniformElseBlock;
    BasicBlock *newLatch;
    BasicBlock *linearizedThen;
    BasicBlock *linearizedElse;
    BasicBlock *joinBlock;
    BasicBlock *linearizedBlock;

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
    std::vector<LoadInst *> loadInstructionsToPermute;
    std::map<Instruction *, Instruction *> hoistedInstructions;
    bool dataPermutation;
    bool negatedCondition;
    std::map<Instruction *, PHINode *> headerLoadPhis;
    std::map<Value *, Value *> MergeLoadInstrMap;
    std::map<Value *, Value *> RemainingLoadInstrMap;

    std::map<Instruction*,Instruction*> joinBlockLoadPhis;

public:
    Iterative_ALC(Loop *l, int vectorizationFactor,
                  LoopStandardAnalysisResults &ar, Value *tripCount);

public:
    void doTransformation_itr_singleIf_simple();

    void doTransformation_itr_singleIf_data_Permutation();

    void doTransformation_itr_singleIf_full_permutation();

    void doTransformation_itr_if_then_else();

    void doTransformation_itr_if_then_else_data_Permutation();

private:
    BasicBlock *findThenBlock(BasicBlock *header, BasicBlock *latch);

private:
    BasicBlock *findElseBlock(BasicBlock *header);

private:
    void insertPermutationLogic(BasicBlock *insertAt);

    void insertPermutationLogic_singleIf_data_Permutation(BasicBlock *insertAt);

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
    std::map<Instruction*, Instruction*> *
    cloneInstructions(BasicBlock *From, BasicBlock *to, Value *VectorIndex, bool useSharedInstructions, std::vector<Instruction*>* instructionsOrder);


private:
    bool usesInductionVar(Value *value, Value *inductionVar);

private:
    std::map<const Value *, const Value *> *vectorizeInstructions(
            const std::map<Instruction *, Instruction *>* originalToClonedInstMap, std::vector<Instruction *>* instructionsOrder,
            BasicBlock *block,
            Value *indices, Value *VectorIndex, Value *predicates, bool isPermuted,
            bool isPredicated, bool predicateFormation);


private:
    std::vector<Instruction *> *
    findHeaderAndPreheaderInstructionsRequiredForALC(BasicBlock *header, BasicBlock *preheader);

private:
    void addBranchHint(BranchInst *branchInst);

private:
    void fillALCHeader_full_permutation(BasicBlock *alcHeader, BasicBlock *laneGatherBlock,
                                        BasicBlock *preALCBlock,
                                        std::vector<Value *> *initialValues, BasicBlock *header);

    void fillLaneGather_full_permutation(BasicBlock *laneGather, BasicBlock *uniformBlock, BasicBlock *latch);

    void insertPermutationLogic_full_permutation(BasicBlock *insertAt);

    std::vector<Value *> *fillNewLatchBlock_full_permutation(
            BasicBlock *newLatch, BasicBlock *alcHeader, BasicBlock *middleBlock, BasicBlock *laneGather,
            BasicBlock *uniformBlock, Value *totalVecIterations);

    void
    fillUniformBlock_full_permutation(BasicBlock *uniformBlock, BasicBlock *latch,
                                      BasicBlock *toBeVectorizedBlock,
                                      BasicBlock *header, Value *indices);

private:

    bool findIfAccessingSameMemAddress(GEPOperator *GEP);

    void fillHoistedInstructionsWithLoadsFromConstantMemoryAddress(BasicBlock *preALC);


private:

    void fillALCHeader_if_then_else(BasicBlock *alcHeader, BasicBlock *laneGatherBlock,
                                    BasicBlock *preALCBlock,
                                    std::vector<Value *> *initialValues, BasicBlock *header);

    void
    fillLaneGather_if_then_else(BasicBlock *laneGather, BasicBlock *uniformThenBlock, BasicBlock *uniformElseBlock,
                                bool hasDataPermutation);

    std::vector<Value *> *fillNewLatchBlock_if_then_else(
            BasicBlock *newLatch, BasicBlock *alcHeader, BasicBlock *joinBlock, BasicBlock *uniformThen,
            BasicBlock *uniformElseBlock, Value *totalVecIterations);

    void
    fillUniformThenBlock(BasicBlock *uniformThenBlock, BasicBlock *latch,
                         BasicBlock *toBeVectorizedBlock,
                         BasicBlock *header, Value *indices);

    void
    fillUniformElseBlock(BasicBlock *uniformElseBlock, BasicBlock *latch,
                         BasicBlock *toBeVectorizedBlock,
                         BasicBlock *header, Value *indices);

    void fillMiddleBlock_if_then_else(BasicBlock *middleBlock,
                                      BasicBlock *preheaderForRemaining,
                                      BasicBlock *exitBlock, Value *remResult);

    void fillLinearizedThen(BasicBlock *linearizedThen, BasicBlock *middleBlock);

    void fillLinearizedElse(BasicBlock *linearizedElse, BasicBlock *middleBlock);

    void fillJoinBlock_if_then_else(BasicBlock *linearizedThen, BasicBlock *linearizedElse, BasicBlock *JoinBlock,
                                    BasicBlock *middleBlock,
                                    Value *latchVector);

    ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    void findLoadInstructions();


    std::map<Instruction *, Instruction *> loadInstructionsInPreALC(BasicBlock *preALC);

    void loadInstructionsInHeader(BasicBlock *alcHeader);

    void addLoadInstructionPhisInHeader(BasicBlock *header, BasicBlock *preALC,
                                        std::map<Instruction *, Instruction *> &instructionsInPreAlcMap);

    void insertPermutationLogic_data_permutation(BasicBlock *insertAt);

    void
    addLoadPhisToLatch_if_then_else_data_Permutation(BasicBlock *newLatch, BasicBlock *alcHeader, BasicBlock *uniformThen, BasicBlock *uniformElse);

    void
    addLoadPhisToLatch_singleIf_data_Permutation(BasicBlock *newLatch, BasicBlock *alcHeader, BasicBlock *uniformThen, BasicBlock *LinearizedBlock);
};

#endif // SVE_PERMUTE_SVE_PERMUTE_H
