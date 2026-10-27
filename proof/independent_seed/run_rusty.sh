#!/bin/bash
#SBATCH -J seed_indep
#SBATCH -p ccq
#SBATCH -N 1
#SBATCH --exclusive
#SBATCH -t 1-00:00:00
#SBATCH -o out/seed_indep_%j.log
# Fresh, complete independent replay of the seed-atlas certificate on one node (see README "Running it").
# Submit from proof/independent_seed of the rusty copy:   mkdir -p out && sbatch run_rusty.sh
# Variables: CERT (default ../seed_atlas/results/seed_atlas_certificate.json.gz), OUT (default out/fresh), SEED_CLIQUE_CAP
#            (Stage C's clique-search step budget, default 50,000,000),
#            SHARDS (processes, default 8; threads per process = cores / SHARDS), JULIA, DEPOT, HINT (a previous
#            run's seeds.tsv[.gz], default the committed receipt: balls start longest first; scheduling only).
# The seed balls are split over SHARDS processes (one garbage collector per process scales better than one process
# with 128 threads); a final run imports their receipts (checked against its own BINDING.txt), does the records, F6
# and the verdict.  Every run is resumable: resubmitting with the same OUT continues where it stopped.
set -u
cd "${SLURM_SUBMIT_DIR:-.}"
CERT=${CERT:-../seed_atlas/results/seed_atlas_certificate.json.gz}
OUT=${OUT:-out/fresh}
SHARDS=${SHARDS:-8}
NC=${SLURM_CPUS_ON_NODE:-$(nproc)}
NT=$(( NC / SHARDS )); [ "$NT" -ge 1 ] || NT=1
JULIA=${JULIA:-$HOME/.juliaup/bin/julia}
HINT=${HINT-../seed_atlas/results/julia/seeds.tsv.gz}   # a previous run's per-ball times: longest first (scheduling only)
HARG=(); [ -n "$HINT" ] && [ -f "$HINT" ] && HARG=(--hint "$HINT")
DEPOT=${DEPOT:-/mnt/ceph/users/jtindall/julia_perf/depot}
export JULIA_DEPOT_PATH="$DEPOT:/mnt/home/jtindall/.julia:"     # new writes on ceph; packages from ~/.julia
JL() { "$JULIA" --startup-file=no --project=../independent/jlenv "$@"; }
echo "=== host $(hostname)  cores $NC  shards $SHARDS x $NT threads  $(date)"
sha256sum "$CERT"
mkdir -p "$OUT"
for k in $(seq 0 $((SHARDS - 1))); do
    JL -t "$NT" check_seed.jl "$CERT" "$OUT/shard_$k" --shard "$k/$SHARDS" ${HARG[@]+"${HARG[@]}"} > "$OUT/shard_$k.log" 2>&1 &
done
wait
echo "=== shards done $(date)"
grep -h "^SHARD" "$OUT"/shard_*/RESULT.txt
IMPORTS=$(ls -d "$OUT"/shard_* | grep -v '\.log$' | paste -sd, -)
JL -t "$NC" check_seed.jl "$CERT" "$OUT/final" --import "$IMPORTS" ${HARG[@]+"${HARG[@]}"}
echo "=== check exit $? $(date)"
JL tests/enclosure.jl "$OUT/final/certificate.txt" 20 | grep -v "Warning\|└\|┌" | tail -3
echo "=== enclosure sampling exit $? $(date)"
grep -E "SUMMARY|VERDICT" "$OUT/final/RESULT.txt"
