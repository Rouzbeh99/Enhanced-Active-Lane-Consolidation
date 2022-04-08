#!/bin/bash
fullfile="$1"
FILENAME="${fullfile%.*}"
tmp="_norm"
output=$FILENAME$tmp
clang -g -O3 -fno-vectorize -fno-slp-vectorize -fno-unroll-loops -mllvm -phi-node-folding-threshold=0 -mllvm -two-entry-phi-node-folding-threshold=0 -mllvm -simplifycfg-hoist-common=false -mllvm -simplifycfg-sink-common=0 -mllvm -simplifycfg-hoist-cond-stores=false -mllvm -simplifycfg-merge-cond-stores=false -mllvm -simplifycfg-branch-fold-threshold=0 -mllvm -simplifycfg-branch-fold-common-dest-vector-multiplier=0  -S -emit-llvm $FILENAME.c -o $FILENAME.ll
opt $FILENAME.ll -S -o $output.ll
