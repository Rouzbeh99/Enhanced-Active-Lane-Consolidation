#include "SVE-ALC/SVE_ALC.h"
#include "SVE-Vectorizer/SVE_Vectorizer.h"
#include "Unroller/Unroller.h"
#include "llvm/Analysis/LoopAnalysisManager.h"
#include "llvm/Analysis/ScalarEvolution.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/PassManager.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/Transforms/Utils/Cloning.h"

using namespace llvm;

#define DEBUG_TYPE "alc-vectorizer"

namespace {
    struct alc_vectorizer : public llvm::PassInfoMixin<alc_vectorizer> {
        PreservedAnalyses run(Loop &loop, LoopAnalysisManager &AM,
                              LoopStandardAnalysisResults &AR, LPMUpdater &U);
    };

    void printLoop(Loop *L);

    void printBeforeLoopBlocks(Loop *L);

    void printAllBlocks(Loop *L);

//-----------------------------------------------------------------------------
// alc_vectorizer implementation
//-----------------------------------------------------------------------------

// TODO: TSVC tests are changed to int, make the pass work for float as well

    PreservedAnalyses alc_vectorizer::run(Loop &loop, LoopAnalysisManager &AM,
                                          LoopStandardAnalysisResults &AR,
                                          LPMUpdater &U) {

        Loop *L = &loop;

        if (L->getHeader()->getParent()->getName() == "main") {
            return PreservedAnalyses::all();
        }

        // only apply the pass on innermost loop
        if (!L->getSubLoops().empty()) {
            return PreservedAnalyses::all();
        }

        llvm::outs() << "In Function : " << L->getHeader()->getParent()->getName()
                     << "\n";
        const ArrayRef<BasicBlock *> &allBlocks = L->getBlocks();
        const DebugLoc &location =
                allBlocks.front()->getFirstNonPHIOrDbg()->getDebugLoc();
        llvm::outs() << "Loop at line number: " << location.getLine() - 1 << "\n";

        BasicBlock *initialLatch = L->getLoopLatch();

        int factor = 4;

        auto *sve_alc = new SVE_ALC(L, factor, AR);
        auto *sve_vectorizer = new SVE_Vectorizer(L, factor, AR);

        // sve_vectorizer->doVectorization();
       sve_alc->doTransformation_newVersion();
//        sve_alc->doTransformation_simpleVersion();

        printAllBlocks(L);

        return llvm::PreservedAnalyses::none();
    }

    void printLoop(Loop *L) {

        for (auto BB: L->getBlocks()) {
            BB->print(outs());
        }
        llvm::outs() << "\n";
    }

    void printAllBlocks(Loop *L) {

        for (auto &BB: L->getHeader()->getParent()->getBasicBlockList()) {
            BB.print(outs());
        }
        llvm::outs() << "\n";
    }

    void printBeforeLoopBlocks(Loop *L) {
        for (auto &BB: L->getHeader()->getParent()->getBasicBlockList()) {
            if (L->contains(&BB)) {
                continue;
            }
            BB.print(outs());
        }
        llvm::outs() << "\n";
    }

} // namespace

extern "C" ::llvm::PassPluginLibraryInfo LLVM_ATTRIBUTE_WEAK

llvmGetPassPluginInfo() {
    return {LLVM_PLUGIN_API_VERSION, "alc-vectorizer", LLVM_VERSION_STRING,
            [](PassBuilder &PB) {
                PB.registerPipelineParsingCallback(
                        [](StringRef Name, LoopPassManager &LPM,
                           ArrayRef<PassBuilder::PipelineElement>) {
                            if (Name == "alc-vectorizer") {
                                LPM.addPass(alc_vectorizer());
                                return true;
                            }
                            return false;
                        });
            }};
}
