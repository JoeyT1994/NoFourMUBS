"""Completion-error lifting using a fixed reference inverse.

Every side triple is retained and aligned before taking interval hulls.
No division by R, selected reconstruction branch, or root count is used.
See RESIDUAL_LIFT.md. Public wrappers use proved Fourier tube references.
"""
from itertools import permutations
from flint import acb_mat
from side_cover_lift import (arb, acb, sharp_R_cap, collect_labels, side_triples,
                             reference_gram_bound, fourier_reference,
                             DEFAULT_ROWS, DEFAULT_COLS)
from family_side_lift import family_reference, regional_cell, certified_patch_center


def aligned_triples(side, references, brute=False):
    """Choose ONE simultaneous permutation for each entire retained triple."""
    vectors, triples = side
    costs = [[sum(abs(v[k]-r[k])**2 for k in range(3)).upper()
              for r in references] for v in vectors]
    nearest = [min(range(3), key=lambda j: row[j]) for row in costs]
    aligned = []
    for ids in triples:
        perm = tuple(nearest[i] for i in ids)
        if brute or len(set(perm)) != 3:
            perm = min(permutations(range(3)), key=lambda p:
                       sum(costs[ids[k]][p[k]] for k in range(3)).upper())
        indices = [None]*3
        for i, j in zip(ids, perm):
            indices[j] = i
        assert None not in indices
        aligned.append(tuple(indices))
    return vectors, aligned


def norm_upper(vector):
    return sum(abs(x)**2 for x in vector).upper().sqrt().upper()


def matvec(matrix, vector):
    return [sum(a*b for a, b in zip(row, vector)) for row in matrix]


def complex_hull(a, b):
    return acb(a.real.union(b.real), a.imag.union(b.imag))


def completion_bound(H0, centers, radii, B, C, brute=False):
    """Low-level bound: H0 MUST be a raw physical Hadamard reference.

    B,C must exhaust the physical side choices. Returns a maximum-column
    Euclidean bound divided by sqrt(6), hence a projector-distance bound.
    It is not a standalone physicality or side-completeness validator.
    """
    E0 = [row[:3] for row in H0[:3]]
    C0 = [row[:3] for row in H0[3:]]
    phase = [acb(0, t+arb(0,h)).exp() for t,h in zip(centers,radii)]
    E = [[acb(1)]*3, [acb(1),*phase[:2]], [acb(1),*phase[2:]]]
    k0 = reference_gram_bound(H0)
    if not k0 > 0:
        return dict(ok=False, reason='reference_gram')
    inverse = acb_mat([[C0[j][i].conjugate() for j in range(3)]
                      for i in range(3)]).inv()
    K = [[inverse[i,j] for j in range(3)] for i in range(3)]
    if not all(z.is_finite() for row in K for z in row):
        return dict(ok=False, reason='reference_inverse')
    bref = [[H0[k][j+3] for k in range(3)] for j in range(3)]
    bv, bt = aligned_triples(B, bref, brute)
    cv, ct = aligned_triples(C, C0, brute)
    if not bt or not ct:
        raise ValueError('Empty sides must be handled as domain exclusions')

    # Cache each labelled row's contribution before combining triples.
    # All quantities here use the SAME row assignment in a given triple.
    activeC = sorted({(i,j) for ids in ct for j,i in enumerate(ids)})
    costs, contributions = {}, {}
    for i,j in activeC:
        delta = [cv[i][k]-C0[j][k] for k in range(3)]
        costs[i,j] = [abs(z)**2 for z in delta]
        image = matvec(K, [z.conjugate() for z in delta])
        contributions[i,j] = [[v*H0[j+3][col+3] for v in image] for col in range(3)]
    cbound, first_squared = arb(0), arb(0)
    eh = [sum(abs(E[i][j]-E0[i][j])**2 for i in range(3)) for j in range(3)]
    chulls = [None]*3
    for ids in ct:
        squared = [sum(costs[ids[i],i][j] for i in range(3)) for j in range(3)]
        cbound = max(cbound, sum(squared).upper().sqrt().upper())
        first_squared = max(first_squared, *((eh[j]+squared[j]).upper() for j in range(3)))
        for col in range(3):
            value = [sum(contributions[ids[i],i][col][k] for i in range(3)) for k in range(3)]
            chulls[col] = value if chulls[col] is None else [complex_hull(a,b) for a,b in zip(chulls[col],value)]
    eta = (cbound/k0.sqrt()).upper()
    if not eta < 1:
        return dict(ok=False, reason='contraction', eta=str(eta))
    bound_squared = first_squared
    max_residual, max_beta, max_d = arb(0), arb(0), arb(0)
    activeB = sorted({(i,j) for ids in bt for j,i in enumerate(ids)})
    for i,j in activeB:
        v = bv[i]
        delta = [x-y for x,y in zip(v,bref[j])]
        # Difference form avoids subtracting two independently wide products.
        q = [sum((E[l][k]-E0[l][k]).conjugate()*v[l]
                 + E0[l][k].conjugate()*delta[l] for l in range(3)) for k in range(3)]
        q = matvec(K,q)
        res = norm_upper([a+b for a,b in zip(q,chulls[j])])
        d = (res/(1-eta)).upper()
        beta2 = sum(abs(z)**2 for z in delta).upper()
        bound_squared = max(bound_squared, (beta2+d*d).upper())
        max_residual = max(max_residual,res)
        max_beta = max(max_beta,beta2.sqrt().upper())
        max_d = max(max_d,d)
    column = (bound_squared/6).sqrt().upper()
    return dict(ok=True, reason='completion_bound', column_distance=str(column),
                reference_gram_lower=str(k0), C_error=str(cbound), eta=str(eta),
                first_column_error=str(first_squared.sqrt().upper()),
                B_column_error=str(max_beta), preconditioned_residual=str(max_residual),
                D_column_error=str(max_d), B_triples=len(bt), C_triples=len(ct))


