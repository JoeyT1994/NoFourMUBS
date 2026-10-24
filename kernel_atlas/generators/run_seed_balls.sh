#!/bin/bash
# Seed kernel run, Phase 1: kernel-check seed balls (seed_run.py: generate, compile under a memory budget, archive one
# olean tarball, one source tarball and one row per ball in $ARCH).  Array task K of NTASK takes the balls K, K + NTASK,
# … of $IDX.  Resumable (balls with an ok row are skipped); USR1 600 s before the limit stops cleanly.
#   sbatch --array=0-29 --time=12:00:00 --export=ALL,NTASK=30,CERT=/mnt/ceph/users/$USER/seed_atlas_certificate.json.gz \
#       --output=/mnt/ceph/users/$USER/nofour_seedk/logs/balls_%A_%a.out kernel_atlas/generators/run_seed_balls.sh
#SBATCH --job-name=nofour-seedk-balls
#SBATCH --partition=ccq
#SBATCH --nodes=1
#SBATCH --exclusive
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=128
#SBATCH --time=12:00:00
#SBATCH --signal=B:USR1@600
set -uo pipefail
export ELAN_HOME=${ELAN_HOME:-/mnt/ceph/users/$USER/elan}
export MATHLIB_CACHE_DIR=${MATHLIB_CACHE_DIR:-/mnt/ceph/users/$USER/mathlib_cache}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:-/mnt/ceph/users/$USER/xdg_cache}
export TMPDIR=/tmp
export PATH=$ELAN_HOME/bin:$PATH
VENV=${VENV:-/mnt/ceph/users/$USER/venvs/nofourmubs}
ARCH=${ARCH:-/mnt/ceph/users/$USER/nofour_seedk}
export OMP_NUM_THREADS=1 OPENBLAS_NUM_THREADS=1 MKL_NUM_THREADS=1
CPUS=$(env -u OMP_NUM_THREADS nproc)
export REPO=${REPO:-/mnt/ceph/users/$USER/seedk_repo}   # this branch, rsynced (not the shared copy)
source kernel_atlas/generators/rusty_stage.sh
export STAGE_TAR=${SEED_STAGE_TAR:-/mnt/ceph/users/$USER/nofour_seed_stage.tar}
export SEED_TABLE_MOD=KernelAtlas.SeedA.TabAll
: "${CERT:?set CERT}"
NTASK=${NTASK:-1}
K=${SLURM_ARRAY_TASK_ID:-0}
IDX=${IDX:-$ARCH/idx_all.txt}
MEM_GB=$(awk '/MemTotal/ {printf "%d", $2 / 1048576 * 0.85}' /proc/meminfo)
stage_in
W=/tmp/seedk_work_$SLURM_JOB_ID
mkdir -p $W
awk -v k="$K" -v n="$NTASK" '(NR - 1) % n == k' "$IDX" > $W/idx.txt
echo "task $K/$NTASK on $(hostname): $CPUS cores, $MEM_GB GB, $(wc -l < $W/idx.txt) balls"
"$VENV/bin/python" -u kernel_atlas/generators/seed_run.py --cert "$CERT" --idx-file $W/idx.txt --out $W \
    --archive "$ARCH" --name "task${SLURM_ARRAY_JOB_ID:-$SLURM_JOB_ID}_$K" --max-procs "$CPUS" --mem-gb "$MEM_GB" \
    --gen-workers $((CPUS / 4)) --hours "${HOURS:-11.5}" --drain-min "${DRAIN_MIN:-90}" &
trap 'kill -USR1 %1 2>/dev/null' USR1
wait %1; wait %1 2>/dev/null
stage_clean
echo "done on $(hostname)"
