"""Exact rational pi bounds and containment at every node through level 13."""
from fractions import Fraction as F
import math

def atan_bounds(q, n=64):
    # Alternating series at 1/q: the next term bounds the error.
    partial=sum((F((-1)**k, (2*k+1)*q**(2*k+1)) for k in range(n)),F(0))
    nxt=F((-1)**n,(2*n+1)*q**(2*n+1))
    return min(partial,partial+nxt),max(partial,partial+nxt)

# Machin: tan(4 atan(1/5)-atan(1/239))=1, with angle in (0,pi/2).
def tanadd(a,b): return (a+b)/(1-a*b)
t=F(1,5)
t=tanadd(t,t); t=tanadd(t,t)
assert tanadd(t,-F(1,239))==1
a,b=atan_bounds(5);c,d=atan_bounds(239)
plo,phi=16*a-4*d,16*b-4*c
assert 3<plo<phi<4
p=math.pi
assert max(abs(F(p)-plo),abs(F(p)-phi))<F(2)**-52
nodes=[(0.0,F(0))];checked=0
for level in range(14):
    rho=p/2**level
    enlarged=F(rho+2.0**-40)
    assert F(2)**-40>(level+2)*F(2)**-52+F(2)**(-52-level)
    for centre,coefficient in nodes:
        left=coefficient-F(1,2**level)
        right=coefficient+F(1,2**level)
        ideal_left=min(left*plo,left*phi)
        ideal_right=max(right*plo,right*phi)
        assert F(centre)-enlarged<=ideal_left
        assert F(centre)+enlarged>=ideal_right
        checked+=1
    if level<13:
        nodes=[(centre+sign*(rho/2),coefficient+sign*F(1,2**(level+1)))
               for centre,coefficient in nodes for sign in (-1,1)]
assert checked==16383
print(f'PASS: {checked} exact node-containment checks, levels 0..13; rational pi bracket')
