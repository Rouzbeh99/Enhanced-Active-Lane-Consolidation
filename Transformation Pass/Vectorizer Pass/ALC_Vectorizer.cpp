#include "llvm/IR/IRBuilder.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/IR/PassManager.h"
#include "llvm/Pass.h"
#include <map>
#include <vector>
#include "llvm/IR/ValueMap.h"
#include "llvm/Transforms/Utils/Cloning.h"

using namespace llvm;

#define DEBUG_TYPE "alc-vectorizer"

namespace {
    struct alc_vectorizer : public llvm::PassInfoMixin<alc_vectorizer> {
        PreservedAnalyses run(Loop &loop, LoopAnalysisManager &AM,
                              LoopStandardAnalysisResults &AR, LPMUpdater &U);

        void unrollLoop(Loop *L);

    };

    void printInstructions(BasicBlock *BB);

    void checkCondition(BasicBlock *header);

    void doUnrolling(BasicBlock *header, BasicBlock *latch, int unrollFactor);

    void removeLastInstruction(BasicBlock *BB);

    Instruction *getLastInstruction(BasicBlock *BB);

    void insertBlockInstructions(BasicBlock *instructionHolder, BasicBlock *target);



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

        return (llvm::PreservedAnalyses::all());
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

        doUnrolling(header, latch, 2);

        printInstructions(header);


    }

    //////////////////////////////////////////////// Helper Functions /////////////////////////////////////////////////////////////////
    void printInstructions(BasicBlock *BB) {
        for (auto &instr: BB->getInstList()) {
            instr.print(errs());
            llvm::outs() << "\n";
        }
        llvm::outs() << "-----------------------------------\n";
    }


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
    void doUnrolling(BasicBlock *header, BasicBlock *latch, int unrollFactor) {

        ValueToValueMapTy tmp;
        BasicBlock *initialHeader = CloneBasicBlock(header, tmp);

        // first attach a latch to header
        ValueToValueMapTy VMap;
        BasicBlock *newBB = CloneBasicBlock(latch, VMap);
        removeLastInstruction(newBB);
        insertBlockInstructions(newBB, header);

        for (int i = 0; i < unrollFactor; ++i) {

            newBB = CloneBasicBlock(initialHeader, VMap);
            removeLastInstruction(newBB);
            insertBlockInstructions(newBB, header);

            if (i < unrollFactor - 1) {
                newBB = CloneBasicBlock(latch, VMap);
                removeLastInstruction(newBB);
                insertBlockInstructions(newBB, header);
            }
        }

    }
    

    void removeLastInstruction(BasicBlock *BB) {
        getLastInstruction(BB)->removeFromParent();
    }

    Instruction *getLastInstruction(BasicBlock *BB) {
        Instruction *instr = BB->getFirstNonPHI();
        while (instr->getNextNonDebugInstruction()) {
            instr = instr->getNextNonDebugInstruction();
        }
        return instr;
    }

    void insertBlockInstructions(BasicBlock *instructionHolder, BasicBlock *target) {
        Instruction *lastInstruction = getLastInstruction(target);
        for (auto &instr: instructionHolder->getInstList()) {
            if (isa<DbgInfoIntrinsic>(instr)) {
                continue;
            }
            Instruction *clonedInstr = instr.clone();
            clonedInstr->insertBefore(lastInstruction);
        }
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







