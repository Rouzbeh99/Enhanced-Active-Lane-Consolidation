#include "llvm/IR/IRBuilder.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/IR/PassManager.h"
#include "llvm/Pass.h"
#include <map>
#include <vector>

using namespace llvm;

#define DEBUG_TYPE "alc-vectorizer"

namespace {
    struct alc_vectorizer : public llvm::PassInfoMixin<alc_vectorizer> {
        PreservedAnalyses run(Loop &loop, LoopAnalysisManager &AM,
                              LoopStandardAnalysisResults &AR, LPMUpdater &U);

        void unrollLoop(Loop *L);

    };

    void printInstructions(BasicBlock *BB);

    void printMap(std::multimap<Value *, Value *> *map);

    void fill_def_use_map(std::multimap<Value *, Value *> *def_use_map, Value *startValue, BasicBlock *header);

    void
    gatherLoopHeaderInstructions(BasicBlock *header, std::vector<Instruction *> *headerInstructions, PHINode **phiNode,
                                 BranchInst **branchInst);

    bool comesAfter(Instruction *parent, Instruction *child);




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

//        printInstructions(L->getHeader());


        return (llvm::PreservedAnalyses::all());
    }


    /**
     * Insights: All instructions in loop header should be unrolled. to get the proper value for induction variable, we need to
     * move its incrementation logic from loop latch to the loop header.
     *
     */
    void alc_vectorizer::unrollLoop(Loop *L) {

        //find the instruction that changes the value of induction variable
        std::vector<Instruction *> inductionVariableUpdateInstructions;

        BasicBlock *latch = L->getLoopLatch();
        for (const auto &instr: latch->getInstList()) {
            if (isa<BinaryOperator>(instr)) {
                inductionVariableUpdateInstructions.push_back(const_cast<Instruction *>(dyn_cast<Instruction>(&instr)));
            }
        }

        BasicBlock *header = L->getHeader();

        std::vector<Instruction *> headerInstructions;
        PHINode *phiNode = nullptr;
        BranchInst *branchInst = nullptr;

        // gathering all instructions in loop header to replicate for unrolling
        gatherLoopHeaderInstructions(header, &headerInstructions, &phiNode, &branchInst);



        // Generating code
        // Append to the existing Instructions of loop header, before branch instruction

        auto *loopInductionVariable = dyn_cast<Value>(phiNode);

        auto *def_use_map = new std::multimap<Value *, Value *>;

        // provide def_use information required for unrolling
        fill_def_use_map(def_use_map, dyn_cast<Value>(phiNode), header);

        printMap(def_use_map);

        // Unrolling logic

//        int unrollFactor = 2;
//        for (int i = 0; i < unrollFactor - 1; ++i) {
//
//            if (inductionVariableUpdateInstructions.size() > 1) {
//                //TODO: find out the case
//            } else {
//                Instruction *&instr = inductionVariableUpdateInstructions.front();
//
//                //duplicate
//                Instruction *newInst = instr->clone();
//                newInst->insertBefore(branchInst);
//            }
//
//            for (auto *instr: headerInstructions) {
//                Instruction *newInst = instr->clone();
//                newInst->insertBefore(branchInst);
//            }
//        }
//
//        // finally, branch instruction should be eliminated
//        // branchInst->removeFromParent();

    }

    //////////////////////////////////////////////// Helper Functions /////////////////////////////////////////////////////////////////
    void printInstructions(BasicBlock *BB) {
        for (auto &instr: BB->getInstList()) {
            instr.print(errs());
            llvm::outs() << "\n";
        }
    }

    void printMap(std::multimap<Value *, Value *> *map) {
        for (auto it: *map) {
            it.first->print(outs());
            llvm::outs() << " -----------used in----------> ";
            it.second->print(outs());
            llvm::outs() << "\n";

        }
    }

    void fill_def_use_map(std::multimap<Value *, Value *> *def_use_map, Value *startValue, BasicBlock *header) {



        // initialize def-use map
        for (auto use = startValue->use_begin(), ie = startValue->use_end(); use != ie; ++use) {

            auto *instr = dyn_cast<Instruction>(use->getUser());
            if (instr->getParent() == header) {
                def_use_map->insert({startValue, dyn_cast<Value>(instr)});
            }
        }


        std::vector<Value *> toBeReplacedValues;
        toBeReplacedValues.push_back(startValue);

        for (auto currentValue: toBeReplacedValues) {  // values that should be replaced
            for (auto &it: *def_use_map) {           // search for ALL elements matching with value in the multimap
                if (it.first == currentValue) {
                    Value *nextValue = it.second;             // value that should be replaced with
                    auto *currentInstr = dyn_cast<Instruction>(nextValue);
                    for (auto use = nextValue->use_begin(), ie = nextValue->use_end(); use != ie; ++use) {
                        auto *instr = dyn_cast<Instruction>(use->getUser());

                        // NOTE: only consider instruction that come AFTER startInstruction
                        if (instr->getParent() == header && comesAfter(currentInstr, instr)) {
                            def_use_map->insert({nextValue, dyn_cast<Value>(instr)});
                        }
                    }
                    toBeReplacedValues.push_back(nextValue);
                    toBeReplacedValues.erase(
                            toBeReplacedValues.begin()); // remove the first element which is currentValue
                }
            }
        }


    }

    void
    gatherLoopHeaderInstructions(BasicBlock *header, std::vector<Instruction *> *headerInstructions, PHINode **phiNode,
                                 BranchInst **branchInst) {
        for (const auto &instr: header->getInstList()) {

            // assumption: There is only one PHi node that is associated with induction variable
            if (isa<PHINode>(instr)) {

                *phiNode = const_cast<PHINode *>( dyn_cast<PHINode>(&instr));

            } else if (!isa<BranchInst>(instr)) {

                // TODO: exclude debug instructions
                headerInstructions->push_back(const_cast<Instruction *>(&instr));
            }

            if (isa<BranchInst>(instr)) {
                *branchInst = const_cast<BranchInst *>(dyn_cast<BranchInst>(&instr));

                Value *condition = dyn_cast<BranchInst>(&instr)->getCondition();

                // TODO: Should be moved to analysis pass
                if (isa<Constant>(condition)) {
                    llvm::outs() << "condition is constant" << "\n";
                } else {
                    llvm::outs() << "condition is not constant" << "\n";
                }

            }
        }
    }

    bool comesAfter(Instruction *parent, Instruction *child) {
        while (parent != child) {
            parent = parent->getNextNonDebugInstruction();

            if (!parent) {
                break;
            }

            if (parent == child) {
                return true;
            }

        }

        return false;
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







