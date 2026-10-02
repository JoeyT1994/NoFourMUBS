import sys,json,time,math
from pathlib import Path
from itertools import permutations
sys.path.insert(0,'ProvenResults/FourierNeighbourhood/SeedLifting')
import residual_lift as p
catalog={}
for rr in permutations(range(6),3):
 for cc in permutations(range(6),3):
  seed=tuple((r-rr[0])*(c-cc[0])%6 for r in rr[1:]for c in cc[1:])
  if seed not in catalog:catalog[seed]=(rr+tuple(i for i in range(6)if i not in rr),cc+tuple(i for i in range(6)if i not in cc))
cases=[v for v in json.loads(Path('WhatWeWanttoProve/evidence/layer_bench_600.json').read_text())['unresolved_retry']if v['how']=='unresolved']
print('CATALOG',len(catalog),flush=True)
records=[];start=time.monotonic()
for index,case in enumerate(cases):
 theta=case['theta']
 ranking=sorted(catalog,key=lambda seed:sum(math.remainder(t-math.pi*n/3,2*math.pi)**2 for t,n in zip(theta,seed)))
 attempts=[]
 for seed in ranking[:3]:
  rows,cols=catalog[seed];H=p.fourier_reference(rows,cols)
  if not p.reference_gram_bound(H)>0:
   attempts.append(dict(seed=seed,reason='reference_gram'));continue
  r=p.certify_f6(list(map(p.arb,theta)),[p.arb.pi()/512]*4,rows=rows,cols=cols,depth=16)
  attempts.append(dict(seed=seed,rows=rows,cols=cols,certificate=r))
  if r['ok']:break
 result=dict(index=index,theta=theta,nearest_seed=ranking[0],nearest_phase_distance=max(abs(math.remainder(t-math.pi*n/3,2*math.pi))for t,n in zip(theta,ranking[0])),attempts=attempts,ok=any(x.get('certificate',{}).get('ok',False)for x in attempts))
 records.append(result)
 print(index,result['ok'],result['nearest_phase_distance'],[x.get('certificate',x)['reason']for x in attempts],flush=True)
 Path('/private/tmp/t2-residual-lift/benchmark.json').write_text(json.dumps(dict(status='complete'if len(records)==53 else 'partial',scope='Three nearest exact F6 seed references only; full production half-width, phase cover depth 16; this is not a complete family search.',records=records,seconds=time.monotonic()-start),indent=2)+'\n')
