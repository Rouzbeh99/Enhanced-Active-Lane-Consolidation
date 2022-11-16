
#ifndef ALC_VECTORIZER_SVE_VECTORIZER_H
#define ALC_VECTORIZER_SVE_VECTORIZER_H

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
#include "llvm/IR/Constants.h"
#include "../IntrinsicCallGenerator/IntrinsicCallGenerator.h"
#include "map"

using namespace llvm;

class SVE_Vectorizer {
public:
    Loop *L;
    IntrinsicCallGenerator *intrinsicCallGenerator;
    int vectorizationFactor;
    LoopStandardAnalysisResults &AR;
    LoopInfo *LI;
    Value *tripCount;
    ScalarEvolution *SE;
private:
    const PHINode *ScalarIV;
    PHINode *VectorIVPredicate;
    PHINode *VectorLoopIndex;
    Value *VectorizedTripCount;
    Value *VectorIVPredicateInit;
    Value *VectorIVInitializer;
    Value *VectorizedStepValue;
    Value *StepVector;
    Value *VectorizedIterations;
    Value *NonVectorizedIterations;

private:
    Module *module;


public:
    void doVectorization();

private:
    bool is_a_condition_block(BasicBlock *block);

private:
    BasicBlock *createPreVectorizationBlock(BasicBlock *vectorizingBlock);

private:
    void computeTripCount(BasicBlock *latch);

private:
    void fillPreVecBlock(BasicBlock *preVecBlock);

private:
    BasicBlock *createVectorizingBlock();

private:
    Value *formPredicateVector(IRBuilder<> &IRB, BasicBlock *decisionBlock, BasicBlock *vectorizingBlock,
                               BasicBlock *targetedBlock,
                               std::map<const Value *, const Value *> **outputVMap);

private:
    void vectorizeTargetedBlockInstructions(BasicBlock *vectorizingBlock, BasicBlock *targetedBlock,
                                            Value *predicates,
                                            std::map<const Value *, const Value *> *headerInstructionsMap);

private:
    void
    fillVectorizingBlock(BasicBlock *vectorizingBlock, BasicBlock *preVec,
                         BasicBlock *exitBlock);

private:
    Value *createVectorOfConstants(Value *value, IRBuilder<> &IRB, std::string name);

private:
    std::map<const Value *, const Value *> *
    vectorizeInstructions_nonePredicated(std::vector<Instruction *> *instructions, BasicBlock *block,
                                         ValueToValueMapTy &inputMap);

private:
    void vectorizeInstructions_Predicated(std::vector<Instruction *> *instructions, BasicBlock *block,
                                          Value *predicates,
                                          std::map<const Value *, const Value *> *headerInstructionsMap);

private:
    BasicBlock *findTargetedBlock();

public:
    SVE_Vectorizer(Loop *l, int vectorizationFactor, LoopStandardAnalysisResults &AR);


};


#endif //ALC_VECTORIZER_SVE_VECTORIZER_H
