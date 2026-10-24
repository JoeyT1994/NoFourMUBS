#!/bin/bash
# Seed kernel run, Phase 2: the assembly chunks (100 balls each) from the ball tarballs in $ARCH: unpack the chunk's
# ball oleans on local disk, compile SeedA/Chunk<k>.lean, write $ARCH/chunks/Chunk<k>.tar (the balls' and the chunk's
# oleans).  Array task K of NTASK takes chunks K, K + NTASK, ….
#   sbatch --array=0-3 --export=ALL,NTASK=4,NB=12000 --output=/mnt/ceph/users/$USER/nofour_seedk/logs/chunks_%A_%a.out \
#       kernel_atlas/generators/run_seed_chunks.sh
#SBATCH --job-name=nofour-seedk-chunks
#SBATCH --partition=ccq
#SBATCH --nodes=1
#SBATCH --exclusive
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=128
#SBATCH --time=04:00:00
set -uo pipefail
export ELAN_HOME=${ELAN_HOME:-/mnt/ceph/users/$USER/elan}
export TMPDIR=/tmp
export PATH=$ELAN_HOME/bin:$PATH
VENV=${VENV:-/mnt/ceph/users/$USER/venvs/nofourmubs}
ARCH=${ARCH:-/mnt/ceph/users/$USER/nofour_seedk}
export REPO=${REPO:-/mnt/ceph/users/$USER/seedk_repo}   # this branch, rsynced (not the shared copy)
source kernel_atlas/generators/rusty_stage.sh
export STAGE_TAR=${SEED_STAGE_TAR:-/mnt/ceph/users/$USER/nofour_seed_stage.tar}
: "${NB:?set NB, the number of balls}"
NTASK=${NTASK:-1}; K=${SLURM_ARRAY_TASK_ID:-0}
NK=$(( (NB + 99) / 100 ))
stage_in
mkdir -p "$ARCH/chunks"
for c in $(seq 0 $((NK - 1)) | awk -v k="$K" -v n="$NTASK" '(NR - 1) % n == k'); do
    [ -f "$ARCH/chunks/Chunk$c.tar" ] && continue
    for j in $(seq $((100 * c)) $((100 * c + 99))); do
        [ $j -ge $NB ] && break
        tar xf "$ARCH/oleans/B$j.tar" -C lean/.lake/build/lib/lean && tar xzf "$ARCH/src/B$j.tar.gz" -C kernel_atlas/lean
    done
    "$VENV/bin/python" kernel_atlas/generators/seed_assembly.py --nb "$NB" --chunks $c
    (cd lean && /usr/bin/time -v lake env lean -R ../kernel_atlas/lean -o .lake/build/lib/lean/KernelAtlas/SeedA/Chunk$c.olean \
        ../kernel_atlas/lean/KernelAtlas/SeedA/Chunk$c.lean) > "$ARCH/logs/chunk$c.log" 2>&1 || { echo "chunk $c failed"; continue; }
    tar cf "$ARCH/chunks/Chunk$c.tar.tmp" -C lean/.lake/build/lib/lean KernelAtlas/SeedA/Chunk$c.olean \
        $(for j in $(seq $((100 * c)) $((100 * c + 99))); do [ $j -lt $NB ] && echo KernelAtlas/SeedA/B$j; done) \
        && mv "$ARCH/chunks/Chunk$c.tar.tmp" "$ARCH/chunks/Chunk$c.tar"
    echo "chunk $c done"
done
stage_clean
