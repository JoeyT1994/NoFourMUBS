#!/usr/bin/env bash
# Stage D task: julia stageD.jl OUT IN... (exits at once if OUT exists)
set -euo pipefail
PKG="$(cd "$(dirname "$0")" && pwd)"; cd "$PKG"
test -f "$1" && exit 0
export OPENBLAS_NUM_THREADS=1 JULIA_NUM_THREADS=1 JULIA_PKG_PRECOMPILE_AUTO=0
exec ${JULIA:-$HOME/.juliaup/bin/julia +1.12.7} --startup-file=no --project="$PKG/code/Certification/jlenv_cluster" "$PKG/stageD.jl" "$@"
