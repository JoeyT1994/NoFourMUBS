#!/bin/bash
# Full run, Phase 3: the final module and #print axioms no_four_mubs_kernel (final_run.py), from the stage with
# NoFourMUBs.Final built (run_katlas_setup.sh) and the chunk tarballs in $ARCH, all unpacked on local disk only.
# STUBS=1: missing chunks as sorry stubs (smoke test).  From the repository copy on ceph:
#   sbatch --output=/mnt/ceph/users/$USER/nofour_katlas/logs/final_%j.out kernel_atlas/generators/run_katlas_final.sh
#SBATCH --job-name=nofour-katlas-final
#SBATCH --partition=ccq
#SBATCH --nodes=1
#SBATCH --exclusive
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=128
#SBATCH --time=03:00:00
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
export STAGE_TAR=${STAGE_TAR_FINAL:-/mnt/ceph/users/$USER/nofour_stage_final.tar}
stage_in
"$VENV/bin/python" -u kernel_atlas/generators/final_run.py --archive "$ARCH" --name "${NAME:-final_$SLURM_JOB_ID}" ${STUBS:+--stubs}
stage_clean
echo "done on $(hostname)"
