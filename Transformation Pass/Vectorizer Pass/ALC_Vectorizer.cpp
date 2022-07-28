#include "llvm/IR/IRBuilder.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/IR/PassManager.h"
#include "llvm/Transforms/Utils/Cloning.h"
#include "Unroller/Unroller.h"
#include "SVE_Vectorizer/SVE_Vectorizer.h"
#include "llvm/Analysis/LoopAnalysisManager.h"

using namespace llvm;

#define DEBUG_TYPE "alc-vectorizer"

namespace {
    struct alc_vectorizer : public llvm::PassInfoMixin<alc_vectorizer> {
        PreservedAnalyses run(Loop &loop, LoopAnalysisManager &AM,
                              LoopStandardAnalysisResults &AR, LPMUpdater &U);

    };

    void printLoop(Loop *L);




//-----------------------------------------------------------------------------
// alc_vectorizer implementation
//-----------------------------------------------------------------------------

    PreservedAnalyses alc_vectorizer::run(Loop &loop, LoopAnalysisManager &AM,
                                          LoopStandardAnalysisResults &AR, LPMUpdater &U) {
        Loop *L = &loop;

        if (L->getHeader()->getParent()->getName() == "main") {
            return PreservedAnalyses::all();
        }

        llvm::errs() << "Running on Loop" << '\n';
        const ArrayRef<BasicBlock *> &allBlocks = L->getBlocks();
        const DebugLoc &location = allBlocks.front()->getFirstNonPHIOrDbg()->getDebugLoc();
        llvm::outs() << "Loop at line number: " << location.getLine() - 1 << "\n";

        LoopInfo &LI = AR.LI;

        BasicBlock *initialLatch = L->getLoopLatch();


        auto *unroller = new Unroller(L, &LI);
        unroller->doUnrolling(4);
        //TODO: getting latch from loop returns wrong block

        auto *sve = new SVE_Vectorizer(L, 4);

        llvm::outs() << "---------------------------------------------------------------\n";
        for (auto predicate: unroller->getPredicates()) {
            predicate->print(outs());
            llvm::outs() << "\n";
        }
        
        llvm::outs() << "---------------------------------------------------------------\n";
        printLoop(L);

        //return (llvm::PreservedAnalyses::all());
        return llvm::PreservedAnalyses::none();
    }


    void printLoop(Loop *L) {

        for (auto BB: L->getBlocks()) {
            BB->print(outs());
        }

        llvm::outs() << "\n";
    }


}


extern "C" ::llvm::PassPluginLibraryInfo LLVM_ATTRIBUTE_WEAK

llvmGetPassPluginInfo() {
    return {
            LLVM_PLUGIN_API_VERSION, "alc-vectorizer", LLVM_VERSION_STRING,
            [](PassBuilder &PB) {
                PB.registerPipelineParsingCallback(
                        [](StringRef Name, LoopPassManager &LPM,
                           ArrayRef<PassBuilder::PipelineElement>) {
                            if (Name == "alc-vectorizer") {
                                LPM.addPass(alc_vectorizer());
                                return true;
                            }
                            return false;
                        }
                );
            }
    };
}

