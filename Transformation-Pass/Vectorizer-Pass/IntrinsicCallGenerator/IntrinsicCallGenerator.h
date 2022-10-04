

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
#include "stack"
#include "map"

#ifndef IntrinsicCallGenerator_H
#define IntrinsicCallGenerator_H


using namespace llvm;


class IntrinsicCallGenerator {

private:
    int vectorizationFactor;
    Module *module;
public:
    IntrinsicCallGenerator(int vectorizationFactor, Module *module1);

public:

    Value *createAllTruePredicates(IRBuilder<> &IRB);

    Value *createCompactInstruction(IRBuilder<> &IRB, Value *toBeCompacted, Value *predicatedVector);

    Value *createCntpInstruction(IRBuilder<> &IRB, Value *elements, Value *predicatedVector);

    Value *createWhileltInstruction(IRBuilder<> &IRB, Value *firstOp, Value *secondOp);

    Value *createSpliceInstruction(IRBuilder<> &IRB, Value *firstOp, Value *secondOp,
                                      Value *predicatedVector);

    Value *createSelInstruction(IRBuilder<> &IRB, Value *firstOp, Value *secondOp,
                                   Value *predicatedVector);

    Value *createIndexInstruction(IRBuilder<> &IRB, Value *firstOp, Value *secondOp);

    Value *createGatherLoadInstruction(IRBuilder<> &IRB, Value *ptr, Value *predicatedVector,
                                          Value *indices);

    Value *createLoadInstruction(IRBuilder<> &IRB, Value *ptr, Value *predicatedVector);

    void createScatterStoreInstruction(IRBuilder<> &IRB, Value *elementsVector, Value *ptr,
                                       Value *predicatedVector, Value *indices);

    void createStoreInstruction(IRBuilder<> &IRB, Value *elementsVector, Value *ptr,
                                Value *predicatedVector);

    Value *createArithmeticInstruction(IRBuilder<> &IRB, unsigned int intrinsic, Value *firstOp,
                                          Value *secondOp, Value *predicatedVector);

    Value* createVscale64Intrinsic(IRBuilder<> &IRB);

    Value* createVscale32Intrinsic(IRBuilder<> &IRB);

    Value* createStepVector64Intrinsic(IRBuilder<> &IRB);

    Value* createStepVector32Intrinsic(IRBuilder<> &IRB);

};

#endif
