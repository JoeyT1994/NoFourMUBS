"""R-independent whole-cell F6 lifting from complete matched side covers.

Acceptance uses only outward Arb bounds. All resource limits return
unresolved. The reference is explicitly a permuted, dephased F6 matrix.
"""
from itertools import permutations
from pathlib import Path
import sys
sys.path.insert(0,str(Path(__file__).resolve().parents[2]/'CornerBounds/PairedSidePrune'))
from paired_prune import arb,acb,sharp_R_cap,collect_labels,side_triples

DEFAULT_ROWS=(0,5,3,1,2,4)
DEFAULT_COLS=(0,2,1,3,4,5)


def fourier_reference(rows=DEFAULT_ROWS,cols=DEFAULT_COLS):
    if sorted(rows)!=list(range(6)) or sorted(cols)!=list(range(6)):
        raise ValueError('Reference orders must both permute 0,...,5')
    return [[acb(0,arb.pi()*(((r-rows[0])*(c-cols[0]))%6)/3).exp()
             for c in cols] for r in rows]


def reference_gram_bound(H):
    """Positive lower spectral bound by certified Sylvester tests, no eigensolver."""
    G=[[6*int(i==j)-sum(H[i][k]*H[j][k].conjugate() for k in range(3))
        for j in range(3)] for i in range(3)]
    lo,hi=arb(0),arb(3)
    for _ in range(24):
        mid=(lo+hi)/2
        M=[[G[i][j]-mid*int(i==j) for j in range(3)] for i in range(3)]
        minors=[M[0][0],M[0][0]*M[1][1]-M[0][1]*M[1][0],
                sum((1 if p in ((0,1,2),(1,2,0),(2,0,1)) else -1)*
                    M[0][p[0]]*M[1][p[1]]*M[2][p[2]] for p in permutations(range(3)))]
        if all(v.imag.contains(0) and v.real>0 for v in minors):
            lo=mid
        else:
            hi=mid
    # Only lo is certified; a failed Sylvester test need not certify hi.
    return lo


def matched_bounds(side,reference_vectors,brute=False):
    """One simultaneous permutation per triple bounds total and individual errors."""
    vectors,triples=side
    costs=[[sum(abs(v[k]-r[k])**2 for k in range(3)).upper()
            for r in reference_vectors] for v in vectors]
    nearest=[min(range(3),key=lambda j:row[j]) for row in costs]
    total,individual=arb(0),arb(0)
    worst=None
    for ids in triples:
        p=tuple(nearest[i] for i in ids)
        if brute or len(set(p))!=3:
            p=min(permutations(range(3)),key=lambda perm:
                  sum(costs[ids[k]][perm[k]] for k in range(3)).upper())
        values=[costs[ids[k]][p[k]] for k in range(3)]
        squared=sum(values).upper()
        if squared>total:
            total=squared;worst=dict(labels=ids,permutation=p)
        individual=max(individual,*values)
    return total.sqrt().upper(),individual.sqrt().upper(),worst


def certify_box(centers,radii,rows=DEFAULT_ROWS,cols=DEFAULT_COLS,depth=18,
                budget=50000,maxlabels=1000,pair_budget=750000,triple_budget=500000):
    cc,hh=list(map(arb,centers)),list(map(arb,radii))
    if len(cc)!=4 or len(hh)!=4 or not all(h>=0 for h in hh):
        raise ValueError('Need four centres and four nonnegative phase radii')
    if not all(x.is_finite() for x in cc+hh):
        return dict(ok=False,reason='unbounded_input')
    H=fourier_reference(rows,cols);k0=reference_gram_bound(H)
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
    ok=col<=arb(1)/36 and row<=arb(1)/36
    return dict(ok=ok,reason='matched_F6_tube' if ok else 'outside_proved_tube',
                seed_error=str(e),gram_lower=str(kappa),reference_gram_lower=str(k0),
                reference_norm_upper=str(nu.upper()),R_cap=str(cap),
                column_distance=str(col),row_distance=str(row),sides=reports)


CUBES=(
    dict(name='mixed',numerators=(4,5,0,3),denominator=512,rows=DEFAULT_ROWS,cols=DEFAULT_COLS,
         partition='matched_cube512.json'),
    dict(name='symmetric',numerators=(0,2,3,0),denominator=1024,
         rows=(0,2,3,1,4,5),cols=(0,3,4,1,2,5),phase_depth=20),
    dict(name='second_mixed',numerators=(0,2,3,2),denominator=2048,
         rows=(0,2,5,1,3,4),cols=(0,3,4,1,2,5),phase_depth=20),
)


def cube_box(case,path=''):
    """Exact dyadic offsets from a root-of-unity centre, enclosed outwardly."""
    cc=[arb.pi()*k/3 for k in case['numerators']]
    hh=[arb(1)/case['denominator']]*4
    for depth,bit in enumerate(path):
        if bit not in '01':
            raise ValueError('A partition path is a binary string')
        axis=depth%4
        hh[axis]/=2
        cc[axis]+=(-1 if bit=='0' else 1)*hh[axis]
    return cc,hh


def certify_known_cubes(centers,radii):
    """Fast whole-cell application of the three proved matched-cover cubes.

    This predicate requires the retained finite certificates checked by
    verify_side_cover_lift.py; it does not run the side covers per input box.
    It excludes quartet edges only on the maximal-corner domain D0.
    """
    from direct_lift import frame_matrices
    cc,hh=list(map(arb,centers)),list(map(arb,radii))
    if len(cc)!=4 or len(hh)!=4 or not all(h>=0 for h in hh):
        raise ValueError('Need four centres and nonnegative radii')
    if not all(v.is_finite() for v in cc+hh):
        return dict(ok=False,reason='unbounded_input')
    for rows,cols,tr,matrix in frame_matrices():
        transformed=[sum(a*c for a,c in zip(row,cc)) for row in matrix]
        widths=[sum(abs(a)*h for a,h in zip(row,hh)) for row in matrix]
        for case in CUBES:
            target,_=cube_box(case)
            lifted=[]
            for t,t0 in zip(transformed,target):
                try:
                    shift=round(float((t-t0)/(2*arb.pi())))
                except (OverflowError,ValueError):
                    return dict(ok=False,reason='unbounded_input')
                lifted.append(t-shift*2*arb.pi())
            if all(abs(t-t0)+h<=arb(1)/case['denominator']
                   for t,t0,h in zip(lifted,target,widths)):
                return dict(ok=True,reason='certified_seed_cube',cube=case['name'],
                            rows=rows,columns=cols,transpose=tr,projector_distance_bound='1/36')
    return dict(ok=False,reason='outside_certified_cubes')
