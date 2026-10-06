#!/usr/bin/env python3
"""Exact verification of the radius-1/40 invariant bound, NOT of exclusion."""
from __future__ import annotations
from fractions import Fraction as Q
from pathlib import Path
import argparse, gzip, hashlib, json, sys, time
if not __debug__:
    raise RuntimeError('Optimization mode is prohibited.')
HERE=Path(__file__).resolve().parent
Z=(0,0,0,0)
def const(a):return {} if not a else {Z:Q(a)}
def var(j):
    e=[0]*4;e[j]=1;return {tuple(e):Q(1)}
def add(a,b):
    c=dict(a)
    for e,v in b.items():
        c[e]=c.get(e,Q(0))+v
        if not c[e]:del c[e]
    return c
def neg(a):return {e:-v for e,v in a.items()}
def sub(a,b):return add(a,neg(b))
def scale(a,q):return {e:v*Q(q) for e,v in a.items() if v*Q(q)}
def mul(a,b):
    c={}
    for e,v in a.items():
        for f,w in b.items():
            k=tuple(x+y for x,y in zip(e,f));c[k]=c.get(k,Q(0))+v*w
    return {e:v for e,v in c.items() if v}
def power(a,n):
    r=const(1)
    for _ in range(n):r=mul(r,a)
    return r
def total(*args):
    r={}
    for a in args:r=add(r,a)
    return r

def check():
    X,Y,Zv,J=[var(j) for j in range(4)]
    p=total(X,Y,Zv)
    W=sub(total(mul(X,Y),mul(X,Zv),mul(Y,Zv)),mul(mul(X,Y),Zv))
    g=total(const(27),scale(p,-3),J)
    eta=total(const(9),neg(p),J)
    chi=total(W,neg(mul(sub(p,const(9)),sub(p,const(18)))),mul(sub(p,const(15)),J))
    R=sub(scale(mul(power(g,2),eta),4),power(chi,2))
    stable=total(scale(power(J,3),4),
      mul(power(J,2),total(neg(power(p,2)),scale(p,2),const(27))),
      mul(J,total(scale(power(p,3),2),scale(power(p,2),-24),scale(mul(p,W),-2),scale(p,54),scale(W,30))),
      neg(power(p,4)),scale(power(p,3),18),scale(mul(power(p,2),W),2),scale(power(p,2),-81),scale(mul(p,W),-54),neg(power(W,2)),scale(W,324))
    assert R==stable
    u1,u2,u3,u4=[var(j) for j in range(4)]
    def norm(a,b):return total(power(a,2),neg(mul(a,b)),power(b,2))
    X2=norm(u1,u2);Y2=norm(u3,u4);Z2=norm(sub(u3,u1),sub(u4,u2))
    p2=total(X2,Y2,Z2)
    L=scale(sub(scale(total(mul(X2,Y2),mul(X2,Z2),mul(Y2,Z2)),4),power(p2,2)),81)
    kappa=sub(mul(u1,u4),mul(u2,u3))
    assert L==scale(power(kappa,2),243)
    r=Q(1,40)
    tests={
      'sqrt3_upper':Q(7,4)**2>3,
      'sqrt3_sharp_upper':Q(26,15)**2>3,
      'p_upper':18+35*r+18*r*r<19,
      'J_upper':2*(Q(26,15)+r)**2*(Q(52,15)+4*r)<23,
      'Z_below_one':(Q(7,2)+4*r)**2*r*r<1,
      'W_upper':Q(19**2,3)<121,
      'row_orientation':3-32*r>4*r,
      'side_sum_domain':2*r<Q(1,8),
      'side_inverse':Q(3,2)-16*r>1,
      'square_root_chart':1/(1+2*r)**2>Q(1,4),
    }
    coeff={4:972,
      5:162*19*35+54*19*23,
      6:162*19*18+27*23**2+18*19**3,
      7:23*(24*19**2+30*121),
      8:2*19*23**2+2*19**2*121,
      9:4*23**3+23*(2*19**3+2*19*121)}
    assert coeff=={4:972,5:131328,6:193149,7:282762,8:107464,9:469936}
    C=sum(Q(v)*r**(k-4) for k,v in coeff.items())
    assert C==Q(28034450231,6400000)
    tests['q_coefficient_67']=C<67**2
    tests['rounded_display_upper']=C<4381
    assert all(tests.values())
    return {'status':'PASS','scope':'exact polynomial identities and rational constants for the invariant-bound lemma',
      'uniform_strict_D0_exclusion_status':'COMPONENT_ONLY','uniform_exclusion_radius':None,
      'invariant_bound_domain_radius':'1/40','q_coefficient':67,
      'R_normalized_upper_exact':str(C),'R_normalized_upper_decimal':'4380.38284859375',
      'q_squared_margin':str(Q(67**2)-C),'polynomial_majorant':{str(k):v for k,v in coeff.items()},
      'finite_guards':tests,'symbolic_identities':{'stable_R_expansion':True,'quartic_Gram_identity':True}}