def _certify(centers, radii, H0, radius, depth=18, budget=50000,
             maxlabels=1200, pair_budget=800000, triple_budget=500000):
    cc,hh = list(map(arb,centers)),list(map(arb,radii))
    if len(cc)!=4 or len(hh)!=4 or not all(h>=0 for h in hh):
        raise ValueError('Need four centres and four nonnegative radii')
    if not all(x.is_finite() for x in cc+hh):
        return dict(ok=False, reason='unbounded_input')
    cap=sharp_R_cap(cc,hh)
    if cap is None:
        return dict(ok=False, reason='R_cap')
    if cap<=0:
        return dict(ok=True, reason='outside_strict_D0')
    sides,reports=[],[]
    for order in ((0,1,2,3),(0,2,1,3)):
        labels,gram,info=collect_labels([cc[i] for i in order],[hh[i] for i in order],
                        cap,depth=depth,budget=budget,maxlabels=maxlabels)
        if labels is None:
            return dict(ok=False, reason=info['reason'], sides=reports+[info])
        side,stats=side_triples(labels,gram,pair_budget,triple_budget)
        reports.append(dict(info,**stats))
        if side is None:
            return dict(ok=False, reason=stats['reason'], sides=reports)
        if not side[1]:
            return dict(ok=True, reason='outside_D0', sides=reports)
        sides.append(side)
    bound=completion_bound(H0,cc,hh,*sides)
    if not bound['ok']:
        return dict(bound,sides=reports)
    ok=arb(bound['column_distance'])<=radius
    return dict(bound,ok=ok,reason='residual_tube' if ok else 'outside_proved_tube',
                allowed_column_distance=str(radius),R_cap=str(cap),sides=reports)


def certify_f6(centers, radii, rows=DEFAULT_ROWS, cols=DEFAULT_COLS, **options):
    """Quartet exclusion on D0 at R>0, with boxes allowed to cross R=0."""
    return _certify(centers,radii,fourier_reference(rows,cols),arb(1)/30,**options)


def certify_family(centers, radii, a_turns='7/360', b_turns=0,
                   rows=(0,1,2,3,4,5),cols=(0,2,5,1,3,4),**options):
    region=regional_cell(a_turns,b_turns)
    if region is None:
        return dict(ok=False,reason='no_regional_tube')
    H0=family_reference(a_turns,b_turns,rows,cols)
    result=_certify(centers,radii,H0,arb(1)/(6*region['tolerance_denominator']),**options)
    return dict(result,regional_cell=region)
