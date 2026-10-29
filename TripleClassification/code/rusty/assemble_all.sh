#!/bin/bash
# Validated single-route assembly: each ball is closed by the certifier on the whole ball, or by one dyadic tree of
# sub-balls verified by audit_select.py with Stage C preconditions on every closed sub-ball.  OUT=<dir>.
#SBATCH --job-name=tc-assemble
#SBATCH --partition=ccq
#SBATCH --nodes=1
#SBATCH --exclusive
#SBATCH --mem=0
#SBATCH --time=6:00:00
#SBATCH --output=/mnt/ceph/users/jtindall/seed_atlas_build/triples_tc/assemble_%j.out
export OMP_NUM_THREADS=1 OPENBLAS_NUM_THREADS=1 MKL_NUM_THREADS=1 VECLIB_MAXIMUM_THREADS=1
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
  --l3-script $C/split_mixed.py --deep-script $C/split_select.py \
  --chain-dir $B/selective $B/selective2 --l3-dir $B/projection_more_20261028 $B/tc_selective_round2 $B/tc_selective_batch \
  --gamma $B/selective/gamma_l3_*.jsonl $B/selective/gamma_deep_*.jsonl $(ls $B/selective/gamma_to_*.jsonl $B/selective/gamma_sw_*.jsonl $B/selective/gamma_new/*.jsonl 2>/dev/null) \
  --gamma-sha $(sha256sum $B/selective/gamma_test.py | cut -c1-64) --gamma-rules ${GAMMA_RULES:-fourier,ordering}
rm -rf -- "$RAW" "$B/$OUT.work"   # scratch: symlinks and cleaned receipt copies; the results stay in $B/$OUT
