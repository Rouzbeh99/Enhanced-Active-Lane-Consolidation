#!/bin/bash
fullfile="$1"
FILENAME="${fullfile%.*}"
tmp="_if_converted"
output=$FILENAME$tmp
llc -stop-after=machine-cp "$FILENAME".ll -o "$FILENAME".mir
llc --x86-early-ifcvt "$FILENAME".mir -o "$output".mir
llc -start-after=machine-cp "$output".mir -o "$output".s