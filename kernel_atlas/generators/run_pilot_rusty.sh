#!/bin/bash
# Phase 1 of the assembly pilot (docs/KERNEL_ASSEMBLY.md): kernel-check Records FIRST..LAST with atlas_run.py, keeping
# the oleans for the import test (run_import_rusty.sh).  64 cores and 900 GB per array task (not whole nodes), Records
# strided over the tasks.  After setup_lean_rusty.sh.  From the repository root:
#   sbatch --array=0-3 --export=ALL,NTASK=4,FIRST=0,LAST=999 kernel_atlas/generators/run_pilot_rusty.sh
#SBATCH --job-name=nofour-kpilot-records
#SBATCH --partition=ccq
#SBATCH --nodes=1
#SBATCH --exclusive
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=128   # without it the batch step is bound to one core
#SBATCH --time=01:20:00
#SBATCH --output=kernel_atlas/results/pilot/logs/records_%A_%a.out
#SBATCH --signal=B:USR1@900

set -uo pipefail
export ELAN_HOME=${ELAN_HOME:-/mnt/ceph/users/$USER/elan}
export MATHLIB_CACHE_DIR=${MATHLIB_CACHE_DIR:-/mnt/ceph/users/$USER/mathlib_cache}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:-/mnt/ceph/users/$USER/xdg_cache}
export TMPDIR=/tmp                # node-local; nothing from the builds may land in $HOME (inode quota)
export PATH=$ELAN_HOME/bin:$PATH
VENV=${VENV:-/mnt/ceph/users/$USER/venvs/nofourmubs}
NTASK=${NTASK:-4}
FIRST=${FIRST:-0}
LAST=${LAST:-999}
K=${SLURM_ARRAY_TASK_ID:-0}
OUT=$PWD/${OUTROOT:-kernel_atlas/results/pilot}/node$K       # rows and logs straight to ceph
mkdir -p "$OUT"
source kernel_atlas/generators/rusty_stage.sh
stage_in                    # Lean runs from the node's local disk (ceph is FUSE: see rusty_stage.sh)
finish() {                  # once: stop the driver and its Lean processes, copy the builds back to ceph
  [ -n "${FINISHED:-}" ] && return; FINISHED=1
  kill %1 2>/dev/null; pkill -f "$STAGE/" 2>/dev/null; wait
  stage_out_build; stage_out_sources; stage_clean; echo "staged out on $(hostname)"
}
trap finish USR1
export OMP_NUM_THREADS=1 OPENBLAS_NUM_THREADS=1 MKL_NUM_THREADS=1
MEM_GB=$(awk '/MemTotal/ {printf "%d", $2 / 1048576 * 0.85}' /proc/meminfo)
CPUS=$(env -u OMP_NUM_THREADS nproc)   # (nproc honours OMP_NUM_THREADS=1 set above)
seq $((FIRST + K)) "$NTASK" "$LAST" > "$OUT/idx.txt"
echo "task $K on $(hostname): $CPUS cores, memory budget $MEM_GB GB, $(wc -l < "$OUT/idx.txt") Records"
"$VENV/bin/python" -u kernel_atlas/generators/atlas_run.py --out "$OUT" --idx-file "$OUT/idx.txt" \
    --mem-gb "$MEM_GB" --gen-workers $((CPUS / 6)) --max-records 60 --max-procs "$CPUS" --keep &
wait %1
trap - USR1
finish
echo "done on $(hostname)"
