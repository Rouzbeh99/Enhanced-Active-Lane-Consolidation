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
public:

    Loop* L;
    Module* module;
    int vectorizationFactor;
    Value* predicatedVector;
    Instruction* insertionPoint;

    SVE_Permute(Loop *l, int vectorizationFactor, Value *predicatedVector, Instruction* insertPoint);


public:
    void doPermutation();

private:
    CallInst *createAllTruePredicates();
};


#endif //SVE_PERMUTE_SVE_PERMUTE_H
