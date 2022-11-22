#!/bin/bash

FILE=$1

for FILE in *.x
do
  filename="${FILE%.*}"

  cp $FILE /home/rouzbeh/Graduate/LLVM/GEM5/gem5-arm-sve
  # shellcheck disable=SC2164
  cd /home/rouzbeh/Graduate/LLVM/GEM5/gem5-arm-sve

  source scripts/setenv.sh

  VL_array=(1 2 4 8 16)
  # shellcheck disable=SC2068
  for i in ${VL_array[@]}; do
    bash scripts/run-binary-in-gem5.sh -b $FILE -l $i
    result_name="$filename-$i.txt"
    # shellcheck disable=SC2164
    cp m5out/stats.txt /home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation-Pass/Vectorizer-Pass/test/simulation_results/$result_name
    echo "------------------------------------------------------------------------------------------------------------------"
  done
  rm $FILE
  cd /home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation-Pass/Vectorizer-Pass/test

done

