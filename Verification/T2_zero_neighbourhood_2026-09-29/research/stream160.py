from pathlib import Path
import sys,time,json,hashlib
sys.path.insert(0,'ProvenResults/FourierNeighbourhood/SeedLifting')
import zero_neighbourhood as z
import verify_zero_neighbourhood as audit
from flint import ctx
ctx.prec=160
source=Path('/private/tmp/t2-zero-neighbourhood/trimmed_arcs.jsonl')
out=Path('Verification/T2_zero_neighbourhood_2026-09-29');out.mkdir(exist_ok=True)
files=[z.HERE/'zero_neighbourhood.py',z.HERE/'verify_zero_neighbourhood.py',z.HERE/'residual_lift.py',z.HERE/'side_cover_lift.py',z.HERE/'direct_lift.py',z.HERE/'verify_production_partition.py',z.HERE.parents[1]/'CornerBounds/SideColumnPrune/prune.py',z.HERE.parents[1]/'CornerBounds/SideTriplePrune/triple_prune.py',z.HERE.parents[1]/'CornerBounds/PairedSidePrune/paired_prune.py']
hashes={str(p):hashlib.sha256(p.read_bytes()).hexdigest() for p in files}
start=time.monotonic();receipts={};extensions=[]
for n in range(4,17):
 r=z.replay_extension(n);assert z.arb(r['R_cap'])<z.arb(1)/2
 extensions.append(dict(n=n,certificate=r))
print('PASS: all 13 extension cubes at 160 bits',flush=True)
with (out/'precision160.jsonl').open('w') as stream:
 while True:
  rows=[]
  for line in source.read_text().splitlines(keepends=True):
   if not line.endswith('\n'):continue
   rows.append(json.loads(line))
  for row in rows:
   if row['event']!='accept':continue
   key=(row['typ'],row['k'],row['path'])
   if key in receipts:continue
   leaf={k:row[k] for k in ['typ','k','path','left','right']};leaf['phase_depth']=16
   r=z.replay_arc(leaf);v=dict(leaf,certificate=r);receipts[key]=v
   stream.write(json.dumps(v)+'\n');stream.flush()
   if len(receipts)%50==0:print('PASS:',len(receipts),'arc boxes at 160 bits',flush=True)
  final=next((r for r in rows if r['event']=='done'),None)
  if final is not None:
   assert not final['failed'],final['failed']
   leaves=[dict({k:x[k] for k in ['typ','k','path','left','right']},phase_depth=16) for x in final['leaves']]
   assert set(receipts)=={(x['typ'],x['k'],x['path']) for x in leaves}
   data=dict(arc_half_width_pi=str(z.ARC_WIDTH),trim_pi=str(z.TRIM),leaves=leaves)
   exact=audit.exact_controls(data);ctx.prec=160
   controls=audit.precision_controls()
   assert hashes=={str(p):hashlib.sha256(p.read_bytes()).hexdigest() for p in files}
   report=dict(status='PASS',scope='Independent complete 160-bit replay; exact parameter endpoints and complete twelve-root coverage',precision=160,exact=exact,arc_count=len(leaves),extensions=extensions,controls=controls,source_hashes=hashes,seconds=time.monotonic()-start)
   (out/'precision160.json').write_text(json.dumps(report,indent=2)+'\n')
   print('PASS: complete 160-bit replay and coverage',len(leaves),'arcs; sources unchanged',flush=True)
   break
  time.sleep(2)
