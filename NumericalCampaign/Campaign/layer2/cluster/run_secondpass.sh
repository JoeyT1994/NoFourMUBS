#!/usr/bin/env bash
set -euo pipefail
cd "${BRANCH_PACKAGE:?}"
first="$1"
last="$2"
name="$3"
py="$HOME/Documents/QuantumPhysics/ClusterScripts/mub6_shared_py311/bin/python"
export OPENBLAS_NUM_THREADS=1 OMP_NUM_THREADS=1
"$py" -B code/CornerBounds/CampaignSecondPass/run.py survivors.txt "results/secondpass/${name}.jsonl" --first "$first" --last "$last" --workers 1
"$py" -B code/CornerBounds/CampaignSecondPass/run.py "results/secondpass/${name}.jsonl" "results/secondpass/${name}.replay160.json" --replay
