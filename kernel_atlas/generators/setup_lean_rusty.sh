#!/bin/bash
# One-time: build the shared kernel-atlas modules (and the NoFourMUBs/Hadamard6 modules they import) on a ccq node.
# Submit from the repository root:   sbatch kernel_atlas/generators/setup_lean_rusty.sh
#SBATCH --job-name=lean-setup
#SBATCH --partition=ccq
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=32
#SBATCH --mem=240G
#SBATCH --time=06:00:00
#SBATCH --output=kernel_atlas/results/atlas/logs/setup_%j.out

set -euo pipefail
# elan and the Mathlib cache live on ceph, not in $HOME (the home file-count quota)
export ELAN_HOME=${ELAN_HOME:-/mnt/ceph/users/$USER/elan}
export MATHLIB_CACHE_DIR=${MATHLIB_CACHE_DIR:-/mnt/ceph/users/$USER/mathlib_cache}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:-/mnt/ceph/users/$USER/xdg_cache}
export PATH=$ELAN_HOME/bin:$PATH
source kernel_atlas/generators/rusty_stage.sh
stage_in                    # run from the node's local disk (ceph is FUSE: see rusty_stage.sh)
cd lean
[ -n "${SKIP_CACHE:-}" ] || lake exe cache get   # Mathlib's build cache (into MATHLIB_CACHE_DIR, on ceph); SKIP_CACHE=1 when present
lake build KernelAtlas.E0K KernelAtlas.FrameK KernelAtlas.Joint2K KernelAtlas.Joint2S KernelAtlas.Labels \
  KernelAtlas.NormalK KernelAtlas.StageCK2B KernelAtlas.Tables KernelAtlas.Tangent2K KernelAtlas.Tangent2S \
  KernelAtlas.Tangent2L KernelAtlas.SigmaK KernelAtlas.BoundaryK KernelAtlas.Assembly KernelAtlas.Pack \
  KernelAtlas.Table.All
cd ..
stage_out_build
stage_pack                  # one tarball for the next jobs (see rusty_stage.sh)
stage_clean
echo "core built on $(hostname)"
