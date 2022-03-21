#!/bin/bash

for FILE in /home/rouzbeh/Graduate/Research/SPEC/installation/benchspec/CPU/544.nab_r/src/*;
  do
    if [[ "$FILE" == *".c" ]];then
       FILENAME="${FILE%.*}"
       _full_optimization="_full_optimization"
       output=$FILENAME$_full_optimization
       clang -g -O3 "$FILENAME".c -S -emit-llvm -o "$output".ll
    fi
  done

for FILE in /home/rouzbeh/Graduate/Research/SPEC/installation/benchspec/CPU/544.nab_r/src/*;
  do
    if [[ "$FILE" == *".ll" ]];then
        cp "$FILE" ./
        rm -f "$FILE"
    fi
  done