import sys,json,time,shutil
from pathlib import Path
sys.path.insert(0,'ProvenResults/FourierNeighbourhood/SeedLifting')
import zero_neighbourhood as z
import verify_zero_neighbourhood as audit
from flint import ctx
source=Path('/private/tmp/t2-zero-neighbourhood/trimmed_arcs.jsonl')
out=Path('Verification/T2_zero_neighbourhood_2026-09-29')
while True:
 text=source.read_text();lines=text.splitlines(keepends=True)
 last=next((json.loads(line) for line in reversed(lines) if line.endswith('\n')),None)
 if last and last['event']=='done':break
 time.sleep(2)
assert not last['failed'],last['failed']
leaves=[];receipts=[]
for x in last['leaves']:
 leaf=dict({k:x[k] for k in ('typ','k','path','left','right')},phase_depth=16)
 r=x['result'];assert r['ok'] and r['reason'] in ('no_side_triple','no_side_pair')
 for side in r['sides']:
  assert side['nodes']==2*(side['moment_leaves']+side['corner_leaves']+side['labels'])-64
 leaves.append(leaf);receipts.append(dict(leaf,certificate=r))
data=dict(status='complete_96_bit_discovery',arc_half_width_pi=str(z.ARC_WIDTH),trim_pi=str(z.TRIM),leaves=leaves)
exact=audit.exact_controls(data);ctx.prec=96
controls=audit.precision_controls()
exts=[json.loads(s) for s in Path('/private/tmp/t2-zero-neighbourhood/search_extension.jsonl').read_text().splitlines()]
assert [x['n'] for x in exts]==list(range(4,17))
for x in exts:
 r=x['result'];assert r['ok'] and r['reason']=='residual_tube'
 assert z.arb(r['column_distance'])<z.arb(1)/30 and z.arb(r['R_cap'])<z.arb(1)/2
(z.HERE/'data/zero_neighbourhood.json').write_text(json.dumps(data,indent=2)+'\n')
(out/'precision96.jsonl').write_text(''.join(json.dumps(x)+'\n' for x in receipts))
(out/'precision96.json').write_text(json.dumps(dict(status='PASS',scope='Complete 96-bit discovery, exact partition audit and controls; not an independent second 96-bit search',arc_count=len(leaves),exact=exact,extensions=exts,controls=controls,discovery_seconds=last['seconds']),indent=2)+'\n')
shutil.copyfile(source,out/'research/trimmed_arcs.jsonl')
print('PASS: complete 96-bit partition',len(leaves),'arc boxes; 13 extension cubes; source and control records saved',flush=True)
