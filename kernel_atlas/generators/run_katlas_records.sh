#!/bin/bash
# Full run, Phase 1: kernel-check atlas Records with atlas_run.py --archive (tarballs and rows in $ARCH, nothing else
# on ceph).  Array task K of NTASK takes the Records K, K + NTASK, … of $IDX (one index per line, in chunk order), so
# the chunks complete roughly in order.  Resumable: settled Records are skipped.  From the repository copy on ceph:
#   sbatch --array=0-15 --time=09:24:00 --export=ALL,NTASK=16 --output=/mnt/ceph/users/$USER/nofour_katlas/logs/records_%A_%a.out \
#       kernel_atlas/generators/run_katlas_records.sh
#SBATCH --job-name=nofour-katlas-records
#SBATCH --partition=ccq
#SBATCH --nodes=1
#SBATCH --exclusive
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=128
#SBATCH --time=08:00:00
#SBATCH --signal=B:USR1@600
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
TASK=$K
IDX=${IDX:-$ARCH/idx_all.txt}
if [ -n "${IDX_DIR:-}" ]; then IDX=$IDX_DIR/idx_$K.txt; NTASK=1; K=0; fi   # one index file per task, as is
PART=()                           # resume from a snapshot: $PARTIAL_DIR/part_<task>.tar, modules logged before $PARTIAL_BEFORE
if [ -n "${PARTIAL_DIR:-}" ] && [ -f "$PARTIAL_DIR/part_$TASK.tar" ]; then
    PART=(--partial "$PARTIAL_DIR/part_$TASK.tar" --partial-before "${PARTIAL_BEFORE:-1e12}")
elif [ -n "${PARTIAL:-}" ]; then                 # or every snapshot in a directory ($PARTIAL)
    PART=(--partial "$PARTIAL" --partial-before "${PARTIAL_BEFORE:-1e12}")
fi
LT=${LEAN_THREADS:-0}
MAXREC=${MAXREC:-120}
DRAIN=${DRAIN_MIN:-70}
MEM_GB=$(awk '/MemTotal/ {printf "%d", $2 / 1048576 * 0.85}' /proc/meminfo)
stage_in
mkdir -p /tmp/katlas_work_$SLURM_JOB_ID
awk -v k="$K" -v n="$NTASK" '(NR - 1) % n == k' "$IDX" > /tmp/katlas_work_$SLURM_JOB_ID/idx.txt
echo "task $K/$NTASK on $(hostname): $CPUS cores, memory budget $MEM_GB GB, $(wc -l < /tmp/katlas_work_$SLURM_JOB_ID/idx.txt) Records, lean -j $LT"
# At the time limit: stop the driver and its Lean processes, then snapshot the partially compiled Records (sources,
# build directories, module logs) to $ARCH/partial, from which a later run resumes them (atlas_run.py --partial).
snapshot() {
    mkdir -p "$ARCH/partial"
    local out="$ARCH/partial/${SLURM_ARRAY_JOB_ID:-$SLURM_JOB_ID}_$TASK.tar"
    (cd / && tar cf "$out.tmp" --ignore-failed-read ${STAGE#/}/repo/kernel_atlas/lean/KernelAtlas/Rec[0-9]* \
        ${STAGE#/}/repo/lean/.lake/build/lib/lean/KernelAtlas/Rec[0-9]* tmp/katlas_work_$SLURM_JOB_ID/logs 2>/dev/null)
    mv "$out.tmp" "$out"
}
trap 'kill %1 2>/dev/null; pkill -f "$STAGE/" 2>/dev/null; wait; snapshot; stage_clean; echo "stopped (USR1) on $(hostname), snapshot in $ARCH/partial"; exit 0' USR1
"$VENV/bin/python" -u kernel_atlas/generators/atlas_run.py --out /tmp/katlas_work_$SLURM_JOB_ID --archive "$ARCH" \
    --name "task${SLURM_ARRAY_JOB_ID:-$SLURM_JOB_ID}_$TASK" --idx-file /tmp/katlas_work_$SLURM_JOB_ID/idx.txt \
    --mem-gb "$MEM_GB" --gen-workers $((CPUS / 6)) --max-records "$MAXREC" --max-procs "$CPUS" --lean-threads "$LT" --drain-min "$DRAIN" "${PART[@]}" &
wait %1
stage_clean
echo "done on $(hostname)"
