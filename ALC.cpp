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
#include "llvm/Analysis/OptimizationRemarkEmitter.h"
#include <map>

using namespace llvm;


#define DEBUG_TYPE "findDivergenceInLoop"


namespace {
    struct FindDivergenceInLoop : public PassInfoMixin<FindDivergenceInLoop> {


        PreservedAnalyses run(Loop &loop, LoopAnalysisManager &AM,
                              LoopStandardAnalysisResults &AR, LPMUpdater &U) {

            Loop *L = &loop;

            //only apply the pass on innermost loop
            if (!L->getSubLoops().empty()) {
                return PreservedAnalyses::all();
            }

            llvm::outs() << "\nFunction:  " << L->getHeader()->getParent()->getName() << '\n';
            const ArrayRef<BasicBlock *> &allBlocks = L->getBlocks();
            const DebugLoc &location = allBlocks.front()->getFirstNonPHIOrDbg()->getDebugLoc();
            llvm::outs() << "Loop at line number: " << location.getLine() - 1 << "\n";

            if (containsFunctionCall(L)) {
                llvm::outs() << "Loop contains function call" << '\n';
            } else {
                llvm::outs() << "Loop doesn't contain function call" << '\n';
            }

            if (containsMemoryDependency(loop, AM, AR)) {
                llvm::outs() << "Loop contains memory dependency" << '\n';
            } else {
                llvm::outs() << "Loop doesn't contain memory dependency" << '\n';
            }


            BasicBlock *const &firstNode = L->getHeader();
            BasicBlock *const &loopLatch = L->getLoopLatch();  //supposing to have only one exiting node

            int numberOfPaths = 0;
            std::map<BasicBlock *const, bool> visited;

            countNumberOfPaths(firstNode, loopLatch, numberOfPaths, visited, allBlocks);
            llvm::outs() << "Number of paths: " << numberOfPaths << '\n';


            return PreservedAnalyses::all();
        }


        void countNumberOfPaths(BasicBlock *const &src, BasicBlock *const &dest, int &path_count,
                                std::map<BasicBlock *const, bool> &visited, ArrayRef<BasicBlock *> allBlocks) {
            visited[src] = true;
            if (src == dest) {
                path_count++;
            } else {
                for (BasicBlock *succ: successors(src)) {
                    if (!visited[succ]) {
                        bool belongsToLoop = std::any_of(allBlocks.begin(), allBlocks.end(),
                                                         [&succ](BasicBlock *item) {
                                                             return item == succ;
                                                         });
                        if (belongsToLoop)
                            countNumberOfPaths(succ, dest, path_count, visited, allBlocks);
                    }
                }
            }
            visited[src] = false;
        }

        //Assumption: all blocks end with branch instruction
        static bool containsFunctionCall(Loop *L) {
            const int CALL_OPCODE = 56;
            const int BR_OPCODE = 2;

            for (const auto &block: L->getBlocks()) {

                Instruction *instr = block->getFirstNonPHIOrDbg();

                while (instr->getOpcode() != BR_OPCODE) {

                    if (instr->getOpcode() == CALL_OPCODE) {
                        return true;
                    }

                    instr = instr->getNextNonDebugInstruction();

                }

            }
            return false;
        }

        bool containsMemoryDependency(Loop &L, LoopAnalysisManager &AM,
                                      LoopStandardAnalysisResults &LAR) {

            AliasAnalysis *AA = &LAR.AA;
            ScalarEvolution *SE = &LAR.SE;
            DominatorTree *DT = &LAR.DT;
            LoopInfo *LI = &LAR.LI;
            const Function *F = L.getHeader()->getParent();
            OptimizationRemarkEmitter ORE(F);


            LoopAccessAnalysis::Result &info = AM.getResult<LoopAccessAnalysis>(L, LAR);


            return !info.canVectorizeMemory();

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



