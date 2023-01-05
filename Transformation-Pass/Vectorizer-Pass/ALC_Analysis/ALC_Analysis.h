#include "llvm/IR/Function.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Analysis/LoopPass.h"
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/Analysis/DependenceAnalysis.h"
#include "llvm/Analysis/LoopAccessAnalysis.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/IR/PassManager.h"
#include "llvm/Analysis/OptimizationRemarkEmitter.h"
#include "llvm/Transforms/Vectorize/LoopVectorizationLegality.h"
#include <map>


using namespace llvm;


class ALC_Analysis {

private:
    Loop *L;
    LoopAnalysisManager &AM;
    LoopStandardAnalysisResults &LAR;


public:
    ALC_Analysis(Loop *l, LoopAnalysisManager &am, LoopStandardAnalysisResults &lar);

public:
    bool doAnalysis();

    void countNumberOfPaths(BasicBlock *const &src, BasicBlock *const &dest, int &path_count,
                            std::map<BasicBlock *const, bool> &visited, ArrayRef<BasicBlock *> allBlocks);

    bool containsFunctionCall();

    bool isVectorizable();

    bool containsOutputDependency();

};
