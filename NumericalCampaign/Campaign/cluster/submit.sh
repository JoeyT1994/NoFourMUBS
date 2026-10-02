#!/usr/bin/env bash
# Submit a campaign stage as one disBatch job.
#   ./submit.sh expand  NODES FIRST LAST [CONSTRAINT]    lines FIRST..LAST of tasks_expand.txt
#   ./submit.sh certify NODES FIRST LAST [CONSTRAINT]    lines FIRST..LAST of tasks_certify.txt
#   ./submit.sh layer   NODES FIRST LAST [CONSTRAINT]    lines FIRST..LAST of tasks_layer.txt
#   ./submit.sh STAGE   NODES tail [CONSTRAINT]          only the tasks of STAGE whose output does not exist yet
# CONSTRAINT is a node type: rome (128 cores, default), genoa (96) or icelake (64); Rocky 9 nodes only.
# WALLTIME (environment) overrides the 7-day limit, e.g. WALLTIME=24:00:00 (shorter jobs backfill sooner).
# Resubmitting the same range is safe: finished tasks exit at once, and interrupted certify tasks resume.
set -euo pipefail
PACKAGE_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$PACKAGE_DIR"
stage="$1"; nodes="$2"
case "$stage" in expand|certify|layer) ;; *) test -f "tasks_${stage}.txt" || { echo "unknown stage $stage (no tasks_${stage}.txt)"; exit 1; };; esac
mkdir -p slices
if [ "${3:-}" = tail ]; then
    # only the tasks whose output file does not exist yet (resume after cancelling a straggling job)
    cons="${4:-rome}"; label="${stage}_tail_$(date +%H%M)"; taskfile="slices/${label}.txt"
    while IFS= read -r line; do
        out="$(echo "$line" | sed 's/ &>.*//' | awk '{print $NF}')"
        test -f "$out" || echo "$line"
    done < "tasks_${stage}.txt" > "$taskfile"
else
    first="$3"; last="$4"; cons="${5:-rome}"
    taskfile="slices/${stage}_${first}_${last}.txt"; label="${stage}_${first}_${last}"
    sed -n "${first},${last}p" "tasks_${stage}.txt" > "$taskfile"
fi
case "$cons" in rome) cores=128;; genoa) cores=96;; icelake) cores=64;; *) echo "unknown node type $cons"; exit 1;; esac
test -s "$taskfile"
mkdir -p logs results
job_id="$(sbatch --parsable --nodes="$nodes" --ntasks-per-node="$cores" --constraint="${cons}&rocky9" --time="${WALLTIME:-7-00:00:00}" \
    --job-name="nofour-$label" --export=ALL,PACKAGE_DIR="$PACKAGE_DIR",TASKFILE="$taskfile",TASKLABEL="$label" \
    run_disbatch.slurm)"
printf '%s %s %s %s\n' "$job_id" "$label" "$nodes" "$(date -Iseconds)" >> jobs_submitted.txt
echo "Submitted $label on $nodes $cons node(s) ($(wc -l < "$taskfile") tasks): job $job_id"
