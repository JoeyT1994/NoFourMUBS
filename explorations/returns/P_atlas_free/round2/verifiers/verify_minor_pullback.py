#!/usr/bin/env python3
"""Exact symbolic minor identities and an all-400-minor normalization gate."""
from fractions import Fraction as F
from itertools import combinations
from pathlib import Path
import hashlib,json,sys

if not __debug__:
    raise RuntimeError('Assertions must remain enabled.')

names=tuple(f'{letter}{i}' for letter in ('x','y','s','p') for i in range(3))+('u',)
size=len(names)

class P:
    def __init__(self,value=0):
        if isinstance(value,P): self.c=value.c
        elif isinstance(value,dict): self.c={e:F(c) for e,c in value.items() if c}
        else: self.c={(0,)*size:F(value)} if value else {}
    def __add__(self,other):
        other=P(other); out=dict(self.c)
        for e,c in other.c.items(): out[e]=out.get(e,F(0))+c
        return P(out)
    __radd__=__add__
    def __neg__(self): return P({e:-c for e,c in self.c.items()})
    def __sub__(self,other): return self+-P(other)
    def __rsub__(self,other): return P(other)+-self
    def __mul__(self,other):
        other=P(other); out={}
        for e,c in self.c.items():
            for f,d in other.c.items():
                ef=tuple(a+b for a,b in zip(e,f))
                out[ef]=out.get(ef,F(0))+c*d
        return P(out)
    __rmul__=__mul__
    def __truediv__(self,scalar): return self*F(1,scalar)
    def __pow__(self,n):
        if n<0:
            assert len(self.c)==1
            e,c=next(iter(self.c.items()))
            return P({tuple(n*a for a in e):c**n})
        out=P(1)
        for _ in range(n):out=out*self
        return out
    def __eq__(self,other):return self.c==P(other).c

def variable(name):
    e=[0]*size;e[names.index(name)]=1
    return P({tuple(e):1})

def det(x,y,z):
    return (x[0]*(y[1]*z[2]-y[2]*z[1])
            -y[0]*(x[1]*z[2]-x[2]*z[1])
            +z[0]*(x[1]*y[2]-x[2]*y[1]))

x,y,s,p=[[variable(f'{letter}{i}') for i in range(3)] for letter in ('x','y','s','p')]
u=variable('u');U=u*u
plus=[(a+b*u**-1)/2 for a,b in zip(s,p)]
minus=[(a-b*u**-1)/2 for a,b in zip(s,p)]
one_plus=det(x,y,plus);one_minus=det(x,y,minus)
assert one_plus==(det(x,y,s)+det(x,y,p)*u**-1)/2
assert one_minus==(det(x,y,s)-det(x,y,p)*u**-1)/2
assert one_plus*one_minus==(U*det(x,y,s)**2-det(x,y,p)**2)*u**-2/4
assert det(x,plus,minus)==-det(x,s,p)*u**-1/2

# A fully nonsingular exact fixture, not a Hadamard and not a MUB claim.
# The identities apply to arbitrary column data and u!=0.
M=[[F((i+1)**j) for j in range(6)] for i in range(6)]
u0=F(3);U0=u0*u0
ss=[row[4]+row[5] for row in M]
pp=[u0*(row[4]-row[5]) for row in M]
minor_product=F(1);phi=F(1);minor_count=0;factor_count=0
for rows in combinations(range(6),3):
    columns=[[M[i][j] for i in rows] for j in range(6)]
    sa=[ss[i] for i in rows];pa=[pp[i] for i in rows]
    for chosen in combinations(range(6),3):
        z=det(*(columns[j] for j in chosen))
        assert z
        minor_product*=z;minor_count+=1
    for chosen in combinations(range(4),3):
        phi*=det(*(columns[j] for j in chosen));factor_count+=1
    for a,b in combinations(range(4),2):
        phi*=U0*det(columns[a],columns[b],sa)**2-det(columns[a],columns[b],pa)**2
        factor_count+=1
    for a in range(4):
        phi*=det(columns[a],sa,pa);factor_count+=1
assert phi and minor_count==400 and factor_count==280
assert phi==2**320*U0**160*minor_product
receipt={'status':'PASS','arithmetic':'rational Laurent polynomials and exact fractions',
 'symbolic_scalar_variables':len(names),
 'identities':['single missing minor','paired missing-sign minor product','two missing columns'],
 'positional_minors_checked':minor_count,'pulled_back_factors':factor_count,
 'normalization':{'power_of_2':320,'power_of_U':160},
 'fixture':'integer Vandermonde; all400 minors nonzero; not represented as a Hadamard',
 'minor_product_sha256':hashlib.sha256(str(minor_product).encode()).hexdigest()}
out=Path(__file__).resolve().parents[1]/'certificates/MINOR_PULLBACK_RECEIPT.json'
out.write_text(json.dumps(receipt,indent=2,sort_keys=True)+'\n')
print(json.dumps(receipt,sort_keys=True))
