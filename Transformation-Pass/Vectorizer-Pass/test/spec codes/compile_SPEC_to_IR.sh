#!/bin/bash

for FILE in /home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Benchmarks/SPEC/benchspec/CPU/544.nab_r/src/*;
  do
    if [[ "$FILE" == *".c" ]];then
      echo "-----------------------------------------------------------------------"
      echo $FILE
       FILENAME="${FILE%.*}"
       output=$FILENAME
       clang -g -O3 -fno-vectorize -fno-slp-vectorize -fno-unroll-loops -S -emit-llvm "$FILENAME".c -o "$output".ll
       echo $output " compiled"
       echo "-----------------------------------------------------------------------"
    fi
  done

for FILE in /home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Benchmarks/SPEC/benchspec/CPU/544.nab_r/src/*;
  do
    if [[ "$FILE" == *".ll" ]];then
        cp "$FILE" ./
        rm -f "$FILE"
    fi
  done 