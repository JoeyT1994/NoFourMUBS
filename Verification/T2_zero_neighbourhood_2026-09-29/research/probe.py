import sys,time,json
sys.path.insert(0,'ProvenResults/FourierNeighbourhood/SeedLifting')
from residual_lift import *
from paired_prune import prune_box
from flint import ctx
ctx.prec=96
cases=[('curve_quarter',[arb(2)/3,0,arb(1)/2,1]),('curve_twelfth',[arb(2)/3,0,arb(1)/6,1]),('surface_zero',[arb(2)/3,arb(4)/3,arb(1)/8,arb(1)/4]),('f6_extension',[arb(4)/3,arb(5)/3+arb(1)/256,0,1+arb(1)/256])]
for name,coeffs in cases:
 for den in [512,2048,8192]:
  t=time.monotonic();cc=[arb.pi()*v for v in coeffs];hh=[arb.pi()/den]*4
  if name=='f6_extension': r=certify_f6(cc,hh,depth=18)
  else:r=prune_box(cc,hh,depth=12,maxlabels=600,pair_budget=200000)
  print(json.dumps(dict(name=name,den=den,seconds=time.monotonic()-t,result=r)),flush=True)
  if r['ok']:break
