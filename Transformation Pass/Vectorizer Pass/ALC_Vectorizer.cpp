#include "llvm/IR/IRBuilder.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/IR/PassManager.h"
#include "llvm/Pass.h"
#include "llvm/IR/ValueMap.h"
#include "llvm/Transforms/Utils/Cloning.h"
#include "llvm/Transforms/Utils/BasicBlockUtils.h"

using namespace llvm;

#define DEBUG_TYPE "alc-vectorizer"

namespace {
    struct alc_vectorizer : public llvm::PassInfoMixin<alc_vectorizer> {
        PreservedAnalyses run(Loop &loop, LoopAnalysisManager &AM,
                              LoopStandardAnalysisResults &AR, LPMUpdater &U);

        void unrollLoop(Loop *L);

    };


    void checkCondition(BasicBlock *header);

    std::vector<BasicBlock *> *doUnrolling(BasicBlock *header, BasicBlock *latch, Loop *L, int unrollFactor);

    void removeLastInstruction(BasicBlock *BB);


    void refineCFG(std::vector<BasicBlock *> *newBlocks, BasicBlock *header, BasicBlock *latch);

    void printVMap(ValueToValueMapTy *VMap);

    void printLoop(BasicBlock *header);




//-----------------------------------------------------------------------------
// alc_vectorizer implementation
//-----------------------------------------------------------------------------

    PreservedAnalyses alc_vectorizer::run(Loop &loop, LoopAnalysisManager &AM,
                                          LoopStandardAnalysisResults &AR, LPMUpdater &U) {
        Loop *L = &loop;

        if (L->getHeader()->getParent()->getName() == "main") {
            return PreservedAnalyses::all();
        }

        llvm::outs() << "Running on Loop" << '\n';
        const ArrayRef<BasicBlock *> &allBlocks = L->getBlocks();
        const DebugLoc &location = allBlocks.front()->getFirstNonPHIOrDbg()->getDebugLoc();
        llvm::outs() << "Loop at line number: " << location.getLine() - 1 << "\n";

        unrollLoop(L);

        //return (llvm::PreservedAnalyses::all());
        return llvm::PreservedAnalyses::none();
    }


    /**
     * Insights: All instructions in loop header should be unrolled. to get the proper value for induction variable, we need to
     * move its incrementation logic from loop latch to the loop header.
     *
     */
    void alc_vectorizer::unrollLoop(Loop *L) {


        BasicBlock *header = L->getHeader();

        BasicBlock *latch = L->getLoopLatch();


        checkCondition(header);

        std::vector<BasicBlock *> *newBlocks = doUnrolling(header, latch, L, 3);

        refineCFG(newBlocks, header, latch);

        printLoop(header);


    }

    //////////////////////////////////////////////// Helper Functions /////////////////////////////////////////////////////////////////


    // TODO: Should be moved to analysis pass
    void checkCondition(BasicBlock *header) {
        for (const auto &instr: header->getInstList()) {

            if (isa<BranchInst>(instr)) {

                Value *condition = dyn_cast<BranchInst>(&instr)->getCondition();
                if (isa<Constant>(condition)) {
                    llvm::outs() << "condition is constant" << "\n";
                } else {
                    llvm::outs() << "condition is not constant" << "\n";
                }

            }
        }
    }


