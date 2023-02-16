#!/bin/bash

export PAPI_PATH=/lustre/home/rpaktinatkel/PAPI/papi-install
export LD_LIBRARY_PATH=/lustre/home/rpaktinatkel/PAPI/papi-install/lib

files=()
for file in *.x; do
	filename=$(basename -- "$file")
	filename="${filename%.*}"
	files+=($filename)
done

rm results/*
 

repeat=100
NODE=$((RANDOM % 3 + 1)) 

for i in $(seq 1 $repeat); do
	files=( $(shuf -e "${files[@]}") )
	for file in "${files[@]}"; do
		 filename=$(basename -- "$file")
		 filename="${filename%.*}"
		 numactl -N $NODE -m $NODE -s./${filename}.x &> ./results/${filename}-report-${i}.txt
	done
	
done
	 