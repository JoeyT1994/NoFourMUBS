#!/bin/bash
# Closing driver: every 20 minutes, for each ball the live audit still lists as open, keep a whole-cell run going in
# parts sized to its open cells (plane_submit.sh / plane_ball.py, which skips cells already replayed) and a Stage C run for
# its layers (run_stagec_ball.sh; the guard skips rows it already checked). One line per action in close_loop.log.
#SBATCH --job-name=tc-close
#SBATCH -p ccq -n1 -c 8 -t 10:00:00
#SBATCH --output=/mnt/ceph/users/jtindall/seed_atlas_build/triples_tc/close_loop_%j.out
set -u
B=/mnt/ceph/users/jtindall/seed_atlas_build/triples_tc; G=$B/selective; V=$G/graph_v1; LOG=$B/close_loop.log
end=$(( $(date +%s) + 9*3600 + 1800 ))
while [ "$(date +%s)" -lt "$end" ]; do
  open=$(awk -F'\t' '$3=="open"{print $1}' $B/results_live/balls.tsv)
  jobs=$(squeue -u jtindall -h -o %j)
  for b in $open; do
    if ! echo "$jobs" | grep -qx "tc-plane$b"; then      # whole-cell proofs in parts sized to the open cells
      n=$(python3 -c "import json;print(len(json.load(open('$B/results_live/open_cells.json'))['balls'].get('$b',{}).get('cells',[])))" 2>/dev/null || echo 0)
      k=$(( (n + 1999) / 2000 )); [ $k -lt 1 ] && k=1; [ $k -gt 6 ] && k=6
      sf=0; grep -qx "$b" $B/plane_split_first.txt 2>/dev/null && sf=1      # balls whose whole-cell searches mostly fail
      TC_SPLIT_FIRST=$sf bash $B/plane_submit.sh $b $k && echo "$(date +%H:%M) ball $b: whole-cell run in $k parts (split first: $sf)" >> $LOG
    fi
    if ! echo "$jobs" | grep -qx "tc-sc$b"; then
      ( cd $B/sidecar && sbatch -J tc-sc$b -o stagec_ball_$b.%j.out run_stagec_ball.sh $b < /dev/null > /dev/null && echo "$(date +%H:%M) ball $b: Stage C run" >> $LOG ) &
    fi
  done
  wait
  sleep 1200
done
