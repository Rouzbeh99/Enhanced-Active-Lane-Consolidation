#!/bin/bash

cd ../build
LLVM_BUILD_DIR=/home/rouzbeh/Graduate/LLVM/llvm-project/build
cmake -DCMAKE_VERBOSE_MAKEFILE=ON \
  -DLLVM_DIR=$LLVM_BUILD_DIR/lib/cmake/llvm          \
  -DCMAKE_C_COMPILER=$LLVM_BUILD_DIR/bin/clang       \
  -DCMAKE_CXX_COMPILER=$LLVM_BUILD_DIR/bin/clang++   \
  ../
make

cd ../test
clang -O0 -emit-llvm -c test.c -o test.bc
opt -load-pass-plugin ../build/ALC_Vectorizer.so --passes="alc-vectorizer" test.bc -o test.bin
lli test.bin