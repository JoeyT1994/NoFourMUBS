import sys,time,json
sys.path.insert(0,'ProvenResults/FourierNeighbourhood/SeedLifting')
import side_cover_lift
from paired_prune import prune_box,arb
from fractions import Fraction as F
from flint import ctx
ctx.prec=96
for typ in ['curve','surface']:
 for q in [F(1,6),F(1,8),F(1,48),F(1,3)-F(1,48)]:
  for tang in [F(1,128),F(1,512),F(1,2048)]:
   cc=([F(2,3),0,q,1] if typ=='curve' else [F(2,3),F(4,3),q,2*q])
   h=F(1,512)
   rr=([h,h,h+tang,h] if typ=='curve' else[h,h,h+tang,h+2*tang])
   conv=lambda x:arb.pi()*x.numerator/x.denominator
   t=time.monotonic();r=prune_box(list(map(conv,cc)),list(map(conv,rr)),depth=12,maxlabels=700,pair_budget=300000)
   print(json.dumps(dict(typ=typ,q=str(q),tang=str(tang),seconds=time.monotonic()-t,result=r)),flush=True)
   if r['ok']:break
