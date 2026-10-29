#!/bin/bash
# One ball's selective chain with score-first refinement (tree_build.py). For each level L: finish layer L-1 with the
# runner that built it, score its open cells (gamma_test.py), and build layer L from the cells no receipt closes.
# Env: BALLS (one ball), SEL (chain directory), LEVELS (default 4 5 6 7 8). Scratch lists are node-local mktemp files.
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
mkdir -p "$G/gamma_new" "$G/gamma_by_ball"
NEW="$G/gamma_new/b$b.jsonl"; OLD="$G/gamma_by_ball/b$b.jsonl"
dir() { case $1 in 2) echo $S/parents;; 3) echo $S/children;; *) echo $S/l$1;; esac; }
runner() { if "$PY" -c "import gzip,json,sys; sys.exit(0 if 'gamma_discharged_parent_cells' in json.load(gzip.open(sys.argv[1]))['info']['split'] else 1)" "$1"; then echo $C/tree_build.py; else echo $C/split_select.py; fi; }
for L in ${LEVELS:-4 5 6 7 8}; do
  pf="$(dir $((L-1)))/b${b}_l$((L-1)).json.gz"
  [ -f "$pf" ] || { echo "no layer $((L-1))"; break; }
  "$PY" -W ignore "$(runner "$pf")" run "$B/frozen_bd87c69" "$pf" --workers 128 --seconds 300
  LIST=$(mktemp) || exit 1
  n=$("$PY" "$C/ball_cells.py" "$pf" "$LIST" "$OLD" "$NEW")
  echo "$(date +%H:%M) ball $b layer $((L-1)): $n open cells to score"
  [ "$n" -gt 0 ] && "$PY" -W ignore "$G/gamma_test.py" batch "$B/frozen_bd87c69" "$G/gamma_lower.json" "$LIST" "$NEW" 128 900
  rm -f -- "$LIST"
  of="$(dir $L)/b${b}_l$L.json.gz"; mkdir -p "$(dir $L)"
  if [ ! -f "$of" ]; then
    TC_PARENT_DIR="$(dir $((L-1)))" TC_GAMMA_FILES="$OLD $NEW" "$PY" -W ignore "$C/tree_build.py" build "$ATLAS" "$b" "$L" "$of" || break
  fi
  "$PY" -c "import gzip,json,sys; sys.exit(0 if json.load(gzip.open(sys.argv[1]))['seeds'] else 1)" "$of" || { echo "ball $b: nothing left to refine at level $L"; break; }
  "$PY" -W ignore "$(runner "$of")" run "$B/frozen_bd87c69" "$of" --workers 128 --seconds 300
done
echo "ball $b chain done $(date)"
