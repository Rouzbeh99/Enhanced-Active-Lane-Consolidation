

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

    CallInst *createAllTruePredicates(Instruction *insertionPoint);

    CallInst *createCompactInstruction(Instruction *insertionPoint, Value *toBeCompacted, Value *predicatedVector);

    Value *createNotInstruction(Instruction *insertionPoint, Value *elements);

    CallInst *createCntpInstruction(Instruction *insertionPoint, Value *elements, Value *predicatedVector);

    CallInst *createWhileltInstruction(Instruction *insertionPoint, Value *firstOp, Value *secondOp);

    CallInst *createSpliceInstruction(Instruction *insertionPoint, Value *firstOp, Value *secondOp,
                                      Value *predicatedVector);

    CallInst *createSelInstruction(Instruction *insertionPoint, Value *firstOp, Value *secondOp,
                                   Value *predicatedVector);

    Value *createORInstruction(Instruction *insertionPoint, ArrayRef<Value *> elements);

    Value *createANDInstruction(Instruction *insertionPoint, ArrayRef<Value *> elements);

    CallInst *createIndexInstruction(Instruction *insertionPoint, Value *firstOp, Value *secondOp);

    Value *createAddInstruction(Instruction *insertionPoint, Value *firstOp, Value *secondOp);

    Value *createSubInstruction(Instruction *insertionPoint, Value *firstOp, Value *secondOp);

    CallInst *createGatherLoadInstruction(Instruction *insertionPoint, Value *ptr, Value *predicatedVector,
                                          Value *indices);

    CallInst *createLoadInstruction(Instruction *insertionPoint, Value *ptr, Value *predicatedVector);

    void createScatterStoreInstruction(Instruction *insertionPoint, Value *elementsVector, Value *ptr,
                                       Value *predicatedVector, Value *indices);

    void createStoreInstruction(Instruction *insertionPoint, Value *elementsVector, Value *ptr,
                                Value *predicatedVector);

    CallInst *createArithmeticInstruction(Instruction *insertionPoint, unsigned int intrinsic, Value *firstOp,
                                          Value *secondOp, Value *predicatedVector);

    CallInst *createVscale64Intrinsic(Instruction *insertionPoint);

    CallInst *createVscale32Intrinsic(Instruction *insertionPoint);

    CallInst *createStepVector64Intrinsic(Instruction *insertionPoint);

    CallInst *createStepVector32Intrinsic(Instruction *insertionPoint);


};

#endif