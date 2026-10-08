"""Whole-box strict-maximal-corner exclusion under M<=5.

Adapts the retained signed-corner PSD theorem only by intersecting the
radical interval with [0,sqrt(5)]. No change to a polynomial or PSD rule.
"""
import sys
from pathlib import Path
from fractions import Fraction as Q
HERE=Path(__file__).resolve().parent;ROOT=HERE.parents[1]
sys.path.insert(0,str(ROOT/'ProvenResults/SignedCornerPSDPrune'))
from predicate import coefficients,joint_certificate,tao_absence

def certify(centers,radii,extra=False):
    providers=[];guard=tao_absence(centers,radii)
    for paired in ([False,True] if extra else [False]):
        for cleared in [False,True]:
            for transpose in [False,True]:
                co,status=coefficients(centers,radii,transpose,cleared,paired)
                if co is None:continue
                if co[0]>5:return dict(ok=True,reason='seed_R_above_5',R=co[:2])
                co[1]=min(co[1],5.0)
                providers.append(dict(transpose=transpose,cleared=cleared,paired=paired,coefficients=co))
                matched=guard is not None and len({p['transpose'] for p in providers})==2
                out=joint_certificate(providers,matched=matched,q_depth=6,q_nodes=127)
                if out is not None:
                    if matched:out['tao_absence']=guard
                    return dict(ok=True,**out)
    return dict(ok=False,reason='PSD_unresolved',providers=len(providers))
