#!/bin/bash
#SBATCH --job-name=zk2remaining
#SBATCH --partition=ccq
#SBATCH --nodes=1
#SBATCH --exclusive
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=128
#SBATCH --time=02:00:00
#SBATCH --output=/mnt/ceph/users/jtindall/seed_atlas_build/hor/zk2_work/remaining_%j.log
set -euo pipefail
export PYTHONDONTWRITEBYTECODE=1 ZK2_TRACE=1
export OMP_NUM_THREADS=1 OPENBLAS_NUM_THREADS=1 MKL_NUM_THREADS=1
cd /mnt/ceph/users/jtindall/seed_atlas_build/hor/zk2_shrink_code
py=/mnt/ceph/users/jtindall/venvs/nofourmubs/bin/python
work=/mnt/ceph/users/jtindall/seed_atlas_build/hor/zk2_work
"$py" -B - <<'PY'
import json,pathlib
w=pathlib.Path('/mnt/ceph/users/jtindall/seed_atlas_build/hor/zk2_work')
used={json.loads(x)['j'] for p in [w/'fine_snapshot_1.jsonl',w/'fine_snapshot_2.jsonl'] for x in p.read_text().splitlines()}
fine={}
for p in sorted(w.glob('fine_budgets_*.jsonl')):
    for line in p.read_text().splitlines():
        row=json.loads(line)
        assert row['j'] not in fine and row['status']=='CERTIFIED'
        fine[row['j']]=row
assert len(fine)==577 and used <= set(fine)
with (w/'fine_snapshot_3.jsonl').open('x') as f:
    for j in sorted(set(fine)-used):
        f.write(json.dumps(fine[j],separators=(',',':'))+'\n')
print('remaining plans',len(fine)-len(used),flush=True)
PY
exec "$py" -B -u kernel_atlas/generators/budget_plan.py --workers 80 --selection fine --shrink \
  --fine "$work/fine_snapshot_3.jsonl" --out "$work/shrink_plans_3.jsonl"
