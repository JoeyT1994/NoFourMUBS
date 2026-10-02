import sys,time,json,hashlib
from pathlib import Path
sys.path.insert(0,'ProvenResults/FourierNeighbourhood/SeedLifting')
import verify_production_partition as v
v.ctx.prec=160
source=Path('/private/tmp/t2-residual-lift/production.jsonl')
partition=Path('/private/tmp/t2-residual-lift/production_partition.json')
output=Path('/private/tmp/t2-residual-lift/stream_audit.jsonl')
seen={};start=time.monotonic()
with output.open('w')as f:
 while True:
  lines=source.read_text().splitlines();records=[]
  for line in lines:
   try:records.append(json.loads(line))
   except json.JSONDecodeError:break
  for record in records:
   if record['result']['ok'] and record['path']not in seen:
    leaf=dict(path=record['path'],phase_depth=record['phase_depth'])
    receipt=v.replay_leaf(leaf);seen[leaf['path']]=receipt
    f.write(json.dumps(receipt)+'\n');f.flush()
    if len(seen)%25==0:print('REPLAYED',len(seen),time.monotonic()-start,flush=True)
  if partition.exists():
   data=json.loads(partition.read_text());assert not data['failed'] and not data['pending'],data
   v.check_coverage(data['leaves']);assert set(seen)=={x['path']for x in data['leaves']}
   print('PASS complete coverage and independent 160-bit replay',len(seen),time.monotonic()-start,flush=True)
   Path('/private/tmp/t2-residual-lift/stream_summary.json').write_text(json.dumps(dict(status='PASS',precision=160,leaves=len(seen),seconds=time.monotonic()-start),indent=2)+'\n')
   break
  time.sleep(2)
