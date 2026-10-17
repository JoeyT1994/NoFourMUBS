#!/usr/bin/env python3
"""Independently replay the supplied Newton-moment function on six Laurent variables.

The checker itself uses only Python's standard library and integer sparse
Laurent arithmetic. It checks the ACTUAL function supplied by the caller.
The default function is imported from critical_moment_core. Direct input
sums, products and the permanent are constructed from six independent
formal phases, without using any lambda or Gram identities.
"""
import argparse
import importlib
import itertools
import json
from pathlib import Path
import sys

class Laurent:
    N=6
    def __init__(self, value=0):
        if isinstance(value,Laurent):
            self.terms=value.terms
        elif isinstance(value,dict):
            self.terms={tuple(e):int(c) for e,c in value.items() if c}
        else:
            self.terms={(0,)*self.N:int(value)} if value else {}
    @classmethod
    def monomial(cls, exponent, coefficient=1):
        return cls({tuple(exponent):coefficient})
    def __add__(self, other):
        other=Laurent(other)
        out=dict(self.terms)
        for e,c in other.terms.items():
            out[e]=out.get(e,0)+c
            if not out[e]:del out[e]
        return Laurent(out)
    __radd__=__add__
    def __neg__(self):return Laurent({e:-c for e,c in self.terms.items()})
    def __sub__(self, other):return self+-Laurent(other)
    def __rsub__(self, other):return Laurent(other)+-self
    def __mul__(self, other):
        other=Laurent(other)
        out={}
        for e,c in self.terms.items():
            for f,d in other.terms.items():
                ef=tuple(a+b for a,b in zip(e,f))
                out[ef]=out.get(ef,0)+c*d
                if not out[ef]:del out[ef]
        return Laurent(out)
    __rmul__=__mul__
    def __pow__(self, exponent):
        assert isinstance(exponent,int) and exponent>=0
        result=Laurent(1)
        base=self
        while exponent:
            if exponent&1:result=result*base
            exponent//=2
            if exponent:base=base*base
        return result
    def star(self):return Laurent({tuple(-z for z in e):c for e,c in self.terms.items()})
    def __eq__(self, other):return self.terms==Laurent(other).terms
    def record(self):return [[list(e),c] for e,c in sorted(self.terms.items())]

def verify(moment_builder=None, moment_subset=None, output_certificate=None):
    """Check moment_builder against direct sums; return a small summary.

    `moment_builder` must have the signature of newton_moments in the input
    critical_moment_core module. With no argument the actual module is imported.
    `moment_subset=None` checks the nine moments used by the final weighted proof.
    """
    if moment_builder is None:
        moment_builder=importlib.import_module('critical_moment_core').newton_moments
    xs=[Laurent.monomial(tuple(int(i==j) for j in range(6))) for i in range(3)]
    ys=[Laurent.monomial(tuple(int(i+3==j) for j in range(6))) for i in range(3)]
    s,t=sum(xs),sum(ys)
    S,T=s.star(),t.star()
    r=sum(x.star()*y for x,y in zip(xs,ys))
    Q=r.star()
    u=xs[0]*xs[1]*xs[2]
    v=ys[0]*ys[1]*ys[2]
    U,V=u.star(),v.star()
    w,W=u*V,U*v
    pi=sum(xs[i]*ys[j] for i in range(3) for j in range(3) if i!=j)
    PI=pi.star()
    moments=moment_builder(s,S,t,T,r,Q,u,v,w,U,V,W,pi,PI,u*PI,v*PI,U*pi,V*pi)
    required={(1,1),(2,-1),(-1,2),(-1,-1),(-2,1),(1,-2),(3,0),(0,3),(2,2)}
    keys=sorted(required if moment_subset is None else set(moment_subset))
    checked={}
    for a,b in keys:
        expected=Laurent({tuple(a if j==i else b if j==i+3 else 0 for j in range(6)):1 for i in range(3)})
        # The zero moment is a sum of three identical constant monomials.
        if a==b==0:expected=Laurent(3)
        actual=Laurent(moments[a,b])
        assert actual==expected, f'Newton formula failed at {(a,b)}'
        checked[f'{a},{b}']={'lhs':actual.record(),'rhs':expected.record()}
    if output_certificate is not None:
        Path(output_certificate).write_text(json.dumps({'variables':['x0','x1','x2','y0','y1','y2'],'moments':checked},separators=(',',':'))+'\n')
    return {'checked_moments':len(keys),'available_moments':len(moments),'moment_indices':[list(k) for k in keys]}

if __name__=='__main__':
    parser=argparse.ArgumentParser()
    parser.add_argument('--core-directory',type=Path,help='Directory containing the actual critical_moment_core.py being checked')
    parser.add_argument('--certificate',type=Path)
    args=parser.parse_args()
    if args.core_directory:sys.path.insert(0,str(args.core_directory))
    result=verify(output_certificate=args.certificate)
    print(f'PASS: {result["checked_moments"]} Newton moments equal direct sums on six independent Laurent phases.')
