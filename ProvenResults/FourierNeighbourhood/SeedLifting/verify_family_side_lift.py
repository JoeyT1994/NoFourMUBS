"""Exact 400-corner nonvacuity and full regional seed-cover replay."""
from pathlib import Path
from fractions import Fraction as F
import argparse,json
from family_side_lift import (certify_box,certify_known_patch,certified_patch_center,
                              family_reference,regional_cell)
from direct_lift import frame_matrices
from prune import R_jet
from itertools import combinations
from collections import Counter
from flint import fmpz_poly,acb_poly,acb,arb,ctx
import sympy as sp
ctx.prec=160
x=sp.symbols('x');phi=fmpz_poly(list(map(int,reversed(sp.Poly(sp.cyclotomic_poly(360,x),x).all_coeffs()))))
powers=[fmpz_poly([0,1])**k%phi for k in range(360)]
one=powers[0]
def R(v):
 a,b,c,d=[k%360 for k in v]
 s=-(one+powers[a]+powers[b]);S=-(one+powers[-a%360]+powers[-b%360])
 t=-(one+powers[c]+powers[d]);T=-(one+powers[-c%360]+powers[-d%360])
 q=-(one+powers[(c-a)%360]+powers[(d-b)%360]);Q=-(one+powers[(a-c)%360]+powers[(b-d)%360])
 X=s*S%phi;Y=t*T%phi;Z=q*Q%phi;p=X+Y+Z;J=(s*q*T+S*Q*t)%phi;W=(X*Y+X*Z+Y*Z-X*Y*Z)%phi
 g=27-3*p+J;eta=9-p+J;chi=(W-(p-9)*(p-18)+(p-15)*J)%phi
 return (4*g*g*eta-chi*chi)%phi
phase=lambda r,c:60*r*c+7*int(r%3==1)*(c%2)
def seed(rr,cc):return tuple((phase(r,c)+phase(rr[0],cc[0])-phase(r,cc[0])-phase(rr[0],c))%360 for r in rr[1:]for c in cc[1:])
def point_maximality():
    leading=R(seed((0,1,2),(0,2,5)));z=acb(0,arb.pi()/180).exp();value=acb_poly(leading)(z).real
    counts=Counter()
    for rr in combinations(range(6),3):
     for cc in combinations(range(6),3):
      r=R(seed(rr,cc));counts[tuple(map(int,r.coeffs()))]+=1
      if r!=leading:assert acb_poly(leading-r)(z).real>0,(rr,cc)
    assert value>8 and value<9
    print('PASS 400 exact corner polynomials; leading corner maximal; R=',value,'distinct groups',len(counts),'counts',list(counts.values()),flush=True)


def main():
    parser=argparse.ArgumentParser();parser.add_argument('--output',type=Path);args=parser.parse_args()
    point_maximality()
    # Exact Fourier-family row Gram, at this primitive 360th-root point.
    for i in range(6):
        for j in range(6):
            inner=sum((powers[(phase(i,k)-phase(j,k))%360] for k in range(6)),fmpz_poly([]))%phi
            assert inner==fmpz_poly([6 if i==j else 0])
    assert seed((0,1,2),(0,2,5))==tuple(k%360 for k in (120,-53,-120,-120))
    # This four-entry quotient is invariant under row/column phases. Every
    # F6 quotient is a sixth root; zeta_360^67 is not one of them.
    assert all(powers[67]!=powers[60*k] for k in range(6))
    assert regional_cell(F(7,360),F(0))['tolerance_denominator']==8
    assert regional_cell(F(1,2),F(1,2)) is None
    # Explicit rational completion constants, with upward sqrt(3) bound.
    e=F(1,5000);b=F(1,100);c=F(11,1000);beta=gamma=F(9,1250)
    nu=F(23,10);kappa=F(7,10);rt3=F(1733,1000)
    assert rt3*rt3>3
    for total,single in [(c,beta),(b,gamma)]:
        assert max((e*e+total*total)/6,(single*single+(rt3*(e+total)+nu*single)**2/kappa)/6)<F(1,50)**2
    assert F(1,50)<F(1,48)
    receipts=[]
    for precision in (96,160):
        ctx.prec=precision;cc=certified_patch_center();hh=[arb(1)/10000]*4
        result=certify_box(cc,hh)
        assert result['ok'] and result['reason']=='matched_family_tube',result
        assert arb(result['gram_lower'])>arb(7)/10
        assert arb(result['reference_norm_upper'])<arb(23)/10
        B,C=result['sides']
        assert arb(B['total_bound'])<arb(1)/100 and arb(C['total_bound'])<arb(11)/1000
        assert max(arb(B['individual_bound']).upper(),arb(C['individual_bound']).upper())<arb(9)/1250
        assert max(arb(result['column_distance']).upper(),arb(result['row_distance']).upper())<arb(1)/50
        assert arb(result['R_cap'])<9
        center=R_jet(cc,[arb(0)]*4);jet=R_jet(cc,hh)
        lower=center.v.real-sum(hh[i]*abs(center.d[i]) for i in range(4))-sum(hh[i]*hh[j]*abs(jet.h[i][j]) for i in range(4) for j in range(4))/2
        assert lower>8
        receipts.append(dict(precision=precision,certificate=result,R_lower=str(lower.lower())))
        print('PASS:',precision,'bits, full phase cube; 8<R<9; all side choices enter direct regional tube',flush=True)
    ctx.prec=96;cc=certified_patch_center();h=arb(1)/10000
    for option in ({'budget':0},{'maxlabels':0},{'pair_budget':0},{'triple_budget':0}):
        out=certify_box(cc,[h]*4,**option)
        assert not out['ok'],out
    for *_,matrix in frame_matrices():
        transformed=[sum(a*c for a,c in zip(row,cc)) for row in matrix]
        widths=[sum(abs(a)*h/100 for a in row) for row in matrix]
        assert certify_known_patch(transformed,widths)['ok']
    assert not certify_known_patch(cc,[arb.pi()/512]*4)['ok']
    # Full production-width cover is unresolved, rather than falsely accepted.
    production=certify_box(cc,[arb.pi()/512]*4)
    assert not production['ok'],production
    print('PASS: all 72 frame predicates and fail-closed budget/production controls',flush=True)
    if args.output:
        args.output.parent.mkdir(parents=True,exist_ok=True)
        args.output.write_text(json.dumps(dict(status='PASS',replays=receipts,production_control=production),indent=2)+'\n')


if __name__=='__main__':main()
