#!/usr/bin/env python3
"""Generic exact six-Gram-variable check of the covariance determinant norm."""
import importlib.util
import pathlib
import sys
from flint import fmpq_mpoly_ctx
if sys.flags.optimize:
    raise SystemExit('Assertions must be enabled.')
p=pathlib.Path(__file__).resolve().parents[1]/'reference/rational_helper.py'
spec=importlib.util.spec_from_file_location('rh_generic',p)
rh=importlib.util.module_from_spec(spec)
spec.loader.exec_module(rh)
rh.CTX=fmpq_mpoly_ctx.get(['s','S','t','T','r','Q'])
rh.ZERO=rh.CTX.constant(0)
rh.ONE=rh.CTX.constant(1)
F=rh.F

def star(x):
    def flip(p):
        return rh.CTX.from_dict({(e[1],e[0],e[3],e[2],e[5],e[4]):c for e,c in p.terms()})
    return F(flip(x.n),flip(x.d))

s,S,t,T,r,Q=map(F,rh.CTX.gens())
X,Y,Z=s*S,t*T,r*Q
p=X+Y+Z
J=s*r*T+S*Q*t
g=27-3*p+J
eta=9-p+J
chi=X*Y+X*Z+Y*Z-X*Y*Z-(p-9)*(p-18)+(p-15)*J
h=chi/g
P0=r*s*s+Q*t*t+(3-Z)*s*t
P1=t*S*S+r*r*T+(3-Y)*r*S
P2=s*T*T+Q*Q*S+(3-X)*Q*T
Pb0,Pb1,Pb2=map(star,(P0,P1,P2))
c0,c1,c2=9-Z,9-Y,9-X
for P,Pb,c in zip((P0,P1,P2),(Pb0,Pb1,Pb2),(c0,c1,c2)):
    assert not (P*Pb-g*g-c*chi-c*c*eta).n
print('PASS: all generic lambda norm identities.',flush=True)

def add(a,b):
    return (a[0]+b[0],a[1]+b[1])
def neg(a):
    return (-a[0],-a[1])
def mul(a,b):
    return (a[0]*b[0]-eta*a[1]*b[1],a[0]*b[1]+a[1]*b[0]+h*a[1]*b[1])
def scale(a,k):
    return (a[0]*k,a[1]*k)
def swap(a):
    return (a[0]+h*a[1],-a[1])

u1=((g*g+c1*chi+c0*c1*eta)/(P0*Pb1),g*(c0-c1)/(P0*Pb1))
u2=((g*g+c2*chi+c0*c2*eta)/(P0*Pb2),g*(c0-c2)/(P0*Pb2))
beta=((chi+c0*eta)/P0,-g/P0)
A=add((2*S*S/3,F(0)),scale(u1,-2*s))
B=add((2*S*T/3,F(0)),neg(beta))
C=add((2*T*T/3,F(0)),scale(u2,-2*t))
d=add(mul(A,C),neg(mul(B,B)))
lam1=((g+c1*h)/Pb1,-c1/Pb1)
lam2=((g+c2*h)/Pb2,-c2/Pb2)
invlam0=(g/P0,c0/P0)
d_expected=scale(mul(mul(lam1,lam2),invlam0),-g/3)
assert all(not (a-b).n for a,b in zip(d,d_expected))
print('PASS: det M = -g lambda1 lambda2/(3 lambda0) in generic quadratic algebra.',flush=True)
N=(g*g/9)*(P1*P2*Pb0)/(Pb1*Pb2*P0)
norm=mul(d,swap(d))
assert not (norm[0]-N).n
assert not norm[1].n
print('PASS: det M(t) det M(h-t) = (g^2/9) P1 P2 barP0/(barP1 barP2 P0).',flush=True)
print('All calculations used six independent Gram variables and exact rational arithmetic.')
