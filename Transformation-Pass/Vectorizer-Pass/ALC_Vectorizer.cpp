#include "llvm/Analysis/LoopAnalysisManager.h"
#include "llvm/Analysis/ScalarEvolution.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/PassManager.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Passes/OptimizationLevel.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/Transforms/Utils/Cloning.h"
#include "Iterative_ALC/Iterative_ALC.h"
#include "Simple_ALC/Simple_ALC.h"
#include "SVE-Vectorizer/SVE_Vectorizer.h"
#include "ALC_Analysis/ALC_Analysis.h"

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



        llvm::outs() << "\n----------------------------------------------------------------\n";
        llvm::outs() << "In Function : " << L->getHeader()->getParent()->getName()
                     << "\n";
        const ArrayRef<BasicBlock *> &allBlocks = L->getBlocks();
        const DebugLoc &location =
                allBlocks.front()->getFirstNonPHIOrDbg()->getDebugLoc();
        if (location.isImplicitCode()) {
            llvm::outs() << "Implicit code, can't get location \n";
        } else {
            llvm::outs() << "Loop at line number: " << location.getLine() - 1 << "\n";
        }

        int factor = 4;

        auto *alc_analysis = new ALC_Analysis(L, AM, AR);
//        auto *sve_vectorizer = new SVE_Vectorizer(L, factor, AR);
//        auto *simple_alc = new Simple_ALC(L, factor, AR);
//        auto *alc_itr = new Iterative_ALC(L, factor, AR);


        alc_analysis->doAnalysis();
//        simple_alc->doTransformation();
//         sve_vectorizer->doVectorization();
//       alc_itr->doTransformation_itr_singleIf_simple();
//       alc_itr->doTransformation_itr_singleIf_nested();

//        printAllBlocks(L);

        delete alc_analysis;
//        delete simple_alc;
//        delete alc_itr;
//        delete sve_vectorizer;

        llvm::outs() << "\n";

        return llvm::PreservedAnalyses::none();
    }

    void printLoop(Loop *L) {

        for (auto *BB: L->getBlocks()) {
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

                PB.registerLoopOptimizerEndEPCallback(
                        [](LoopPassManager &LPM, OptimizationLevel OptLevel) {
                            LPM.addPass(alc_vectorizer());
                            return true;
                        });
            }};
}
