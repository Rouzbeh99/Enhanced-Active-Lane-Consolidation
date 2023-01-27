//
// Created by rouzbeh on 8/8/22.
//

#include "Simple_ALC.h"

//
// TODO: check the case in form of a[j] = b[i] + c [i+k]

void Simple_ALC::doTransformation() {
    auto *header = L->getHeader();
    assert(isa<PHINode>(ScalarIV) && "Induction variable must be a PHINode!");
    auto *preheader = L->getLoopPreheader();
    auto *latch = L->getLoopLatch();
    auto *exitBlock = L->getExitBlock();
    ConstZeroVectorOfTripCountTy = llvm::ConstantInt::get(TripCountTy, 0, true);

    targetedBlock = findTargetedBlock();
    sharedInstructions =
            findHeaderInstructionsRequiredInThenBlock(header, targetedBlock);

    /// Forming blocks structure

    BasicBlock *preheaderForRemainingBlock =
            createPreheaderForRemainingIterations();

    // create blocks
    BasicBlock *preALCBlock = createEmptyBlock("pre.alc", latch);
    BasicBlock *middleBlock = createEmptyBlock("middel.block", latch);
    BasicBlock *alcHeader = createEmptyBlock("alc.header", middleBlock);
    BasicBlock *laneGatherBlock = createEmptyBlock("lane.gather", middleBlock);
    BasicBlock *uniformBlock = createEmptyBlock("uniform.block", middleBlock);
    BasicBlock *linearizedBlock = createEmptyBlock("linearized", middleBlock);
    BasicBlock *newLatch = createEmptyBlock("new.latch", middleBlock);

    refinePreheader(preALCBlock, preheaderForRemainingBlock);

    fillPreALCBlock_simpleVersion(preALCBlock, alcHeader);
    fillALCHeaderBlock_simpleVersion(alcHeader, laneGatherBlock, linearizedBlock,
                                     preALCBlock, header);
    fillLaneGatherBlock_simpleVersion(laneGatherBlock, uniformBlock);

    fillUniformBlock_simpleVersion(uniformBlock, newLatch, targetedBlock);

    fillLinearizedBlock_simpleVersion(linearizedBlock, newLatch, targetedBlock);

    std::vector<Value *> *newLatchOutputs = fillNewLatchBlock_simpleVersion(
            newLatch, alcHeader, middleBlock, VectorizedIterations);

    fillMiddleBlock_simpleVersion(middleBlock, preheaderForRemainingBlock,
                                  exitBlock, NonVectorizedIterations);

    refinePreHeaderForRemaining(preheaderForRemainingBlock, middleBlock,
                                (*newLatchOutputs)[0]);
}

// TODO: problem in algorithm, in the case where the total number of active
// lanes is not enough to fill a vector, the result vector is not correct
void Simple_ALC::insertPermutationLogic(BasicBlock *insertAt, Value *&permutedZ0,
                                     Value *&permutedPredicates) {
    // TODO: add code to compute predicates for uniform vector

    IRBuilder<> IRB(insertAt);
    auto *constZero = ConstantInt::get(ActiveLanesInFirstVector->getType(), 0);

    // gather active lanes
    auto *z2 = intrinsicCallGenerator->createCompactInstruction(
            IRB, IndexVectorOfFirstVector, PredicatesOfFirstVector);
    auto *z3 = intrinsicCallGenerator->createCompactInstruction(
            IRB, IndexVectorOfSecondVector, PredicatesOfSecondVector);
    auto *p4 = intrinsicCallGenerator->createWhileltInstruction(
            IRB, constZero, ActiveLanesInFirstVector);
    permutedZ0 = intrinsicCallGenerator->createSpliceInstruction(IRB, z2, z3, p4);
    permutedPredicates = intrinsicCallGenerator->createWhileltInstruction(
            IRB, constZero, ActiveLanesInBothVectors);
}

BasicBlock *Simple_ALC::findTargetedBlock() {
    // TODO: make a complete analysis

    for (auto succ: successors(L->getHeader())) {
        if (succ->getSingleSuccessor() == L->getLoopLatch()) {
            return succ;
        }
    }

    return nullptr;
}

