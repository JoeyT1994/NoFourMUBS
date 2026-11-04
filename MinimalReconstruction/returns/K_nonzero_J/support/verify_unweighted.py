#!/usr/bin/env python3
"""Exact, denominator-safe replay of the signed-moment boundary reduction.

Requires SymPy. No numerical sampling, interpolation, square sum, Q(k,K),
or pole division is used. The optional --certificate path writes the
small expanded identities in integer sparse-polynomial form.
"""
import argparse
import itertools
import json
from collections import defaultdict
from pathlib import Path
import sympy as sp

def verify(output_certificate=None):
    """Replay every identity; return its compact sparse integer data."""
    cert = {}

    def sparse(expr, variables):
        return [[list(ex), int(co)] for ex,co in sp.Poly(sp.expand(expr), *variables).terms()]

    def equality(name, lhs, rhs, variables):
        assert sp.expand(lhs-rhs) == 0, name
        cert[name] = {'variables':[str(v) for v in variables],
                      'lhs':sparse(lhs, variables), 'rhs':sparse(rhs, variables)}

    # 1. The 48-term phase-block identity and its ordered-triple moment readout.
    a,b,c,d=sp.symbols('a b c d', nonzero=True)
    E=sp.Matrix([[1,1,1],[1,a,b],[1,c,d]])
    per=sum(sp.prod(E[i,p[i]] for i in range(3)) for p in itertools.permutations(range(3)))
    psi=sp.expand(per*E.det()**2/(a*b*c*d))
    D=sp.expand(psi-psi.xreplace({v:1/v for v in (a,b,c,d)}))
    assert len(sp.Add.make_args(D)) == 48
    zeros={(1,0),(-1,0),(0,1),(0,-1),(1,-1),(-1,1)}
    readout=defaultdict(lambda:sp.Integer(0))
    full_readout=defaultdict(lambda:sp.Integer(0))
    weighted_readout=defaultdict(lambda:sp.Integer(0))
    for term in sp.Add.make_args(D):
        powers=term.as_powers_dict()
        A,B,C,F=[int(powers.get(v,0)) for v in (a,b,c,d)]
        points=[(-A-B,-C-F),(A,C),(B,F)]
        coefficient=term/(a**A*b**B*c**C*d**F)
        full_readout[tuple(sorted(points))]+=coefficient/6
        for slot in range(3):
            shifted=list(points)
            shifted[slot]=(shifted[slot][0]+1,shifted[slot][1]+1)
            if any(p in zeros for p in shifted):
                continue
            weighted_key=tuple(sorted(p for p in shifted if p!=(0,0)))
            weighted_readout[weighted_key]+=coefficient*6**shifted.count((0,0))/6
        if any(p in zeros for p in points):
            continue
        coefficient*=6**points.count((0,0))
        key=tuple(sorted(p for p in points if p!=(0,0)))
        readout[key]+=coefficient/6
    readout={p:q for p,q in readout.items() if q}
    assert readout=={((-1,-1),(-1,2),(2,-1)):1,
                    ((-2,1),(1,-2),(1,1)):-1}
    full_readout={p:q for p,q in full_readout.items() if q}
    weighted_readout={p:q for p,q in weighted_readout.items() if q}
    assert len(full_readout)==8
    assert all(sum(z in zeros for z in p)>=2 for p in full_readout if p not in readout)
    weighted_expected={
        tuple(sorted([(-1,2),(2,-1)])):6,
        tuple(sorted([(-1,-1),(-1,2),(3,0)])):1,
        tuple(sorted([(-1,-1),(2,-1),(0,3)])):1,
        tuple(sorted([(-2,1),(1,-2),(2,2)])):-1,
        tuple(sorted([(1,1),(-1,2),(1,-2)])):-1,
        tuple(sorted([(1,1),(2,-1),(-2,1)])):-1}
    assert weighted_readout==weighted_expected
    cert['full_moment_readout']=[[[list(e) for e in p],int(q)] for p,q in sorted(full_readout.items())]
    cert['xy_weighted_moment_readout']=[[[list(e) for e in p],int(q)] for p,q in sorted(weighted_readout.items())]
    # Repeated indices in the ordered-triple sum have zero determinant.
    # Every unordered triple appears six times.
    cert['corner_Laurent']={'variables':['a','b','c','d'],
     'terms':[[[int(term.as_powers_dict().get(v,0)) for v in (a,b,c,d)],
               int(term/(a**int(term.as_powers_dict().get(a,0))*
                         b**int(term.as_powers_dict().get(b,0))*
                         c**int(term.as_powers_dict().get(c,0))*
                         d**int(term.as_powers_dict().get(d,0))))]
              for term in sp.Add.make_args(D)],
     'moment_readout':[[[list(e) for e in p],int(q)] for p,q in sorted(readout.items())]}

    # 2. A single cleared identity proves all three paired moment formulas.
    # Z stands for the omitted squared correlation; u is the leading moment
    # st, s*rbar or t*r; v is its odd-in-half numerator. Both L are scaled by h^2.
    k,Z,u,v=sp.symbols('k Z u v')
    h=1+k*k
    ell_plus=4*(3*h+2*k)-2*(9-Z)*(1+k)*h
    ell_minus=4*(3*h-2*k)-2*(9-Z)*(1-k)*h
    P_plus=(3-Z)*u+v
    P_minus=(3-Z)*u-v
    lhs=2*u*ell_plus*ell_minus+2*h*((1+k)*P_plus*ell_minus+(1-k)*P_minus*ell_plus)
    rhs=16*k*(3*k*k+1)*(h*v-k*((9-Z)*h-4)*u)
    equality('paired_moment', lhs, rhs, (k,Z,u,v))

    # 3. A universal polynomial identity in independent formal Gram variables.
    s,S,t,T,r,R,k=sp.symbols('s S t T r R k')
    X,Y,Z=s*S,t*T,r*R
    p=X+Y+Z
    A=r*s*s+R*t*t-k*(X+Y)*s*t
    B=T*s*s+R*R*t-k*(X+Z)*s*R
    C=S*t*t+r*r*s-k*(Y+Z)*t*r
    star={s:S,S:s,t:T,T:t,r:R,R:r}
    Abar,Bbar,Cbar=[z.xreplace(star) for z in (A,B,C)]
    lhs=Abar*B*C-A*Bbar*Cbar
    rhs=(1+k*k*p)*(s*r*T-S*R*t)*(X-Y)*(Y-Z)*(Z-X)
    equality('cubic_boundary', lhs, rhs, (s,S,t,T,r,R,k))
    assert len(sparse(rhs,(s,S,t,T,r,R,k))) == 24

    if output_certificate is not None:
        Path(output_certificate).write_text(json.dumps(cert,separators=(",",":"))+"\n")
    return cert


if __name__ == '__main__':
    parser=argparse.ArgumentParser()
    parser.add_argument('--certificate',type=Path)
    args=parser.parse_args()
    verify(args.certificate)
    print('PASS: 48-term Laurent identity, six-term xy weighted identity, paired moment identity, 24-term cubic identity.')
    print('All identities are exact; paired formulas were cleared before denominator division.')
