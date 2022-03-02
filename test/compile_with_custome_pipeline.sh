#!/bin/bash
fullfile="$1"
FILENAME="${fullfile%.*}"
tmp="_norm"
output=$FILENAME$tmp
clang -g $FILENAME.c -S -emit-llvm
opt -passes="mem2reg,function(loop(indvars),loop-simplify,loop-rotate,simplifycfg,instcombine)" $FILENAME.ll -S -o $output.ll