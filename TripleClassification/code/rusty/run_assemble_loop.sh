#!/bin/bash
# Live assembly: rerun assemble_all.sh into results_live, then sleep 5 minutes, for up to 10 hours (cached verdicts make
# reruns cheap). Each pass appends one line to live_log.txt (the counts, or FAILED with the error) and rewrites
# status.json (live_status.py), so a failed pass is visible at once.
#SBATCH --job-name=tc-live
#SBATCH --partition=ccq
#SBATCH --nodes=1
#SBATCH --exclusive
#SBATCH --mem=0
#SBATCH --time=10:00:00
#SBATCH --output=/mnt/ceph/users/jtindall/seed_atlas_build/triples_tc/live_%j.out
set -u
B=/mnt/ceph/users/jtindall/seed_atlas_build/triples_tc
end=$(( $(date +%s) + 9*3600 + 1800 ))
while [ "$(date +%s)" -lt "$end" ]; do
  t0=$(date +%s)
  OUT=results_live bash "$B/assemble_all.sh" > /dev/null 2> "$B/live_err_last.txt"; rc=$?
  cat "$B/live_err_last.txt" >> "$B/live_err.txt"
  if [ $rc = 0 ]; then
    python3 -c "import json,time;s=json.load(open('$B/results_live/summary.json'));print(time.strftime('%H:%M'),s['final'])" >> "$B/live_log.txt"
  else
    echo "$(date +%H:%M) FAILED rc=$rc: $(tail -1 "$B/live_err_last.txt" | cut -c1-200)" >> "$B/live_log.txt"
  fi
  python3 "$B/live_status.py" $rc $(( $(date +%s) - t0 )) > "$B/status.json.new" && mv -f "$B/status.json.new" "$B/status.json"
  sleep 300
done
