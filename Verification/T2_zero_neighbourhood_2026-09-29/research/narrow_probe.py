exec(open('/private/tmp/t2-zero-neighbourhood/hard_probe.py').read().split("for path in")[0])
from fractions import Fraction as F
for den in [8192,32768,131072]:
 for q in [F(13,10),F(63,48),F(21,16)]:
  cc=[F(2,3),F(4,3),q,2*q]; hh=[F(1,den)]*4
  for swap in [False,True]:
   order=[0,2,1,3] if swap else range(4)
   t=time.monotonic();r=prune_box(z.to_arb([cc[i] for i in order]),z.to_arb([hh[i] for i in order]),depth=16,budget=200000,maxlabels=1500,pair_budget=1200000,triple_budget=500000)
   print(json.dumps(dict(q=str(q),den=den,transpose=swap,seconds=time.monotonic()-t,result=r)),flush=True)
   if r['ok']:break
