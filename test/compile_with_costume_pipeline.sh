#!/bin/bash
fullfile="$1"
FILENAME="${fullfile%.*}"
clang -g -O3 -fno-vectorize -fno-slp-vectorize -fno-unroll-loops -S -emit-llvm "$FILENAME".c -o "$FILENAME".ll
