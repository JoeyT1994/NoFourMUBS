#!/bin/bash
# Selective refinement at level LEVEL (split_select.py): for each ball whose level-(LEVEL-1) layer is complete and still
# has unresolved cells, the children of those cells that meet the ball, as sub-balls of half the previous radius,
# certified with a per-sub-ball time limit.  SEL=<chain dir> (default selective); level 3 reads SEL/parents.  Layers live in $S/parents (2), $S/children (3), $S/l<k> (k >= 4).
#SBATCH --job-name=tc-sel
#SBATCH --partition=ccq
#SBATCH --nodes=1
#SBATCH --exclusive
#SBATCH --mem=0
#SBATCH --time=12:00:00
#SBATCH --output=/mnt/ceph/users/jtindall/seed_atlas_build/triples_tc/selective/sel%x_%A_%a.out
B=/mnt/ceph/users/jtindall/seed_atlas_build/triples_tc; S=${SEL:-$B/selective}; PY=/mnt/ceph/users/jtindall/venvs/nofourmubs/bin/python
SS=$B/main_split3/TripleClassification/code/split_select.py; ATLAS=$B/frozen_bd87c69/proof/seed_atlas/results/seed_atlas_certificate.json.gz
export VECLIB_MAXIMUM_THREADS=1 OMP_NUM_THREADS=1 OPENBLAS_NUM_THREADS=1 MKL_NUM_THREADS=1
L=$LEVEL; P=$S/l$((L-1)); [ $L -eq 4 ] && P=$S/children; [ $L -eq 3 ] && P=$S/parents; O=$S/l$L; [ $L -eq 3 ] && O=$S/children; mkdir -p $O; export TC_PARENT_DIR=$P
T=${T:-$SLURM_ARRAY_TASK_ID}; NT=${NT:-$SLURM_ARRAY_TASK_COUNT}
if [ -n "${BALLS:-}" ]; then mine=$BALLS; else
mine=$(tr " " "\n" < $S/todo.txt | grep . | awk -v t=$T -v n=$NT "(NR-1)%n==t")
fi
open=$(for i in $mine; do f=$P/b${i}_l$((L-1)).jsonl; [ -f $f ] && grep -q "NOT ESTABLISHED" $f && echo $i; done)
for i in $open; do [ -f $O/b${i}_l$L.json.gz ] || echo $i; done | xargs -P 64 -I{} $PY -W ignore $SS build $ATLAS {} $L $O/b{}_l$L.json.gz
files=$(for i in $open; do [ -f $O/b${i}_l$L.json.gz ] && echo $O/b${i}_l$L.json.gz; done)
[ -n "$files" ] && $PY -W ignore $SS run $B/frozen_bd87c69 $files --workers 128 --seconds ${SECONDS_LIMIT:-300}
echo "task $T level $L done $(date)"
