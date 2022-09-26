//
// Created by rouzbeh on 7/25/22.
//

#include "SVE_Vectorizer.h"
#include "math.h"

#include <utility>
#include <stack>

/**
 *  Assumption: Input IR for loop body is in following form
 *
 *                          decision
 *                            /   \
 *                          /       \
 *                        /           \
 *                       block         \
 *                        \           /
 *                         \        /
 *                          \     /
 *                          decision
 *                            /   \
 *                          /       \
 *                        /           \
 *                       block         \
 *                        \           /
 *                         \        /
 *                          \     /
 *                            ...
 *                            ...
 *                            ...
 *                           latch
 *
 */

// TODO: We assume loop trip count is a multiple on VFactor, make it work for other cases
// TODO: What if trip count is NOT a multiple of vscale * VFactor ???

void SVE_Vectorizer::doVectorization() {


    // form a block for the case where there are not enough iterations
    BasicBlock *preVectorizationBlock = createPreVectorizationBlock();

    BasicBlock *preHeaderForRemaining = createPreheaderForRemainingIterations();

    // in preheader, check if there are enough iterations for a vector
    refinePreheader(preVectorizationBlock, preHeaderForRemaining);

}


void SVE_Vectorizer::vectorizeBlock(BasicBlock *block, Value *predicateVector) {
    std::map<Value *, Value *> vMap;


    // Should be remove in FILO manner to prevent removing a value that is used in following lines
    std::stack<Instruction *> toBeRemoved;
    Instruction *insertionPoint = block->getTerminator();

    // TODO: Is there any case we could have PHI?
    // TODO: Complete the list
    // TODO: handle binary operation for doubles
    for (auto &instr: block->getInstList()) {
        if (isa<GEPOperator>(instr)) {
            continue;
        } else if (isa<StoreInst>(instr)) {
            auto storeInstr = dyn_cast<StoreInst>(&instr);
            // it's the value to be stored
            Value *firstOp = nullptr;
            if (vMap.count(storeInstr->getOperand(0))) {
                firstOp = vMap[storeInstr->getOperand(0)];
            } else {
                // TODO: can this happen?
            }
            auto ptr = dyn_cast<GEPOperator>(instr.getOperand(1));
            intrinsicCallGenerator->createStoreInstruction(insertionPoint, firstOp, ptr, predicateVector);
            toBeRemoved.push(&instr);
        } else if (isa<LoadInst>(instr)) {
            auto loadInstr = dyn_cast<LoadInst>(&instr);

            auto ptr = dyn_cast<GEPOperator>(instr.getOperand(0));
            CallInst *loadedData = intrinsicCallGenerator->createLoadInstruction(insertionPoint, ptr, predicateVector);
            vMap[&instr] = loadedData;
            toBeRemoved.push(&instr);
        } else if (isa<BinaryOperator>(instr)) {
            if (isa<MulOperator>(instr)) {
                Value *firstOp = nullptr;
                Value *secondOp = nullptr;
                if (vMap.count(instr.getOperand(0))) {
                    firstOp = vMap[instr.getOperand(0)];
                } else {
                    //TODO: ?????
                }

                if (vMap.count(instr.getOperand(1))) {
                    secondOp = vMap[instr.getOperand(1)];
                } else {
                    //TODO: ?????
                }
                auto intrinsic = Intrinsic::aarch64_sve_mul;
                CallInst *multResult = intrinsicCallGenerator->createArithmeticInstruction(insertionPoint, intrinsic,
                                                                                           firstOp, secondOp,
                                                                                           predicateVector);
                vMap[&instr] = multResult;
                toBeRemoved.push(&instr);
            }
        }
    }

    while (!toBeRemoved.empty()) {
        toBeRemoved.top()->eraseFromParent();
        toBeRemoved.pop();
    }
}

bool SVE_Vectorizer::is_a_condition_block(BasicBlock *block) {
    Instruction *terminator = block->getTerminator();

    if (!isa<BranchInst>(terminator)) {
        // TODO: raise error
    }

    auto *brInstr = dyn_cast<BranchInst>(terminator);

    return brInstr->isConditional();
}

void SVE_Vectorizer::refinePreheader(BasicBlock *preVecBlock, BasicBlock *preHeaderForRemaining) {

    BasicBlock *preheader = L->getLoopPreheader();
    Instruction *insertionPoint = preheader->getTerminator();
    IRBuilder<> builder(preheader->getContext());
    builder.SetInsertPoint(insertionPoint);

    auto tripCount = dyn_cast<Value>(getTripCountInPreheader(preheader));

    //get current vscale
    CallInst *vscale = intrinsicCallGenerator->createCallToVscale64Intrinsic(insertionPoint);

    // check if there are iterations
    ConstantInt *shiftOp = llvm::ConstantInt::get(Type::getInt64Ty(preheader->getContext()),
                                                  int(log2(vectorizationFactor)));
    Value *shiftValue = builder.CreateShl(vscale, shiftOp);
    Value *condition = builder.CreateICmpUGE(tripCount, shiftValue); // if true, there are enough iterations

    // if true must jump to the previous destination of preheader
    auto *remainingIterationsBlock = dyn_cast<BasicBlock>(dyn_cast<BranchInst>(preheader->getTerminator())->getOperand(
            0));   // TODO: what if it's conditional??

    builder.CreateCondBr(condition, preVecBlock, preHeaderForRemaining);

    // remove previous terminator
    preheader->getTerminator()->eraseFromParent();


}


Instruction *SVE_Vectorizer::getTripCountInPreheader(BasicBlock *preheader) {

    // TODO: find  more reliable way...
    for (auto &instr: preheader->getInstList()) {
        if (isa<ZExtInst>(instr)) {
            return &instr;
        }
    }
    return nullptr;
}

// TODO: complete implementation
BasicBlock *SVE_Vectorizer::createPreVectorizationBlock() {
    BasicBlock *block = BasicBlock::Create(L->getHeader()->getContext(), "Pre.Vectorization",
                                           L->getHeader()->getParent(),
                                           L->getLoopLatch());


    // for now, it branches to exiting block
    BranchInst::Create(L->getExitBlock(), block);

    L->addBasicBlockToLoop(block, *LI);

    return block;
}

// only contains a phi instruction for induction variable
BasicBlock *SVE_Vectorizer::createPreheaderForRemainingIterations() {
    BasicBlock *block = BasicBlock::Create(L->getHeader()->getContext(), "Preheader.for.remaining.iterations",
                                           L->getHeader()->getParent(),
                                           L->getLoopLatch());
    // branch to loop header
    BranchInst::Create(L->getHeader(), block);

    //add to loop
    L->addBasicBlockToLoop(block, *LI);

    auto *headerPHi = dyn_cast<PHINode>(
            &L->getHeader()->getInstList().front()); // TODO: what if there are other phi nodes?

    //add PHI Node
    PHINode *inductionVar = PHINode::Create(headerPHi->getType(), 2, "", block->getTerminator());
    Constant *contZero = llvm::ConstantInt::get(headerPHi->getType(), 0);
    inductionVar->addIncoming(contZero, L->getLoopPreheader());


    // refine phi Node in the header associated with induction var
    headerPHi->addIncoming(inductionVar, block);
    headerPHi->removeIncomingValue(L->getLoopPreheader(), false);

    return block;
}

SVE_Vectorizer::SVE_Vectorizer(Loop *l, int vectorizationFactor, LoopInfo *li) : L(l), vectorizationFactor(
        vectorizationFactor), LI(li) {
    module = l->getHeader()->getModule();
    intrinsicCallGenerator = new IntrinsicCallGenerator(vectorizationFactor, module);
}
