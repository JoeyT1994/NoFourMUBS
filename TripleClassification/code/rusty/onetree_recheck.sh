#!/bin/bash
# Check again every certificate listed in LIST (one certificate directory OUT/b<ball> per line) with the current
# checker, LANES at a time with WORKERS processes each on one node. A refused leaf is searched again (close
# --requeue-refused) and the tree checked again, up to three rounds. The earlier check.json is kept as check.float.json.
#   bash onetree_recheck.sh LIST [LANES] [WORKERS] [MAX_LEVEL]
set -eu
L=$1; N=${2:-4}; W=${3:-32}; M=${4:-10}
B=/mnt/ceph/users/jtindall/seed_atlas_build/triples_tc; PY=/mnt/ceph/users/jtindall/venvs/nofourmubs/bin/python; R=$B/pr4_914919b
C="$PY -W ignore $B/closer/onetree.py"
sbatch --parsable -J tc-recheck -p preempt --qos=preempt -N1 --exclusive -t 24:00:00 --requeue -o $L.%j.out \
  --wrap "cd $R && xargs -a $L -P $N -I{} sh -c 'd={}; o=\$(dirname \$d); b=\$(basename \$d); b=\${b#b}; [ -f \$d/check.float.json ] || cp \$d/check.json \$d/check.float.json; for k in 1 2 3; do $C check $R \$b \$o --workers $W > \$d.recheck.log 2>&1 && break; $C close $R \$b \$o --max-level $M --workers $W --requeue-refused >> \$d.recheck.log 2>&1 || break; done; echo \$d \$(tail -c 160 \$d.recheck.log)'"
