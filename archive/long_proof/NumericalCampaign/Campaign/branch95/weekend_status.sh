#!/usr/bin/env bash
# Hourly status page (2 Oct 2026): rewrites WEEKEND_STATUS.md in this directory, then is already queued again for
# the next hour (the successor is submitted first, so a killed run does not break the chain).  Stops after STOP_AT.
#   start:  sbatch --account=ccq --partition=preempt --qos=preempt --requeue --cpus-per-task=1 --mem=2G --time=0:15:00 \
#             --job-name=nofour-status --output=logs/status.out --open-mode=append weekend_status.sh
#   stop:   scancel -n nofour-status
#SBATCH --job-name=nofour-status
set -uo pipefail
D="$HOME/Documents/QuantumPhysics/ClusterScripts/nofourmubs_branch95_full_2026-10-01"; cd "$D"
STOP_AT="${STOP_AT:-2026-10-05T12:00}"
# only one successor: a requeued (preempted) run must not start a second chain
if [ "$(date +%s)" -lt "$(date -d "$STOP_AT" +%s)" ] && [ "$(squeue -u "$USER" -h -n nofour-status -t PENDING | wc -l)" -eq 0 ]; then
  sbatch --begin=now+60minutes --account=ccq --partition=preempt --qos=preempt --requeue --cpus-per-task=1 --mem=2G \
    --time=0:15:00 --job-name=nofour-status --output=logs/status.out --open-mode=append weekend_status.sh > /dev/null
fi
cnt() { python3 - "$1" <<'EOF'
import os, sys
t = open(sys.argv[1]).read().splitlines(); n = 0
for l in t:
    g = l.split(" &>")[0].split()
    o = g[1] if g[0] in ("./stageD_task.sh", "./stageE_task.sh") else g[-1]   # D/E: output first, inputs after
    n += os.path.exists(o)
print(f"{n}/{len(t)}")
EOF
}
{
  echo "# Weekend status, $(date -Is)"
  echo; echo '## Jobs'; echo '```'; squeue -u "$USER" -o '%.10i %.22j %.8T %.11M %.11L %.5D %R' | grep -v nofour-status; echo '```'
  echo; echo '## Stage outputs (done/total)'
  for s in branchBC branchD branchE; do [ -f "tasks_$s.txt" ] && echo "- $s: $(cnt tasks_$s.txt)"; done
  [ -d results/triple_gen ] && echo "- gen-helper outputs waiting to be merged: $(ls results/triple_gen | grep -vc part)"
  for f in logs/post_bc.log logs/post_d.log logs/post_e.log postE/pipeline.log; do
    [ -f "$f" ] && { echo; echo "## $f (last 8 lines)"; echo '```'; tail -8 "$f"; echo '```'; }
  done
  for f in logs/audit_branch95.log logs/audit_branch95_E.log; do
    [ -f "$f" ] && { echo; echo "## $f (last 4 lines)"; echo '```'; tail -4 "$f" | cut -c1-400; echo '```'; }
  done
  [ -f postE/SUMMARY.txt ] && { echo; echo '## Post-E ledger'; echo '```'; cat postE/SUMMARY.txt; echo '```'; }
  echo; echo "Home: $(df -h ~ | tail -1 | awk '{print $3" used, "$4" free"}'); files: $(df -i ~ | tail -1 | awk '{print $3" used, "$4" free"}')"
} > WEEKEND_STATUS.md.part 2>&1
mv WEEKEND_STATUS.md.part WEEKEND_STATUS.md
