#!/bin/bash
# Pack every finished certificate in OUT (check.json CLOSED, written after its tree.json and journal, leaves/ still a
# folder) into leaves.tar with onetree.py pack, every 10 minutes until no tc-onenf job is left.
#   bash pack_finished.sh OUT
set -u
OUT=$1; B=/mnt/ceph/users/jtindall/seed_atlas_build/triples_tc; PY=/mnt/ceph/users/jtindall/venvs/nofourmubs/bin/python; R=$B/pr4_914919b
while true; do
  for d in "$OUT"/b*/; do
    d=${d%/}; b=${d##*/b}
    [ -d "$d/leaves" ] && [ -f "$d/check.json" ] && [ "$d/check.json" -nt "$d/tree.json" ] || continue
    grep -q '"verdict": "CLOSED"' "$d/check.json" || continue
    $PY -W ignore $B/closer/onetree.py pack $R "$b" "$OUT" || echo "pack failed: $d"
  done
  squeue -u jtindall -h -n tc-onenf | grep -q . || break
  sleep 600
done
echo done
