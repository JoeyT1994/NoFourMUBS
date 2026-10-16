#!/bin/bash
# One-time: build the shared kernel-atlas modules (and the NoFourMUBs/Hadamard6 modules they import) on a ccq node.
# Submit from the repository root:   sbatch kernel_atlas/generators/setup_lean_rusty.sh
#SBATCH --job-name=lean-setup
#SBATCH --partition=ccq
#SBATCH --nodes=1
#SBATCH --exclusive
#SBATCH --time=06:00:00
#SBATCH --output=kernel_atlas/results/atlas/logs/setup_%j.out

set -euo pipefail
# elan and the Mathlib cache live on ceph, not in $HOME (the home file-count quota)
export ELAN_HOME=${ELAN_HOME:-/mnt/ceph/users/$USER/elan}
export MATHLIB_CACHE_DIR=${MATHLIB_CACHE_DIR:-/mnt/ceph/users/$USER/mathlib_cache}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:-/mnt/ceph/users/$USER/xdg_cache}
export PATH=$ELAN_HOME/bin:$PATH
cd lean
lake exe cache get          # Mathlib's build cache (into MATHLIB_CACHE_DIR, on ceph)
lake build KernelAtlas.E0K KernelAtlas.FrameK KernelAtlas.Joint2K KernelAtlas.Joint2S KernelAtlas.Labels \
  KernelAtlas.NormalK KernelAtlas.StageCK2B KernelAtlas.Tables KernelAtlas.Tangent2K KernelAtlas.Tangent2S \
  KernelAtlas.Tangent2L KernelAtlas.SigmaK
echo "core built on $(hostname)"
