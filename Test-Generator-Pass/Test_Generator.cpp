//
// Created by rouzbeh on 9/19/22.
//

#include "llvm/IR/Function.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Analysis/LoopPass.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/IntrinsicInst.h"
#include "llvm/IR/PassManager.h"
#include "llvm/Analysis/OptimizationRemarkEmitter.h"
#include "llvm/Transforms/Vectorize/LoopVectorizationLegality.h"
#include "../IntrinsicCallGenerator/IntrinsicCallGenerator.h"

#define DEBUG_TYPE "generate-test"
using namespace llvm;

int VLength = 4;

namespace {


    struct Test_Generator : public PassInfoMixin<Test_Generator> {


        PreservedAnalyses run(Module &M, llvm::ModuleAnalysisManager &MAM) {

            Function *function = M.getFunction("foo");
            removeAllInstructionsFromFunction(function);

            fillFunction(function);
            formVectorsFromArrays(function, &M);


            function->print(outs());
            return PreservedAnalyses::none();
        }

        void removeAllInstructionsFromFunction(Function *function);

        void fillFunction(Function *function);

        void formVectorsFromArrays(Function *function, Module *module);

        void AddCallToGeneratedFunction(Module *module, Function *generatedFunction);

    };

}

void Test_Generator::removeAllInstructionsFromFunction(Function *function) {
    std::stack<Instruction *> instructionStack;
    for (auto &instr: function->getEntryBlock().getInstList()) {
        if (&instr == function->getEntryBlock().getTerminator()) {
            break;
        }
        instructionStack.push(&instr);
    }
    while (!instructionStack.empty()) {
        instructionStack.top()->eraseFromParent();
        instructionStack.pop();
    }
}

void Test_Generator::fillFunction(Function *function) {
    BasicBlock *funcBody = BasicBlock::Create(function->getContext(), "func.body", function);
    ReturnInst::Create(function->getContext(), funcBody);
}

void Test_Generator::formVectorsFromArrays(Function *function, Module *module) {
    VectorType *vecType = VectorType::get(Type::getInt32Ty(function->getContext()), VLength, true);


    Instruction *insertionPoint = function->getEntryBlock().getTerminator();
    auto *ptr1 = dyn_cast<Value>(function->getArg(0));
    auto *ptr2 = dyn_cast<Value>(function->getArg(1));
    auto *ptr3 = dyn_cast<Value>(function->getArg(2));

    auto *intrinsicCallGenerator = new IntrinsicCallGenerator(VLength, module);
    CallInst *allTrue = intrinsicCallGenerator->createAllTruePredicates(insertionPoint);

    CallInst *firstOp = intrinsicCallGenerator->createLoadInstruction(insertionPoint, ptr1, allTrue);
    CallInst *secondOp = intrinsicCallGenerator->createLoadInstruction(insertionPoint, ptr2, allTrue);
    auto intrinsic = Intrinsic::aarch64_sve_mul;
    CallInst *result = intrinsicCallGenerator->createArithmeticInstruction(insertionPoint, intrinsic, firstOp, secondOp,
                                                                           allTrue);
    intrinsicCallGenerator->createStoreInstruction(insertionPoint, result, ptr3, allTrue);

}

void Test_Generator::AddCallToGeneratedFunction(Module *module, Function *generatedFunction) {
    Function *mainFunction = module->getFunction("main");
    Instruction *insertionPoint = mainFunction->getEntryBlock().getTerminator();
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