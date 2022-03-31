#!/bin/bash
cd ../../build
LLVM_BUILD_DIR=/home/rouzbeh/Graduate/Research/LLVM/llvm-project/build
cmake -DCMAKE_VERBOSE_MAKEFILE=ON \
  -DLLVM_DIR=$LLVM_BUILD_DIR/lib/cmake/llvm          \
  -DCMAKE_C_COMPILER=$LLVM_BUILD_DIR/bin/clang       \
  -DCMAKE_CXX_COMPILER=$LLVM_BUILD_DIR/bin/clang++   \
  ../
make 
cd ../test/Compiled_files
opt -load-pass-plugin=../../build/ALC.so -passes="check-alc-conditions"  $1 -debug-only=loop-accesses --disable-output
