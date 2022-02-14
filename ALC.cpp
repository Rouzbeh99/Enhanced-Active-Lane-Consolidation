#include "llvm/IR/Function.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Analysis/LoopPass.h"
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/Analysis/DependenceAnalysis.h"
#include "llvm/Analysis/MemoryDependenceAnalysis.h"
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

            //checking loop carried dependency
            MemoryDependenceResults &MDA = getAnalysis<MemoryDependenceWrapperPass>().getMemDep();
            if (containsLoopCarriedDependency(&MDA, L)) {
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
            AU.addRequired<MemoryDependenceWrapperPass>();
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

        bool containsLoopCarriedDependency(MemoryDependenceResults *MDA, Loop *L) {
            for (const auto &block: L->getBlocks()) {
                for (const auto &I: block->getInstList()) {

                    auto *instr = const_cast<Instruction *>(&I);

                    if (!instr->mayWriteToMemory())
                        continue;

                    llvm::outs() << L->isLoopInvariant(instr) << '\n';

//                    auto* storeAddress = dyn_cast<ConstantInt>(instr->getOperand(1));
//                    int64_t storeAddressValue = 0;
//                    if (storeAddress) {
//                        if (storeAddress->getBitWidth() <= 64) {
//                            storeAddressValue = storeAddress->getSExtValue();
//                        }
//                       llvm::outs()<< storeAddress <<'\n';
//                    }
//                    llvm::outs()<<"store address is: "<<storeAddress <<'\n';


//                    MemDepResult Res = MDA->getDependency(instr);
//                    Instruction *loadInstr = Res.getInst();
//                    if (loadInstr == nullptr) {
//                        continue;
//                    }
//
//                    auto *loadAddress = dyn_cast<ConstantInt>(loadInstr->getOperand(0));
//                    int64_t loadAddressValue = 0;
//                    if (loadAddress) {
//                        if (loadAddress->getBitWidth() <= 64) {
//                            loadAddressValue = loadAddress->getSExtValue();
//                        }
//                    }
//                    llvm::outs() << "load address is: " << loadAddressValue << '\n';


                }
            }

            return false;
        }


        //Assumption: all blocks end with branch instruction
        bool containsFunctionCall(Loop *L) {
            const int CALL_OPCODE = 56;
            const int BR_OPCODE = 2;

            for (const auto &block: L->getBlocks()) {
                for (const auto &instr: block->getInstList()) {

                    if (instr.getOpcode() == BR_OPCODE) {
                        break;
                    }
                    if (instr.getOpcode() == CALL_OPCODE) {
                        return true;
                    }

                }

            }
            return false;
        }
    };
}


char FindDivergenceInLoop::ID = 0;
static RegisterPass<FindDivergenceInLoop> X("findDivergenceInLoop", "Count number of opcode in a functions");

