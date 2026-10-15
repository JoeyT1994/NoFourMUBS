#!/bin/bash
# Triple-conjecture test on rusty: one whole `ccq` node, one triples.py process per core, strided over all 12,021
# Records (about 1-2 s per Record per core, so a few minutes). Setup as in explorations/atlas_survey/run_rusty.sh.
# Submit from the repository root:   sbatch explorations/triple_test/run_rusty.sh
# Summarise:                          $VENV/bin/python explorations/triple_test/summarize.py explorations/triple_test/results/full
#SBATCH --job-name=triple-test
#SBATCH --partition=ccq
#SBATCH --nodes=1
#SBATCH --exclusive
#SBATCH --time=01:00:00
#SBATCH --output=explorations/triple_test/results/full/logs/%j.out

set -uo pipefail
CORES=128
VENV=${VENV:-/mnt/ceph/users/$USER/venvs/nofourmubs}
OUT=explorations/triple_test/results/full
mkdir -p "$OUT/logs"
export OMP_NUM_THREADS=1 OPENBLAS_NUM_THREADS=1 MKL_NUM_THREADS=1
for w in $(seq 0 $((CORES - 1))); do
    "$VENV/bin/python" -W ignore explorations/triple_test/triples.py "$OUT/w$w.jsonl" $(seq "$w" "$CORES" 12020) \
        > "$OUT/logs/w$w.log" 2>&1 &
done
wait
echo "done on $(hostname)"
