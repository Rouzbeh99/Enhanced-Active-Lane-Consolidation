#!/bin/bash

for FILE in /home/rouzbeh/Graduate/Research/SPEC/installation/benchspec/CPU/544.nab_r/src/*;
  do
    if [[ "$FILE" == *".c" ]];then
       FILENAME="${FILE%.*}"
       custome="custome"
       output=$FILENAME$custome
       clang -g -O3 -fno-vectorize -fno-slp-vectorize -fno-unroll-loops -S -emit-llvm "$FILENAME".c -o "$output".ll
    fi
  done

for FILE in /home/rouzbeh/Graduate/Research/SPEC/installation/benchspec/CPU/544.nab_r/src/*;
  do
    if [[ "$FILE" == *".ll" ]];then
        cp "$FILE" ./SPEC_custome_pipeline
        rm -f "$FILE"
    fi
  done 