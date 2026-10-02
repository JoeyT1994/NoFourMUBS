"""Whole-box application of EXTENDED_ANALYTIC_RADII.md; radians, physical D0."""
from fractions import Fraction as Q
from flint import arb
from direct_lift import frame_matrices

CASES=(dict(name='F3_block_extended',numerators=(2,4,4,2),power=39),
       dict(name='rank_one_pair_extended',numerators=(0,0,2,4),power=43))
DISTANCE_BOUND=Q(3811489,115605504)
UNIFORM_RADIUS=Q(1,2**45)
SMALL_M_REFERENCE_CAP=Q(1,2**86)
SMALL_M_SEED_RADIUS=Q(1,2**46)

def certify_box(centers,radii):
    cc,hh=list(map(arb,centers)),list(map(arb,radii))
    if len(cc)!=4 or len(hh)!=4 or not all(h>=0 for h in hh):raise ValueError('Invalid input box')
    if not all(x.is_finite() for x in cc+hh):return dict(ok=False,reason='unbounded_input')
    for rows,cols,tr,A in frame_matrices():
        transformed=[sum(a*c for a,c in zip(row,cc)) for row in A]
        widths=[sum(abs(a)*h for a,h in zip(row,hh)) for row in A]
        for case in CASES:
            targets=[arb(k)*arb.pi()/3 for k in case['numerators']];radius=arb(2)**-case['power']
            try:shifts=[round(float((t-t0)/(2*arb.pi()))) for t,t0 in zip(transformed,targets)]
            except (ValueError,OverflowError):continue
            if all(abs(t-t0-2*arb.pi()*n)+h<=radius for t,t0,n,h in zip(transformed,targets,shifts,widths)):
                return dict(ok=True,reason='extended_analytic_F6_cube',cube=case['name'],rows=rows,columns=cols,
                    transpose=tr,projector_distance_bound=str(DISTANCE_BOUND),scope='quartet_free_on_physical_D0')
    return dict(ok=False,reason='outside_extended_cubes')
