import sys,time,json
from fractions import Fraction as F
sys.path.insert(0,'ProvenResults/FourierNeighbourhood/SeedLifting')
import side_cover_lift
from paired_prune import prune_box,arb
from flint import ctx
ctx.prec=96
conv=lambda q:arb.pi()*q.numerator/q.denominator
start=time.monotonic();records=[];fail=[]
for typ in ['curve','surface']:
 for k in range(6):
  left=F(k,3)+F(1,24);right=F(k+1,3)-F(1,24)
  queue=[('',left,right)]
  while queue:
   path,a,b=queue.pop();q=(a+b)/2;tang=(b-a)/2;h=F(1,8192)
   cc=([F(2,3),0,q,1] if typ=='curve' else[F(2,3),F(4,3),q,2*q])
   rr=([h,h,h+tang,h] if typ=='curve' else[h,h,h+tang,h+2*tang])
   r=prune_box(list(map(conv,cc)),list(map(conv,rr)),depth=16,maxlabels=1200,pair_budget=800000,triple_budget=500000)
   if r['ok'] and r['reason']!='R_nonpositive':
    v=dict(typ=typ,k=k,path=path,left=str(a),right=str(b),result=r);records.append(v)
    print(json.dumps(dict(event='accept',**v,elapsed=time.monotonic()-start)),flush=True)
   elif len(path)<10:
    queue.extend([(path+'1',q,b),(path+'0',a,q)])
   else:
    v=dict(typ=typ,k=k,path=path,left=str(a),right=str(b),result=r);fail.append(v)
    print(json.dumps(dict(event='fail',**v,elapsed=time.monotonic()-start)),flush=True)
    if len(fail)>=8:break
  if len(fail)>=8:break
 if len(fail)>=8:break
print(json.dumps(dict(event='done',leaves=records,failed=fail,seconds=time.monotonic()-start)),flush=True)
