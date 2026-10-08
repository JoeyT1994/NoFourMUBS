#!/usr/bin/env bash
#SBATCH --job-name=nofour-branch-second
#SBATCH --account=ccq
#SBATCH --partition=ccq
#SBATCH --constraint=rome
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=128
#SBATCH --cpus-per-task=1
#SBATCH --exclusive
#SBATCH --mem=0
#SBATCH --time=04:00:00
#SBATCH --output=logs/slurm-%j.out
#SBATCH --error=logs/slurm-%j.err
set -euo pipefail
cd "${BRANCH_PACKAGE:?}"
module load modules/2.4-20250724
module load disBatch
export OPENBLAS_NUM_THREADS=1 OMP_NUM_THREADS=1
sha256sum -c MANIFEST.sha256 > logs/preflight-${SLURM_JOB_ID}.txt
disBatch -c 1 -p "logs/secondpass_${SLURM_JOB_ID}_" tasks_secondpass_20260930a.txt
