#!/usr/bin/env bash
# One disBatch task: julia driver.jl MODE ARGS... (the last argument is the output file).
# A task whose output already exists exits at once, so resubmitting a task file is cheap.
set -euo pipefail
PKG="$(cd "$(dirname "$0")" && pwd)"
cd "$PKG"
out="${@: -1}"
test -f "$out" && exit 0
mkdir -p "$(dirname "$out")"
export OPENBLAS_NUM_THREADS=1 JULIA_NUM_THREADS=1 JULIA_PKG_PRECOMPILE_AUTO=0
export JOBLEVEL=6
export CERT_BUDGET="${CERT_BUDGET:-3000000}" CERT_MAXDEPTH="${CERT_MAXDEPTH:-2}" CERT_CELLMAX="${CERT_CELLMAX:-2400}" CERT_CERTMAX="${CERT_CERTMAX:-600}" CERT_COVERBUDGET="${CERT_COVERBUDGET:-20000000}" CERT_COVER_MINDEPTH="${CERT_COVER_MINDEPTH:-1}"
# Production certification method (29 Sep 2026): the accelerated cover certificate only, no rays path;
# a cover attempt of CERT_COVER0 seconds on the whole cell before bisecting.  Override any of these to compare.
export CERT_COVER_ACCELERATED="${CERT_COVER_ACCELERATED:-1}" CERT_FASTMAX="${CERT_FASTMAX:-0}" CERT_CHILD_FASTMAX="${CERT_CHILD_FASTMAX:-0}" CERT_COVER0="${CERT_COVER0:-120}"
exec ${JULIA:-$HOME/.juliaup/bin/julia +1.12.7} --startup-file=no \
    --project="$PKG/code/Certification/jlenv_cluster" "$PKG/code/Campaign/driver.jl" "$@"
