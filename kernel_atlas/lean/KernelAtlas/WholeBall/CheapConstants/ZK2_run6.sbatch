#!/bin/bash
#SBATCH --job-name=zk2run6
#SBATCH --partition=ccq
#SBATCH --nodes=1
#SBATCH --exclusive
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=128
#SBATCH --time=06:00:00
#SBATCH --output=/mnt/ceph/users/jtindall/seed_atlas_build/hor/zk2_work/run6_%j.log
set -euo pipefail
export PYTHONDONTWRITEBYTECODE=1
export OMP_NUM_THREADS=1 OPENBLAS_NUM_THREADS=1 MKL_NUM_THREADS=1
cd /mnt/ceph/users/jtindall/seed_atlas_build/hor/zk2_keep_code
py=/mnt/ceph/users/jtindall/venvs/nofourmubs/bin/python
base=/mnt/ceph/users/jtindall/seed_atlas_build/hor
if [ ! -d "$base/run6" ]; then
  "$py" -B kernel_atlas/generators/budget_prepare.py \
    --plans "$base/zk2_work/original_plans.jsonl" "$base/zk2_work/kept_plans.jsonl" \
    --source "$base/run5/atlas_state.pkl" --edge-source "$base/run5/atlas_state_edge.pkl" \
    --combined "$base/zk2_work/all_plans.jsonl" --run "$base/run6" \
    > "$base/zk2_work/run6_preparation.json"
fi
exec "$py" -B -u \
  kernel_atlas/generators/budget_run6.py /mnt/ceph/users/jtindall/seed_atlas_build/hor/run6 \
  --workers 80 --rounds 6 --hours-per-pass .75
