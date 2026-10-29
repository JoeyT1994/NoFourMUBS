#!/bin/bash
# One task of the selective chain: levels LEVELS (default 4 5 6) in sequence for the balls of task T of NT.
#SBATCH --job-name=tc-chain
#SBATCH --partition=ccq
#SBATCH --nodes=1
#SBATCH --exclusive
#SBATCH --mem=0
#SBATCH --time=12:00:00
#SBATCH --output=/mnt/ceph/users/jtindall/seed_atlas_build/triples_tc/selective/chain_%j.out
S=/mnt/ceph/users/jtindall/seed_atlas_build/triples_tc/selective
for L in ${LEVELS:-4 5 6}; do LEVEL=$L bash $S/run_select.sh; done