BasicBlock *Simple_ALC::createEmptyBlock(const std::string &name,
                                      BasicBlock *insertBefore) {
    BasicBlock *block =
            BasicBlock::Create(L->getHeader()->getContext(), name,
                               L->getHeader()->getParent(), insertBefore);

    L->addBasicBlockToLoop(block, *LI);

    return block;
}

BasicBlock *Simple_ALC::createPreheaderForRemainingIterations() {
    BasicBlock *block = BasicBlock::Create(
            L->getHeader()->getContext(), "Preheader.for.remaining.iterations",
            L->getHeader()->getParent(), L->getLoopLatch());
    // branch to loop header
    BranchInst::Create(L->getHeader(), block);

    // add to loop
    L->addBasicBlockToLoop(block, *LI);

    auto *headerPHi = dyn_cast<PHINode>(
            &L->getHeader()
                    ->getInstList()
                    .front()); // TODO: what if there are other phi nodes?

    // add PHI Node
    PHINode *inductionVar =
            PHINode::Create(headerPHi->getType(), 2, "", block->getTerminator());
    Constant *contZero = llvm::ConstantInt::get(headerPHi->getType(), 0);
    inductionVar->addIncoming(contZero, L->getLoopPreheader());

    // refine phi Node in the header associated with induction var
    headerPHi->addIncoming(inductionVar, block);
    headerPHi->removeIncomingValue(L->getLoopPreheader(), false);

    return block;
}

void Simple_ALC::refinePreheader(BasicBlock *preVecBlock,
                              BasicBlock *preHeaderForRemaining) {

    auto *Terminator = L->getLoopPreheader()->getTerminator();
    IRBuilder<> IRB(Terminator);

    if (TripCountTy == IRB.getInt64Ty()) {
        VectorizedStepValue = intrinsicCallGenerator->createVscale64Intrinsic(IRB);
    } else {
        VectorizedStepValue = intrinsicCallGenerator->createVscale32Intrinsic(IRB);
    }

    // check if there are iterations
    Constant *contTwo = llvm::ConstantInt::get(VectorizedStepValue->getType(), 2);
    Value *add = IRB.CreateMul(VectorizedStepValue, contTwo);
    Value *condition =
            IRB.CreateICmpUGE(tripCount, add); // if true, there are enough iterations

    IRB.CreateCondBr(condition, preVecBlock, preHeaderForRemaining);

    // remove previous terminator
    Terminator->eraseFromParent();
}



Value *Simple_ALC::formPredicate(BasicBlock *decisionBlock,
                              BasicBlock *predicateHolderBlock,
                              Value *inductionVarInitialValue) {

    Instruction *predicates_scalar = nullptr;

    std::vector<Instruction *> *clonedInstructions = cloneInstructions(
            decisionBlock, predicateHolderBlock, inductionVarInitialValue);

    predicates_scalar = clonedInstructions->back();
    predicates_scalar = clonedInstructions->back();

    // now we should vectorize clonedInstructions
    std::map<const Value *, const Value *> *instructionsMap =
            vectorizeInstructions(clonedInstructions, predicateHolderBlock, nullptr,
                                  inductionVarInitialValue, nullptr, false, false);
    const Value *&predicates = (*instructionsMap)[(Value *) predicates_scalar];

    // TODO: find a bette way to determine negated condition
    auto *brInstr = dyn_cast<BranchInst>(decisionBlock->getTerminator());
    const StringRef &condName = brInstr->getCondition()->getName();
    if (condName.find("not") != std::string::npos) {

        IRBuilder<> builder(predicateHolderBlock->getContext());
        builder.SetInsertPoint(predicateHolderBlock->getTerminator());

        return builder.CreateNot(const_cast<Value *>(predicates));
    }

    return const_cast<Value *>(predicates);
}


