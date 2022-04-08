clang -g -O3 -fno-vectorize -fno-slp-vectorize -fno-unroll-loops -S -emit-llvm  dijkstra.c -o dijkstra_full_opt.ll

