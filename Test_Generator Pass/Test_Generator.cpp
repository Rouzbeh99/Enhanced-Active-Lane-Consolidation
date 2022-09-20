//
// Created by rouzbeh on 9/19/22.
//

#include "llvm/IR/Function.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Analysis/LoopPass.h"
#include "llvm/Analysis/DependenceAnalysis.h"
#include "llvm/Analysis/LoopAccessAnalysis.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/IR/PassManager.h"
#include "llvm/Analysis/OptimizationRemarkEmitter.h"
#include "llvm/Transforms/Vectorize/LoopVectorizationLegality.h"

#define DEBUG_TYPE "generate-test"
using namespace llvm;

namespace {

    struct Test_Generator : public PassInfoMixin<Test_Generator> {
        PreservedAnalyses run(Function &F, FunctionAnalysisManager &FM) {
            llvm::outs() << "Hello \n";

            return PreservedAnalyses::none();
        }
    };

}

// registering the pass to new PM
extern "C" ::llvm::PassPluginLibraryInfo LLVM_ATTRIBUTE_WEAK

llvmGetPassPluginInfo() {
    return {
            LLVM_PLUGIN_API_VERSION, "generate-test", "v0.1",
            [](PassBuilder &PB) {
                PB.registerPipelineParsingCallback(
                        [](StringRef Name, FunctionPassManager &FPM,
                           ArrayRef<PassBuilder::PipelineElement>) {
                            if (Name == "generate-test") {
                                FPM.addPass(Test_Generator());
                                return true;
                            }
                            return false;
                        }
                );
            }
    };
}