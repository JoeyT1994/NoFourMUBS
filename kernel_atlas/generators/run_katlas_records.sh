#!/bin/bash
# Full run, Phase 1: kernel-check atlas Records with atlas_run.py --archive (tarballs and rows in $ARCH, nothing else
# on ceph).  Array task K of NTASK takes the Records K, K + NTASK, … of $IDX (one index per line, in chunk order), so
# the chunks complete roughly in order.  Resumable: settled Records are skipped.  From the repository copy on ceph:
#   sbatch --array=0-19 --export=ALL,NTASK=20 --output=/mnt/ceph/users/$USER/nofour_katlas/logs/records_%A_%a.out \
#       kernel_atlas/generators/run_katlas_records.sh
#SBATCH --job-name=nofour-katlas-records
#SBATCH --partition=ccq
#SBATCH --nodes=1
#SBATCH --exclusive
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=128
#SBATCH --time=08:00:00
#SBATCH --signal=B:USR1@300
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
NTASK=${NTASK:-20}
K=${SLURM_ARRAY_TASK_ID:-0}
IDX=${IDX:-$ARCH/idx_all.txt}
LT=${LEAN_THREADS:-1}
MAXREC=${MAXREC:-160}
MEM_GB=$(awk '/MemTotal/ {printf "%d", $2 / 1048576 * 0.85}' /proc/meminfo)
stage_in
mkdir -p /tmp/katlas_work_$SLURM_JOB_ID
awk -v k="$K" -v n="$NTASK" '(NR - 1) % n == k' "$IDX" > /tmp/katlas_work_$SLURM_JOB_ID/idx.txt
echo "task $K/$NTASK on $(hostname): $CPUS cores, memory budget $MEM_GB GB, $(wc -l < /tmp/katlas_work_$SLURM_JOB_ID/idx.txt) Records, lean -j $LT"
trap 'kill %1 2>/dev/null; pkill -f "$STAGE/" 2>/dev/null; wait; stage_clean; echo "stopped (USR1) on $(hostname)"; exit 0' USR1
"$VENV/bin/python" -u kernel_atlas/generators/atlas_run.py --out /tmp/katlas_work_$SLURM_JOB_ID --archive "$ARCH" \
    --name "task${SLURM_ARRAY_JOB_ID:-$SLURM_JOB_ID}_$K" --idx-file /tmp/katlas_work_$SLURM_JOB_ID/idx.txt \
    --mem-gb "$MEM_GB" --gen-workers $((CPUS / 6)) --max-records "$MAXREC" --max-procs "$CPUS" --lean-threads "$LT" &
wait %1
stage_clean
echo "done on $(hostname)"
