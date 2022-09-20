#!/bin/bash
LLVM_BUILD_DIR=/home/rouzbeh/Graduate/LLVM/llvm-project/build

cd ../build
cmake -DCMAKE_VERBOSE_MAKEFILE=ON \
  -DLLVM_DIR=$LLVM_BUILD_DIR/lib/cmake/llvm \
  -DCMAKE_C_COMPILER=$LLVM_BUILD_DIR/bin/clang \
  -DCMAKE_CXX_COMPILER=$LLVM_BUILD_DIR/bin/clang++ \
  ../
make

cd ../test

$LLVM_BUILD_DIR/bin/clang -g -O3 -target aarch64-unknown-linux-gnu -DSVE_INTRINSICS -fno-vectorize -fno-slp-vectorize -fno-unroll-loops -S -emit-llvm $1 -o compiled.ll
$LLVM_BUILD_DIR/bin/opt -S -load-pass-plugin ../build/Test_Generator.so -passes="generate-test" compiled.ll -o ALC_Applied.ll