std::map<const Value *, const Value *> *Simple_ALC::vectorizeInstructions(
        std::vector<Instruction *> *instructions, BasicBlock *block, Value *indices,
        Value *VectorIndex, Value *predicates, bool isPermuted, bool isPredicated) {


    Instruction *insertionPoint = block->getTerminator();
    IRBuilder<> IRB(insertionPoint);
    Constant *constOne = llvm::ConstantInt::get(TripCountTy, 1, true);
    Constant *constZero = llvm::ConstantInt::get(TripCountTy, 0, true);
    Value *mutatedVectorIndex = VectorIndex;

    // Move types to i32 so that it's compatible with other instruction types and can be used as operands if needed
    // TODO: what if instruction operands were float??
    if (vectorizationFactor == 2) {
        constOne = llvm::ConstantInt::get(IRB.getInt32Ty(), 1, true);
        mutatedVectorIndex = IRB.CreateTruncOrBitCast(VectorIndex, IRB.getInt32Ty());
    }

    if (isPermuted) {
        ////////////////////////////////////////////// need to change uniform vector elements type to i32
    } else {
        indices = intrinsicCallGenerator->createIndexInstruction(IRB, mutatedVectorIndex,
                                                                 constOne);
    }


    auto outputMap = new std::map<const Value *, const Value *>;

    std::map<Value *, Value *> vMap;


    // Should be remove in FILO manner to prevent removing a value that is used in
    // following lines
    std::stack<Instruction *> toBeRemoved;
    // TODO: Complete the list
    for (auto instr: *instructions) {


        if (auto *GEP = dyn_cast_or_null<GEPOperator>(instr)) {
            //            assert(GEP->getNumIndices() == 1 && "Expected GetElementPtr
            //            with one index operand!");
            for (int i = 0; i < instr->getNumOperands(); ++i) {
                if (instr->getOperand(i) == ScalarIV) {
                    if (isPermuted) {
                        instr->setOperand(i, constZero);
                    } else {
                        instr->setOperand(i, VectorIndex);
                    }
                }
            }
        } else if (isa<StoreInst>(instr)) {

            auto storeInstr = dyn_cast<StoreInst>(instr);
            // it's the value to be stored
            Value *firstOp = nullptr;
            if (vMap.count(storeInstr->getOperand(0))) {
                firstOp = vMap[storeInstr->getOperand(0)];
            } else if (storeInstr->getOperand(0) == VectorIndex) {
                firstOp = indices;
            } else {
                // it's constant
                auto *constValue = dyn_cast<Constant>(storeInstr->getOperand(0));
                firstOp = createVectorOfConstants(constValue, IRB, "store.values");
                // TODO: is there any other case ?
            }
            auto ptr = instr->getOperand(1);
            if (vMap.count(ptr)) {
                ptr = vMap[ptr];
            }


            assert(isa<GEPOperator>(ptr) &&
                   "Expected StoreInst PointerOperand to be GetElementPtr!");
            if (isPermuted) {
                intrinsicCallGenerator->createScatterStoreInstruction(
                        IRB, firstOp, ptr, predicates, indices);
            } else if (isPredicated) {
                intrinsicCallGenerator->createStoreInstruction(IRB, firstOp, ptr,
                                                               predicates);
            } else {
                IRB.CreateStore(firstOp, ptr);
            }


            toBeRemoved.push(instr);
        } else if (isa<LoadInst>(instr)) {

            auto ptr = instr->getOperand(0);
            if (vMap.count(ptr)) {
                ptr = vMap[ptr];
            }
            Value *loadedData = nullptr;
            assert(isa<GEPOperator>(ptr) &&
                   "Expected LoadInst PointerOperand to be GetElementPtr!");
            auto *GEP = static_cast<GEPOperator *>(ptr);
            auto *SrcTy = GEP->getSourceElementType();
            if (SrcTy->isArrayTy()) {
                SrcTy = SrcTy->getArrayElementType();
            }
            if (isPermuted) {
                loadedData = intrinsicCallGenerator->createGatherLoadInstruction(
                        IRB, SrcTy, ptr, predicates, indices);
            } else if (isPredicated) {
                assert(isa<GEPOperator>(ptr) &&
                       "Expected LoadInst PointerOperand to be GetElementPtr!");
                auto *GEP = static_cast<GEPOperator *>(ptr);
                auto *SrcTy = GEP->getSourceElementType();
                if (SrcTy->isArrayTy()) {
                    SrcTy = SrcTy->getArrayElementType();
                }
                loadedData = intrinsicCallGenerator->createLoadInstruction(
                        IRB, SrcTy, ptr, predicates);
            } else {
                loadedData = IRB.CreateLoad(
                        VectorType::get(instr->getType(), vectorizationFactor, true), ptr);
            }

            vMap[instr] = loadedData;
            toBeRemoved.push(instr);
        } else if (auto *truncInstr = dyn_cast_or_null<TruncInst>(instr)) {


            Value *operand = nullptr;

            if (vMap.count(truncInstr->getOperand(0))) {
                operand = vMap[truncInstr->getOperand(0)];
            } else if (truncInstr->getOperand(0) ==
                       VectorIndex) {
                operand = indices;
            } else if (auto *ConstantValue =
                    dyn_cast_or_null<Constant>(truncInstr->getOperand(0))) {

                //TODO: doesn't work for floats
                auto value = ConstantValue->getUniqueInteger().getLimitedValue();

                ConstantValue = ConstantInt::get(truncInstr->getDestTy(), value);
                operand =
                        createVectorOfConstants(ConstantValue, IRB, "first.operand");
            } else {
                assert(0 && "first operand of trunc neither already vectorized nor Constant!");
            }

            // No need to do the trunc, just do the mapping
            vMap[instr] = operand;
            outputMap->insert({instr, operand});
            toBeRemoved.push(instr);


        } else if (isa<BinaryOperator>(instr) ||
                   isa<ICmpInst>(instr)) {


            Value *firstOp = nullptr;
            Value *secondOp = nullptr;
            Type *destinationType = nullptr;

            if (vMap.count(instr->getOperand(0))) {
                firstOp = vMap[instr->getOperand(0)];
            } else if (instr->getOperand(0) ==
                       VectorIndex) {
                firstOp = indices;
            } else {
                if (auto *ConstantValue =
                        dyn_cast_or_null<Constant>(instr->getOperand(0))) {
                    firstOp =
                            createVectorOfConstants(ConstantValue, IRB, "first.operand");
                } else {
                    instr->getOperand(0)->print(outs());
                    assert(0 && "first operand neither already vectorized nor Constant!");
                }
            }

            if (vMap.count(instr->getOperand(1))) {
                secondOp = vMap[instr->getOperand(1)];
            } else if (instr->getOperand(1) == VectorIndex) {
                secondOp = indices;
            } else {
                if (auto *ConstantValue =
                        dyn_cast_or_null<Constant>(instr->getOperand(1))) {
                    secondOp =
                            createVectorOfConstants(ConstantValue, IRB, "second.operand");
                } else
                    assert(0 &&
                           "second operand neither already vectorized nor Constant!");
            }


            Value *result = nullptr;
            switch (instr->getOpcode()) {
                case Instruction::Add:
                    result = IRB.CreateAdd(firstOp, secondOp);
                    break;
                case Instruction::Mul:
                    result = IRB.CreateMul(firstOp, secondOp);
                    break;
                case Instruction::SDiv:
                    result = IRB.CreateSDiv(firstOp, secondOp);
                    break;
                case Instruction::Sub:
                    result = IRB.CreateSub(firstOp, secondOp);
                    break;
                case Instruction::URem:
                    result = IRB.CreateURem(firstOp, secondOp);
                    break;
                case Instruction::SRem:
                    result = IRB.CreateSRem(firstOp, secondOp);
                    break;
                case Instruction::And:
                    result = IRB.CreateAnd(firstOp, secondOp);
                    break;
                case Instruction::Shl:
                    result = IRB.CreateShl(firstOp, secondOp);
                    break;
                case Instruction::Trunc:
                    IRB.CreateTruncOrBitCast(firstOp, destinationType);
                    break;
                case Instruction::ICmp: {
                    switch (dyn_cast<ICmpInst>(instr)->getPredicate()) {
                        // TODO: handle other cases
                        case CmpInst::FCMP_FALSE:
                            break;
                        case CmpInst::FCMP_OEQ:
                            break;
                        case CmpInst::FCMP_OGT:
                            break;
                        case CmpInst::FCMP_OGE:
                            break;
                        case CmpInst::FCMP_OLT:
                            break;
                        case CmpInst::FCMP_OLE:
                            break;
                        case CmpInst::FCMP_ONE:
                            break;
                        case CmpInst::FCMP_ORD:
                            break;
                        case CmpInst::FCMP_UNO:
                            break;
                        case CmpInst::FCMP_UEQ:
                            break;
                        case CmpInst::FCMP_UGT:
                            break;
                        case CmpInst::FCMP_UGE:
                            break;
                        case CmpInst::FCMP_ULT:
                            break;
                        case CmpInst::FCMP_ULE:
                            result = IRB.CreateICmpULE(firstOp, secondOp);
                            break;
                            break;
                        case CmpInst::FCMP_UNE:
                            break;
                        case CmpInst::FCMP_TRUE:
                            break;
                        case CmpInst::BAD_FCMP_PREDICATE:
                            break;
                        case CmpInst::ICMP_EQ: {
                            Value *ICmpInst = IRB.CreateICmpEQ(firstOp, secondOp);
                            result = dyn_cast<Value>(ICmpInst);
                            break;
                        }
                        case CmpInst::ICMP_NE:
                            break;
                        case CmpInst::ICMP_UGT:
                            break;
                        case CmpInst::ICMP_UGE:
                            break;
                        case CmpInst::ICMP_ULT:
                            break;
                        case CmpInst::ICMP_ULE:
                            break;
                        case CmpInst::ICMP_SGT: {
                            Value *ICmpInst = IRB.CreateICmpSGT(firstOp, secondOp);
                            result = dyn_cast<Value>(ICmpInst);
                            break;
                        }
                        case CmpInst::ICMP_SGE:
                            break;
                        case CmpInst::ICMP_SLT:
                            break;
                        case CmpInst::ICMP_SLE:
                            break;
                        case CmpInst::BAD_ICMP_PREDICATE:
                            break;
                    }
                }
            }
            assert(result && "Unhandled BinaryOperator!");
            vMap[instr] = result;
            outputMap->insert({instr, result});
            toBeRemoved.push(instr);
        }

    }


    while (!toBeRemoved.empty()) {
        toBeRemoved.top()->eraseFromParent();
        toBeRemoved.pop();
    }


    return outputMap;
}

