#!/usr/bin/env bash
# 128 Julia workers, 2 cells each (256 cells).  Usage: sbatch ... run_step4.sh
D=/mnt/home/jtindall/Documents/QuantumPhysics/ClusterScripts/nofourmubs_branch95_full_2026-10-01/simplerproof_step4
P=/mnt/home/jtindall/Documents/QuantumPhysics/ClusterScripts/nofourmubs_branch95_full_2026-10-01
cd $D; export OPENBLAS_NUM_THREADS=1 JULIA_NUM_THREADS=1 JULIA_PKG_PRECOMPILE_AUTO=0
for w in $(seq 0 127); do
  a=$((2*w+1)); b=$((2*w+2))
  $HOME/.juliaup/bin/julia +1.12.7 --startup-file=no --project=$P/code/Certification/jlenv_cluster $D/step4.jl $P/code $D/cells_L7.txt $a:$b 5 1800 > out_$w.jsonl 2> err_$w.log &
done
wait
cat out_*.jsonl > results.jsonl
