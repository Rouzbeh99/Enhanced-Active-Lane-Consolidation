#!/bin/bash

for value in {1..100}; do
  rm -f *.out
  rm -f *.gz

  clang dijkstra_no_select.ll -o dijkstra_no_select.out
  perf stat -o results/dijkstra_no_select_cache_results_"$value".txt -e L1-dcache-loads,L1-dcache-load-misses,LLC-loads,LLC-load-misses gzip dijkstra_no_select.out

  rm -f *.out
  rm -f *.gz

  clang dijkstra_no_select.ll -o dijkstra_no_select.out
  perf stat -o results/dijkstra_no_select_branch_results_"$value".txt -e branch-instructions,branch-loads,branch-load-misses gzip dijkstra_no_select.out

  rm -f *.out
  rm -f *.gz

  clang dijkstra_no_select.ll -o dijkstra_no_select.out
  perf stat -o results/dijkstra_no_select_time_Result_"$value".txt -e duration_time gzip dijkstra_no_select.out

  echo "Round $value"
done

rm -f *.out
rm -f *.gz