void Simple_ALC::refinePreHeaderForRemaining(BasicBlock *preHeaderForRemaining,
                                          BasicBlock *middleBlock,
                                          Value *value) {
    IRBuilder<> builder(middleBlock->getContext());
    builder.SetInsertPoint(middleBlock->getTerminator());

    // The first instruction is a phi node
    auto *phiNode =
            dyn_cast<PHINode>(&preHeaderForRemaining->getInstList().front());

    // one is i32 the other is i64
    if (value->getType() != phiNode->getType()) {
        value = builder.CreateCast(Instruction::CastOps::ZExt, value,
                                   phiNode->getType());
    }
    phiNode->addIncoming(value, middleBlock);
}

void Simple_ALC::fillALCHeaderBlock_simpleVersion(BasicBlock *alcHeader,
                                               BasicBlock *laneGatherBlock,
                                               BasicBlock *linearized,
                                               BasicBlock *preALC,
                                               BasicBlock *header) {


    IRBuilder<> builder(alcHeader->getContext());
    builder.SetInsertPoint(alcHeader);

    // temporary, to be replaced with actual condition
    ConstantInt *tmpCond = ConstantInt::get(builder.getInt1Ty(), 1);
    builder.CreateCondBr(tmpCond, laneGatherBlock, linearized);
    builder.SetInsertPoint(alcHeader->getTerminator());

    // create phi node for loop index
    VectorLoopIndex =
            builder.CreatePHI(VectorizedStepValue->getType(), 2, "index");
    VectorLoopIndex->addIncoming(ConstZeroVectorOfTripCountTy, preALC);

    // index vec
    Constant *constOne = llvm::ConstantInt::get(TripCountTy, 1, true);
    IndexVectorOfFirstVector = intrinsicCallGenerator->createIndexInstruction(
            builder, VectorLoopIndex, constOne);

    // form predicates
    PredicatesOfFirstVector = formPredicate(header, alcHeader, VectorLoopIndex);

    // form condition for the branch
    ActiveLanesInFirstVector = intrinsicCallGenerator->createCntpInstruction(
            builder, PredicatesOfFirstVector, PredicatesOfFirstVector);

    if (TripCountTy == builder.getInt32Ty()) {
        ActiveLanesInFirstVector = builder.CreateTruncOrBitCast(
                ActiveLanesInFirstVector, TripCountTy);

    }

    // next itr
    VectorLoopNextIndex = builder.CreateAdd(VectorLoopIndex, VectorizedStepValue);
    IndexVectorOfSecondVector =
            builder.CreateAdd(IndexVectorOfFirstVector, StepVector);
    PredicatesOfSecondVector =
            formPredicate(header, alcHeader, VectorLoopNextIndex);
    ActiveLanesInSecondVector = intrinsicCallGenerator->createCntpInstruction(
            builder, PredicatesOfSecondVector, PredicatesOfSecondVector);

    if (TripCountTy == builder.getInt32Ty()) {
        ActiveLanesInSecondVector = builder.CreateTruncOrBitCast(
                ActiveLanesInSecondVector, TripCountTy);
    }

    ActiveLanesInBothVectors =
            builder.CreateAdd(ActiveLanesInFirstVector, ActiveLanesInSecondVector);
    Value *actualCondition = builder.CreateICmpULE(
            ActiveLanesInBothVectors, VectorizedStepValue, "condition");
    dyn_cast<BranchInst>(alcHeader->getTerminator())
            ->setCondition(actualCondition);
}

