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

    Value *findLoopTripCount(Loop *L, int vectorizationFactor);

//-----------------------------------------------------------------------------
// alc_vectorizer implementation
//-----------------------------------------------------------------------------


    PreservedAnalyses alc_vectorizer::run(Loop &loop, LoopAnalysisManager &AM,
                                          LoopStandardAnalysisResults &AR,
                                          LPMUpdater &U) {

        Loop *L = &loop;

        if (L->getHeader()->getParent()->getName() == "main") {
            return llvm::PreservedAnalyses::all();
        }


        // only apply the pass on innermost loop
        if (!L->getSubLoops().empty()) {
            return llvm::PreservedAnalyses::all();
        }


        llvm::outs()
                << "\n----------------------------------------------------------------------------------------------------\n";
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

        auto *alc_analysis = new ALC_Analysis(L, AM, AR);
        ALCAnalysisResult *analysisResult = alc_analysis->doAnalysis();

        if (!analysisResult->isLegal1() || !analysisResult->isProfitable1()) {
            return PreservedAnalyses::all();
        }


        int factor = 4;

        Value *tripCount = findLoopTripCount(L, factor);

        if (!tripCount) {
            llvm::outs() << "Can not determine loop trip count or its type is not proper." << "\n";
            return PreservedAnalyses::all();
        }


        auto *sve_vectorizer = new SVE_Vectorizer(L, factor, AR);
        auto *simple_alc = new Simple_ALC(L, factor, AR, tripCount);
        auto *alc_itr = new Iterative_ALC(L, factor, AR, tripCount);

        llvm::outs() << "Applying iterative ALC \n";


        switch (analysisResult->getDivergenceType()) {
            case ALCAnalysisResult::SINGLE_IF :
               alc_itr->doTransformation_itr_singleIf_simple();
//                alc_itr->doTransformation_itr_singleIf_data_Permutation();
                break;
            case ALCAnalysisResult::IF_THEN_ELSE:
                alc_itr->doTransformation_itr_if_then_else();
//                alc_itr->doTransformation_itr_if_then_else_data_Permutation();
                break;

            case ALCAnalysisResult::MULTI_PATH:

                break;
        }


        llvm::outs() << "-------------------------------------------------------------------------\n";
        printLoop(L);


        delete alc_analysis;
        delete simple_alc;
        delete alc_itr;
        delete sve_vectorizer;


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

    Value *findLoopTripCount(Loop *L, int vectorizationFactor) {

        BasicBlock *latch = L->getLoopLatch();
        PHINode *inductionVar = L->getCanonicalInductionVariable();


        auto *brIns = dyn_cast<BranchInst>(latch->getTerminator());
        if (!brIns->isConditional()) {
            return nullptr;
        }
        auto *conditionInst = dyn_cast<Instruction>(brIns->getCondition());


        // one of the operands is the induction var and the other one is trip count
        for (int i = 0; i < conditionInst->getNumOperands(); ++i) {
            bool flag = false;
            for (auto user: inductionVar->users()) {
                if (user == conditionInst->getOperand(i)) {
                    flag = true;
                }
            }
            if (flag) {
                continue;
            } else {
                auto *TC = conditionInst->getOperand(i);
                auto *I32 = Type::getInt32Ty(TC->getContext());
                auto *I64 = Type::getInt64Ty(TC->getContext());
                if (vectorizationFactor == 4)
                    if (auto *ZExt = dyn_cast_or_null<ZExtInst>(TC))
                        if (ZExt->getSrcTy() == Type::getInt32Ty(TC->getContext()))
                            TC = ZExt->getOperand(0);
                if (TC->getType() != I32 && TC->getType() != I64) {
                    llvm::outs() << "TripCountTy is neither i32 nor i64." << "\n";
                    return nullptr;
                }
                return TC;
            }
        }

        return nullptr;
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
