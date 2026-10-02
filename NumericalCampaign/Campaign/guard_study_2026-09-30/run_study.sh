#!/usr/bin/env bash
# 64 parallel single-threaded Julia processes over newonly_sample.txt (study only; guarded package code, read-only)
set -euo pipefail
cd "$(dirname "$0")"
PKG=$HOME/Documents/QuantumPhysics/ClusterScripts/nofourmubs_guarded_2026-09-29
export OPENBLAS_NUM_THREADS=1 JULIA_NUM_THREADS=1 JULIA_PKG_PRECOMPILE_AUTO=0
N=$(wc -l < newonly_sample.txt); P=64; per=$(( (N + P - 1) / P ))
mkdir -p out
for k in $(seq 0 $((P - 1))); do
  a=$(( k * per + 1 )); b=$(( (k + 1) * per ))
  [ $a -le $N ] || break
  $HOME/.juliaup/bin/julia +1.12.7 --startup-file=no --project="$PKG/code/Certification/jlenv_cluster" guard_study.jl "$PKG" newonly_sample.txt $a $b out/s_$k.jsonl &> out/s_$k.log &
done
wait
cat out/s_*.jsonl > study.jsonl
