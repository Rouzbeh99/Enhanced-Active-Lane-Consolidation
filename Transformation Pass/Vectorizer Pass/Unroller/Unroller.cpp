#include "Unroller.h"

using namespace llvm;

//TODO: handle the case where there is extra phi node associated with a variable define before loop and used after it
void Unroller::doUnrolling(int unrollFactor) {


    BasicBlock *header = L->getHeader();

    BasicBlock *latch = L->getLoopLatch();

    BasicBlock *thenBlock = findTargetedBlock(header, latch);


    checkCondition(header);

    std::vector<BasicBlock *> *newBlocks = replicateBlocks(header, latch, L, unrollFactor);

    std::vector<Value *> *resultedPredicates = findPredicates(latch, unrollFactor);
    predicates = *resultedPredicates;


    refineCFG(newBlocks, header, latch, thenBlock);

    removeRedundantInstructions(latch, unrollFactor);

}

// TODO: Should be moved to analysis pass
void Unroller::checkCondition(BasicBlock *header) {

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
std::vector<BasicBlock *> *Unroller::replicateBlocks(BasicBlock *header, BasicBlock *latch, Loop *L, int unrollFactor) {
    auto *newBlocks = new std::vector<BasicBlock *>;

    std::vector<PHINode *> headerPhiNodes;

    for (BasicBlock::iterator I = header->begin(); isa<PHINode>(I); ++I) {
        headerPhiNodes.push_back(cast<PHINode>(I));
    }

    ValueToValueMapTy lastValueMap;

    BasicBlock *prevLatch = latch;
    BasicBlock *prevHeader = header;
    auto blockInsertPt = std::next(latch->getIterator());

    int count = 1;

    for (int i = 0; i < unrollFactor - 1; ++i) {

        SmallVector<BasicBlock *, 2> newlyGeneratedBlock;
        ValueToValueMapTy VMap;

        //////////////////////////////  ADD A HEADER /////////////////////////////////////////////////
        BasicBlock *newBB;
        if (i == 0) {
            newBB = CloneBasicBlock(prevHeader, VMap, ".headerCopy." + std::to_string(count));
        } else {
            newBB = CloneBasicBlock(prevHeader, VMap, "." + std::to_string(count));
        }


        header->getParent()->getBasicBlockList().insert(blockInsertPt, newBB);
        L->addBasicBlockToLoop(newBB, *LI);

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
        ///////////////////////////////// ADD A LATCH //////////////////////////////////////////////

        if (i == 0) {
            newBB = CloneBasicBlock(prevLatch, VMap, ".latchCopy." + std::to_string(count));
        } else {
            newBB = CloneBasicBlock(prevLatch, VMap, "." + std::to_string(count));
        }

        header->getParent()->getBasicBlockList().insert(blockInsertPt, newBB);
        L->addBasicBlockToLoop(newBB, *LI);

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

        count++;

    }

    newLatch = newBlocks->back();

    return newBlocks;
}

std::vector<Value *> *Unroller::findPredicates(BasicBlock *initialLatch, int unrollFactor) {
    auto *predicateValues = new std::vector<Value *>;


    BasicBlock *BB;
    for (int i = 0; i < unrollFactor; ++i) {

        // finding header copy
        if (i == 0) {
            BB = L->getHeader();
        } else if (i == 1) {
            BB = initialLatch->getNextNode();
        } else {
            BB = BB->getNextNode()->getNextNode(); // go to the next headercopy
        }

        Instruction *terminatorInstr = BB->getTerminator();
        auto *branchInstr = dyn_cast<BranchInst>(terminatorInstr);
        if (branchInstr) {
            predicateValues->push_back(branchInstr->getCondition());
        } else {
            // TODO: raise error
        }
    }


    return predicateValues;

}

void
Unroller::refineCFG(std::vector<BasicBlock *> *newBlocks, BasicBlock *header, BasicBlock *latch,
                    BasicBlock *thenBlock) {
    // header should branch to prev latch
    header->getTerminator()->eraseFromParent();
    for (auto succ: successors(header)) {
        succ->removePredecessor(header);
    }
    llvm::BranchInst::Create(latch, header);


    //then latch branches to the first generated block
    // this also removes phi node in the header so first keep track of induction variable uses in header
    auto *inductionVariable = dyn_cast<PHINode>(&header->getInstList().front());
    std::map<Instruction *, int> inductionVariableUsers;
    for (auto user: inductionVariable->users()) {
        if (isa<Instruction>(user)) {
            auto *instr = dyn_cast<Instruction>(user);
            for (int i = 0; i < instr->getNumOperands(); ++i) {
                if (instr->getOperand(i) == inductionVariable) {
                    inductionVariableUsers.insert({instr, i});
                }
            }
        }
    }


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

                if (!L->contains(*(it))) {
                    continue;
                }
                succ->removePredecessor(*it);
            }

            (*it)->getTerminator()->eraseFromParent();
            llvm::BranchInst::Create(*(it + 1), *it);
        } else {

            // for the last block, the edge should point to then block
            auto *branchInstr = dyn_cast<BranchInst>((*it)->getTerminator());
            if (branchInstr->isConditional()) {
                for (int i = 1; i < 3; ++i) {
                    Value *label = branchInstr->getOperand(i);
                    auto *block = dyn_cast<BasicBlock>(label);
                    if (block == header) {
                        // make it point to the first block after loop header instead of header
                        branchInstr->setOperand(i, dyn_cast<Value>(thenBlock));
                    }
                }

            }
        }

    }

    // create a new latch which only jumps to header
    auto *newGeneratedLatch = BasicBlock::Create(L->getHeader()->getContext(), "new.latch",
                                                 L->getHeader()->getParent());
    BranchInst::Create(header, newGeneratedLatch);


    // Finally, blocks (then blocks) that used to branch to latch should now branch to new generated latch
    for (auto BB: predecessors(latch)) {
        if (BB == header || !L->contains(BB)) {
            continue;
        }
        BB->getTerminator()->replaceSuccessorWith(latch, newGeneratedLatch);
    }
    L->addBasicBlockToLoop(newGeneratedLatch, *LI);

    // add phi node in the beginning of the header block
    PHINode *phiNode = llvm::PHINode::Create(llvm::IntegerType::getInt64Ty(header->getContext()), 2);
    header->getInstList().insert(header->getFirstInsertionPt(), phiNode);

    for (auto pred: predecessors(header)) {
        if (!L->contains(pred)) {
            // it's preHeader, the coming value should be zero
            phiNode->addIncoming(llvm::ConstantInt::get(header->getContext(), llvm::APInt(64, 0, false)), pred);
        } else {
            // it's new latch, the coming value should be loopInductionVariable
            phiNode->addIncoming(findInductionVariableInLatch(newBlocks->back()), pred);
        }

    }

    // map instructions in the header, latch and thenBlock to new induction variable
    mapNewPhiNodeInstructions(header, inductionVariableUsers, phiNode);
    mapNewPhiNodeInstructions(latch, inductionVariableUsers, phiNode);
    mapNewPhiNodeInstructions(thenBlock, inductionVariableUsers, phiNode);
    //TODO: remapping should be applied to other blocks as well
}

