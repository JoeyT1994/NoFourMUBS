"""Unconditional D0 seed lifting into a retained regional Fourier tube.

References are explicit physical Fourier-family matrices at rational
parameters. Only completed side covers and outward inequalities accept.
"""
from fractions import Fraction as F
from pathlib import Path
import json
from side_cover_lift import (arb,acb,sharp_R_cap,collect_labels,side_triples,
                             matched_bounds,reference_gram_bound)
HERE=Path(__file__).resolve().parent


def family_reference(a_turns,b_turns,rows,cols):
    a,b=F(a_turns),F(b_turns)
    if sorted(rows)!=list(range(6)) or sorted(cols)!=list(range(6)):
        raise ValueError('Reference orders must permute 0,...,5')
    def phase(r,c):
        return F(r*c,6)+(a if r%3==1 else b if r%3==2 else 0)*(c%2)
    phases=[[phase(r,c)+phase(rows[0],cols[0])-phase(r,cols[0])-phase(rows[0],c)
             for c in cols] for r in rows]
    return [[acb(0,2*arb.pi()*t.numerator/t.denominator).exp() for t in row] for row in phases]


def regional_cell(a_turns,b_turns):
    a,b=F(a_turns),F(b_turns)
    data=json.loads((HERE.parent/'WideFamilyTube/data/regions.json').read_text())
    possible=[v for v in data['cells'] if F(v['a'],v['grid'])<=a<=F(v['a']+1,v['grid'])
              and F(v['b'],v['grid'])<=b<=F(v['b']+1,v['grid'])]
    return min(possible,key=lambda v:v['tolerance_denominator']) if possible else None


def certify_box(centers,radii,a_turns=F(7,360),b_turns=F(0),
                rows=(0,1,2,3,4,5),cols=(0,2,5,1,3,4),depth=18,
                budget=50000,maxlabels=1000,pair_budget=750000,triple_budget=500000):
    region=regional_cell(a_turns,b_turns)
    if region is None:
        return dict(ok=False,reason='no_regional_tube')
    radius=arb(1)/(6*region['tolerance_denominator'])
    cc,hh=list(map(arb,centers)),list(map(arb,radii))
    if len(cc)!=4 or len(hh)!=4 or not all(h>=0 for h in hh):
        raise ValueError('Need four centres and four nonnegative phase radii')
    if not all(x.is_finite() for x in cc+hh):
        return dict(ok=False,reason='unbounded_input')
    H=family_reference(a_turns,b_turns,rows,cols);k0=reference_gram_bound(H)
    if not k0>0:
        return dict(ok=False,reason='reference_gram')
    nu=(6-k0).sqrt()
    phase=[acb(0,t+arb(0,h)).exp() for t,h in zip(cc,hh)]
    e=sum(abs(z-H[i][j])**2 for z,(i,j) in zip(phase,((1,1),(1,2),(2,1),(2,2)))).upper().sqrt().upper()
    kappa=(k0-2*nu*e-e*e).lower()
    if not kappa>0:
        return dict(ok=False,reason='gram')
    cap=sharp_R_cap(cc,hh)
    if cap is None:
        return dict(ok=False,reason='R_cap')
    if cap<=0:
        return dict(ok=True,reason='outside_strict_D0')
    refs=[[[H[r][c] for r in range(3)] for c in range(3,6)],
          [[H[r][c] for c in range(3)] for r in range(3,6)]]
    bounds=[];reports=[]
    for order,ref in zip(((0,1,2,3),(0,2,1,3)),refs):
        labels,gram,info=collect_labels([cc[i] for i in order],[hh[i] for i in order],
                    cap,depth=depth,budget=budget,maxlabels=maxlabels)
        if labels is None:
            return dict(ok=False,reason=info['reason'],sides=reports+[info])
        side,stats=side_triples(labels,gram,pair_budget,triple_budget)
        if side is None:
            return dict(ok=False,reason=stats['reason'],sides=reports+[dict(info,**stats)])
        if not side[1]:
            return dict(ok=True,reason='outside_D0',sides=reports+[dict(info,**stats)])
        total,individual,witness=matched_bounds(side,ref)
        bounds.append((total,individual))
        reports.append(dict(info,**stats,total_bound=str(total),individual_bound=str(individual),
                            worst_matching=witness))
    (b,beta),(c,gamma)=bounds
    col=max(((e*e+c*c)/6).sqrt().upper(),
            ((beta*beta+(arb(3).sqrt()*(e+c)+nu*beta)**2/kappa)/6).sqrt().upper())
    row=max(((e*e+b*b)/6).sqrt().upper(),
            ((gamma*gamma+(arb(3).sqrt()*(e+b)+nu*gamma)**2/kappa)/6).sqrt().upper())
    ok=col<=radius
    return dict(ok=ok,reason='matched_family_tube' if ok else 'outside_proved_tube',
                reference_parameters=[str(F(a_turns)),str(F(b_turns))],regional_cell=region,
                allowed_column_distance=str(F(1,6*region['tolerance_denominator'])),
                seed_error=str(e),gram_lower=str(kappa),reference_gram_lower=str(k0),
                reference_norm_upper=str(nu.upper()),R_cap=str(cap),
                column_distance=str(col),row_distance=str(row),sides=reports)


def certified_patch_center():
    return [arb.pi()*k/180 for k in (120,-53,-120,-120)]


def certify_known_patch(centers,radii):
    """Fast containment in the proved 1/10000 patch, in any corner frame.

    For a transposed frame the distance bound concerns the transposed
    carrier. Quartet extendibility is invariant under this operation.
    """
    from direct_lift import frame_matrices
    cc,hh=list(map(arb,centers)),list(map(arb,radii))
    if len(cc)!=4 or len(hh)!=4 or not all(h>=0 for h in hh):
        raise ValueError('Need four centres and nonnegative radii')
    if not all(x.is_finite() for x in cc+hh):
        return dict(ok=False,reason='unbounded_input')
    target=certified_patch_center()
    for rows,cols,tr,matrix in frame_matrices():
        transformed=[sum(a*c for a,c in zip(row,cc)) for row in matrix]
        widths=[sum(abs(a)*h for a,h in zip(row,hh)) for row in matrix]
        lifted=[]
        for t,t0 in zip(transformed,target):
            try:shift=round(float((t-t0)/(2*arb.pi())))
            except (OverflowError,ValueError):return dict(ok=False,reason='unbounded_input')
            lifted.append(t-2*arb.pi()*shift)
        if all(abs(t-t0)+h<=arb(1)/10000 for t,t0,h in zip(lifted,target,widths)):
            return dict(ok=True,reason='regional_seed_patch',rows=rows,columns=cols,transpose=tr,
                        transformed_carrier_distance='1/50',direct_matrix_tube='1/48')
    return dict(ok=False,reason='outside_certified_patch')
