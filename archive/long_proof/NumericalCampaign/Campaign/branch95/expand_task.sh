#!/usr/bin/env bash
# Stage A task: refine survivors FIRST..LAST of survivors_jobs.txt (production driver expand, from level 9).
set -euo pipefail
PKG="$(cd "$(dirname "$0")" && pwd)"; cd "$PKG"
out="${@: -1}"; test -f "$out" && exit 0; mkdir -p "$(dirname "$out")"
export OPENBLAS_NUM_THREADS=1 JULIA_NUM_THREADS=1 JULIA_PKG_PRECOMPILE_AUTO=0 JOBLEVEL=9 EXPAND_SINGULAR_EXTRA=${EXPAND_SINGULAR_EXTRA:-2}
exec ${JULIA:-$HOME/.juliaup/bin/julia +1.12.7} --startup-file=no --project="$PKG/code/Certification/jlenv_cluster" \
    "$PKG/code/Campaign/driver.jl" expand survivors_jobs.txt "$@"
