#!/bin/bash
# Native-first certificates for the balls listed in LIST, one ball at a time on one node (128 workers): close with the
# native certifier tried first at levels <= 2 (900 s per cell), plane search as fallback, then check and pack (leaves.tar); leaves the check
# refuses are searched again, up to three rounds. Output in OUT/b<ball>. Prints the job id.
#   bash onetree_nf_batch.sh LIST [OUT] [MAX_LEVEL]
set -eu
L=$1; B=/mnt/ceph/users/jtindall/seed_atlas_build/triples_tc; OUT=${2:-$B/onetree/nf}; M=${3:-10}
PY=/mnt/ceph/users/jtindall/venvs/nofourmubs/bin/python; R=$B/pr4_914919b; C="$PY -W ignore $B/closer/onetree.py"
A="--native-first 2 --native-caps 1:900,2:900 --max-level $M --workers 128"
mkdir -p $OUT
sbatch --parsable -J tc-onenf -p preempt --qos=preempt -N1 --exclusive -t 24:00:00 --requeue -o $L.%j.out \
  --wrap "cd $R && while read b; do $C close $R \$b $OUT $A > $OUT/b\$b.close.log 2>&1 && for k in 1 2 3; do $C check $R \$b $OUT --workers 128 > $OUT/b\$b.check.log 2>&1 && { $C pack $R \$b $OUT >> $OUT/b\$b.check.log 2>&1; break; }; $C close $R \$b $OUT $A --requeue-refused >> $OUT/b\$b.close.log 2>&1 || break; done; echo \$b \$(tail -c 160 $OUT/b\$b.check.log); done < $L"
