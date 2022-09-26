
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
#include "../IntrinsicCallGenerator/IntrinsicCallGenerator.h"
#include "map"

using namespace llvm;

class SVE_Vectorizer {
public:
    Loop *L;
    IntrinsicCallGenerator *intrinsicCallGenerator;
    int vectorizationFactor;
    LoopInfo *LI;

private:
    Module *module;


public:
    void doVectorization();

private:
    void vectorizeBlock(BasicBlock *block, Value *predicateVector);

private:
    bool is_a_condition_block(BasicBlock *block);

private:
    void refinePreheader(BasicBlock *preVecBlock, BasicBlock *preHeaderForRemaining);

private:
    BasicBlock *createPreVectorizationBlock();

private:
    Instruction *getTripCountInPreheader(BasicBlock *preheader);

private:
    BasicBlock *createPreheaderForRemainingIterations();

public:
    SVE_Vectorizer(Loop *l, int vectorizationFactor, LoopInfo *LI);


};


#endif //ALC_VECTORIZER_SVE_VECTORIZER_H
