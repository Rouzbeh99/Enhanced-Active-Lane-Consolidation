#!/bin/bash

for FILE in /home/rouzbeh/Graduate/Research/LLVM/ALC/test/Compiled_files/*; do
  if [[ "$FILE" == *"_norm"* ]]; then
    cp "$FILE" /home/rouzbeh/Graduate/Research/LLVM/ALC/test/Perf_Results
  fi
done

# shellcheck disable=SC2164
cd /home/rouzbeh/Graduate/Research/LLVM/ALC/build
LLVM_BUILD_DIR=/home/rouzbeh/Graduate/Research/LLVM/llvm-project/build
cmake -DCMAKE_VERBOSE_MAKEFILE=ON \
  -DLLVM_DIR=$LLVM_BUILD_DIR/lib/cmake/llvm \
  -DCMAKE_C_COMPILER=$LLVM_BUILD_DIR/bin/clang \
  -DCMAKE_CXX_COMPILER=$LLVM_BUILD_DIR/bin/clang++ \
  ../
make

# shellcheck disable=SC2164
cd /home/rouzbeh/Graduate/Research/LLVM/ALC/test/Perf_Results
for FILE in *; do
  if [[ "$FILE" == *".ll"* ]]; then

    echo "-------------------------------------------------------------------------------------------------------------------------------"
    echo "Start analyzing $FILE:"
    echo "-------------------------------------------------------------------------------------------------------------------------------"
    echo "-------------------------------------------------------------------------------------------------------------------------------"
    opt -load-pass-plugin=/home/rouzbeh/Graduate/Research/LLVM/ALC/build/ALC.so -passes="check-alc-conditions" "$FILE" --disable-output
    echo ""
    echo "-------------------------------------------------------------------------------------------------------------------------------"
  fi
done
