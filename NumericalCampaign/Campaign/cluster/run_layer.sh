#!/usr/bin/env bash
# One disBatch task of the layer stage: python layer_prune.py LAYER FIRST LAST OUT (exits at once if OUT exists).
set -euo pipefail
PKG="$(cd "$(dirname "$0")" && pwd)"
cd "$PKG"
out="${@: -1}"
test -f "$out" && exit 0
mkdir -p "$(dirname "$out")"
export OMP_NUM_THREADS=1 OPENBLAS_NUM_THREADS=1
exec "${PYTHON:-$HOME/Documents/QuantumPhysics/ClusterScripts/mub6_shared_py311/bin/python}" -B "$PKG/layer_prune.py" "$@"
