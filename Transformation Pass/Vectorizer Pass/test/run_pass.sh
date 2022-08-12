#!/bin/bash
LLVM_BUILD_DIR=/home/rouzbeh/Graduate/LLVM/llvm-project/build

cd ../SVE_Vectorizer/build
cmake -DCMAKE_VERBOSE_MAKEFILE=ON \
  -DLLVM_DIR=$LLVM_BUILD_DIR/lib/cmake/llvm \
  -DCMAKE_C_COMPILER=$LLVM_BUILD_DIR/bin/clang \
  -DCMAKE_CXX_COMPILER=$LLVM_BUILD_DIR/bin/clang++ \
  ../
make

cd ../../Unroller/build
cmake -DCMAKE_VERBOSE_MAKEFILE=ON \
  -DLLVM_DIR=$LLVM_BUILD_DIR/lib/cmake/llvm \
  -DCMAKE_C_COMPILER=$LLVM_BUILD_DIR/bin/clang \
  -DCMAKE_CXX_COMPILER=$LLVM_BUILD_DIR/bin/clang++ \
  ../
make

cd ../../SVE_Permute/build
cmake -DCMAKE_VERBOSE_MAKEFILE=ON \
  -DLLVM_DIR=$LLVM_BUILD_DIR/lib/cmake/llvm \
  -DCMAKE_C_COMPILER=$LLVM_BUILD_DIR/bin/clang \
  -DCMAKE_CXX_COMPILER=$LLVM_BUILD_DIR/bin/clang++ \
  ../
make

cd ../../build
cmake -DCMAKE_VERBOSE_MAKEFILE=ON \
  -DLLVM_DIR=$LLVM_BUILD_DIR/lib/cmake/llvm \
  -DCMAKE_C_COMPILER=$LLVM_BUILD_DIR/bin/clang \
  -DCMAKE_CXX_COMPILER=$LLVM_BUILD_DIR/bin/clang++ \
  ../
make

cd ../test

$LLVM_BUILD_DIR/bin/clang -g -O3 -target aarch64-none-linux-gnu -fno-vectorize -fno-slp-vectorize -fno-unroll-loops -S -emit-llvm $1 -o test.ll
$LLVM_BUILD_DIR/bin/opt -S -load-pass-plugin ../build/ALC_Vectorizer.so -passes="alc-vectorizer" test.ll -o permuted.ll

$LLVM_BUILD_DIR/bin/llc -mtriple=aarch64-linux-gnu -mattr=sve,sve2 -filetype=asm -print-after-all permuted.ll -o permuted.s  &> log.txt

