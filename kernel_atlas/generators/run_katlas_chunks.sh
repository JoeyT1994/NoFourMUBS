#!/bin/bash
# Full run, Phase 2: the assembly chunks (chunk_run.py) from the Record tarballs in $ARCH.  Array task K of NTASK
# takes chunks K, K + NTASK, … of 0…120 (or $CHUNKS).  From the repository copy on ceph:
#   sbatch --array=0-3 --export=ALL,NTASK=4 --output=/mnt/ceph/users/$USER/nofour_katlas/logs/chunks_%A_%a.out \
#       kernel_atlas/generators/run_katlas_chunks.sh
#SBATCH --job-name=nofour-katlas-chunks
#SBATCH --partition=ccq
#SBATCH --nodes=1
#SBATCH --exclusive
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=128
#SBATCH --time=04:00:00
set -uo pipefail
export ELAN_HOME=${ELAN_HOME:-/mnt/ceph/users/$USER/elan}
export MATHLIB_CACHE_DIR=${MATHLIB_CACHE_DIR:-/mnt/ceph/users/$USER/mathlib_cache}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:-/mnt/ceph/users/$USER/xdg_cache}
export TMPDIR=/tmp                # node-local; nothing from the builds may land in $HOME (inode quota)
export PATH=$ELAN_HOME/bin:$PATH
VENV=${VENV:-/mnt/ceph/users/$USER/venvs/nofourmubs}
ARCH=${ARCH:-/mnt/ceph/users/$USER/nofour_katlas}
export OMP_NUM_THREADS=1 OPENBLAS_NUM_THREADS=1 MKL_NUM_THREADS=1
CPUS=$(env -u OMP_NUM_THREADS nproc)   # (nproc honours OMP_NUM_THREADS=1)
source kernel_atlas/generators/rusty_stage.sh
NTASK=${NTASK:-1}
K=${SLURM_ARRAY_TASK_ID:-0}
CHUNKS=${CHUNKS:-$(seq -s ' ' 0 120)}
MINE=$(echo $CHUNKS | tr ' ' '\n' | awk -v k="$K" -v n="$NTASK" '(NR - 1) % n == k' | tr '\n' ' ')
stage_in
echo "task $K/$NTASK on $(hostname): chunks $MINE"
"$VENV/bin/python" -u kernel_atlas/generators/chunk_run.py --archive "$ARCH" --chunks $MINE --jobs ${JOBS:-16} \
    --name "task${SLURM_ARRAY_JOB_ID:-$SLURM_JOB_ID}_$K"
stage_clean
echo "done on $(hostname)"
