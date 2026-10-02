#!/usr/bin/env bash
# A few straggling tasks without a whole node: one core per task line of $TASKFILE, all run in parallel.
#SBATCH --job-name=nofour-small
#SBATCH --account=ccq
#SBATCH --partition=ccq
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=12G
#SBATCH --time=48:00:00
#SBATCH --output=logs/slurm-%j.out
#SBATCH --error=logs/slurm-%j.err
set -euo pipefail
cd "${PACKAGE_DIR:?}"
export OPENBLAS_NUM_THREADS=1 JULIA_NUM_THREADS=1
while IFS= read -r line; do bash -c "$line" & done < "${TASKFILE:?}"
wait
