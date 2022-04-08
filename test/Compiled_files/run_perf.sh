
rm -f *.out
rm -f *.gz

clang dijkstra_no_select.ll -o dijkstra_no_select.out
perf stat -e duration_time gzip dijkstra_no_select.out