    // TODO: Assumption: Loop trip count is a Multiple of unrollFactor
    std::vector<BasicBlock *> *doUnrolling(BasicBlock *header, BasicBlock *latch, Loop *L, int unrollFactor) {

        auto *newBlocks = new std::vector<BasicBlock *>;

        std::vector<PHINode *> headerPhiNodes;

        for (BasicBlock::iterator I = header->begin(); isa<PHINode>(I); ++I) {
            headerPhiNodes.push_back(cast<PHINode>(I));
        }

        ValueToValueMapTy lastValueMap;

        BasicBlock *prevLatch = latch;
        BasicBlock *prevHeader = header;
        auto blockInsertPt = std::next(latch->getIterator());

        for (int i = 0; i < unrollFactor - 1; ++i) {

            SmallVector<BasicBlock *, 2> newlyGeneratedBlock;
            ValueToValueMapTy VMap;

            //////////////////////////////  ADD HEADER /////////////////////////////////////////////////
            auto newBB = CloneBasicBlock(prevHeader, VMap);
            header->getParent()->getBasicBlockList().insert(blockInsertPt, newBB);

            newlyGeneratedBlock.push_back(newBB);
            newBlocks->push_back(newBB);

            if (i == 0) {
                for (PHINode *OrigPHI: headerPhiNodes) {
                    auto *newPHI = cast<PHINode>(VMap[OrigPHI]);
                    Value *inVal = newPHI->getIncomingValueForBlock(latch);
                    VMap[OrigPHI] = inVal;                           // replace phi node with its value coming from latch
                    newBB->getInstList().erase(newPHI);
                }
            }

            // fill lastValueMap with VMap
            for (ValueToValueMapTy::iterator VI = VMap.begin(), VE = VMap.end();
                 VI != VE; ++VI) {
                lastValueMap[VI->first] = VI->second;
            }


            prevHeader = newBB;
            ///////////////////////////////// ADD LATCH //////////////////////////////////////////////

            newBB = CloneBasicBlock(prevLatch, VMap);
            header->getParent()->getBasicBlockList().insert(blockInsertPt, newBB);
            newlyGeneratedBlock.push_back(newBB);
            newBlocks->push_back(newBB);

            // fill lastValueMap with VMap
            for (ValueToValueMapTy::iterator VI = VMap.begin(), VE = VMap.end();
                 VI != VE; ++VI) {
                lastValueMap[VI->first] = VI->second;
            }

            prevLatch = newBB;

            // Remap all instructions in the most recent iteration
            remapInstructionsInBlocks(newlyGeneratedBlock, lastValueMap);

        }

        llvm::outs() << "-------------------------------------------------------------" << "\n";
        return newBlocks;
    }

    void refineCFG(std::vector<BasicBlock *> *newBlocks, BasicBlock *header, BasicBlock *latch) {

        // blocks that used to branch to latch should now branch to header


        // header should branch to latch
        header->getTerminator()->eraseFromParent();
        for (auto succ: successors(header)) {
            succ->removePredecessor(header);
        }
        llvm::BranchInst::Create(latch, header);

        //then latch branches to the first generated block
        for (auto succ: successors(latch)) {
            succ->removePredecessor(latch);
        }
        latch->getTerminator()->eraseFromParent();
        llvm::BranchInst::Create(newBlocks->front(), latch);


        // let new blocks point to each other
        for (auto it = newBlocks->begin(); it != newBlocks->end(); ++it) {

            // last block should have its branch instruction
            if ((*it) != newBlocks->back()) {
                for (auto succ: successors(*it)) {
                    succ->removePredecessor(*it);
                }
                (*it)->getTerminator()->eraseFromParent();
                llvm::BranchInst::Create(*(it + 1), *it);
            }

        }

        // Finally, blocks (then blocks) that used to branch to latch should now branch to header
        for (auto BB: predecessors(latch)) {
            if (BB == header) {
                continue;
            }
            BB->getTerminator()->replaceSuccessorWith(latch, header);
        }


        int count = 0;


    }


    void printVMap(ValueToValueMapTy *VMap) {
        llvm::outs() << "------------------------------------------------------------------------------------------ \n";
        for (auto pair: *VMap) {
            if (isa<DbgInfoIntrinsic>(pair.first)) {
                continue;
            }
            pair.first->print(outs());
            llvm::outs() << " ----------------> ";
            pair.second->print(outs());
            llvm::outs() << "\n";
        }
        llvm::outs() << "------------------------------------------------------------------------------------------ \n";
    }

    void printLoop(BasicBlock *header) {

        BasicBlock *BB = header;
        while (BB) {
            BB->print(outs());
            BB = BB->getNextNode();
        }

        llvm::outs() << "\n";
    }


}


extern "C" ::llvm::PassPluginLibraryInfo LLVM_ATTRIBUTE_WEAK

llvmGetPassPluginInfo() {
    return {
            LLVM_PLUGIN_API_VERSION, "alc-vectorizer", LLVM_VERSION_STRING,
            [](PassBuilder &PB) {
                PB.registerPipelineParsingCallback(
                        [](StringRef Name, LoopPassManager &LPM,
                           ArrayRef<PassBuilder::PipelineElement>) {
                            if (Name == "alc-vectorizer") {
                                LPM.addPass(alc_vectorizer());
                                return true;
                            }
                            return false;
                        }
                );
            }
    };
}







