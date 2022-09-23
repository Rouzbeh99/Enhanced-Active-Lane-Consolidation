#!/bin/bash
fullfile="$1"
FILENAME="${fullfile%.*}"
clang -g -O3 -fno-vectorize -fno-slp-vectorize -fno-unroll-loops -mllvm -phi-node-folding-threshold=0 -mllvm -simplifycfg-hoist-cond-stores=0 -S -emit-llvm "$FILENAME".c -o "$FILENAME".ll
