#!/usr/bin/env bash
set -euo pipefail
PKG="$(cd "$(dirname "$0")" && pwd)"; cd "$PKG"
export OMP_NUM_THREADS=1 OPENBLAS_NUM_THREADS=1
exec "${PYTHON:-$HOME/Documents/QuantumPhysics/ClusterScripts/mub6_shared_py311/bin/python}" -B "$PKG/triple_leaves.py" "$@"
