#!/bin/bash
fullfile="$1"
FILENAME="${fullfile%.*}"
tmp="_full_optimization"
output=$FILENAME$tmp
clang -g -O3 $FILENAME.c -S -emit-llvm -o $output.ll
