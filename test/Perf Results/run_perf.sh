#!/bin/bash

for FILE in /home/rouzbeh/Graduate/Research/LLVM/ALC/test/Compiled_files/*;
  do
    if [[ "$FILE" == *"_norm"* ]];then
        perf stat -e L1-dcache-loads,L1-dcache-load-misses gzip "$FILE"
    fi
  done
