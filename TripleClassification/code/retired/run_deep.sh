#!/bin/bash
# One deeper splitting round: every `SUBATLAS:SUB` line of $LIST (from deep_list.py) is split at level 2 into
# <SUBATLAS stem>_s<SUB>_l2.json.gz, and the frozen certifier runs on all new sub-balls with a per-sub-ball time limit
# ($SECONDS_LIMIT, default 180 s; a timeout is NOT ESTABLISHED).  Array task t takes every NT-th line.
#   LIST=deep1.txt TC=<frozen certifier tree> SP=<split.py> sbatch --array=0-7 run_deep.sh
#SBATCH --job-name=tc-deep
#SBATCH --partition=ccq
#SBATCH --nodes=1
#SBATCH --exclusive
#SBATCH --mem=0
#SBATCH --time=12:00:00
#SBATCH --output=deep_%A_%a.out
set -uo pipefail
PY=${PY:-/mnt/ceph/users/jtindall/venvs/nofourmubs/bin/python}; CORES=${CORES:-128}
export VECLIB_MAXIMUM_THREADS=1 OMP_NUM_THREADS=1 OPENBLAS_NUM_THREADS=1 MKL_NUM_THREADS=1
T=$SLURM_ARRAY_TASK_ID; NT=$SLURM_ARRAY_TASK_COUNT
mine=$(grep . "$LIST" | awk -v t=$T -v n=$NT '(NR-1)%n==t')
for item in $mine; do
    sa=${item%:*}; s=${item##*:}; out=${sa%.json.gz}_s${s}_l2.json.gz
    [ -f "$out" ] || echo "$sa $s $out"
done | xargs -P $CORES -n 3 sh -c '"$0" -W ignore "$1" build "$2" "$3" 2 "$4"' "$PY" "$SP"
files=$(for item in $mine; do sa=${item%:*}; s=${item##*:}; echo ${sa%.json.gz}_s${s}_l2.json.gz; done)
"$PY" -W ignore "$SP" run "$TC" $files --workers $CORES --seconds ${SECONDS_LIMIT:-180}
echo "task $T done $(date)"
