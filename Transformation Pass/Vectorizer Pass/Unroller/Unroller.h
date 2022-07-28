#ifndef ALC_VECTORIZER_UNROLLER_H
#define ALC_VECTORIZER_UNROLLER_H


#include "llvm/Analysis/LoopInfo.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/IR/PassManager.h"
#include "llvm/Pass.h"
#include "llvm/IR/ValueMap.h"
#include "llvm/Transforms/Utils/Cloning.h"
#include "llvm/Transforms/Utils/BasicBlockUtils.h"
#include "map"

using namespace llvm;

class Unroller {

private:
    Loop *L;
    LoopInfo *LI;
    std::vector<Value *> predicates;

public:
    const std::vector<Value *> &getPredicates() const;

public:
    Unroller(Loop *l, LoopInfo *li);

public:
    void doUnrolling(int unrollFactor);

private:
    void checkCondition(BasicBlock *header);

private:
    std::vector<BasicBlock *> *replicateBlocks(BasicBlock *header, BasicBlock *latch, Loop *L, int unrollFactor);

private:
    std::vector<Value *> *findPredicates(BasicBlock *initialLatch, int unrollFactor);

private:
    void refineCFG(std::vector<BasicBlock *> *newBlocks, BasicBlock *header, BasicBlock *latch, BasicBlock *thenBlock,
                   Loop *L);

private:
    BasicBlock *findAndRefineThenBlock(BasicBlock *header, BasicBlock *latch);

private:
    Value *findInductionVariableInLatch(BasicBlock *latch);

private:
    void removeRedundantInstructions(BasicBlock *initialLatch, int unrollFactor);

private:
    void
    mapNewPhiNodeInstructions(BasicBlock *BB, const std::map<Instruction *, int> &inductionVariableUsers,
                              PHINode *phiNode);


};

#endif