void Simple_ALC::fillPreALCBlock_simpleVersion(BasicBlock *preALCBlock,
                                            BasicBlock *alcHeader) {
    auto *results = new std::vector<Value *>;

    IRBuilder<> builder(preALCBlock);

    // create the value by which the index should be increased
    // TODO: we assume indices are added by one, make it work for other cases as
    // well should be added by vscale * VFactor * 1  ----> vscale shl log(VFactor)

    allTrue = intrinsicCallGenerator->createAllTruePredicates(builder);

    // create step vector
    StepVector =
            createVectorOfConstants(VectorizedStepValue, builder, "step.vector");

    // vectorizing block termination condition: index > n - (n % stepValue)
    // forming n - (n % stepValue)

    Value *mulResult = builder.CreateMul(
            VectorizedStepValue,
            llvm::ConstantInt::get(VectorizedStepValue->getType(), 2, false));

    NonVectorizedIterations = builder.CreateURem(tripCount, mulResult);
    VectorizedIterations = builder.CreateSub(tripCount, NonVectorizedIterations,
                                             "total.iterations.to.be.vectorized");

    builder.CreateBr(alcHeader);
}

void Simple_ALC::fillLaneGatherBlock_simpleVersion(BasicBlock *laneGather,
                                                BasicBlock *alcApplied) {
    insertPermutationLogic(laneGather, PermutedIndices, PermutedPredicates);
    IRBuilder<> builder(laneGather);

    ActiveElementsInPermutedVector =
            intrinsicCallGenerator->createCntpInstruction(builder, PermutedPredicates,
                                                          PermutedPredicates);

    builder.CreateBr(alcApplied);
}

