#!/usr/bin/env python3
"""Explore the exact affine conic contraction in Q(a,b,c,d)."""
import sys, time, json
if sys.flags.optimize:
    raise SystemExit("Run without -O or -OO.")
from pathlib import Path
sys.path.insert(0,str(Path(__file__).resolve().parents[1]/'reference'))
from rational_helper import F, CTX, tr, adj, mul
import check_existing_W11 as baseline

g,eta,chi=baseline.g,baseline.eta,baseline.chi
h=chi/g

class Pair:
    def __init__(self,a=0,b=0):
        if isinstance(a,Pair): self.a,self.b=a.a,a.b
        else: self.a,self.b=F(a),F(b)
    def __add__(u,v):
        v=Pair(v); return Pair(u.a+v.a,u.b+v.b)
    __radd__=__add__
    def __neg__(u): return Pair(-u.a,-u.b)
    def __sub__(u,v): return u+-Pair(v)
    def __rsub__(u,v): return Pair(v)+-u
    def __mul__(u,v):
        v=Pair(v); return Pair(u.a*v.a-eta*u.b*v.b,u.a*v.b+u.b*v.a+h*u.b*v.b)
    __rmul__=__mul__
    def __truediv__(u,v):
        if isinstance(v,Pair): raise TypeError('only base scalar division')
        return Pair(u.a/v,u.b/v)

def side_R1(G):
    s,t,r=G[1][0],G[2][0],G[2][1]
    S,T,Q=s.star(),t.star(),r.star()
    X,Y,Z=s*S,t*T,r*Q
    p,J=X+Y+Z,s*r*T+S*Q*t
    assert not (g-(27-3*p+J)).n
    P=[r*s*s+Q*t*t+(3-Z)*s*t,
       t*S*S+r*r*T+(3-Y)*r*S,
       s*T*T+Q*Q*S+(3-X)*Q*T]
    c=[9-Z,9-Y,9-X]
    TT=[[S*T,T,S],[Q,s*Q,s],[r,t,t*r]]
    diagonals=[Pair((chi+cj*eta)/Pj,-g/Pj) for cj,Pj in zip(c,P)]
    U=[[Pair(TT[i][j])-(diagonals[i] if i==j else 0) for j in range(3)] for i in range(3)]
    invGt=tr(baseline.inverse_with_det(G,g))
    L=[[sum(U[i][k]*invGt[k][j] for k in range(3)) for j in range(3)] for i in range(3)]
    inverse_alpha=Pair((g+c[0]*h)/P[0].star(),-c[0]/P[0].star())
    unit=L[0][0]*inverse_alpha
    assert not (unit.a-1).n and not unit.b.n
    R=[[Pair(0),Pair(1),Pair(0)],[-L[0][2]*L[1][1]*inverse_alpha,Pair(0),L[1][1]],[(1-L[0][1]*L[2][1])*inverse_alpha,L[2][1],Pair(0)]]
    return [[[x.a for x in row] for row in R],[[x.b for x in row] for row in R]],L

def terms(x): return [len(x.n),len(x.d)]

start=time.perf_counter()
Rh,Lh=side_R1(baseline.Gh)
Rv,Lv=side_R1(baseline.Gv)

transport=[mul(baseline.K,mul(R,adj(baseline.K))) for R in Rh]
AA=baseline.contraction(Rv[0],transport[0])
BB=baseline.contraction(Rv[0],transport[1])
CC=baseline.contraction(Rv[1],transport[0])
DD=baseline.contraction(Rv[1],transport[1])
assert not (BB-CC).n
assert not (AA+h*CC+eta*DD).n
print('C11 PASS', {k:terms(x) for k,x in zip('ABCD',[AA,BB,CC,DD])}, 'seconds', time.perf_counter()-start)
