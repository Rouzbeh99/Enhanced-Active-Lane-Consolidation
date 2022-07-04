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

#clang -g -S -emit-llvm $1 -o test.ll
clang -g -O3 -fno-vectorize -fno-slp-vectorize -fno-unroll-loops -S -emit-llvm $1 -o test.ll
opt -load-pass-plugin ../build/ALC_Vectorizer.so -passes="alc-vectorizer" test.ll --disable-output
#lli test.bin




