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


        PreservedAnalyses run(Module &M, llvm::ModuleAnalysisManager &MAM) {
            Function *function = createNewFunction(&M, "foo");
            fillFunction(function);
            function->print(outs());

            return PreservedAnalyses::none();
        }

        Function *createNewFunction(Module *M, const std::string &name);

        void fillFunction(Function *function);
    };

}

Function *Test_Generator::createNewFunction(Module *M, const std::string &name) {
    std::vector<Type *> args(2, Type::getInt32PtrTy(M->getContext()));
    FunctionType *FT = FunctionType::get(Type::getInt32PtrTy(M->getContext()), args, false);
    Function *function = Function::Create(FT, Function::ExternalLinkage, name, M);
    return function;
}

void Test_Generator::fillFunction(Function *function) {
    BasicBlock *funcBody = BasicBlock::Create(function->getContext(), "func.body", function);
    ReturnInst::Create(function->getContext(), function->getArg(0), funcBody);
}

// registering the pass to new PM
extern "C" ::llvm::PassPluginLibraryInfo LLVM_ATTRIBUTE_WEAK

llvmGetPassPluginInfo() {
    return {
            LLVM_PLUGIN_API_VERSION, "generate-test", "v0.1",
            [](PassBuilder &PB) {
                PB.registerPipelineParsingCallback(
                        [](StringRef Name, ModulePassManager &MPM,
                           ArrayRef<PassBuilder::PipelineElement>) {
                            if (Name == "generate-test") {
                                MPM.addPass(Test_Generator());
                                return true;
                            }
                            return false;
                        }
                );
            }
    };
}