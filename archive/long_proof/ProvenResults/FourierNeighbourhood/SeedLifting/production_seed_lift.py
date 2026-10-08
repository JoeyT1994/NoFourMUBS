"""Fast containment in the production-width cube proved in PRODUCTION_CUBE.md.

The theorem excludes quartet edges on the physical maximal-corner
domain D0, including R=0. It is local to the stated cube and its 72 corner frames.
The retained complete partition and its verification are dependencies.
"""
from fractions import Fraction as F
from flint import arb
from direct_lift import frame_matrices

CENTER=(F(4,3),F(5,3),F(0),F(1))  # multiples of pi
HALF_WIDTH=F(1,512)              # multiple of pi


def certify_rational_pi_box(centers,radii):
    """Exact rational multiples of pi; accepts the full symbolic parent."""
    cc,hh=list(map(F,centers)),list(map(F,radii))
    if len(cc)!=4 or len(hh)!=4 or any(h<0 for h in hh):
        raise ValueError('Need four centres and nonnegative radii, in units of pi')
    for rows,cols,tr,matrix in frame_matrices():
        transformed=[sum(a*c for a,c in zip(row,cc)) for row in matrix]
        widths=[sum(abs(a)*h for a,h in zip(row,hh)) for row in matrix]
        shifts=[(t-t0+1)//2 for t,t0 in zip(transformed,CENTER)]
        if all(abs(t-t0-2*n)+h<=HALF_WIDTH for t,t0,n,h in zip(transformed,CENTER,shifts,widths)):
            return dict(ok=True,reason='production_seed_cube',rows=rows,columns=cols,
                        transpose=tr,transformed_carrier_column_distance='1/30')
    return dict(ok=False,reason='outside_certified_cube')


def certify_box(centers,radii):
    """Outward Arb angles in radians, including input-rounding uncertainty.

    Exact-boundary symbolic inputs should use certify_rational_pi_box;
    an Arb enclosure extending beyond a boundary must remain unresolved.
    """
    cc,hh=list(map(arb,centers)),list(map(arb,radii))
    if len(cc)!=4 or len(hh)!=4 or not all(h>=0 for h in hh):
        raise ValueError('Need four centres and nonnegative radii in radians')
    if not all(v.is_finite() for v in cc+hh):
        return dict(ok=False,reason='unbounded_input')
    target=[arb.pi()*q.numerator/q.denominator for q in CENTER]
    radius=arb.pi()/512
    for rows,cols,tr,matrix in frame_matrices():
        transformed=[sum(a*c for a,c in zip(row,cc)) for row in matrix]
        widths=[sum(abs(a)*h for a,h in zip(row,hh)) for row in matrix]
        try:
            shifts=[round(float((t-t0)/(2*arb.pi()))) for t,t0 in zip(transformed,target)]
        except (OverflowError,ValueError):
            return dict(ok=False,reason='unbounded_input')
        if all(abs(t-t0-2*arb.pi()*n)+h<=radius for t,t0,n,h in zip(transformed,target,shifts,widths)):
            return dict(ok=True,reason='production_seed_cube',rows=rows,columns=cols,
                        transpose=tr,transformed_carrier_column_distance='1/30')
    return dict(ok=False,reason='outside_certified_cube')
