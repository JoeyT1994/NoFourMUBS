"""Complete side-cover lift on a D0 seed cube containing both signs of R.

The static whole-cell predicate applies the proved 1/2048 cube theorem.
The replay reconstructs its exhaustive side covers and checks all matchings.
No R lower bound, reconstruction formula, or selected side root is used.
"""
from itertools import permutations
from pathlib import Path
import sys
sys.path.insert(0,str(Path(__file__).resolve().parents[2]/'CornerBounds/PairedSidePrune'))
from paired_prune import arb,acb,collect_labels,side_triples,sharp_R_cap
from direct_lift import frame_matrices

ROWS=(0,5,3,1,2,4)
COLS=(0,2,1,3,4,5)


def reference():
    return [[acb(0,arb.pi()*r*c/3).exp() for c in COLS] for r in ROWS]


def cube_center():
    return [4*arb.pi()/3,5*arb.pi()/3,arb(0),arb.pi()]


def matched_side_bound(side, reference_vectors):
    """Bound every retained triple, allowing its own reference permutation."""
    vectors,triples=side
    if not triples:
        return None  # This theorem's replay requires nonempty sides.
    costs=[[sum(abs(v[k]-r[k])**2 for k in range(3)).upper()
            for r in reference_vectors] for v in vectors]
    worst=arb(0)
    witness=None
    for ids in triples:
        candidates=[(sum(costs[ids[k]][perm[k]] for k in range(3)).upper(),perm)
                    for perm in permutations(range(3))]
        # Comparisons here are only between exact dyadic outward endpoints.
        best,perm=min(candidates,key=lambda item:item[0])
        if best>worst:
            worst=best
            witness=dict(labels=ids,permutation=perm)
    return worst.sqrt().upper(),witness


def replay_cube(depth=20, **cover_options):
    cc=cube_center();h=arb(1)/2048;hh=[h]*4
    cap=sharp_R_cap(cc,hh)
    if cap is None or not cap<arb(1)/1000:
        return dict(ok=False,reason='R_cap')
    H=reference()
    refs=[[[H[r][c] for r in range(3)] for c in range(3,6)],
          [[H[r][c] for c in range(3)] for r in range(3,6)]]
    reports=[]
    limits=[arb(7)/1000,arb(3)/250]
    for order,ref,limit in zip(((0,1,2,3),(0,2,1,3)),refs,limits):
        labels,gram,info=collect_labels([cc[i] for i in order],hh,cap,
                                        depth=depth,**cover_options)
        if labels is None:
            return dict(ok=False,reason=info['reason'],sides=reports+[info])
        side,stats=side_triples(labels,gram)
        if side is None:
            return dict(ok=False,reason=stats['reason'],sides=reports+[dict(info,**stats)])
        matched=matched_side_bound(side,ref)
        if matched is None:
            return dict(ok=False,reason='empty_side',sides=reports)
        bound,witness=matched
        reports.append(dict(info,**stats,block_distance_upper=str(bound),worst_matching=witness))
        if not bound<limit:
            return dict(ok=False,reason='side_too_wide',sides=reports)
    e=2*h;b,c=limits;kappa=arb(3)/4-10*h
    squared=(e*e+b*b+c*c)/6+(e+b+c)**2/kappa
    assert squared<arb(1)/1600 and arb(1)/40<arb(1)/36
    return dict(ok=True,reason='R_zero_cube',phase_half_width='1/2048',
                R_upper=str(cap),seed_block_bound='1/1024',B_block_bound='7/1000',
                C_block_bound='3/250',gram_lower='3/4-10/2048',
                normalized_Frobenius_bound='1/40',sides=reports)


def certify_box(centers,radii,all_frames=True):
    """Apply the proved fixed-cube theorem by outward containment, modulo 2pi.

    A True result excludes quartet edges at D0 points, not the points of D0.
    The finite certificate for the fixed cube is replay_cube(), not rerun here.
    Transpose is safe because the underlying error bound is Frobenius.
    """
    cc,hh=list(map(arb,centers)),list(map(arb,radii))
    if len(cc)!=4 or len(hh)!=4 or not all(h>=0 for h in hh):
        raise ValueError('Need four centres and nonnegative radii')
    if not all(v.is_finite() for v in cc+hh):
        return dict(ok=False,reason='unbounded_input')
    frames=frame_matrices() if all_frames else [(tuple(range(3)),tuple(range(3)),False,
                                               [[int(i==j) for j in range(4)] for i in range(4)])]
    base=cube_center()
    for rows,cols,tr,matrix in frames:
        transformed=[sum(a*c for a,c in zip(row,cc)) for row in matrix]
        widths=[sum(abs(a)*h for a,h in zip(row,hh)) for row in matrix]
        shifted=[]
        for t,target in zip(transformed,base):
            # A rounded float proposes an integer only. The final acceptance
            # is an outward Arb containment check, valid for any proposed lift.
            try:
                shift=round(float((t-target)/(2*arb.pi())))
            except (OverflowError,ValueError):
                return dict(ok=False,reason='unbounded_input')
            shifted.append(t-shift*2*arb.pi())
        if all(abs(t-target)+h<=arb(1)/2048 for t,target,h in zip(shifted,base,widths)):
            return dict(ok=True,reason='R_zero_cube_containment',rows=rows,columns=cols,
                        transpose=tr,normalized_Frobenius_bound='1/40',matrix_tube='1/36')
    return dict(ok=False,reason='outside_certified_cubes')
