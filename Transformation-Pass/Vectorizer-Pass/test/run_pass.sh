#!/bin/bash
LLVM_BUILD_DIR=/home/rouzbeh/Graduate/LLVM/llvm-project/build
GEM5_PATH=/home/rouzbeh/Graduate/LLVM/GEM5/gem5-arm-sve/gem5
GCC_TOOLCHAIN=/home/rouzbeh/Graduate/LLVM/ARM/arm-gnu-toolchain-11.3.rel1-x86_64-aarch64-none-linux-gnu
M5_BUILD_PATH=build/arm64/out/m5
M5_LIB_PATH=$GEM5_PATH/util/m5/${M5_BUILD_PATH/\/m5/}
PAPI_DIR=/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/PAPI/papi-install
PASS_DIR=/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation-Pass/Vectorizer-Pass


cd ../build
cmake -DCMAKE_VERBOSE_MAKEFILE=ON \
  -DLLVM_DIR=$LLVM_BUILD_DIR/lib/cmake/llvm \
  -DCMAKE_C_COMPILER=$LLVM_BUILD_DIR/bin/clang \
  -DCMAKE_CXX_COMPILER=$LLVM_BUILD_DIR/bin/clang++ \
  ../
make

cd ../test





#$LLVM_BUILD_DIR/bin/clang -g -O3  -fno-inline -fno-vectorize -fno-slp-vectorize -fno-unroll-loops -fpass-plugin=$PASS_DIR/build/ALC_Vectorizer.so  -S -emit-llvm $1 -o tmp.ll
#$LLVM_BUILD_DIR/bin/clang -g -O3  -fpass-plugin=$PASS_DIR/build/ALC_Vectorizer.so  -S -emit-llvm $1 -o tmp.ll

$LLVM_BUILD_DIR/bin/clang -g -O3 -target aarch64-unknown-linux-gnu -DSVE_INTRINSICS -fno-inline -fno-vectorize -fno-slp-vectorize -fno-unroll-loops -S -emit-llvm -I $GEM5_PATH/include -I ${PAPI_DIR}/include -L ${PAPI_DIR}/lib $1 -o scalar_code.ll
$LLVM_BUILD_DIR/bin/clang -g -O0 -target aarch64-unknown-linux-gnu -DSVE_INTRINSICS -fpass-plugin=$PASS_DIR/build/ALC_Vectorizer.so -S -emit-llvm -I $GEM5_PATH/include -I ${PAPI_DIR}/include -L ${PAPI_DIR}/lib  scalar_code.ll -o $2.ll
$LLVM_BUILD_DIR/bin/clang -g -O3 -target aarch64-unknown-linux-gnu -DSVE_INTRINSICS -fno-inline -fno-vectorize -fno-slp-vectorize -fno-unroll-loops -S -emit-llvm $2.ll -o $2_O3.ll
$LLVM_BUILD_DIR/bin/llc -O3 -mtriple=aarch64-linux-gnu -mattr=sve -filetype=obj $2_O3.ll -o $2.o
$LLVM_BUILD_DIR/bin/llc -O3 -mtriple=aarch64-linux-gnu -mattr=sve -filetype=obj scalar_code.ll -o scalar_code.o



# $LLVM_BUILD_DIR/bin/llc -O3  -mtriple=aarch64-linux-gnu -mattr=sve -mcpu=cortex-a710 -filetype=asm $2_O3.ll -o $2_O3.s


#opt --disable-output -dot-cfg --cfg-dot-filename-prefix=cfg $2_O3.ll
#dot -Tpdf cfg.simple_if.dot -o simple_if.pdf
#dot -Tpdf cfg.nested_if_case_1.dot -o nested_if_case_1.pdf
#dot -Tpdf cfg.nested_if_case_2.dot -o nested_if_case_2.pdf
#dot -Tpdf cfg.perfect_nested_if_case_1.dot -o perfect_nested_if_case_1.pdf
#dot -Tpdf cfg.perfect_nested_if_case_2.dot -o perfect_nested_if_case_2.pdf
#dot -Tpdf cfg.multiple_if_else_case_1.dot -o multiple_if_else_case_1.pdf
#dot -Tpdf cfg.multiple_if_else_case_2.dot -o multiple_if_else_case_2.pdf
# rm *.dot


#$LLVM_BUILD_DIR/bin/opt -S -load-pass-plugin ../build/ALC_Vectorizer.so -passes="alc-vectorizer" scalar_code.ll -o $2.ll
#$LLVM_BUILD_DIR/bin/clang -target aarch64-none-linux-gnu --gcc-toolchain=$GCC_TOOLCHAIN --sysroot=$GCC_TOOLCHAIN/aarch64-none-linux-gnu/libc  -march=armv8.2-a+sve alc_applied_O3.o -o alc_applied.x
#$LLVM_BUILD_DIR/bin/clang -target aarch64-none-linux-gnu --gcc-toolchain=$GCC_TOOLCHAIN --sysroot=$GCC_TOOLCHAIN/aarch64-none-linux-gnu/libc  -march=armv8.2-a+sve scalar_code.o -o scalar_code.x