BasicBlock *Unroller::findTargetedBlock(BasicBlock *header, BasicBlock *latch) {
    BasicBlock *thenBlock;
    for (auto BB: successors(header)) {
        if (BB != latch) {
            thenBlock = BB;
        }
    }

    return thenBlock;
}

// TODO: add the check in analysis pass to check if induction variable is added by 1
Value *Unroller::findInductionVariableInLatch(BasicBlock *latch) {
    for (auto &instr: latch->getInstList()) {
        if (instr.getOpcode() == Instruction::Add) {
            if (auto *CI = dyn_cast<ConstantInt>(instr.getOperand(1)))
                if (CI->isOne()) {
                    return dyn_cast<Value>(&instr);
                }
        }
    }
    return nullptr;
}

void Unroller::removeRedundantInstructions(BasicBlock *initialLatch, int unrollFactor) {
    BasicBlock *BB;

    for (int i = 0; i < unrollFactor; ++i) {
        if (i == 0) {
            BB = initialLatch;
        } else {
            BB = BB->getNextNode()->getNextNode();  // iterating over latches
        }

        for (auto &instr: make_early_inc_range(*BB)) {  // need to be able to remove while iterating
            if (instr.getNumUses() == 0) {

                // TODO: complete the list
                if (isa<BranchInst>(instr) || isa<DbgInfoIntrinsic>(instr) || isa<StoreInst>(instr) ||
                    instr.mayHaveSideEffects() || isa<LandingPadInst>(instr)) {
                    continue;
                } else {
                    instr.dropAllReferences();
                    instr.removeFromParent();
                }
            }
        }
    }

}

void Unroller::mapNewPhiNodeInstructions(BasicBlock *BB, const std::map<Instruction *, int> &inductionVariableUsers,
                                         PHINode *phiNode) {
    for (auto &instr: BB->getInstList()) {
        for (auto pair: inductionVariableUsers) {
            for (int i = 0; i < instr.getNumOperands(); ++i) {
                Instruction *retrievedInstruction = pair.first;
                if (&instr == retrievedInstruction) {
                    instr.setOperand(pair.second, phiNode);
                }

            }
        }
    }
}

Unroller::Unroller(Loop *l, LoopInfo *li) : L(l), LI(li) {
    L = l;
    LI = li;
}

const std::vector<Value *> &Unroller::getPredicates() const {
    return predicates;
}

BasicBlock *Unroller::getNewLatch() const {
    return newLatch;
}




