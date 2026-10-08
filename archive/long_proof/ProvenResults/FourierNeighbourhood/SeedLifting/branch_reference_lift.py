"""Combine retained regional tubes with the correctly indexed F6 margin."""
from fractions import Fraction as Q
from flint import arb
from moving_reference_lift import reference_certificate,ROWS,COLS
from fourier_max_R import reference_radius
from family_side_lift import family_reference
from residual_lift import _certify,sharp_R_cap

def radius_certificate(a,b):
    a,b=Q(a),Q(b);base=reference_certificate(a,b)
    alpha,beta=2*arb.pi()*arb(str(a+Q(1,6))),2*arb.pi()*arb(str(b+Q(1,3)))
    extra=reference_radius(alpha,beta);regional=arb(str(base['radius'])).lower()
    radius=max(regional,extra['radius']).lower()
    return dict(radius=radius,regional=dict(base,radius=str(base['radius'])),
                analytic={k:str(v) for k,v in extra.items()},parameters=[str(a),str(b)])

def certify_box(centers,radii,a_turns,b_turns,rows=ROWS,cols=COLS,transpose=False,**options):
    cc,hh=list(map(arb,centers)),list(map(arb,radii))
    if transpose:cc=[cc[i] for i in (0,2,1,3)];hh=[hh[i] for i in (0,2,1,3)]
    policy=radius_certificate(a_turns,b_turns)
    out=_certify(cc,hh,family_reference(a_turns,b_turns,rows,cols),policy['radius'],**options)
    if out.get('reason')=='outside_strict_D0':
        cap=sharp_R_cap(cc,hh)
        if cap is not None and cap<0:
            out=dict(ok=True,reason='outside_D0',domain_test='strict_negative_R',R_cap=str(cap))
        else:out=dict(out,ok=False,reason='R_zero_not_excluded')
    return dict(out,reference_policy=dict(policy,radius=str(policy['radius'])),transpose=transpose)
