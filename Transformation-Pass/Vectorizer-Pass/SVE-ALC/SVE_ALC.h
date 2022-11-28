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
    PHINode *VectorLoopIndex;
    Value *VectorLoopNextIndex;
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
    Value *allTrue;
    Constant *ConstZeroOfIVTyVector;
    PHINode *ScalarIV;
    BasicBlock* targetedBlock;
    std::vector<Instruction *> *sharedInstructions;


public:
    SVE_ALC(Loop *l, int vectorizationFactor, LoopStandardAnalysisResults &ar);

public:

    void doTransformation_newVersion();

public:
    void doTransformation_simpleVersion();


private:
    BasicBlock *findTargetedBlock();

private:
    void
    insertPermutationLogic(BasicBlock *insertAt, Value *z0, Value *z1, Value *p0, Value *p1, Value *firstActives,
                           Value *bothActives,
                           Value **permutedZ0,
                           Value **permutedPredicates);

private:
    Value *computeTripCount(BasicBlock *latch, Value *inductionVar);

private:
    BasicBlock *createEmptyBlock(const std::string &name, BasicBlock *insertBefore);

private:
    BasicBlock *createPreheaderForRemainingIterations();

private:
    void refinePreheader(BasicBlock *preVecBlock, BasicBlock *preHeaderForRemaining);

private:
    std::vector<Value *> *
    fillPreALCBlock_newVersion(BasicBlock *preALCBlock, BasicBlock *preheader, BasicBlock *alcHeader);

private:
    Value *createVectorOfConstants(Value *value, IRBuilder<> &builder, std::string name);

private:
    void fillMiddleBlock_newVersion(BasicBlock *middleBlock, BasicBlock *preheaderForRemaining, BasicBlock *exitBlock,
                                    Value *remResult, Value *uniformVec, Value *uniformVecPredicates);

private:
    std::vector<Value *> *
    fillALCHeaderBlock_newVersion(BasicBlock *alcHeader, BasicBlock *laneGatherBlock, BasicBlock *linearized,
                                  BasicBlock *preALC,
                                  Value *initialPredicates,
                                  std::vector<Value *> *initialValues, BasicBlock *header);

private:
    std::vector<Value *> *
    fillLaneGatherBlock_newVersion(BasicBlock *laneGather, BasicBlock *alcApplied, BasicBlock *joinBlock, Value *z0,
                                   Value *z1,
                                   Value *p0, Value *p1,
                                   Value *firstActives,
                                   Value *bothActives);

private:
    std::vector<Value *> *
    fillUniformBlock_newVersion(BasicBlock *uniformBlock, BasicBlock *joinBlock, BasicBlock *toBeVectorizedBlock,
                                BasicBlock *header,
                                Value *indices, Value *indexPhi);

private:
    void fillLinearizedBlock_newVersion(BasicBlock *linearized, BasicBlock *newLatch, BasicBlock *toBeVectorizedBlock,
                                        Value *indexVec, Value *predicates);

private:
    std::vector<Value *> *
    fillJoinBlock(BasicBlock *joinBlock, BasicBlock *newLatch, BasicBlock *uniformBlock, BasicBlock *laneGather,
                  Value *headerIndex, std::vector<Value *> *laneGatherOutputs,
                  std::vector<Value *> *uniformBlockOutputs);

private:
    std::vector<Value *> *
    fillNewLatchBlock_newVersion(BasicBlock *newLatch, BasicBlock *alcHeader, BasicBlock *middleBlock,
                                 BasicBlock *joinBlock, BasicBlock *linearizedBlock,
                                 std::vector<Value *> *alcHeaderOutputs,
                                 std::vector<Value *> *joinBlockOutputs,
                                 Value *totalVecIterations);

private:
    void refinePreHeaderForRemaining(BasicBlock *preHeaderForRemaining, BasicBlock *middleBlock, Value *value);

private:
    Value *formPredicate(BasicBlock *decisionBlock, BasicBlock *predicateHolderBlock,
                         Value *inductionVarInitialValue);

private:
    std::vector<Instruction *> *
    cloneInstructions(BasicBlock *From, BasicBlock *to, Value *VectorIndex);

private:
    bool usesInductionVar(Value *value, Value *inductionVar);


private:
    std::map<const Value *, const Value *> * vectorizeInstructions(std::vector<Instruction *> *instructions, BasicBlock *block,
                               Value *indices, Value *VectorIndex,
                               Value *predicates, bool isPermuted, bool isPredicated,
                               std::map<const Value *, const Value *> *headerInstructionsMap);

private:
    void
    fillALCHeaderBlock_simpleVersion(BasicBlock *alcHeader, BasicBlock *laneGatherBlock, BasicBlock *linearized,
                                     BasicBlock *preALC, BasicBlock *header);

private:
    void fillPreALCBlock_simpleVersion(BasicBlock *preALCBlock, BasicBlock *alcHeader);

private:
    std::vector<Value *> *
    fillLaneGatherBlock_simpleVersion(BasicBlock *laneGather, BasicBlock *alcApplied, Value *z0,
                                      Value *z1, Value *p0, Value *p1,
                                      Value *firstActives,
                                      Value *bothActives);

private:
    void
    fillUniformBlock_simpleVersion(BasicBlock *uniformBlock, BasicBlock *latch, BasicBlock *toBeVectorizedBlock,
                                   Value *indices, Value *predicates);

private:
    void
    fillLinearizedBlock_simpleVersion(BasicBlock *linearized, BasicBlock *newLatch, BasicBlock *toBeVectorizedBlock,
                                      Value *firstPredicates, Value *secondPredicates);

private:
    std::vector<Value *> *
    fillNewLatchBlock_simpleVersion(BasicBlock *newLatch, BasicBlock *alcHeader, BasicBlock *middleBlock,
                                    Value *totalVecIterations);

private:
    void
    fillMiddleBlock_simpleVersion(BasicBlock *middleBlock, BasicBlock *preheaderForRemaining, BasicBlock *exitBlock,
                                  Value *remResult);

private:
    std::vector<Instruction*>* findHeaderInstructionsRequiredInThenBlock(BasicBlock* header, BasicBlock* thenBlock);


};


#endif //SVE_PERMUTE_SVE_PERMUTE_H
