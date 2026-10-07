#!/bin/bash
# Step 4 production on rusty: one node runs workers FIRST..FIRST+127 of NW (preempt, requeue-safe: restart skips done job cells).
#   sbatch --export=ALL,FIRST=0,NW=2000,OUT=pilot,C0=5 run_step4_prod.sh
#SBATCH -J nofour-s4
#SBATCH -p preempt
#SBATCH --qos=preempt
#SBATCH -A ccq
#SBATCH -N 1
#SBATCH --exclusive
#SBATCH --mem=0
#SBATCH --requeue
#SBATCH -t 24:00:00
#SBATCH -o /mnt/home/jtindall/Documents/QuantumPhysics/ClusterScripts/nofourmubs_branch95_full_2026-10-01/simplerproof_step4/logs/s4_%j.out
P=/mnt/home/jtindall/Documents/QuantumPhysics/ClusterScripts/nofourmubs_branch95_full_2026-10-01; D=$P/simplerproof_step4
export OPENBLAS_NUM_THREADS=1 JULIA_NUM_THREADS=1 JULIA_PKG_PRECOMPILE_AUTO=0
mkdir -p $D/$OUT/err
for w in $(seq $FIRST $((FIRST + 127))); do
  [ $w -lt $NW ] || break
  $HOME/.juliaup/bin/julia +1.12.7 --startup-file=no --project=$P/code/Certification/jlenv_cluster $D/step4_prod.jl $P/code $D/$OUT $w $NW ${C0:-5} ${COVERMAX:-1200} 2> $D/$OUT/err/w$w.log &
done
wait
