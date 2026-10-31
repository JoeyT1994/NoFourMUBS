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
    if ! echo "$jobs" | grep -qxE "tc-plane$b|tc-cc$b"; then   # whole-cell proofs in parts (none while ball_closer.py runs)
      n=$(python3 -c "import json;print(len(json.load(open('$B/results_live/open_cells.json'))['balls'].get('$b',{}).get('cells',[])))" 2>/dev/null || echo 0)
      k=$(( (n + 199) / 200 )); [ $k -lt 1 ] && k=1; [ $k -gt 8 ] && k=8   # refining a cell is ~16-256 searches: ~200 cells a node
      sf=0; grep -qx "$b" $B/plane_split_first.txt 2>/dev/null && sf=1      # balls whose whole-cell searches mostly fail
      TC_SEARCH_SECONDS=1800 TC_SPLIT_FIRST=$sf bash $B/plane_submit.sh $b $k && echo "$(date +%H:%M) ball $b: whole-cell run in $k parts (split first: $sf)" >> $LOG
    fi
    if ! echo "$jobs" | grep -qx "tc-sc$b"; then
      ( cd $B/sidecar && sbatch -J tc-sc$b -p preempt --qos=preempt -o stagec_ball_$b.%j.out run_stagec_ball.sh $b < /dev/null > /dev/null && echo "$(date +%H:%M) ball $b: Stage C run" >> $LOG ) &
    fi
  done
  wait
  # refresh each open ball's whole-cell manifest, so proofs finished since a part last ended reach the next audit pass
  for b in $open; do
    R=$B/pr4_914919b; grep -qx "$b" $B/plane_ext_balls.txt 2>/dev/null && R=$B/pr4ext   # balls proved with the extended check
    [ -d $B/plane_v1/b$b ] && ( cd $R && /mnt/ceph/users/jtindall/venvs/nofourmubs/bin/python -W ignore $B/plane_manifest.py \
      $R $B/plane_v1/b$b $b >> $LOG 2>&1;
      /mnt/ceph/users/jtindall/venvs/nofourmubs/bin/python $B/plane_slim.py $B/plane_v1/b$b 4 >> $LOG 2>&1 ) &   # reports cut small
  done
  wait
  # replay, in parallel on one node per ball, every manifest cell the audit's replay cache lacks (plane_prereplay.py),
  # so the live audit and the per-ball audits below only look proofs up instead of replaying them one by one
  for b in $open; do
    [ -f $B/plane_v1/b$b/manifest.json ] && ! echo "$jobs" | grep -qx "tc-prerep$b" && \
      sbatch -J tc-prerep$b -p preempt --qos=preempt -N1 --exclusive -t 24:00:00 -o $B/plane_v1/b$b.prereplay.%j.out \
        --wrap "R=$B/pr4_914919b; grep -qx $b $B/plane_ext_balls.txt && R=$B/pr4ext; cd \$R && /mnt/ceph/users/jtindall/venvs/nofourmubs/bin/python -W ignore $B/plane_prereplay.py \$R $B/plane_v1/b$b $b" \
        < /dev/null > /dev/null && echo "$(date +%H:%M) ball $b: pre-replay" >> $LOG
  done
  # one audit per open ball with all its proofs: progress/progress.tsv says, per ball, what is left and why
  # (ball_progress.py, one audit per open ball, is left to the live pass: with cold replay caches it ran for hours
  # and held back the next round's pre-replays)
  sleep 1200
done
