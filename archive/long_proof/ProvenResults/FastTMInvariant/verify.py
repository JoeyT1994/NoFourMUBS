"""Exact inequalities and combinatorial bounds for the FastTM invariant."""
from fractions import Fraction as F
from math import comb, prod

u=F(2)**-53; eps=F(2)**-30; tau=F(2)**-1074
beta=F(1e-300); M=F(2)**40; K=F(2)**24*M*tau
gamma=lambda n:n*u/(1-n*u)
assert (1-u)**2*(1+eps)>=1+eps/2
assert (1-u)*beta-tau>=beta/2
assert (1+eps/2)*(1-u)**16384>=1
assert beta/2>=(2+eps/2)*K
assert F(2)**-40*(1-u)**4096>gamma(4096)
assert (1-u)*(beta/2-2*tau)>=0
assert 2*(1-u)**1820>1
assert (1+u)**4096<2
assert 2*4096*(2*M+1)*tau+F(2)**18*tau<K
maxima=[0,0,0,0]
for q in range(13):
    exps=[(a,b,c,d) for a in range(q+1) for b in range(q+1-a)
          for c in range(q+1-a-b) for d in range(q+1-a-b-c)]
    N=len(exps)
    counts=[prod(x+1 for x in e) for e in exps]
    assert N==comb(q+4,4)
    assert sum(counts)==comb(q+8,8)
    budget=2*N+4*(q+1)+q*(q+1)+32
    assert budget<4096
    assert max(counts)<=256
    assert 2*sum(counts)<2**18
    maxima=[max(v,w) for v,w in zip(maxima,[N,sum(counts),max(counts),budget])]
    for n in set(counts):
        assert F(float(n*u))==n*u
        assert F(float(1-n*u))==1-n*u
assert maxima==[1820,125970,256,3880]
print('PASS: all padding, subnormal-loss, endpoint and guard inequalities (exact rationals)')
print('PASS: orders 0..12: max coefficients=1820, retained pairs=125970, nmax=256, radius-operation bound=3880')
print('Scope: guarded-trace enclosure invariant; no assertion that historical campaign traces were guarded')
