#!/bin/bash
cd ../build
LLVM_BUILD_DIR=/home/rouzbeh/Graduate/Research/LLVM/llvm-project/build
cmake -DCMAKE_VERBOSE_MAKEFILE=ON \
  -DLLVM_DIR=$LLVM_BUILD_DIR/lib/cmake/llvm          \
  -DCMAKE_C_COMPILER=$LLVM_BUILD_DIR/bin/clang       \
  -DCMAKE_CXX_COMPILER=$LLVM_BUILD_DIR/bin/clang++   \
  ../
make 
cd ../test
opt -load-pass-plugin=../build/ALC.so -passes="check-alc-conditions" -debug-only=loop-accesses $1 --disable-output