void Simple_ALC::fillUniformBlock_simpleVersion(BasicBlock *uniformBlock,
                                             BasicBlock *latch,
                                             BasicBlock *toBeVectorizedBlock) {

    IRBuilder<> builder(uniformBlock);
    builder.CreateBr(latch);


    std::vector<Instruction *> *clonedInstructions = cloneInstructions(
            toBeVectorizedBlock, uniformBlock, ConstZeroVectorOfTripCountTy);

    vectorizeInstructions(clonedInstructions, uniformBlock, PermutedIndices,
                          ConstZeroVectorOfTripCountTy, PermutedPredicates, true, true);
}

void Simple_ALC::fillLinearizedBlock_simpleVersion(
        BasicBlock *linearized, BasicBlock *newLatch,
        BasicBlock *toBeVectorizedBlock) {

    IRBuilder<> builder(linearized);
    builder.CreateBr(newLatch);

    std::vector<Instruction *> *clonedInstructions =
            cloneInstructions(toBeVectorizedBlock, linearized, VectorLoopIndex);
    vectorizeInstructions(clonedInstructions, linearized, nullptr,
                          VectorLoopIndex, PredicatesOfFirstVector, false, true);

    std::vector<Instruction *> *clonedInstructions2 =
            cloneInstructions(toBeVectorizedBlock, linearized, VectorLoopNextIndex);
    vectorizeInstructions(clonedInstructions2, linearized, nullptr,
                          VectorLoopNextIndex, PredicatesOfSecondVector, false,
                          true);
}

