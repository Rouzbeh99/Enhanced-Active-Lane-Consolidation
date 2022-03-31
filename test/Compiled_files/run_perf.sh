#!/bin/bash

rm -f *.out
rm -f *.gz

clang  dijkstra_no_select.ll -o dijkstra_no_select.out
clang  dijkstra_full_opt.ll -o dijkstra_full_opt.out

perf stat -o  results/dijkstra_no_select_cache_results.txt -e L1-dcache-loads,L1-dcache-load-misses,LLC-loads,LLC-load-misses  gzip dijkstra_no_select.out
perf stat -o  results/dijkstra_full_opt_cache_Result.txt -e L1-dcache-loads,L1-dcache-load-misses,LLC-loads,LLC-load-misses  gzip  dijkstra_full_opt.out

rm -f *.out
rm -f *.gz

clang  dijkstra_no_select.ll -o dijkstra_no_select.out
clang  dijkstra_full_opt.ll -o dijkstra_full_opt.out

perf stat -o  results/dijkstra_no_select_branch_results.txt -e branch-instructions,branch-loads,branch-load-misses  gzip dijkstra_no_select.out
perf stat -o  results/dijkstra_full_opt_branch_Result.txt -e branch-instructions,branch-loads,branch-load-misses  gzip  dijkstra_full_opt.out


rm -f *.out
rm -f *.gz

clang  encryptionKey_no_select.ll -o encryptionKey_no_select.out
clang  encryptionKey_full_opt.ll -o encryptionKey_full_opt.out

perf stat -o  results/encryptionKey_no_select_cache_results.txt -e L1-dcache-loads,L1-dcache-load-misses,LLC-loads,LLC-load-misses  gzip encryptionKey_no_select.out
perf stat -o  results/encryptionKey_full_opt_cache_Result.txt -e L1-dcache-loads,L1-dcache-load-misses,LLC-loads,LLC-load-misses  gzip  encryptionKey_full_opt.out

rm -f *.out
rm -f *.gz

clang  encryptionKey_no_select.ll -o encryptionKey_no_select.out
clang  encryptionKey_full_opt.ll -o encryptionKey_full_opt.out

perf stat -o  results/encryptionKey_no_select_branch_results.txt -e branch-instructions,branch-loads,branch-load-misses  gzip encryptionKey_no_select.out
perf stat -o  results/encryptionKey_full_opt_branch_Result.txt -e branch-instructions,branch-loads,branch-load-misses  gzip  encryptionKey_full_opt.out
