#!/usr/bin/env bash
set -e
make clean
make
./gauss_simd --sizes 128,256,512,1024 --reps 3 --csv results.csv
