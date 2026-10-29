#!/bin/bash
# Live assembly: rerun assemble_all.sh into results_live every 30 minutes for up to 10 hours (cached verdicts make
# reruns cheap). The summary of each pass is appended to live_log.txt.
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
  OUT=results_live bash "$B/assemble_all.sh" > /dev/null 2>> "$B/live_err.txt"
  python3 -c "import json,time;s=json.load(open('$B/results_live/summary.json'));print(time.strftime('%H:%M'),s['final'])" >> "$B/live_log.txt"
  sleep 1800
done
