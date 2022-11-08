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

$LLVM_BUILD_DIR/bin/clang -g -O3  -target aarch64-unknown-linux-gnu -DSVE_INTRINSICS -fno-inline -fno-vectorize -fno-slp-vectorize -fno-unroll-loops -S -emit-llvm $1 -o compiled_with_O3.ll
$LLVM_BUILD_DIR/bin/opt -S -load-pass-plugin ../build/ALC_Vectorizer.so -passes="alc-vectorizer" compiled_with_O3.ll -o alc_applied.ll
$LLVM_BUILD_DIR/bin/clang -g -O3  -target aarch64-unknown-linux-gnu -DSVE_INTRINSICS -fno-inline -fno-vectorize -fno-slp-vectorize -fno-unroll-loops -S -emit-llvm alc_applied.ll -o alc_applied_O3.ll

<<<<<<< HEAD
opt --disable-output -dot-cfg --cfg-dot-filename-prefix=cfg vectorized.ll
dot -Tpdf cfg.foo.dot -o cfg.pdf
=======
#opt --disable-output -dot-cfg --cfg-dot-filename-prefix=cfg alc_applied_O3.ll
#dot -Tpdf cfg.foo.dot -o cfg.pdf
# dot -Tpdf cfg.s253.dot -o cfg.pdf
>>>>>>> ALC_new_strategy

$LLVM_BUILD_DIR/bin/llc -O3  -mtriple=aarch64-linux-gnu -mattr=sve,sve2 -mcpu=cortex-a710 -filetype=obj alc_applied_O3.ll -o alc_applied_O3.o
$LLVM_BUILD_DIR/bin/llc -O3  -mtriple=aarch64-linux-gnu -mattr=sve,sve2 -mcpu=cortex-a710 -filetype=obj compiled_with_O3.ll -o compiled_with_O3.o
#$LLVM_BUILD_DIR/bin/llc -O3  -mtriple=aarch64-linux-gnu -mattr=sve,sve2 -mcpu=cortex-a710 -filetype=asm alc_applied_O3.ll -o alc_applied_O3.s
#$LLVM_BUILD_DIR/bin/llc -O3  -mtriple=aarch64-linux-gnu -mattr=sve,sve2 -mcpu=cortex-a710 -filetype=asm compiled_with_O3.ll -o compiled_with_O3.s

rm *.dot
rm compiled_with_O3.*
