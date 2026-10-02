"""Whole-cell lifting against movable, exactly certified Fourier references.

Reference symmetries preserve maximum-column projector distance. They
transfer existing matrix tubes; they do not assert seed-lifting coverage.
Every seed acceptance still requires the complete residual side cover.
"""
from fractions import Fraction as F
from functools import lru_cache
from pathlib import Path
import json
from copy import deepcopy
from residual_lift import _certify, arb
from family_side_lift import family_reference
HERE=Path(__file__).resolve().parent
ROWS=(0,1,2,3,4,5)
COLS=(0,2,5,1,3,4)


def parameter_images(a_turns,b_turns):
    """36 proved equivalence/conjugation images, each reduced modulo 1/2."""
    a,b=F(a_turns),F(b_turns)
    seen=set()
    for sign in (1,-1):
        t=(F(0),sign*a,sign*b)
        for u in (1,-1):
            for v in range(3):
                aa=t[(u+v)%3]-t[v]
                bb=t[(2*u+v)%3]-t[v]
                for shift in range(3):
                    x,y=aa+F(shift,3),bb+F(2*shift,3)
                    ma,mb=(2*x)//1,(2*y)//1
                    x-=F(ma,2);y-=F(mb,2)
                    assert 0<=x<F(1,2) and 0<=y<F(1,2)
                    if (x,y) in seen:continue
                    seen.add((x,y))
                    yield x,y,dict(conjugate=sign==-1,u=u,v=v,odd_shift=shift,
                                   half_periods=[int(ma),int(mb)])


@lru_cache(maxsize=1)
def _regions():
    # Exact rational data only; no precision-dependent Arb object is cached.
    return json.loads((HERE.parent/'WideFamilyTube/data/regions.json').read_text())['cells']


@lru_cache(maxsize=8192)
def _reference_certificate(a_turns,b_turns):
    """Matrix-tube certificate for ANY rational Fourier parameters.

    A missing larger regional tube falls back to the proved uniform one.
    This search need not enumerate every symmetry to be sound.
    """
    a,b=F(a_turns),F(b_turns)
    best=None
    for x,y,operation in parameter_images(a,b):
        if x==0 and y==0 and (best is None or best['radius']<F(1,30)):
            best=dict(radius=F(1,30),kind='F6',image=[str(x),str(y)],operation=operation,cell=None)
        for cell in _regions():
            n=cell['grid']
            if F(cell['a'],n)<=x<=F(cell['a']+1,n) and F(cell['b'],n)<=y<=F(cell['b']+1,n):
                radius=F(1,6*cell['tolerance_denominator'])
                if best is None or radius>best['radius']:
                    best=dict(radius=radius,kind='regional',image=[str(x),str(y)],
                              operation=operation,cell=dict(cell))
    if best is None:
        best=dict(radius=F(1,16384),kind='uniform',image=None,operation=None,cell=None)
    return best


def reference_certificate(a_turns,b_turns):
    """A caller-owned copy; mutating metadata cannot change later certificates."""
    return deepcopy(_reference_certificate(F(a_turns),F(b_turns)))


def certify_box(centers,radii,a_turns,b_turns,rows=ROWS,cols=COLS,**options):
    """Strict-D0 whole-cell criterion with a selected physical reference.

    References may change between leaves. Only a complete leaf cover
    authorizes exclusion of a parent. Boxes may cross R=0; the return
    case outside_strict_D0 alone does not exclude an R=0 completion.
    """
    a,b=F(a_turns),F(b_turns)
    certificate=reference_certificate(a,b)
    radius=certificate['radius']
    H0=family_reference(a,b,rows,cols)
    result=_certify(centers,radii,H0,arb(radius.numerator)/radius.denominator,**options)
    metadata=dict(certificate,radius=str(radius),parameters=[str(a),str(b)])
    return dict(result,reference_certificate=metadata)


def projected_parameters(center_pi):
    """Choose the two free family phases in the stated reference alignment.

    center_pi contains exact rational multiples of pi, in seed order
    (theta11,theta12,theta21,theta22). This is a reference proposal, not
    an assertion that the seed has a unique or nearby completion.
    """
    q=list(map(F,center_pi))
    if len(q)!=4:raise ValueError('Need four seed phase multipliers')
    return (q[1]+F(1,3))/2,(q[3]+F(2,3))/2


def certify_projected_box(center_pi,radius_pi,**options):
    cc,hh=list(map(F,center_pi)),list(map(F,radius_pi))
    if len(cc)!=4 or len(hh)!=4 or any(h<0 for h in hh):
        raise ValueError('Need four rational-pi centres and nonnegative radii')
    a,b=projected_parameters(cc)
    convert=lambda q:arb.pi()*q.numerator/q.denominator
    return certify_box(list(map(convert,cc)),list(map(convert,hh)),a,b,**options)
