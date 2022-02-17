#!/bin/bash
fullfile="$1"
FILENAME="${fullfile%.*}"
tmp="_norm"
output=$FILENAME$tmp
clang -g -O3 -Xclang -disable-llvm-passes $FILENAME.c -S -emit-llvm
opt -passes="mem2reg,function(loop(indvars),loop-simplify,loop(rotate))" $FILENAME.ll -S -o $output.ll