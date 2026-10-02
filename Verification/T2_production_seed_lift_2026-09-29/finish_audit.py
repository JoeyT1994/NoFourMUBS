import sys,json,hashlib,time
from pathlib import Path
sys.path.insert(0,'ProvenResults/FourierNeighbourhood/SeedLifting')
import verify_production_partition as v
v.ctx.prec=160
p=Path('/private/tmp/t2-residual-lift')
source_hashes=json.loads(Path('Verification/T2_production_seed_search_2026-09-29/source_hashes.json').read_text())
assert all(hashlib.sha256(Path(name).read_bytes()).hexdigest()==digest for name,digest in source_hashes.items())
partition=json.loads((p/'production_partition.json').read_text())
assert not partition['pending'] and not partition['failed']
v.check_coverage(partition['leaves'])
records=[json.loads(s)for s in (p/'stream_audit.jsonl').read_text().splitlines()]
seen={r['path']:r for r in records};assert len(seen)==len(records)
assert set(seen)<={r['path']for r in partition['leaves']}
missing=[r for r in partition['leaves']if r['path']not in seen]
print('RESUME:',len(records),'verified leaves retained;',len(missing),'remaining')
with (p/'stream_audit.jsonl').open('a')as f:
 for leaf in missing:
  receipt=v.replay_leaf(leaf);seen[leaf['path']]=receipt
  f.write(json.dumps(receipt)+'\n');f.flush()
assert set(seen)=={x['path']for x in partition['leaves']}
for leaf in partition['leaves']:
 r=seen[leaf['path']];assert r['phase_depth']==leaf['phase_depth'] and r['certificate']['ok']
 assert r['certificate']['reason']in ('residual_tube','outside_D0')
 if r['certificate']['reason']=='residual_tube':assert v.arb(r['certificate']['column_distance'])<v.arb(1)/30
for bad in (partition['leaves'][:-1],partition['leaves']+[partition['leaves'][0]]):
 try:v.check_coverage(bad)
 except ValueError:pass
 else:raise AssertionError('Coverage control accepted')
summary=dict(status='PASS',precision=160,leaves=len(seen),
 reason_counts={reason:sum(r['certificate']['reason']==reason for r in seen.values())for reason in ('residual_tube','outside_D0')},
 source_hashes=source_hashes,
 resume_note='The streaming completion check observed the final partition before reading the last JSONL record. The original process exited with 226 verified leaves and no failed leaf. Source hashes were checked unchanged, the missing final leaf was replayed, and complete coverage plus both failure controls were re-audited.')
(p/'stream_summary.json').write_text(json.dumps(summary,indent=2)+'\n')
print('PASS exact complete partition and all',len(seen),'independent 160-bit leaf replays; no strict-R-only discard')
print(summary['reason_counts'])
