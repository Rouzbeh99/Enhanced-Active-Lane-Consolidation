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
  Type *TripCountTy;
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
  Value *PermutedIndices;
  Value *PermutedPredicates;
  Value *ActiveElementsInPermutedVector;
  Value *allTrue;
  Constant *ConstZeroVectorOfTripCountTy;
  PHINode *ScalarIV;
  BasicBlock *targetedBlock;
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
  void insertPermutationLogic(BasicBlock *insertAt, Value *&permutedZ0,
                              Value *&permutedPredicates);

private:
  Value *computeTripCount(BasicBlock *latch, Value *inductionVar);

private:
  BasicBlock *createEmptyBlock(const std::string &name,
                               BasicBlock *insertBefore);

private:
  BasicBlock *createPreheaderForRemainingIterations();

private:
  void refinePreheader(BasicBlock *preVecBlock,
                       BasicBlock *preHeaderForRemaining);

private:
  std::vector<Value *> *fillPreALCBlock_newVersion(BasicBlock *preALCBlock,
                                                   BasicBlock *preheader,
                                                   BasicBlock *alcHeader);

private:
  Value *createVectorOfConstants(Value *value, IRBuilder<> &builder,
                                 std::string name);

private:
  void fillMiddleBlock_newVersion(BasicBlock *middleBlock,
                                  BasicBlock *preheaderForRemaining,
                                  BasicBlock *exitBlock, Value *remResult,
                                  Value *uniformVec,
                                  Value *uniformVecPredicates);

private:
  void fillALCHeaderBlock_newVersion(
      BasicBlock *alcHeader, BasicBlock *laneGatherBlock,
      BasicBlock *linearized, BasicBlock *preALC,
      std::vector<Value *> *initialValues, BasicBlock *header);

private:
  void fillLaneGatherBlock_newVersion(BasicBlock *laneGather,
                                      BasicBlock *alcApplied,
                                      BasicBlock *joinBlock);

private:
  std::vector<Value *> *
  fillUniformBlock_newVersion(BasicBlock *uniformBlock, BasicBlock *joinBlock,
                              BasicBlock *toBeVectorizedBlock,
                              BasicBlock *header, Value *indices,
                              Value *indexPhi);

private:
  void fillLinearizedBlock_newVersion(BasicBlock *linearized,
                                      BasicBlock *newLatch,
                                      BasicBlock *toBeVectorizedBlock,
                                      Value *indexVec, Value *predicates);

private:
  std::vector<Value *> *
  fillJoinBlock(BasicBlock *joinBlock, BasicBlock *newLatch,
                BasicBlock *uniformBlock, BasicBlock *laneGather,
                Value *headerIndex, std::vector<Value *> *uniformBlockOutputs);

private:
  std::vector<Value *> *fillNewLatchBlock_newVersion(
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
      bool isPredicated,
      std::map<const Value *, const Value *> *headerInstructionsMap);

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
};

#endif // SVE_PERMUTE_SVE_PERMUTE_H
