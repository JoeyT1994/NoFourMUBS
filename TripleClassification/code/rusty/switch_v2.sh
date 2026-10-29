#!/bin/bash
# Stop the split_select per-ball chains and launch chain_v2.sh (score-first) for every open ball.
set -u
B=/mnt/ceph/users/jtindall/seed_atlas_build/triples_tc; S=$B/selective
old=$(squeue -u jtindall -h -o "%i %j" | awk '$2 ~ /^tc-ball/ {print $1}')
[ -n "$old" ] && scancel $old
for i in $(seq 1 60); do
  left=$(squeue -u jtindall -h -o "%j" | grep -c "^tc-ball")
  [ "$left" -eq 0 ] && break; sleep 5
done
[ "$left" -eq 0 ] || { echo "old writers still running; not launching"; exit 1; }
ids=""
for b in $(cat $S/open56.txt); do
  if tr ' ' '\n' < $S/todo.txt | grep -qx "$b"; then sel=$S
  elif tr ' ' '\n' < $B/selective2/todo.txt | grep -qx "$b"; then sel=$B/selective2
  else echo "ball $b in no batch"; continue; fi
  ids="$ids $(sbatch --parsable --job-name=tc-v2b$b --export=ALL,BALLS=$b,SEL=$sel $S/chain_v2.sh)"
done
echo $ids > $S/v2_jobs.txt; echo "launched $(echo $ids | wc -w) score-first chains"
