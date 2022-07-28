//
// Created by rouzbeh on 7/25/22.
//

#include "SVE_Vectorizer.h"


std::vector<Value *> *SVE_Vectorizer::findPredicates() {
    auto *predicateValues = new std::vector<Value *>;

    for (auto BB: L->getBlocks()) {
        BB->print(outs());
    }
    llvm::outs() << "---------------------------------------------------------\n";

    return predicateValues;

}


SVE_Vectorizer::SVE_Vectorizer(Loop *l) : L(l) { L = l; }
