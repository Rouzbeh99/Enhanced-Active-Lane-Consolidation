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


class ALCAnalysisResult;

class ALC_Analysis {

private:
    Loop *L;
    LoopAnalysisManager &AM;
    LoopStandardAnalysisResults &LAR;


public:
    ALC_Analysis(Loop *l, LoopAnalysisManager &am, LoopStandardAnalysisResults &lar);

public:
    ALCAnalysisResult *doAnalysis();

    void countNumberOfPaths(BasicBlock *const &src, BasicBlock *const &dest, int &index, BasicBlock *path[],
                            std::map<BasicBlock *const, bool> &visited, ArrayRef<BasicBlock *> allBlocks,
                            std::vector<std::vector<BasicBlock *>> *result);

    bool containsFunctionCall();

    bool isVectorizable();

    bool containsOutputDependency();

    bool isSingleIfCase();

    bool isPerfectIfNest();

    int countInstructions(std::vector<BasicBlock *> *path);

    std::pair<int, int> *computeInstructionRatioInThePath(std::vector<BasicBlock *> *path);

};

class ALCAnalysisResult {

public:
    enum DIVERGENCE_TYPE {
        SINGLE_IF, IF_THEN_ELSE, MULTI_PATH
    };

private:
    bool isLegal;
    bool isProfitable;
    DIVERGENCE_TYPE divergenceType;


public:

    bool isLegal1() const;

    bool isProfitable1() const;

    DIVERGENCE_TYPE getDivergenceType() const;

public:

    ALCAnalysisResult(bool isLegal, bool isProfitable, DIVERGENCE_TYPE divergenceType);

};


