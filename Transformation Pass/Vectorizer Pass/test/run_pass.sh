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

cd ../../SVE_ALC/build
cmake -DCMAKE_VERBOSE_MAKEFILE=ON \
  -DLLVM_DIR=$LLVM_BUILD_DIR/lib/cmake/llvm \
  -DCMAKE_C_COMPILER=$LLVM_BUILD_DIR/bin/clang \
  -DCMAKE_CXX_COMPILER=$LLVM_BUILD_DIR/bin/clang++ \
  ../
make

cd ../../IntrinsicCallGenerator/build
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

$LLVM_BUILD_DIR/bin/clang -g -O3 -target aarch64-unknown-linux-gnu -DSVE_INTRINSICS -fno-vectorize -fno-slp-vectorize -fno-unroll-loops -S -emit-llvm $1 -o compiled_with_O3.ll
$LLVM_BUILD_DIR/bin/opt -S -load-pass-plugin ../build/ALC_Vectorizer.so -passes="alc-vectorizer" compiled_with_O3.ll -o ALC_Applied.ll

opt --disable-output -dot-cfg --cfg-dot-filename-prefix=cfg ALC_Applied.ll
dot -Tpdf cfg.foo.dot -o cfg.pdf

$LLVM_BUILD_DIR/bin/llc -mtriple=aarch64-linux-gnu -mattr=sve,sve2 -filetype=obj ALC_Applied.ll -o ALC_Applied.o
$LLVM_BUILD_DIR/bin/llc -mtriple=aarch64-linux-gnu -mattr=sve,sve2 -filetype=obj compiled_with_O3.ll -o compiled_with_O3.o
