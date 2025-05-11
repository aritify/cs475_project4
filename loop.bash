#!/bin/bash

for n in 4 40 400 4000 40000 400000 1000000 2000000 4000000 8000000
do
  g++ -o simd.proj4 -DARRAYSIZE=$n simd.proj4.cpp -lm -fopenmp
  #g++ -o simd.proj4 -DARRAYSIZE=$n simd.intrinsics.cpp -lm -fopenmp
  ./simd.proj4
done
