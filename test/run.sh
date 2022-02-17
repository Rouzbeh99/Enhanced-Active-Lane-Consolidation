#!/bin/bash
cd ../build
make
cd ../test
opt -load ../build/ALC.so -findDivergenceInLoop $1 --disable-output
