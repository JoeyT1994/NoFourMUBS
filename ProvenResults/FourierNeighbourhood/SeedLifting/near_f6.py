"""Whole-box application of NEAR_F6_CLOSURE.md on physical maximal seeds.

The analytic proof and retained complete residual-lift replay are dependencies.
Inputs and output distances use radians and normalized-column/projector units.
No campaign driver is modified or implicitly enabled by this module.
"""
from fractions import Fraction
from flint import arb
from direct_lift import frame_matrices
from side_cover_lift import CUBES, certify_known_cubes
from production_seed_lift import certify_box as production_cube

NEW_CUBES = (
    dict(name='standard_F6', numerators=(1,2,2,4), denominator=2**16,
         distance='1/30', proof='complete_residual_lift'),
    dict(name='F3_block', numerators=(2,4,4,2), denominator=2**42,
         distance='1/40', proof='nearly_F3'),
    dict(name='rank_one_pair', numerators=(0,0,2,4), denominator=2**46,
         distance='1/40', proof='nearly_rank_one'),
)
UNIFORM_RADIUS = Fraction(1,2**48)
SMALL_M_REFERENCE_CAP = Fraction(1,2**92)
SMALL_M_SEED_RADIUS = Fraction(1,2**49)


def cube_box(case):
    return ([arb(k)*arb.pi()/3 for k in case['numerators']],
            [arb(1)/case['denominator']]*4)


def block_distance_bound(entry_error, global_R_cap):
    """Conditional nearly-F3 theorem, not a seed or physicality validator.

Caller must prove the dephased physical block is entrywise within the
supplied error of F3 and every corner R is below the supplied global cap.
"""
    h,m=arb(entry_error),arb(global_R_cap)
    if not (h.is_finite() and m.is_finite() and h>=0 and m>=0
            and h<=arb(1)/2**42 and m<=arb(1)/4):
        return dict(ok=False,reason='outside_analytic_hypotheses')
    eps=1800*h.sqrt()
    bound=(14*eps+m.sqrt()/40).upper()
    if not bound<arb(1)/40:
        return dict(ok=False,reason='analytic_bound')
    return dict(ok=True,reason='conditional_nearly_F3',
                entry_error_to_Fourier_or_Tao=str(eps),
                projector_distance_bound=str(bound))


def certify_f6_centered_cube(numerators, radius):
    """Exact cube centred at pi/3 times four integer exponents.

Radius is an exact Fraction in radians. In particular, accepts the full
closed uniform radius without an outward-arithmetic boundary artefact.
It validates that the centre has an explicit retained F6 frame.
"""
    nn=tuple(numerators);h=Fraction(radius)
    if len(nn)!=4 or any(not isinstance(k,int) for k in nn) or h<0:
        raise ValueError('Need four integer sixth-root exponents and nonnegative radius')
    for rows,cols,tr,A in frame_matrices():
        transformed=tuple(sum(a*x for a,x in zip(row,nn))%6 for row in A)
        for case in (*CUBES,*NEW_CUBES):
            if transformed!=tuple(k%6 for k in case['numerators']):
                continue
            if all(h*sum(map(abs,row))<=Fraction(1,case['denominator']) for row in A):
                return dict(ok=True,reason='F6_centered_cube',cube=case['name'],
                            rows=rows,columns=cols,transpose=tr,
                            projector_distance_bound=case.get('distance','1/36'))
    return dict(ok=False,reason='outside_certified_cubes')


def certify_box(centers,radii):
    """Outward Arb whole-box containment in six proved F6 seed classes.

Angles include all input uncertainty; acceptance applies on the physical
maximal-corner domain, including R=0. A failed containment is unresolved.
"""
    cc,hh=list(map(arb,centers)),list(map(arb,radii))
    if len(cc)!=4 or len(hh)!=4 or not all(h>=0 for h in hh):
        raise ValueError('Need four centres and four nonnegative radii')
    if not all(v.is_finite() for v in cc+hh):
        return dict(ok=False,reason='unbounded_input')
    for previous in (production_cube,certify_known_cubes):
        out=previous(cc,hh)
        if out['ok']:
            return out
    for rows,cols,tr,A in frame_matrices():
        transformed=[sum(a*x for a,x in zip(row,cc)) for row in A]
        widths=[sum(abs(a)*h for a,h in zip(row,hh)) for row in A]
        for case in NEW_CUBES:
            target,radius=cube_box(case)
            try:
                shifts=[round(float((t-t0)/(2*arb.pi()))) for t,t0 in zip(transformed,target)]
            except (ValueError,OverflowError):
                return dict(ok=False,reason='unbounded_input')
            if all(abs(t-t0-2*arb.pi()*n)+h<=r
                   for t,t0,n,h,r in zip(transformed,target,shifts,widths,radius)):
                return dict(ok=True,reason='near_F6_cube',cube=case['name'],
                            proof=case['proof'],rows=rows,columns=cols,transpose=tr,
                            projector_distance_bound=case['distance'])
    return dict(ok=False,reason='outside_certified_cubes')
