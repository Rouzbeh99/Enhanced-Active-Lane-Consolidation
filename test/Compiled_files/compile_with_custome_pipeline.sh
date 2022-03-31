#!/bin/bash
fullfile="$1"
FILENAME="${fullfile%.*}"

clang -g -O3 -fno-vectorize -fno-slp-vectorize -fno-unroll-loops -mllvm -phi-node-folding-threshold=0 -mllvm -two-entry-phi-node-folding-threshold=0 -mllvm -simplifycfg-hoist-common=false -mllvm -simplifycfg-sink-common=0 -mllvm -simplifycfg-hoist-cond-stores=false -mllvm -simplifycfg-merge-cond-stores=false -mllvm -simplifycfg-branch-fold-threshold=0 -mllvm -simplifycfg-branch-fold-common-dest-vector-multiplier=0  -S -emit-llvm dijkstra.c -o dijkstra_no_select.ll
clang -g -O3 -S -emit-llvm  dijkstra.c -o dijkstra_full_opt.ll

clang -g -O3 -fno-vectorize -fno-slp-vectorize -fno-unroll-loops -mllvm -phi-node-folding-threshold=0 -mllvm -two-entry-phi-node-folding-threshold=0 -mllvm -simplifycfg-hoist-common=false -mllvm -simplifycfg-sink-common=0 -mllvm -simplifycfg-hoist-cond-stores=false -mllvm -simplifycfg-merge-cond-stores=false -mllvm -simplifycfg-branch-fold-threshold=0 -mllvm -simplifycfg-branch-fold-common-dest-vector-multiplier=0  -S -emit-llvm encryptionKey.c -o encryptionKey_no_select.ll
clang -g -O3 -S -emit-llvm  encryptionKey.c -o encryptionKey_full_opt.ll