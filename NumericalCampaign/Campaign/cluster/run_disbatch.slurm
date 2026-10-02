#!/usr/bin/env bash
# Generic disBatch job: runs every line of $TASKFILE on the allocated nodes, one task per core.
# Node count and type are set by submit.sh (sbatch --nodes, --constraint, --ntasks-per-node).
#SBATCH --job-name=nofour
#SBATCH --account=ccq
#SBATCH --partition=ccq
#SBATCH --exclusive
#SBATCH --mem=0
#SBATCH --cpus-per-task=1
#SBATCH --time=7-00:00:00
#SBATCH --output=logs/slurm-%j.out
#SBATCH --error=logs/slurm-%j.err

set -euo pipefail
cd "${PACKAGE_DIR:?PACKAGE_DIR must be exported}"
module load modules/2.4-20250724
module load disBatch
export OPENBLAS_NUM_THREADS=1 JULIA_NUM_THREADS=1
mkdir -p logs/disbatch
disBatch -c 1 -p "logs/disbatch/${TASKLABEL:?}_${SLURM_JOB_ID}_" "${TASKFILE:?}"
