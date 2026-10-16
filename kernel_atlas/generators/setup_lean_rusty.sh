#!/bin/bash
# One-time: build the shared kernel-atlas modules (and the NoFourMUBs/Hadamard6 modules they import) on a ccq node.
# Run `lake exe cache get` in lean/ on the login node first (Mathlib's build cache).
# Submit from the repository root:   sbatch kernel_atlas/generators/setup_lean_rusty.sh
#SBATCH --job-name=lean-setup
#SBATCH --partition=ccq
#SBATCH --nodes=1
#SBATCH --exclusive
#SBATCH --time=06:00:00
#SBATCH --output=kernel_atlas/results/atlas/logs/setup_%j.out

set -euo pipefail
export PATH=$HOME/.elan/bin:$PATH
cd lean
lake build KernelAtlas.E0K KernelAtlas.FrameK KernelAtlas.Joint2K KernelAtlas.Joint2S KernelAtlas.Labels \
  KernelAtlas.NormalK KernelAtlas.StageCK2B KernelAtlas.Tables KernelAtlas.Tangent2K KernelAtlas.Tangent2S \
  KernelAtlas.Tangent2L KernelAtlas.SigmaK
echo "core built on $(hostname)"
