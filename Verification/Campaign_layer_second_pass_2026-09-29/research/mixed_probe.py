"""Exploratory cross-corner bound; not part of the frozen production pilot."""
from pathlib import Path
import sys,itertools
ROOT=Path(__file__).resolve().parents[3]
sys.path.insert(0,str(ROOT/'ProvenResults/CornerBounds/PairedSidePrune'))
from paired_prune import *
from prune import TERMS


def mixed_R(a,b,c,d):
    xs=(acb(1),a,b);ys=(acb(1),c,d)
    zs=tuple(y*x.conjugate() for x,y in zip(xs,ys))
    q=sum(sign*(xs[v]*xs[u].conjugate()).imag
          *(ys[z]*ys[w].conjugate()).imag*(zs[i]*zs[j].conjugate()).imag
          for i,j,u,v,w,z,sign in TERMS)
    return 64*q*q


def prune(centers,radii,depth=10):
    cap=sharp_R_cap(centers,radii)
    if cap<0:return dict(ok=True,reason='R_negative')
    sides=[];reports=[]
    for order in ((0,1,2,3),(0,2,1,3)):
        labels,gram,info=collect_labels([centers[i] for i in order],[radii[i] for i in order],cap,depth=depth)
        if labels is None:return dict(ok=False,reason=info['reason'])
        side,stats=side_triples(labels,gram)
        if side is None:return dict(ok=False,reason=stats['reason'])
        if not side[1]:return dict(ok=True,reason='no_side_triple')
        sides.append(side);reports.append(stats)
    (bv,bt),(cv,ct)=sides
    activeB=sorted({i for t in bt for i in t});activeC=sorted({i for t in ct for i in t})
    if len(activeB)*len(activeC)>250000:return dict(ok=False,reason='cross_budget')
    W,g=completion_coefficients(centers,radii)
    aa=[acb(0,c+arb(0,h)).exp() for c,h in zip(centers,radii)]
    images={i:[sum(W[k][j]*bv[i][j] for j in range(3)) for k in range(3)] for i in activeB}
    cross={};flat_reject=mixed_reject=0
    for i in activeB:
        cross[i]=set()
        for j in activeC:
            num=sum(cv[j][k]*images[i][k] for k in range(3));mag=abs(num)
            if not (mag-g).contains(0):flat_reject+=1;continue
            if mag>0:
                d=-num/mag
                if any(mixed_R(aa[2*r+c],bv[i][r+1],cv[j][c+1],d)>cap for r,c in itertools.product(range(2),repeat=2)):
                    mixed_reject+=1;continue
            cross[i].add(j)
    return dict(match_triples(bt,ct,cross),flat_reject=flat_reject,mixed_reject=mixed_reject,
                pairs=len(activeB)*len(activeC))
