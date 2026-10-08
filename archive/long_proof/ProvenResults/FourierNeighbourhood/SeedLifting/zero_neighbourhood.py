"""Certified neighbourhoods of Fourier zero-corner arcs and a maximal curve.

See ZERO_NEIGHBOURHOOD.md. Exact inputs are rational multiples of pi.
The fast predicates depend on the complete retained replay certificate.
"""
from fractions import Fraction as F
from pathlib import Path
import json
from flint import arb
from direct_lift import frame_matrices

HERE = Path(__file__).resolve().parent
ARC_WIDTH = F(1,8192)
TRIM = F(1,24)
CORRIDOR_WIDTH = F(1,4096)
CORRIDOR_END = F(1,128)
F6_CENTER = (F(4,3), F(5,3), F(0), F(1))
PRODUCTION_CENTERS = ((F(2,3),F(0),F(1,2),F(1)),
                      (F(2,3),F(0),F(1,6),F(1)),
                      (F(2,3),F(4,3),F(1,8),F(1,4)))


def interval(k, path):
    """Exact dyadic subdivision of the k-th trimmed parameter interval."""
    if k not in range(6) or any(c not in '01' for c in path):
        raise ValueError('Invalid interval address')
    a,b = F(k,3)+TRIM, F(k+1,3)-TRIM
    for bit in path:
        m=(a+b)/2
        if bit=='0': b=m
        else: a=m
    return a,b


def arc_box(typ, k, path):
    a,b=interval(k,path); q=(a+b)/2; t=(b-a)/2; h=ARC_WIDTH
    if typ=='curve':
        return [F(2,3),F(0),q,F(1)], [h,h,h+t,h]
    if typ=='surface':
        return [F(2,3),F(4,3),q,2*q], [h,h,h+t,h+2*t]
    raise ValueError('Unknown prototype')


def extension_box(n):
    if n not in range(4,17): raise ValueError('Unknown extension cube')
    q=F(n,2048)
    return [F6_CENTER[0],F6_CENTER[1]+q,F(0),F(1)+q], [F(1,2048)]*4


def to_arb(values):
    return [arb.pi()*q.numerator/q.denominator for q in map(F,values)]


def replay_arc(leaf):
    # Importing side_cover_lift installs the retained prune module paths.
    import side_cover_lift
    from paired_prune import prune_box
    cc,hh=arc_box(leaf['typ'],leaf['k'],leaf['path'])
    result=prune_box(to_arb(cc),to_arb(hh),depth=leaf['phase_depth'],
                    maxlabels=1200,pair_budget=800000,triple_budget=500000)
    # Nonpositive leading R alone does NOT exclude physical R=0 points.
    if not result['ok'] or result['reason'] not in ('no_side_triple','no_side_pair'):
        raise AssertionError((leaf,result))
    for side in result['sides']:
        assert side['nodes']==2*(side['moment_leaves']+side['corner_leaves']+side['labels'])-64
    return result


def replay_extension(n):
    from residual_lift import certify_f6
    cc,hh=extension_box(n)
    result=certify_f6(to_arb(cc),to_arb(hh),depth=18)
    assert result['ok'] and result['reason']=='residual_tube', (n,result)
    assert arb(result['column_distance'])<arb(1)/30
    return result


def load_partition():
    return json.loads((HERE/'data/zero_neighbourhood.json').read_text())


def check_partition(data):
    """Audit all twelve roots, independently of any discovery traversal."""
    from verify_production_partition import check_coverage
    assert data['arc_half_width_pi']==str(ARC_WIDTH)
    assert data['trim_pi']==str(TRIM)
    leaves=data['leaves']
    assert all(x['typ'] in ('curve','surface') and x['k'] in range(6) for x in leaves)
    for typ in ('curve','surface'):
        for k in range(6):
            selected=[x for x in leaves if (x['typ'],x['k'])==(typ,k)]
            check_coverage(selected)
            for x in selected:
                assert list(map(str,interval(k,x['path'])))==[x['left'],x['right']]
    return True


