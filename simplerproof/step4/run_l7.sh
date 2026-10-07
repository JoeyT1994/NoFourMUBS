#!/bin/bash
# step4_l7.jl on one node: workers FIRST..FIRST+127 of NW.  env: MODE (plan|run), OUT, PREV (plan), C0, FIRST, NW
#SBATCH -J nofour-s4l7
#SBATCH -A ccq
#SBATCH -N 1
#SBATCH --exclusive
#SBATCH --mem=0
#SBATCH -t 24:00:00
#SBATCH -o /mnt/home/jtindall/Documents/QuantumPhysics/ClusterScripts/nofourmubs_branch95_full_2026-10-01/simplerproof_step4/logs/l7_%j.out
P=/mnt/home/jtindall/Documents/QuantumPhysics/ClusterScripts/nofourmubs_branch95_full_2026-10-01; D=$P/simplerproof_step4
export OPENBLAS_NUM_THREADS=1 JULIA_NUM_THREADS=1 JULIA_PKG_PRECOMPILE_AUTO=0
mkdir -p $D/$OUT/err
for w in $(seq $FIRST $((FIRST + 127))); do
  [ $w -lt $NW ] || break
  $HOME/.juliaup/bin/julia +1.12.7 --startup-file=no --project=$P/code/Certification/jlenv_cluster $D/step4_l7.jl $P/code $D/$OUT $w $NW $C0 1200 $MODE ${PREV:+$D/$PREV} 2> $D/$OUT/err/${MODE}_w$w.log &
done
wait