std::vector<Value *> *Simple_ALC::fillNewLatchBlock_simpleVersion(
        BasicBlock *newLatch, BasicBlock *alcHeader, BasicBlock *middleBlock,
        Value *totalVecIterations) {

    auto outputs = new std::vector<Value *>;

    IRBuilder<> builder(newLatch);

    // update phi nodes in header
    const BasicBlock::phi_iterator &headerIndexPhi = alcHeader->phis().begin();
    Value *updatedIndex =
            builder.CreateAdd(VectorLoopNextIndex, VectorizedStepValue);
    headerIndexPhi->addIncoming(updatedIndex, newLatch);

    Value *condition = builder.CreateICmpEQ(updatedIndex, totalVecIterations);
    builder.CreateCondBr(condition, middleBlock, alcHeader);

    outputs->push_back(updatedIndex);

    return outputs;
}

void Simple_ALC::fillMiddleBlock_simpleVersion(BasicBlock *middleBlock,
                                            BasicBlock *preheaderForRemaining,
                                            BasicBlock *exitBlock,
                                            Value *remResult) {

    IRBuilder<> builder(middleBlock);

    Constant *constZero = ConstantInt::get(remResult->getType(), 0, false);
    Value *condition = builder.CreateICmpEQ(remResult, constZero, "condition");
    builder.CreateCondBr(condition, exitBlock, preheaderForRemaining);
}

std::vector<Instruction *> *Simple_ALC::cloneInstructions(BasicBlock *From,
                                                       BasicBlock *to,
                                                       Value *VectorIndex) {

    // TODO: assumption : there are no more than one phi node that is the
    // induction var (since decision block is header)

    llvm::ValueToValueMapTy vMap;
    // first copy instruction into vectorizing Block, then vectorize them
    auto *clonedInstructions = new std::vector<Instruction *>;

    // initialize clonedInstructions with sharedInstruction from header
    for (auto instr: *sharedInstructions) {
        Instruction *clonedInstr = instr->clone();
        clonedInstr->insertBefore(to->getTerminator());
        clonedInstructions->push_back(clonedInstr);
        vMap[instr] = clonedInstr;
    }

    for (auto &instr: From->instructionsWithoutDebug()) {
        if (&instr == From->getTerminator()) {
            break;
        }
        if (isa<PHINode>(instr)) {
            continue;
        }

        Instruction *clonedInstr = instr.clone();
        clonedInstr->insertBefore(to->getTerminator());
        vMap[&instr] = clonedInstr;
        clonedInstructions->push_back(clonedInstr);

        for (auto &cloned_instr: *clonedInstructions) {
            llvm::RemapInstruction(cloned_instr, vMap,
                                   RF_NoModuleLevelChanges | RF_IgnoreMissingLocals);
        }
    }

    // replace induction vars with inductionVarInitialValue
    for (auto clonedInstr: *clonedInstructions) {

        if (usesInductionVar(clonedInstr, ScalarIV)) {
            for (int j = 0; j < clonedInstr->getNumOperands(); ++j) {
                if (clonedInstr->getOperand(j) == ScalarIV) {
                    clonedInstr->setOperand(j, VectorIndex);
                }
            }
        }
    }

    return clonedInstructions;
}

