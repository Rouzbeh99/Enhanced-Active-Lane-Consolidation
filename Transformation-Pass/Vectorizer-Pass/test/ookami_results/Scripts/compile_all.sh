#!/bin/bash

export PAPI_PATH=/lustre/home/rpaktinatkel/PAPI/papi-install
export LD_LIBRARY_PATH=/lustre/home/rpaktinatkel/PAPI/papi-install/lib
module load llvm/15.0.3


for file in *.o; do
	filename=$(basename -- "$file")
	filename="${filename%.*}"
	clang -I ${PAPI_PATH}/include -L ${PAPI_PATH}/lib -lpapi ${filename}.o -o ${filename}.x
done

