#!/bin/bash
# Validated single-route assembly: each ball is closed by the certifier on the whole ball, or by one dyadic tree of
# sub-balls verified by audit_select.py with Stage C preconditions on every closed or rule-discharged sub-ball.  OUT=<dir>.
#SBATCH --job-name=tc-assemble
#SBATCH --partition=ccq
#SBATCH --nodes=1
#SBATCH --exclusive
#SBATCH --mem=0
#SBATCH --time=6:00:00
#SBATCH --output=/mnt/ceph/users/jtindall/seed_atlas_build/triples_tc/assemble_%j.out
export OMP_NUM_THREADS=1 OPENBLAS_NUM_THREADS=1 MKL_NUM_THREADS=1 VECLIB_MAXIMUM_THREADS=1
export TC_LEAF_CACHE=/mnt/ceph/users/jtindall/seed_atlas_build/triples_tc/plane_v1   # leaf cache (ext_cell_certificate.py): plane_prereplay.py --leaves fills it
B=/mnt/ceph/users/jtindall/seed_atlas_build/triples_tc; PY=/mnt/ceph/users/jtindall/venvs/nofourmubs/bin/python
C=$B/main_split3/TripleClassification/code; A=$B/frozen_bd87c69/proof/seed_atlas/results/seed_atlas_certificate.json.gz
: "${OUT:?set OUT to the results directory name}"     # stops here if OUT is unset or empty
RAW="$B/raw_final_$OUT"; rm -rf -- "$RAW" "$B/$OUT.work"; mkdir -p "$RAW"
for f in $B/raw_now/*; do case $(basename $f) in split_*) ;; *) cp -P $f $RAW/ ;; esac; done
for f in $B/split/*.jsonl; do g=${f%.jsonl}.json.gz; [ -f $g ] && ln -s $f $RAW/split_$(basename $f) && ln -s $g $RAW/split_$(basename $g); done
V="$B/main_split/TripleClassification/code/split.py $B/main_split2/TripleClassification/code/split.py $C/split.py"
$PY -W ignore $C/assemble.py $RAW $B/$OUT --tc-tree $B/frozen_bd87c69 --atlas $A --split-version $V \
  --sidecar $B/sidecar/sidecar_*.jsonl \
  --split-dir $B/split --work $B/$OUT.work --workers 128 --cache $B/assemble_cache.json \
  --tree-auditor $C/audit_select.py --tree-auditor-sha $(sha256sum $C/audit_select.py | cut -c1-64) \
  --l3-script $C/split_mixed.py --deep-script $C/split_select.py,$C/tree_build.py,$C/tree_build_v0.py,$C/tree_build_v1.py,$C/tree_build_v2.py,$C/score_first_run.py,$C/score_first_run_v0.py,$C/score_first_run_v1.py \
  --chain-dir $B/selective $B/selective2 --l3-dir $B/projection_more_20261028 $B/tc_selective_round2 $B/tc_selective_batch \
  --gamma-dir $B/selective/gamma_v3 --gamma-lower $B/selective/gamma_lower.json \
  --gamma-sha $(sha256sum $B/selective/gamma_test.py | cut -c1-64) --gamma-rules ${GAMMA_RULES:-fourier,ordering,anchored,graph} \
  --graph-receipts $B/selective/graph_v1 --graph-dir $C/hardball --graph-sha $(sha256sum $C/hardball/certify_graph.py | cut -c1-64) \
  --graph-runner-sha $(sha256sum $C/graph_run.py | cut -c1-64) \
  --plane-dir $B/plane_v1 --plane-root $B/pr4_914919b --plane-root-ext $B/pr4ext --audit-timeout ${AUDIT_TIMEOUT:-7200} \
  --anchored-dir $B/selective/anchored_v1 --anchored-sha $(sha256sum $C/anchored_column_certificate.py | cut -c1-64) \
  --anchored-runner-sha $(sha256sum $C/anchored_run.py | cut -c1-64)
rm -rf -- "$RAW" "$B/$OUT.work"   # scratch: symlinks and cleaned receipt copies; the results stay in $B/$OUT
