#!/usr/bin/env bash
#SBATCH --job-name=shoulder-v2
#SBATCH --array=0-255
#SBATCH --cpus-per-task=1
#SBATCH --mem=8G
#SBATCH --time=04:00:00
set -euo pipefail
: "${SHOULDER_V2_DIR:?Set the absolute path to the v2 directory}"
: "${SHOULDER_V2_OUTPUT:?Set a fresh output directory}"
: "${SLURM_ARRAY_TASK_ID:?Submit as the documented 256-shard array}"
export OPENBLAS_NUM_THREADS=1 OMP_NUM_THREADS=1 JULIA_NUM_THREADS=1
: "${JULIA_BIN:?Set Julia 1.12.7 executable}"
export SHOULDER_JULIA_PROFILE=production
shoulder_region="${SHOULDER_V2_REGION:-$SHOULDER_V2_DIR/data/region.json}"
mkdir -p "$SHOULDER_V2_OUTPUT"
cd "$SHOULDER_V2_DIR"
# Check the delivered immutable dependency inventory before any search.
python3.11 -B -c 'from predicate import check_pins; from julia_environment import check; check_pins(); check()'
resume_args=()
if [ -n "${SHOULDER_V2_RESUME:-}" ]; then
  resume_args=(--resume "$SHOULDER_V2_RESUME/resume_${SLURM_ARRAY_TASK_ID}.jsonl.gz")
fi
set +e
python3.11 -B driver.py --region "$shoulder_region" --shards 256 --shard "$SLURM_ARRAY_TASK_ID" \
  --jobs 1 --cpu-per-root 300 --shard-cpu-budget 10800 --max-nodes 131071 --max-depth 64 \
  --max-tau-depth 12 "${resume_args[@]}" \
  --output "$SHOULDER_V2_OUTPUT/shard_${SLURM_ARRAY_TASK_ID}.jsonl.gz"
result=$?
set -e
# Exit 2 is a valid incomplete SEARCH RESULT, never a closure receipt.
if [ "$result" -ne 0 ] && [ "$result" -ne 2 ]; then exit "$result"; fi
