//
// Created by rouzbeh on 7/25/22.
//

#include "SVE_Vectorizer.h"



SVE_Vectorizer::SVE_Vectorizer(Loop *l, int factor) : L(l), vectorizingFactor(factor) {
    L = l;
    vectorizingFactor = factor;
}
