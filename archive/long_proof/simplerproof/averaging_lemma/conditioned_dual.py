"""Retain canonical and complementary-corner constraints in the dual sum.

Every added scalar has a nonnegative value on the target physical domain.
Its multiplier is rounded to a nonnegative dyadic rational by the checker.
"""
import numpy as np
from fractions import Fraction as Q
from radical_dual import data,propose_bernstein,exact_polynomials as radical_polynomials
from scalar_bernstein import conditions
from reconstruction_polynomials import LP
POLYS=conditions()
NAMES=[f'order_{j}' for j in range(5)]+['eta_plus','eta_minus','q_plus_f','q_minus_f']
SCALARS=[POLYS[name] for name in NAMES[:7]]+[POLYS['signed_complement'],-POLYS['signed_complement']]

def conditioned_data(theta,sigma):
    A,E,C=data(theta,sigma);rows=[C]
    for j,p in enumerate(SCALARS):
        c=np.zeros(26);c[0]=p.evaluate(theta).real
        if j>=7:c[-1]=1
        rows.append(c)
    return A,E,np.array(rows)

def propose(theta,sigma,h):
    result=propose_bernstein(theta,sigma,h,conditioned_data)
    result['scalar_names']=['radical_chord']+NAMES
    return result

def exact_polynomials(A,E,proposal):
    assert proposal['scalar_names']==['radical_chord']+NAMES
    assert len(proposal['mu'])==10
    core={**proposal,'mu':proposal['mu'][0]}
    polys,shifts=radical_polynomials(A,E,core)
    for j,(weight,p) in enumerate(zip(proposal['mu'][1:],SCALARS)):
        mu=LP.dyadic(max(0,round(Q(weight)*2**40)),0,40)
        polys[0]+=mu*p
        if j>=7:polys[-1]+=mu
    assert all(p.d==p.conjugate().d and p.den==p.conjugate().den for p in polys)
    return polys,shifts
