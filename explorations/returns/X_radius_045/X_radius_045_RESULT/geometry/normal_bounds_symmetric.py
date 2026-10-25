if not __debug__:
    raise SystemExit("Verification requires assertions; do not use python -O.")

"""Certified rational actual-Hadamard normal and column envelopes.
Requires the proved tensor bounds independently replayed by certify_symmetric_cross.py.
"""
from fractions import Fraction as F
from math import isqrt
from pathlib import Path
import json
D=10**12
A=F(289,1000);B=F(463,1000);C=F(297,500);C0=F(817,1000);E=F(385,1000)
assert A*A>=F(1,12) and B*B>=F(41,192) and C0*C0>=F(2,3) and C*C>=F(19,54) and E*E>=F(4,27)
assert C>A

def ceiling(q):return F(-((-q.numerator*D)//q.denominator),D)
def sqrtup(q):
 assert q>=0
 k=isqrt((q.numerator*D*D)//q.denominator)
 if F(k*k,D*D)<q:k+=1
 return F(k,D)
def column(rho,n):
 assert n*n<=F(3,5)*rho*rho
 return sqrtup((rho*rho-n*n)/3)+sqrtup(F(1,2))*n

def bounds(rho,steps=100):
 n=C0*rho*rho
 history=[n]
 for _ in range(steps):
  r=column(rho,n)
  new=min(n,ceiling(A*rho*rho+B*rho*n+(C-A)*n*n+E*r*rho*rho))
  assert new<=n
  if new==n:break
  n=new;history.append(n)
 r=ceiling(column(rho,n))
 return {'rho':str(rho),'normal':str(n),'column':str(r),'iterations':len(history)-1,'normal_decimal':float(n),'column_decimal':float(r),'initial_normal':str(history[0]),'history':[str(x) for x in history]}
if __name__=='__main__':
 rows=[bounds(rho) for rho in [F(1,5),F(1,4),F(3,10),F(7,20),F(2,5),F(9,20),F(1,2),F(3,5)]]
 receipt={'status':'PASS','coefficient_upper_bounds':{'TT':str(A),'twice_TN':str(B),'NN':str(C),'cubic_remainder':str(E)},'rows':rows}
 Path(__file__).with_name('normal_bounds_symmetric_receipt.json').write_text(json.dumps(receipt,indent=2))
 for row in rows:print({k:v for k,v in row.items() if k!='history'})
