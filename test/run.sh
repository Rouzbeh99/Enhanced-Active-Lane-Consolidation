#!/bin/bash
cd ../build
make
cd ../test
# opt -load ../build/ALC.so -findDivergenceInLoop $1 --disable-output
opt -load-pass-plugin=../build/ALC.so -passes="find-divergence-in-loop" $1 --disable-output
