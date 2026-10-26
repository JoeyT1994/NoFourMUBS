#!/bin/bash
#SBATCH --job-name=zk2finalbudget
#SBATCH --partition=ccq
#SBATCH --nodes=1
#SBATCH --exclusive
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=128
#SBATCH --time=02:00:00
#SBATCH --output=/mnt/ceph/users/jtindall/seed_atlas_build/hor/zk2_work/consolidated_%j.log
set -euo pipefail
export PYTHONDONTWRITEBYTECODE=1 ZK2_TRACE=1
export OMP_NUM_THREADS=1 OPENBLAS_NUM_THREADS=1 MKL_NUM_THREADS=1
cd /mnt/ceph/users/jtindall/seed_atlas_build/hor/zk2_code
py=/mnt/ceph/users/jtindall/venvs/nofourmubs/bin/python
work=/mnt/ceph/users/jtindall/seed_atlas_build/hor/zk2_work
read -r -a pending < <("$py" -B - <<'PY'
import pathlib,json
w=pathlib.Path('/mnt/ceph/users/jtindall/seed_atlas_build/hor/zk2_work')
choices=[json.loads(x) for x in pathlib.Path('kernel_atlas/lean/KernelAtlas/WholeBall/CheapConstants/budget_fit.jsonl').read_text().splitlines()]
wanted={r['j'] for r in choices if r['choice'] not in ['cheap_rank0','cheap_rank4']}
done={}
for i in range(4):
    for s in (w/f'fine_budgets_{i}.jsonl').read_text().splitlines():
        r=json.loads(s)
        assert r['j'] not in done and r['status']=='CERTIFIED'
        done[r['j']]=r
assert set(done) <= wanted
print(' '.join(map(str,sorted(wanted-set(done)))))
PY
)
if [ "${#pending[@]}" -eq 0 ]; then
  touch "$work/fine_budgets_4.jsonl"
  exit 0
fi
exec "$py" -B -u kernel_atlas/generators/budget_fine.py --workers 80 \
  --indices "${pending[@]}" --out "$work/fine_budgets_4.jsonl" \
  --resume-trials "$work/budget_7336869.log" "$work/budget_7336911_0.log" \
    "$work/budget_7336911_1.log" "$work/budget_7336911_2.log" "$work/budget_7336911_3.log"
