#!/bin/bash
# One ball's selective chain, score-first throughout. For each level L: finish layer L-1 with score_first_run.py (each
# pattern scored before it is certified), score its open cells (gamma_test.py), and build layer L from the cells no receipt closes.
# Env: BALLS (one ball), SEL (chain directory), LEVELS (default 4 5 6 7 8). The scratch cell list is one file named by
# ball and job id, removed by that exact path.
#SBATCH --job-name=tc-chain2
#SBATCH --partition=ccq
#SBATCH --nodes=1
#SBATCH --exclusive
#SBATCH --mem=0
#SBATCH --time=12:00:00
#SBATCH --output=/mnt/ceph/users/jtindall/seed_atlas_build/triples_tc/selective/chain2_%j.out
set -u
B=/mnt/ceph/users/jtindall/seed_atlas_build/triples_tc; S=$SEL; b=$BALLS; G=$B/selective
PY=/mnt/ceph/users/jtindall/venvs/nofourmubs/bin/python; C=$B/main_split3/TripleClassification/code
ATLAS=$B/frozen_bd87c69/proof/seed_atlas/results/seed_atlas_certificate.json.gz
export VECLIB_MAXIMUM_THREADS=1 OMP_NUM_THREADS=1 OPENBLAS_NUM_THREADS=1 MKL_NUM_THREADS=1
export TC_GAMMA_SHA=$(sha256sum $G/gamma_test.py | cut -c1-64) TC_GAMMA_RULES=fourier,ordering
mkdir -p "$G/gamma_v3"
NEW="$G/gamma_v3/b$b.jsonl"; touch "$NEW"      # receipts of the Arb gamma_test.py, one file per ball
dir() { case $1 in 2) echo $S/parents;; 3) echo $S/children;; *) echo $S/l$1;; esac; }
runner() { if "$PY" -c "import gzip,json,sys; sys.exit(0 if 'gamma_discharged_parent_cells' in json.load(gzip.open(sys.argv[1]))['info']['split'] else 1)" "$1"; then echo $C/tree_build.py; else echo $C/split_select.py; fi; }
run_layer() {   # certify layer $1 with score_first_run.py, over up to 8 nodes when more than 8000 sub-balls are left
  local f=$1 left k i pids="" parts=""
  left=$("$PY" -c "
import gzip,json,sys
n=len(json.load(gzip.open(sys.argv[1]))['seeds']); d=set()
try:
    for l in open(sys.argv[1][:-8]+'.jsonl'):
        try: d.add(json.loads(l)['index'])
        except Exception: pass
except OSError: pass
print(n-len(d))" "$f")
  if [ "$left" -gt 8000 ]; then
    k=$(( left / 4000 + 1 )); [ "$k" -gt 8 ] && k=8
    for i in $(seq 1 $((k-1))); do
      PR="${f%.json.gz}.part${SLURM_JOB_ID}_$i.jsonl"; PG="$G/gamma_v3/parts/b$b.l${SLURM_JOB_ID}.$i.jsonl"
      parts="$parts $PR:$PG"
      TC_PART=$i/$k TC_ROWS_OUT="$PR" sbatch --wait --parsable --export=ALL,LAYER="$f",GOUT="$PG",TC_PART=$i/$k,TC_ROWS_OUT="$PR" "$G/run_layer_part.sh" > /dev/null & pids="$pids $!"
    done
    TC_PART=0/$k "$PY" -W ignore "$C/score_first_run.py" "$B/frozen_bd87c69" "$G/gamma_lower.json" "$NEW" "$f" --workers 128 --seconds 300
    wait $pids
    for x in $parts; do PR=${x%%:*}; PG=${x##*:}
      [ -f "$PR" ] && cat "$PR" >> "${f%.json.gz}.jsonl"; [ -f "$PG" ] && cat "$PG" >> "$NEW"; rm -f -- "$PR" "$PG"; done
    echo "$(date +%H:%M) ball $b: $(basename "$f") certified over $k nodes"
  else
    "$PY" -W ignore "$C/score_first_run.py" "$B/frozen_bd87c69" "$G/gamma_lower.json" "$NEW" "$f" --workers 128 --seconds 300
  fi
}
mkdir -p "$G/gamma_v3/parts"
for L in ${LEVELS:-4 5 6 7 8 9 10}; do
  pf="$(dir $((L-1)))/b${b}_l$((L-1)).json.gz"
  [ -f "$pf" ] || { echo "no layer $((L-1))"; break; }
  run_layer "$pf"
  of="$(dir $L)/b${b}_l$L.json.gz"; mkdir -p "$(dir $L)"
  # score layer L-1 only when layer L is still to be built, or was built score-first (its skipped cells need receipts)
  if [ ! -f "$of" ] || [ "$(runner "$of")" = "$C/tree_build.py" ]; then
    LIST="$S/.cells_b${b}_$SLURM_JOB_ID.txt"
    n=$("$PY" "$C/ball_cells.py" "$pf" "$LIST" "$NEW")
    echo "$(date +%H:%M) ball $b layer $((L-1)): $n open cells to score"
    if [ "$n" -gt 1500 ]; then
      # spread the scoring over k nodes: k-1 helper jobs each score one part into its own file, this job scores part 0
      k=$(( (n + 1499) / 1500 )); [ "$k" -gt 8 ] && k=8
      mkdir -p "$G/gamma_v3/parts"; pids=""; parts=""
      for i in $(seq 1 $((k-1))); do
        PL="$S/.cells_b${b}_${SLURM_JOB_ID}_$i.txt"; PO="$G/gamma_v3/parts/b$b.${SLURM_JOB_ID}.$i.jsonl"
        awk -v i=$i -v k=$k '(NR-1)%k==i' "$LIST" > "$PL"; parts="$parts $PO"
        sbatch --wait --parsable --export=ALL,LISTF="$PL",OUTF="$PO" "$G/run_gamma_part.sh" > /dev/null & pids="$pids $!"
      done
      P0="$S/.cells_b${b}_${SLURM_JOB_ID}_0.txt"; awk -v k=$k '(NR-1)%k==0' "$LIST" > "$P0"
      "$PY" -W ignore "$G/gamma_test.py" batch "$B/frozen_bd87c69" "$G/gamma_lower.json" "$P0" "$NEW" 128 900
      wait $pids
      for PO in $parts; do [ -f "$PO" ] && cat "$PO" >> "$NEW"; rm -f -- "$PO"; done
      for i in $(seq 0 $((k-1))); do rm -f -- "$S/.cells_b${b}_${SLURM_JOB_ID}_$i.txt"; done
      echo "$(date +%H:%M) ball $b: scored over $k nodes"
    elif [ "$n" -gt 0 ]; then
      "$PY" -W ignore "$G/gamma_test.py" batch "$B/frozen_bd87c69" "$G/gamma_lower.json" "$LIST" "$NEW" 128 900
    fi
    rm -f -- "$LIST"
  fi
  if [ ! -f "$of" ]; then
    TC_BUILD_WORKERS=128 TC_PARENT_DIR="$(dir $((L-1)))" TC_GAMMA_FILES="$NEW" "$PY" -W ignore "$C/tree_build.py" build "$ATLAS" "$b" "$L" "$of" || break
  fi
  "$PY" -c "import gzip,json,sys; sys.exit(0 if json.load(gzip.open(sys.argv[1]))['seeds'] else 1)" "$of" || { echo "ball $b: nothing left to refine at level $L"; break; }
  run_layer "$of"
done
echo "ball $b chain done $(date)"
