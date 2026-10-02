import sys,time,json
from pathlib import Path
sys.path.insert(0,'ProvenResults/FourierNeighbourhood/SeedLifting')
import residual_lift as p
arb=p.arb
root=[arb.pi()*k/3 for k in (4,5,0,3)];root_h=arb.pi()/512
queue=[''];accepted=[];failed=[];start=time.monotonic()
f=Path('/private/tmp/t2-residual-lift/production.jsonl').open('w')
while queue:
 path=queue.pop();cc=root.copy();hh=[root_h]*4
 for i,bit in enumerate(path):
  a=i%4;hh[a]/=2;cc[a]+=(1 if bit=='1'else -1)*hh[a]
 if len(path)<4:queue.extend([path+'0',path+'1']);continue
 for depth in ([16,18,20]if len(path)>=10 else [16,18]):
  r=p.certify_f6(cc,hh,depth=depth)
  if r['ok']:break
  if r['reason']in ('label_limit','side_pair_budget','side_triple_budget'):break
 rec=dict(path=path,phase_depth=depth,result=r,seconds=time.monotonic()-start)
 f.write(json.dumps(rec)+'\n');f.flush()
 if r['ok']:accepted.append(dict(path=path,phase_depth=depth))
 elif len(path)>=16:
  failed.append(path)
  if len(failed)>=8:break
 else:queue.extend([path+'0',path+'1'])
 if (len(accepted)+len(failed))%25==0:print(len(accepted),len(failed),len(queue),path,time.monotonic()-start,flush=True)
Path('/private/tmp/t2-residual-lift/production_partition.json').write_text(json.dumps(dict(leaves=accepted,failed=failed,pending=queue,seconds=time.monotonic()-start),indent=2)+'\n')
print('END',len(accepted),len(failed),len(queue),time.monotonic()-start,flush=True)
