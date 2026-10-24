#!/bin/bash
# Seed kernel run, Phase 0 (KERNEL_SEED.md §7): on top of the old final stage (Mathlib, NoFourMUBs.Final, the shared
# kernel modules), build NoFourMUBs.FinalSeed and KernelAtlas.Seed.*, generate and build the seed table from the
# certificate, and pack the result as $SEED_STAGE_TAR for the ball, chunk and final jobs.  From the repository copy on
# ceph (rsync this branch there first):
#   sbatch --export=ALL,CERT=/mnt/ceph/users/$USER/seed_atlas_certificate.json.gz \
#       --output=/mnt/ceph/users/$USER/nofour_seedk/logs/setup_%j.out kernel_atlas/generators/run_seed_setup.sh
#SBATCH --job-name=nofour-seedk-setup
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
export TMPDIR=/tmp
export PATH=$ELAN_HOME/bin:$PATH
VENV=${VENV:-/mnt/ceph/users/$USER/venvs/nofourmubs}
ARCH=${ARCH:-/mnt/ceph/users/$USER/nofour_seedk}
export OMP_NUM_THREADS=1 OPENBLAS_NUM_THREADS=1 MKL_NUM_THREADS=1
CPUS=$(env -u OMP_NUM_THREADS nproc)
source kernel_atlas/generators/rusty_stage.sh
export STAGE_TAR=${STAGE_TAR_FINAL:-/mnt/ceph/users/$USER/nofour_stage_final.tar}
SEED_STAGE_TAR=${SEED_STAGE_TAR:-/mnt/ceph/users/$USER/nofour_seed_stage.tar}
: "${CERT:?set CERT to the seed atlas certificate}"
mkdir -p "$ARCH/logs" "$ARCH/rows"
stage_in
"$VENV/bin/python" -u kernel_atlas/generators/seed_table.py "$CERT" --workers "$CPUS"
"$VENV/bin/python" -c "import gzip, json; d = json.load(gzip.open('$CERT', 'rt')); print('\n'.join(map(str, range(len(d['seeds'])))))" > "$ARCH/idx_all.txt"
cd lean
lake build -j "$CPUS" NoFourMUBs.FinalSeed KernelAtlas.Seed.Links KernelAtlas.Seed.Assemble KernelAtlas.Seed.StageC \
    KernelAtlas.SeedA.TabAll 2>&1 | grep -E "error|✖|Build completed" | tail -20
printf 'import KernelAtlas.Seed.Links\n#print axioms NoFourMUBs.KernelAtlas.Seed.seed_kernel_of\n#print axioms NoFourMUBs.KernelAtlas.Seed.seedBoundary_of\n#print axioms NoFourMUBs.KernelAtlas.Seed.fullBox_sound\n' > /tmp/ax_seed_$SLURM_JOB_ID.lean
lake env lean /tmp/ax_seed_$SLURM_JOB_ID.lean
cd ..
stage_pack "$SEED_STAGE_TAR"
stage_clean
echo "setup done on $(hostname)"
