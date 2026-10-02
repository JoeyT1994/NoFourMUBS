import sys,time,json
sys.path.insert(0,'ProvenResults/FourierNeighbourhood/SeedLifting')
from residual_lift import *
from fractions import Fraction as F
from flint import ctx
ctx.prec=96
for n in range(4,17):
 cc=[arb.pi()*v for v in [arb(4)/3,arb(5)/3+arb(n)/2048,arb(0),1+arb(n)/2048]]
 h=[arb.pi()/2048]*4;t=time.monotonic()
 r=certify_f6(cc,h,depth=18)
 print(json.dumps(dict(n=n,seconds=time.monotonic()-t,result=r)),flush=True)
 if not r['ok']:break
