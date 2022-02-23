#include "llvm/IR/Function.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Analysis/LoopPass.h"
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/Analysis/DependenceAnalysis.h"
#include "llvm/Analysis/MemoryDependenceAnalysis.h"
#include "llvm/Analysis/LoopAccessAnalysis.h"
#include <map>

using namespace llvm;


#define DEBUG_TYPE "findDivergenceInLoop"


namespace {
    struct FindDivergenceInLoop : public LoopPass {

        static char ID;

        FindDivergenceInLoop() : LoopPass(ID) {}


        virtual bool runOnLoop(Loop *L, LPPassManager &LPM) override {

            //only apply the pass on innermost loop
            if (!L->getSubLoops().empty()) {
                return false;
            }


            llvm::outs() << "\nFunction:  " << L->getHeader()->getParent()->getName() << '\n';
            const ArrayRef<BasicBlock *> &allBlocks = L->getBlocks();
            const DebugLoc &location = allBlocks.front()->getFirstNonPHIOrDbg()->getDebugLoc();
            llvm::outs() << "Loop at line number: " << location.getLine() - 1 << "\n";
            llvm::outs() << "Number of basic Blocks: " << allBlocks.size() << '\n';

            //checking loop carried dependency
            DependenceInfo &dependenceInfo = getAnalysis<DependenceAnalysisWrapperPass>().getDI();


            if (containsLoopCarriedDependency(dependenceInfo, L)) {
                llvm::outs() << "Loop contains loop carried dependency" << '\n';
            } else {
                llvm::outs() << "Loop doesn't contain loop carried dependency" << '\n';
            }

            if (containsFunctionCall(L)) {
                llvm::outs() << "Loop contains function call" << '\n';
            } else {
                llvm::outs() << "Loop doesn't contain function call" << '\n';
            }


            BasicBlock *const &firstNode = L->getHeader();
            BasicBlock *const &loopLatch = L->getLoopLatch();  //supposing to have only one exiting node

            int numberOfPaths = 0;
            std::map<BasicBlock *const, bool> visited;

            countNumberOfPaths(firstNode, loopLatch, numberOfPaths, visited, allBlocks);
            llvm::outs() << "Number of paths: " << numberOfPaths << '\n';

            return false;
        }

        virtual void getAnalysisUsage(AnalysisUsage &AU) const {
            AU.addRequired<DependenceAnalysisWrapperPass>();
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


        static bool containsLoopCarriedDependency(DependenceInfo dependenceInfo, Loop *L) {

            const int BR_OPCODE = 2;

            const int STORE_OPCODE = 33;

            for (const auto &block: L->getBlocks()) {

                Instruction *instr = block->getFirstNonPHI();
                while (instr->getOpcode() != BR_OPCODE) {

                    if (!instr->mayReadOrWriteMemory()) {
                        instr = instr->getNextNonDebugInstruction();
                        continue;
                    }

                    for (const auto &innerBlock: L->getBlocks()) {

                        Instruction *innerInstr = innerBlock->getFirstNonPHI();

                        while (innerInstr->getOpcode() != BR_OPCODE) {

                            if (innerInstr == instr) {
                                innerInstr = innerInstr->getNextNonDebugInstruction();
                                continue;
                            }

                            const std::unique_ptr<Dependence> &dependency = dependenceInfo.depends(instr, innerInstr,
                                                                                                   false);
                            if (dependency && !dependency->isConfused()) {

                                bool thereIsAStore =
                                        instr->getOpcode() == STORE_OPCODE || innerInstr->getOpcode() == STORE_OPCODE;

                                if (!dependency->isLoopIndependent() && thereIsAStore) {
                                    llvm::outs() << "There is a dependency between " << instr->getOpcodeName()
                                                 << " and " << innerInstr->getOpcodeName() << "\n";

                                    return true;
                                }

                            }
                            innerInstr = innerInstr->getNextNonDebugInstruction();
                        }

                    }
                    instr = instr->getNextNonDebugInstruction();
                }
            }

            return false;
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
    };
}


char FindDivergenceInLoop::ID = 0;
static RegisterPass<FindDivergenceInLoop> X("findDivergenceInLoop", "Count number of opcode in a functions");

