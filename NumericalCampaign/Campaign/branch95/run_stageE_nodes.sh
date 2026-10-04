#!/usr/bin/env bash
# Stage E with the pooled driver (4 Oct 2026): tasks_branchE.txt split over NODES whole nodes, one stageE_node.py
# per node (all cores, unordered pool across its tasks), then the stage-E audit on a whole node.  Resumable:
# finished outputs are skipped.  Usage: ./run_stageE_nodes.sh [NODES=13]
set -euo pipefail
cd "$(dirname "$0")"
for v in $(env | grep -o '^SLURM_[A-Z0-9_]*'); do unset "$v"; done
NODES="${1:-13}"; N=$(wc -l < tasks_branchE.txt); PER=$(( (N + NODES - 1) / NODES )); J=""
for k in $(seq 0 $((NODES - 1))); do
  a=$(( k * PER + 1 )); b=$(( (k + 1) * PER )); [ "$b" -le "$N" ] || b=$N; [ "$a" -le "$N" ] || break
  j=$(sbatch --parsable --account=ccq --partition=ccq --nodes=1 --exclusive --mem=0 --constraint='rome&rocky9' --time=24:00:00 \
    --job-name=nofour-stageEnode --output=logs/stageE_node_$k.out --export=ALL,NOFOUR_ROOT=$PWD/code \
    --wrap "cd $PWD && module load python/3.11.11 && python3 -B stageE_node.py tasks_branchE.txt $a $b --workers 128")
  J="$J:$j"; echo "node job $j: tasks $a-$b"
done
A=$(sbatch --parsable --dependency=afterany$J --exclusive --mem=0 --time=6:00:00 --job-name=nofour-b95auditE --account=ccq \
  --partition=ccq --export=ALL,PACKAGE_DIR=$PWD --output=logs/audit_branch95_E.log --open-mode=append \
  --wrap "cd $PWD && python3 -B branch95_audit.py --stageE results/stageE --open-out open_after_E.txt")
echo "$(date -Is) stage E (pooled) on $NODES nodes: jobs ${J#:}; audit $A" | tee -a logs/post_d.log
