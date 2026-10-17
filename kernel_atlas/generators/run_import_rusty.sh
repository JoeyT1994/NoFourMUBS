#!/bin/bash
# Phase 3 of the pilot (docs/KERNEL_ASSEMBLY.md): olean volume of the built Records, one Lean process importing all of
# them, and the assembly chunks for complete chunks.  After run_atlas_rusty.sh with KEEP=1.  From the repository root:
#   sbatch --export=ALL,FIRST=0,LAST=999,OUTROOT=kernel_atlas/results/pilot kernel_atlas/generators/run_import_rusty.sh
#SBATCH --job-name=nofour-kpilot-import
#SBATCH --partition=ccq
#SBATCH --nodes=1
#SBATCH --exclusive
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=128   # without it the batch step is bound to one core
#SBATCH --time=01:00:00
#SBATCH --output=kernel_atlas/results/pilot/logs/import_%j.out

set -uo pipefail
export ELAN_HOME=${ELAN_HOME:-/mnt/ceph/users/$USER/elan}
export MATHLIB_CACHE_DIR=${MATHLIB_CACHE_DIR:-/mnt/ceph/users/$USER/mathlib_cache}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:-/mnt/ceph/users/$USER/xdg_cache}
export PATH=$ELAN_HOME/bin:$PATH
VENV=${VENV:-/mnt/ceph/users/$USER/venvs/nofourmubs}
FIRST=${FIRST:-0}
LAST=${LAST:-999}
OUTROOT=$PWD/${OUTROOT:-kernel_atlas/results/pilot}
source kernel_atlas/generators/rusty_stage.sh
stage_in                    # local disk (ceph is FUSE: see rusty_stage.sh); includes the Records' oleans
"$VENV/bin/python" -u kernel_atlas/generators/pilot_import.py --first "$FIRST" --last "$LAST" --out "$OUTROOT" --jobs 8
stage_out_build
stage_out_sources
stage_clean
echo "done on $(hostname)"
