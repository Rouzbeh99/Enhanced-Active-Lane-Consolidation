#!/bin/bash

clang -g -O3 -fno-vectorize -fno-slp-vectorize -fno-unroll-loops --target=arm-linux-gnueabihf -S -emit-llvm loop.c -o loop.ll
llc  -print-after-all -debug loop.ll -o loop.s &> log.txt
