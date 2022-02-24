#!/bin/bash
cd ../build
make
cd ../test
# opt -load ../build/ALC.so -findDivergenceInLoop $1 --disable-output
opt -load-pass-plugin=../build/ALC.so -passes="check-alc-conditions" $1  --disable-output
