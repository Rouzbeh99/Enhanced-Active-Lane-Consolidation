#include <iomanip>
#include "ALC_Analysis.h"


ALCAnalysisResult *ALC_Analysis::doAnalysis() {

    int numberOfBlocks = L->getBlocks().size();
    bool hasFunctionCall = containsFunctionCall();
    bool vectorizable = isVectorizable();
    bool outputDependency = containsOutputDependency();
    bool canGetIV = true;


    const ArrayRef<BasicBlock *> &allBlocks = L->getBlocks();


    if (hasFunctionCall) {
        llvm::outs() << "Loop contains function call" << '\n';
    } else {
        llvm::outs() << "Loop doesn't contain function call" << '\n';
    }

    if (vectorizable) {
        llvm::outs() << "Loop doesn't contain memory dependency" << '\n';
    } else {
        llvm::outs() << "Loop contains memory dependency" << '\n';
    }

    if (outputDependency) {
        llvm::outs() << "Loop contains output dependency" << '\n';
    } else {
        llvm::outs() << "Loop doesn't contain output dependency" << '\n';
    }

    if (!L->getCanonicalInductionVariable()) {
        llvm::outs() << "Can't determine induction variable" << "\n";
        canGetIV = false;
    }




    BasicBlock *const &firstNode = L->getHeader();
    BasicBlock *const &loopLatch = L->getLoopLatch();  //supposing to have only one exiting node

    int numberOfPaths = 0;
    auto *allPaths = new std::vector<std::vector<BasicBlock *>>;
    BasicBlock *path[allBlocks.size()];
    std::map<BasicBlock *const, bool> visited;

    if (numberOfBlocks > 10) {
        numberOfPaths = -1;   // too many paths
        llvm::outs() << "number of blocks: " << numberOfBlocks << "\n";
    } else {
        int index = 0;
        countNumberOfPaths(firstNode, loopLatch, index, path, visited, allBlocks, allPaths);
        numberOfPaths = allPaths->size();

    }
    llvm::outs() << "Number of paths: " << numberOfPaths << "\n";
    bool isMemoryBound = false;
    int totalInstructions = 0;
    for (auto P: *allPaths) {
        for (auto BB: P) {
            llvm::outs() << BB->getName() << " --> ";
        }
        int memoryInstructions = countMemoryInstructions(&P);
        int blockInstructions = countInstructions(&P);
        totalInstructions += blockInstructions;

        if (blockInstructions < 1) {
            blockInstructions = 1;
        }

        llvm::outs() << " total instructions in the path: " << blockInstructions
                     << " , Memory instructions percentage: "
                     << (memoryInstructions * 100) / blockInstructions << "%"
                     << "\n";
        isMemoryBound |= ((memoryInstructions * 100) / blockInstructions > 40 && blockInstructions > 10);
    }

    bool isLegal = vectorizable && !hasFunctionCall && !outputDependency && numberOfPaths > 1 && canGetIV ;
    bool isProfitable = (totalInstructions > 15) && !isMemoryBound && (numberOfPaths == 2) ;

    ALCAnalysisResult::DIVERGENCE_TYPE type = isSingleIfCase() ? ALCAnalysisResult::DIVERGENCE_TYPE::SINGLE_IF
                                                               : ALCAnalysisResult::DIVERGENCE_TYPE::IF_THEN_ELSE;


    if (isLegal) {
        llvm::outs() << "ALC can be applied \n";
    } else {
        llvm::outs() << "ALC can NOT be applied \n";
    }

    return new ALCAnalysisResult(isLegal, isProfitable, type);

}

void ALC_Analysis::countNumberOfPaths(BasicBlock *const &src, BasicBlock *const &dest, int &index, BasicBlock *path[],
                                      std::map<BasicBlock *const, bool> &visited, ArrayRef<BasicBlock *> allBlocks,
                                      std::vector<std::vector<BasicBlock *>> *result) {


    visited[src] = true;
    path[index] = src;
    index++;

    if (src == dest) {
        std::vector<BasicBlock *> blocks;
        blocks.assign(path, path + index);
        result->push_back(blocks);
    } else {
        for (BasicBlock *succ: successors(src)) {
            if (!visited[succ]) {
                bool belongsToLoop = std::any_of(allBlocks.begin(), allBlocks.end(),
                                                 [&succ](BasicBlock *item) {
                                                     return item == succ;
                                                 });
                if (belongsToLoop)
                    countNumberOfPaths(succ, dest, index, path, visited, allBlocks, result);
            }
        }
    }
    visited[src] = false;
    index--;
}


