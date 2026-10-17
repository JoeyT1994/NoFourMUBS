#!/bin/bash
# Full run, Phase 0b: build NoFourMUBs.Final (the proof's --lean-full targets), Tao's Record and the special fields on
# top of the shared stage, and pack them as $STAGE_TAR_FINAL for the final job.  From the repository copy on ceph:
#   sbatch --output=/mnt/ceph/users/$USER/nofour_katlas/logs/setup_%j.out kernel_atlas/generators/run_katlas_setup.sh
#SBATCH --job-name=nofour-katlas-setup
#SBATCH --partition=ccq
#SBATCH --nodes=1
#SBATCH --exclusive
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=128
#SBATCH --time=10:00:00
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
STAGE_TAR_FINAL=${STAGE_TAR_FINAL:-/mnt/ceph/users/$USER/nofour_stage_final.tar}
stage_in
cd lean
lake build NoFourMUBs.Final KernelAtlas.RecTao.Record KernelAtlas.Special.Exact KernelAtlas.Special.Anchor 2>&1 | grep -E "error|✖|Build completed" | tail -20
printf 'import KernelAtlas.RecTao.Record\nimport KernelAtlas.Special.Anchor\nimport NoFourMUBs.Final\n#print axioms NoFourMUBs.KernelAtlas.RecTao.cert\n#print axioms NoFourMUBs.KernelAtlas.RecTao.boundary\n#print axioms NoFourMUBs.KernelAtlas.RecTao.tao\n#print axioms NoFourMUBs.KernelAtlas.Special.fourier\n#print axioms NoFourMUBs.KernelAtlas.Special.anchor\n#print axioms NoFourMUBs.Final.no_four_mubs\n' > /tmp/ax_setup_$SLURM_JOB_ID.lean
lake env lean /tmp/ax_setup_$SLURM_JOB_ID.lean
cd ..
stage_pack "$STAGE_TAR_FINAL"
stage_clean
echo "setup done on $(hostname)"