std::vector<Instruction *> *
Simple_ALC::findHeaderInstructionsRequiredInThenBlock(BasicBlock *header,
                                                   BasicBlock *thenBlock) {
    auto output = new std::vector<Instruction *>();
    for (auto &thenInstr: thenBlock->instructionsWithoutDebug()) {

        if (&thenInstr == thenBlock->getTerminator()) {
            break;
        }

        for (int i = 0; i < thenInstr.getNumOperands(); ++i) {

            std::vector<Instruction *> toCheckOperands;
            auto operand = thenInstr.getOperand(i);
            if (operand == ScalarIV || !isa<Instruction>(operand)) {
                continue;
            }
            auto *instruction = dyn_cast<Instruction>(operand);

            if (instruction->getParent() == header &&
                (std::find(output->begin(), output->end(), instruction) ==
                 output->end())) {
                output->push_back(instruction);
                toCheckOperands.push_back(instruction);
            }

            for (int k = 0; k < toCheckOperands.size(); ++k) {
                for (int j = 0; j < toCheckOperands[k]->getNumOperands(); ++j) {
                    Value *innerOp = toCheckOperands[k]->getOperand(j);
                    if (innerOp == ScalarIV || isa<Constant>(innerOp)) {
                        continue;
                    }
                    auto opInstr = dyn_cast<Instruction>(innerOp);
                    if (opInstr->getParent() == header &&
                        (std::find(output->begin(), output->end(), opInstr) ==
                         output->end())) {
                        output->push_back(opInstr);
                        toCheckOperands.push_back(opInstr);
                    }
                }
            }
        }
    }

    // should revers the output so that each instruction comes after the
    // instruction it depends on
    std::reverse(output->begin(), output->end());
    return output;
}

bool Simple_ALC::usesInductionVar(Value *value, Value *inductionVar) {
    if (value == inductionVar) {
        return true;
    }
    for (auto user: inductionVar->users()) {
        if (user == value) {

            return true;
        }
    }
    return false;
}


void Simple_ALC::addBranchHint(BranchInst *branchInst) {

    Function &F = *targetedBlock->getParent();
    LLVMContext &C = F.getContext();
    LLVMContext &context = branchInst->getContext();
    llvm::IntegerType *Int32Ty = llvm::Type::getInt32Ty(context);

    MDString *mdString = MDString::get(context, "branch_weights");

    ConstantAsMetadata *trueProbability = llvm::ConstantAsMetadata::get(llvm::ConstantInt::get(Int32Ty, 10));
    ConstantAsMetadata *falseProbability = llvm::ConstantAsMetadata::get(llvm::ConstantInt::get(Int32Ty, 90));

    MDTuple *md = MDNode::get(context, {mdString, trueProbability, falseProbability});
    branchInst->setMetadata(LLVMContext::MD_prof, md);


}


Value* Simple_ALC::createVectorOfConstants(Value *value, IRBuilder<> &builder,
                                        std::string name) {


    auto *vecType = VectorType::get(value->getType(), vectorizationFactor, true);

    uint64_t indexZero = 0;
    Value *UndefVec = UndefValue::get(vecType);

    Value *splatInsert = builder.CreateInsertElement(UndefVec, value, indexZero);

    ConstantAggregateZero *zeroInitializer = ConstantAggregateZero::get(vecType);


    return builder.CreateShuffleVector(splatInsert, UndefVec, zeroInitializer,
                                       name);
}

Simple_ALC::Simple_ALC(Loop *l, int vectorizationFactor,
                 LoopStandardAnalysisResults &ar, Value *tripCount)
        : L(l), vectorizationFactor(vectorizationFactor), AR(ar), tripCount(tripCount) {
    LI = &AR.LI;
    SE = &AR.SE;
    module = L->getHeader()->getModule();
    ScalarIV = L->getCanonicalInductionVariable();
    TripCountTy = tripCount->getType();

    if (vectorizationFactor == 4 && TripCountTy == Type::getInt64Ty(tripCount->getContext())) {
        errs() << "warning: Requested VF = 4 but TripCountTy is i64. Reverting VF to 2\n";
        this->vectorizationFactor = 2;
    }
    intrinsicCallGenerator =
            new IntrinsicCallGenerator(this->vectorizationFactor, module);
}

