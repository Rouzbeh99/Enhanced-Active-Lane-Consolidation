#include "llvm/IR/Function.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Analysis/LoopPass.h"
#include "llvm/Analysis/LoopInfo.h"
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
            llvm::outs() << "depth " << L->getLoopDepth() << '\n';
            const ArrayRef<BasicBlock *> &allBlocks = L->getBlocks();
            llvm::outs() << "Number of basic Blocks: " << allBlocks.size() << '\n';

            BasicBlock *const &firstNode = L->getHeader();
            BasicBlock *const &loopLatch = L->getLoopLatch();  //supposing to have only one exiting node

            int numberOfPaths = 0;
            std::map<BasicBlock *const, bool> visited;

            countNumberOfPaths(firstNode, loopLatch, numberOfPaths, visited, allBlocks);
            llvm::outs() << "Number of paths: " << numberOfPaths << '\n';

            return false;
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

    };
}

char FindDivergenceInLoop::ID = 0;
static RegisterPass<FindDivergenceInLoop> X("findDivergenceInLoop", "Count number of opcode in a functions");

