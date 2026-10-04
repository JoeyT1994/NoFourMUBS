#!/usr/bin/env bash
# Stage E task (one disBatch core): python3 stageE_psd.py OUT IN... (exits at once if OUT exists)
set -euo pipefail
PKG="$(cd "$(dirname "$0")" && pwd)"; cd "$PKG"
test -f "$1" && exit 0
args=(); for x in "$@"; do args+=("$(realpath -m "$x")"); done; set -- "${args[@]}"   # absolute paths (3 Oct, as stageD_task.sh)
module load python/3.11.11 >/dev/null 2>&1 || true
export NOFOUR_ROOT="$PKG/code" OPENBLAS_NUM_THREADS=1
exec python3 -B "$PKG/stageE_psd.py" "$@" --workers "${STAGEE_WORKERS:-1}"