bool ALC_Analysis::containsFunctionCall() {

    for (const auto &block: L->getBlocks()) {
        const Instruction *I = block->getFirstNonPHIOrDbg();
        for (const auto &instr: block->getInstList()) {
            if (I == nullptr) {
                break;
            }
            // to avoid debug instructions
            if (I != &instr) {
                continue;
            }

            if (isa<CallInst>(instr)) {
                Function *calledFunction = cast<CallInst>(instr).getCalledFunction();
                if (!calledFunction) {
                    return false; // Could not get function
                }
                if (cast<CallInst>(instr).getCalledFunction()->isIntrinsic()) { // it's an LLVM function
                    I = I->getNextNonDebugInstruction();
                    continue;
                }
                return true;
            }
            I = I->getNextNonDebugInstruction();
        }

    }
    return false;
}

bool ALC_Analysis::isVectorizable() {

    LoopAccessAnalysis::Result &info = AM.getResult<LoopAccessAnalysis>(*L, LAR);
    return info.canVectorizeMemory();

}


bool ALC_Analysis::containsOutputDependency() {

    // If this PHINode is not in the header block, then we know that we
    // can convert it to select during if-conversion.
    int counter = 0;

    for(auto BB: L->getBlocks()) {
        for (const auto &instr: BB->instructionsWithoutDebug()) {
            if (isa<PHINode>(instr)) {
                counter++;
            }
        }
    }
    return counter > 1;

}


bool ALC_Analysis::isSingleIfCase() {
    for (auto BB: successors(L->getHeader())) {
        if (BB == L->getLoopLatch()) {
            return true;
        }
    }
    return false;
}

bool ALC_Analysis::isPerfectIfNest() {

    //TODO: should check each then block to make sure there is nor instruction other than next if

    BasicBlock *latch = L->getLoopLatch();
    BasicBlock *BB = L->getHeader();

    while (true) {
        bool hasLatchSuccessor = false;
        BasicBlock *nextBB = BB;
        for (auto succ: successors(BB)) {
            if (succ == latch) {
                hasLatchSuccessor = true;
            } else {
                nextBB = succ;
            }
        }

        if (!hasLatchSuccessor) {
            return false;
        }

        if (nextBB == BB) {   // BB is the innermost if body
            return true;
        }

        BB = nextBB;

    }

}

int ALC_Analysis::countInstructions(std::vector<BasicBlock *> *path) {
    int result = 0;
    for (auto BB: *path) {
        if (BB == L->getLoopLatch()) {
            break;
        }
        for (auto &instr: BB->instructionsWithoutDebug()) {
            if (isa<PHINode>(instr)) {
                continue;
            }
            if (&instr == BB->getTerminator()) {
                break;
            }
            result++;
        }
    }

    return result;
}

int ALC_Analysis::countMemoryInstructions(std::vector<BasicBlock *> *path) {
    int memoryInst = 0;
    for (auto BB: *path) {
        if (BB == L->getLoopLatch()) {
            break;
        }
        for (auto &instr: BB->instructionsWithoutDebug()) {
            if (isa<PHINode>(instr)) {
                continue;
            }
            if (&instr == BB->getTerminator()) {
                break;
            }

            if (isa<LoadInst>(instr) || isa<StoreInst>(instr)) {
                memoryInst++;
            }
        }
    }
    return memoryInst;
}


ALC_Analysis::ALC_Analysis(Loop *l, LoopAnalysisManager &am, LoopStandardAnalysisResults &lar) : L(l), AM(am),
                                                                                                 LAR(lar) {}


ALCAnalysisResult::ALCAnalysisResult(bool isLegal, bool isProfitable, ALCAnalysisResult::DIVERGENCE_TYPE divergenceType)
        : isLegal(isLegal), isProfitable(isProfitable), divergenceType(divergenceType) {}

bool ALCAnalysisResult::isLegal1() const {
    return isLegal;
}

bool ALCAnalysisResult::isProfitable1() const {
    return isProfitable;
}

ALCAnalysisResult::DIVERGENCE_TYPE ALCAnalysisResult::getDivergenceType() const {
    return divergenceType;
}
