from pathlib import Path
from fractions import Fraction as F
from itertools import product
import sys,time,json
sys.path.insert(0,'ProvenResults/FourierNeighbourhood/SeedLifting')
import residual_lift as p
base_region=p.regional_cell

def reflected_region(a,b):
 a,b=F(a),F(b)
 choices=[v for v in (base_region(a,b),base_region(a-b,-b))if v is not None]
 return min(choices,key=lambda v:v['tolerance_denominator'])if choices else None
p.regional_cell=reflected_region
for i,j in product(range(6),repeat=2):
 r,s=(2-i)%6,(-j)%6
 assert (F(r*s-i*j,6)+F(j,3)).denominator==1 and s%2==j%2
 assert int(r%3==1)==int(i%3==1)
 assert int(r%3==2)-1==-int(i%3==1)-int(i%3==2)
base=[F(2,3),F(-53,180),F(-2,3),F(-2,3)]
queue=[''];accepted=[];failed=[];start=time.monotonic()
f=Path('/private/tmp/t2-residual-lift/moving_family_search.jsonl').open('w')
while queue:
 path=queue.pop();cc=base.copy();hh=[F(1,512)]*4
 for k,bit in enumerate(path):
  axis=k%4;hh[axis]/=2;cc[axis]+=(1 if bit=='1'else -1)*hh[axis]
 if len(path)<4:queue.extend([path+'0',path+'1']);continue
 a,b=(cc[1]+F(1,3))/2,(cc[3]+F(2,3))/2
 convert=lambda q:p.arb.pi()*q.numerator/q.denominator
 for depth in ([16,18,20]if len(path)>=10 else [16,18]):
  result=p.certify_family(list(map(convert,cc)),list(map(convert,hh)),a_turns=a,b_turns=b,depth=depth)
  if result['ok']:break
  if result['reason']in ('label_limit','side_pair_budget','side_triple_budget'):break
 record=dict(path=path,phase_depth=depth,a=str(a),b=str(b),result=result,seconds=time.monotonic()-start)
 f.write(json.dumps(record)+'\n');f.flush()
 if result['ok']:accepted.append(dict(path=path,phase_depth=depth,a=str(a),b=str(b)))
 elif len(path)>=16:
  failed.append(path)
  if len(failed)>=8:break
 else:queue.extend([path+'0',path+'1'])
 if len(accepted) and len(accepted)%50==0:print('PROGRESS',len(accepted),len(failed),len(queue),path,time.monotonic()-start,flush=True)
Path('/private/tmp/t2-residual-lift/moving_family_partition.json').write_text(json.dumps(dict(scope='Proposal only; reflected reference rule not yet promoted and complete independent replay required.',leaves=accepted,failed=failed,pending=queue,seconds=time.monotonic()-start),indent=2)+'\n')
print('END',len(accepted),len(failed),len(queue),time.monotonic()-start,flush=True)
