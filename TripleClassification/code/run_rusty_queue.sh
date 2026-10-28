#!/bin/bash
# nothird.py and census.py on every seed ball, on several nodes sharing one work queue (claim files): every worker walks
# all balls from its own offset and does each ball nobody has claimed.  From the repository root, one node per task:
#   sbatch --array=0-3 TripleClassification/code/run_rusty_queue.sh
# HEAD is the certificate without transfers and caps (each of the 128 workers per node loads it):
#   python -c "import gzip,json,sys; d=json.load(gzip.open(sys.argv[1],'rt')); json.dump(dict(seeds=[{k:v for k,v in s.items()
#     if k not in ('transfers','caps')} for s in d['seeds']]), gzip.open(sys.argv[2],'wt'))" \
#     proof/seed_atlas/results/seed_atlas_certificate.json.gz $OUT/seed_headers.json.gz
#SBATCH --job-name=triples-q
#SBATCH --partition=ccq
#SBATCH --nodes=1
#SBATCH --exclusive
#SBATCH --time=12:00:00
#SBATCH --output=TripleClassification/runs/logs/q_%A_%a.out
set -uo pipefail
VENV=${VENV:-/mnt/ceph/users/$USER/venvs/nofourmubs}; CORES=$(nproc); REPO=$(pwd); C=TripleClassification/code
OUT=${OUT:-TripleClassification/runs}; mkdir -p "$OUT/logs" "$OUT/claims"
HEAD="$OUT/seed_headers.json.gz"; [ -f "$HEAD" ] || { echo "missing $HEAD"; exit 1; }
N=$("$VENV/bin/python" -c "import gzip,json,sys; print(len(json.load(gzip.open(sys.argv[1],'rt'))['seeds']))" "$HEAD")
export OMP_NUM_THREADS=1 OPENBLAS_NUM_THREADS=1 MKL_NUM_THREADS=1 CLAIMS="$OUT/claims"
T=${SLURM_ARRAY_TASK_ID:-0}; NT=${SLURM_ARRAY_TASK_COUNT:-1}
for w in $(seq 0 $((CORES - 1))); do
    g=$((T * CORES + w)); G=$((NT * CORES)); off=$((g * N / G))
    order=$( (seq "$off" $((N - 1)); [ "$off" -gt 0 ] && seq 0 $((off - 1))) | tr '\n' ' ')
    ( "$VENV/bin/python" -W ignore $C/nothird.py "$REPO" "$HEAD" "$OUT/nothird_q${T}_$w.jsonl" --max-level ${MAXL:-4} $order
      "$VENV/bin/python" -W ignore $C/census.py "$HEAD" "$OUT/census_q${T}_$w.jsonl" $order ) \
        > "$OUT/logs/q${T}_$w.log" 2>&1 &
done
wait
echo "task $T done on $(hostname) $(date)"
