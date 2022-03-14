#!/bin/bash
fullfile="$1"
FILENAME="${fullfile%.*}"
tmp="_norm"
output=$FILENAME$tmp
clang -g -O3 -fno-vectorize -fno-slp-vectorize -fno-unroll-loops $FILENAME.c -S -emit-llvm
opt $FILENAME.ll -S -o $output.ll