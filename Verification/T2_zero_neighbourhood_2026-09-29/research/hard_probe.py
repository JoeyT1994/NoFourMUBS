import sys,json,time
sys.path.insert(0,'ProvenResults/FourierNeighbourhood/SeedLifting')
import zero_neighbourhood as z
import side_cover_lift
from paired_prune import prune_box
for path in ['111','1111','11111']:
 cc,hh=z.arc_box('surface',3,path)
 for swap in [True,False]:
  order=[0,2,1,3] if swap else range(4)
  for d in [12,16]:
   t=time.monotonic();r=prune_box(z.to_arb([cc[i] for i in order]),z.to_arb([hh[i] for i in order]),depth=d,budget=200000,maxlabels=1200,pair_budget=800000,triple_budget=500000)
   print(json.dumps(dict(path=path,transpose=swap,depth=d,seconds=time.monotonic()-t,result=r)),flush=True)
   if r['ok']:break
