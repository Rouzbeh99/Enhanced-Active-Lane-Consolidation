

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

#ifndef IntrinsicCallGenerator_H
#define IntrinsicCallGenerator_H

using namespace llvm;

class IntrinsicCallGenerator {

private:
    int VF;
    Module *M;

public:
    IntrinsicCallGenerator(int VF, Module *M) : VF(VF), M(M) {}

public:
    Value *createAllTruePredicates(IRBuilder<> &IRB);

    Value *createCompactInstruction(IRBuilder<> &IRB, Value *toBeCompacted,
                                    Value *predicatedVector);

    Value *createCntpInstruction(IRBuilder<> &IRB, Value *elements,
                                 Value *predicatedVector);

    Value *createWhileltInstruction(IRBuilder<> &IRB, Value *firstOp,
                                    Value *secondOp);

    Value *createSpliceInstruction(IRBuilder<> &IRB, Value *firstOp,
                                   Value *secondOp, Value *predicatedVector);

    Value *createSelInstruction(IRBuilder<> &IRB, Value *firstOp, Value *secondOp,
                                Value *predicatedVector);

    Value *createIndexInstruction(IRBuilder<> &IRB, Value *firstOp,
                                  Value *secondOp);

    Value *createGatherLoadInstruction(IRBuilder<> &IRB, Type *SrcTy, Value *ptr,
                                       Value *predicatedVector, Value *indices);

    Value *createLoadInstruction(IRBuilder<> &IRB, Type *SrcTy, Value *ptr,
                                 Value *predicatedVector, Type *IndexType);

    void createScatterStoreInstruction(IRBuilder<> &IRB, Value *elementsVector,
                                       Value *ptr, Value *predicatedVector,
                                       Value *indices);

    void createStoreInstruction(IRBuilder<> &IRB, Value *elementsVector,
                                Value *ptr, Value *predicatedVector);

    Value *createArithmeticInstruction(IRBuilder<> &IRB, unsigned int intrinsic,
                                       Value *firstOp, Value *secondOp,
                                       Value *predicatedVector);

    Value *createVscale64Intrinsic(IRBuilder<> &IRB);

    Value *createVscale32Intrinsic(IRBuilder<> &IRB);

    Value *createStepVector64Intrinsic(IRBuilder<> &IRB, std::string name);

    Value *createStepVector32Intrinsic(IRBuilder<> &IRB, std::string name);

    Value *createWhileloInstruction(IRBuilder<> &IRB, Value *LHSOp, Value *RHSOp);

    Value *createWhileleInstruction(IRBuilder<> &IRB, Value *LHSOp, Value *RHSOp);
};

#endif
