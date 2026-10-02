from pathlib import Path
from itertools import product
from fractions import Fraction as F
import sys,json,time
sys.path.insert(0,'ProvenResults/FourierNeighbourhood/SeedLifting')
import residual_lift as p
old=p.regional_cell

def reflected(a,b):
 a,b=F(a),F(b)
 return old(a,b) or old(a-b,-b)
p.regional_cell=reflected
# Exact parameter reflection: H(a-b,-b) is H(a,b) with old row 2-i,
# old column -j, followed by column phase exp(2pi i[j/3-b*(j%2)]).
for i,j in product(range(6),repeat=2):
 r,s=(2-i)%6,(-j)%6
 assert (F(r*s-i*j,6)+F(j,3)).denominator==1
 assert s%2==j%2
 assert r%3==(2-i)%3
base=[F(2,3),F(-53,180),F(-2,3),F(-2,3)]
reports=[];start=time.monotonic()
for signs in product((-1,1),repeat=4):
 q=[v+F(s,512)for v,s in zip(base,signs)]
 a,b=(q[1]+F(1,3))/2,(q[3]+F(2,3))/2
 cc=[p.arb.pi()*v.numerator/v.denominator for v in q]
 r=p.certify_family(cc,[p.arb(1)/10**7]*4,a_turns=a,b_turns=b)
 reports.append(dict(signs=signs,a=str(a),b=str(b),result=r))
 print(signs,r['ok'],r['reason'],r.get('column_distance'),flush=True)
Path('/private/tmp/t2-residual-lift/moving_reference_probe.json').write_text(json.dumps(dict(scope='Sixteen tiny vertex boxes only; not a parent-box certificate. Reflection identity checked, not yet promoted to project theorem.',seconds=time.monotonic()-start,records=reports),indent=2)+'\n')
