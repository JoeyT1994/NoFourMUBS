#!/bin/bash
# Closing driver: every 20 minutes, for each ball the live audit still lists as open, submit graph exclusion runs on
# the patterns no rule has closed yet (graph_list.py; skipped while that ball has a graph job) and a Stage C run for its
# layers (run_stagec_ball.sh; the guard skips rows it already checked), and a whole-cell run (plane_ball.py, which skips
# cells already replayed). One line per action in close_loop.log.
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
    if ! echo "$jobs" | grep -qx "tc-graph$b"; then
      ( cd $V && n=$(python3 ../graph_list.py new_$b.txt $b) && if [ "$n" -gt 0 ]; then
          k=$(( (n + 1999) / 2000 )); [ $k -gt 3 ] && k=3; t=$(date +%H%M)
          for i in $(seq 0 $((k-1))); do awk -v i=$i -v k=$k '(NR-1)%k==i' new_$b.txt > list_$b.r$t$i.txt
            sbatch -J tc-graph$b -o logs/b$b.r$t$i.%j.log run_part.sh $b.r$t$i < /dev/null > /dev/null; done
          echo "$(date +%H:%M) ball $b: graph runs on $n sub-balls over $k nodes" >> $LOG
        fi; rm -f -- "$V/new_$b.txt" ) &
    fi
    if ! echo "$jobs" | grep -qx "tc-plane$b"; then      # whole-cell proofs; plane_ball.py skips cells already replayed
      sbatch -J tc-plane$b -p ccq -N1 --exclusive -t 8:00:00 -o $B/plane_v1/b$b.%j.out \
        --wrap "/mnt/ceph/users/jtindall/venvs/nofourmubs/bin/python $B/plane_ball.py $b 64" < /dev/null > /dev/null && \
        echo "$(date +%H:%M) ball $b: whole-cell run" >> $LOG
    fi
    if ! echo "$jobs" | grep -qx "tc-sc$b"; then
      ( cd $B/sidecar && sbatch -J tc-sc$b -o stagec_ball_$b.%j.out run_stagec_ball.sh $b < /dev/null > /dev/null && echo "$(date +%H:%M) ball $b: Stage C run" >> $LOG ) &
    fi
  done
  wait
  sleep 1200
done
