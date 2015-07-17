#!/usr/bin/sh
perf stat -e L1-dcache-loads -e L1-dcache-load-misses -e LLC-load-misses -e cache-misses -e instructions ./matrix_access -r 1000 -c 1000 -byrow >> resuls
perf stat -e L1-dcache-loads -e L1-dcache-load-misses -e LLC-load-misses -e cache-misses -e instructions ./matrix_access -r 1000 -c 1000 -bycolumn >> resuls
perf stat -e L1-dcache-loads -e L1-dcache-load-misses -e LLC-load-misses -e cache-misses -e instructions ./matrix_access -r 10000 -c 10000 -bycolumn >> resuls
perf stat -e L1-dcache-loads -e L1-dcache-load-misses -e LLC-load-misses -e cache-misses -e instructions ./matrix_access -r 10000 -c 10000 -byrow >> resuls
