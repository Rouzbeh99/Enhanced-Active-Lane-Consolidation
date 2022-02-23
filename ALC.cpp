#include "llvm/IR/Function.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Analysis/LoopPass.h"
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/Analysis/DependenceAnalysis.h"
#include "llvm/Analysis/MemoryDependenceAnalysis.h"
#include "llvm/Analysis/LoopAccessAnalysis.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/IR/PassManager.h"
#include <map>

using namespace llvm;


#define DEBUG_TYPE "findDivergenceInLoop"


namespace {
    struct FindDivergenceInLoop : public PassInfoMixin<FindDivergenceInLoop> {


        PreservedAnalyses run(Loop &L, LoopAnalysisManager &AM,
                              LoopStandardAnalysisResults &AR, LPMUpdater &U){


            llvm::outs() << L.getBlocks().front()->getFirstNonPHIOrDbg()->getDebugLoc().getLine() << "\n";
            
            return PreservedAnalyses::all();
        }


    };
}




// registering the pass to new PM
extern "C" ::llvm::PassPluginLibraryInfo LLVM_ATTRIBUTE_WEAK
llvmGetPassPluginInfo() {
    return {
            LLVM_PLUGIN_API_VERSION, "find-divergence-in-loop", "v0.1",
            [](PassBuilder &PB) {
                PB.registerPipelineParsingCallback(
                        [](StringRef Name, LoopPassManager &LPM,
                           ArrayRef<PassBuilder::PipelineElement>) {
                            if (Name == "find-divergence-in-loop") {
                                LPM.addPass(FindDivergenceInLoop());
                                return true;
                            }
                            return false;
                        }
                );
            }
    };
}