def _wrap_near(value, target):
    return value-2*((value-target+1)//2)


def _fixed(cc,hh,index,target,width):
    return abs(_wrap_near(cc[index],target)-target)+hh[index]<=width


def certify_rational_pi_box(centers, radii):
    """Sufficient whole-box containment in the proved tubes, in 72 frames.

    `outside_D0_zero_arc` excludes physical maximal completions altogether.
    `small_R_curve_tube` excludes quartet edges, allowing physical D0 points.
    Failure means only that this containment predicate did not apply.
    """
    cc,hh=list(map(F,centers)),list(map(F,radii))
    if len(cc)!=4 or len(hh)!=4 or any(h<0 for h in hh):
        raise ValueError('Need four centres and nonnegative radii in units of pi')
    for rows,cols,tr,A in frame_matrices():
        c=[sum(a*x for a,x in zip(row,cc)) for row in A]
        r=[sum(abs(a)*x for a,x in zip(row,hh)) for row in A]
        frame=dict(rows=rows,columns=cols,transpose=tr)
        w=CORRIDOR_WIDTH
        if _fixed(c,r,0,F6_CENTER[0],w) and _fixed(c,r,2,0,w):
            x=_wrap_near(c[1],F6_CENTER[1])-F6_CENTER[1]
            y=_wrap_near(c[3],F6_CENTER[3])-F6_CENTER[3]
            lo=max(F(0),x-w+r[1],y-w+r[3])
            hi=min(CORRIDOR_END,x+w-r[1],y+w-r[3])
            if lo<=hi:
                return dict(ok=True,reason='small_R_curve_tube',**frame)
        w=ARC_WIDTH
        for typ in ('curve','surface'):
            if not _fixed(c,r,0,F(2,3),w): continue
            target=F(0) if typ=='curve' else F(4,3)
            if not _fixed(c,r,1,target,w): continue
            if typ=='curve' and not _fixed(c,r,3,F(1),w): continue
            # Parameter q lies in [0,2); the trim avoids the periodic seam.
            x=c[2]%2
            y=_wrap_near(c[3],2*x)
            for k in range(6):
                a,b=interval(k,'')
                lo=max(a,x-w+r[2]);hi=min(b,x+w-r[2])
                if typ=='surface':
                    lo=max(lo,(y-w+r[3])/2);hi=min(hi,(y+w-r[3])/2)
                if lo<=hi:
                    return dict(ok=True,reason='outside_D0_zero_arc',prototype=typ,
                                parameter_interval=k,**frame)
        for n in range(4,17):
            target,widths=extension_box(n)
            if all(_fixed(c,r,i,target[i],widths[i]) for i in range(4)):
                return dict(ok=True,reason='small_R_curve_cube',cube=n,**frame)
        for j,target in enumerate(PRODUCTION_CENTERS):
            if all(_fixed(c,r,i,target[i],F(1,512)) for i in range(4)):
                return dict(ok=True,reason='outside_D0_zero_cube',cube=j,**frame)
    return dict(ok=False,reason='outside_certified_neighbourhoods')


def certify_box(centers, radii):
    """Outward Arb radian boxes, with input rounding uncertainty retained.

    Division by an enclosure of pi gives a containing rational-pi box.
    Exact dyadic endpoint conversion avoids a floating acceptance test.
    """
    cc,hh=list(map(arb,centers)),list(map(arb,radii))
    if len(cc)!=4 or len(hh)!=4 or not all(h>=0 for h in hh):
        raise ValueError('Need four centres and nonnegative radii in radians')
    if not all(x.is_finite() for x in cc+hh):
        return dict(ok=False,reason='unbounded_input')
    centers_pi=[];radii_pi=[]
    for c,h in zip(cc,hh):
        box=(c+arb(0,h))/arb.pi()
        lo=F(str(box.lower().fmpq()));hi=F(str(box.upper().fmpq()))
        centers_pi.append((lo+hi)/2);radii_pi.append((hi-lo)/2)
    return certify_rational_pi_box(centers_pi,radii_pi)
