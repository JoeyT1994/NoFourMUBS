"""Couple horizontal and vertical side covers without dividing by R or det G.

Only ok=True certifies that a whole seed box misses D0. All positive-R
and R=0-crossing boxes are treated by the same necessary polynomial
identities. No sampled reconstruction or selected branch is used.
"""
from itertools import product
from pathlib import Path
import sys

sys.path.insert(0, str(Path(__file__).resolve().parent.parent/'SideTriplePrune'))
from triple_prune import (arb, acb, collect_labels, gram_adjugate,
                          possible_pair, compatible_triples, contains_zero,
                          R_upper_bound)


def sharp_R_cap(centers, radii):
    """Outward bound on R, with no rounding up to an integer."""
    half = [h/2 for h in radii]
    bounds = [R_upper_bound([c+s*h for c,s,h in zip(centers, signs, half)], half)
              for signs in product((-1,1), repeat=4)]
    if not all(v.is_finite() for v in bounds):
        return None
    cap = max(v.upper() for v in bounds)
    assert all(v <= cap for v in bounds)
    return arb(cap)


def side_triples(labels, gram, pair_budget=150000, triple_budget=100000):
    """Exhaustively retain side-label triples, including repeated labels."""
    adj = gram_adjugate(*gram)
    vectors = [(acb(1), x, y) for x,y,_ in labels]
    images = [tuple(sum(adj[i][j]*v[j] for j in range(3)) for i in range(3))
              for v in vectors]
    edges = [set() for _ in labels]
    checks = 0
    for i in range(len(labels)):
        for j in range(i, len(labels)):
            if checks >= pair_budget:
                return None, dict(reason='side_pair_budget', pair_checks=checks)
            checks += 1
            inner = sum(vectors[i][k].conjugate()*images[j][k] for k in range(3))
            if possible_pair(labels[i], labels[j], gram, inner):
                edges[i].add(j)
                edges[j].add(i)
    triples = []
    tested = 0
    for ids in compatible_triples(edges):
        if tested >= triple_budget:
            return None, dict(reason='side_triple_budget', triple_checks=tested)
        tested += 1
        if all(contains_zero(sum(labels[i][j] for i in ids)-target)
               for j,target in enumerate(gram)):
            triples.append(ids)
    return (vectors, triples), dict(pair_checks=checks, triple_checks=tested,
                                    retained_triples=len(triples))


def completion_coefficients(centers, radii):
    """Return E† adj(6I−EE†), and det(6I−EE†), using exact unit diagonals."""
    a,b,c,d = [acb(0, t+arb(0,h)).exp() for t,h in zip(centers,radii)]
    E = [[acb(1)]*3, [acb(1),a,b], [acb(1),c,d]]
    s,t,q = -(1+a+b), -(1+c+d), -(1+c*a.conjugate()+d*b.conjugate())
    adj = gram_adjugate(s,t,q)
    W = [[sum(E[k][i].conjugate()*adj[k][j] for k in range(3))
          for j in range(3)] for i in range(3)]
    g = 27-3*(abs(s)**2+abs(t)**2+abs(q)**2)+2*(s*q*t.conjugate()).real
    return W, g


def match_triples(bt, ct, cross, matching_budget=1000000):
    """Complete bipartite matching of two multisets; budget failure is unresolved."""
    inverse = {}
    for k,triple in enumerate(ct):
        for j in set(triple):
            inverse.setdefault(j, set()).add(k)
    checks = 0
    for triple in bt:
        pool = set.intersection(*(cross[i] for i in triple))
        candidates = set().union(*(inverse.get(j,set()) for j in pool))
        for k in sorted(candidates):
            if checks >= matching_budget:
                return dict(ok=False, reason='matching_budget', matching_checks=checks)
            checks += 1
            if all(j in pool for j in ct[k]):
                return dict(ok=False, reason='compatible_side_pair',
                            matching_checks=checks)
    return dict(ok=True, reason='no_side_pair', matching_checks=checks)


def coupled_triples(B, C, W, g, cross_budget=250000, matching_budget=1000000):
    """Reject only if no pair of retained triples can make all nine entries flat."""
    bv, bt = B
    cv, ct = C
    activeB = sorted({i for triple in bt for i in triple})
    activeC = sorted({i for triple in ct for i in triple})
    if len(activeB)*len(activeC) > cross_budget:
        return dict(ok=False, reason='cross_budget')
    images = {i: [sum(W[k][j]*bv[i][j] for j in range(3)) for k in range(3)]
              for i in activeB}
    cross = {}
    rejected = 0
    for i in activeB:
        possible = set()
        for j in activeC:
            numerator = sum(cv[j][k]*images[i][k] for k in range(3))
            if (abs(numerator)-g).contains(0):
                possible.add(j)
            else:
                rejected += 1
        cross[i] = possible
    stats = dict(cross_checks=len(activeB)*len(activeC), cross_rejected=rejected,
                 B_triples=len(bt), C_triples=len(ct))
    return dict(stats, **match_triples(bt, ct, cross, matching_budget))


def cover_paired_sides(centers, radii, cap, depth=10, budget=50000,
                       maxlabels=512, pair_budget=150000,
                       triple_budget=100000, cross_budget=250000,
                       matching_budget=1000000):
    """Low-level: the caller must have proved R(E)≤cap on the seed box."""
    sides = []
    reports = []
    for order in ((0,1,2,3), (0,2,1,3)):
        labels, gram, info = collect_labels([centers[i] for i in order],
            [radii[i] for i in order], cap, depth=depth, budget=budget, maxlabels=maxlabels)
        if labels is None:
            return dict(ok=False, reason=info['reason'], sides=reports+[info])
        side, graph = side_triples(labels, gram, pair_budget, triple_budget)
        reports.append(dict(info, **graph))
        if side is None:
            return dict(ok=False, reason=graph['reason'], sides=reports)
        if not side[1]:
            return dict(ok=True, reason='no_side_triple', sides=reports)
        sides.append(side)
    W,g = completion_coefficients(centers,radii)
    return dict(coupled_triples(*sides,W,g,cross_budget,matching_budget), sides=reports)


def prune_box(centers, radii, **options):
    """Whole-box D0 prune, with automatically certified fractional R cap."""
    cc,hh = list(map(arb,centers)), list(map(arb,radii))
    if len(cc)!=4 or len(hh)!=4 or not all(h>0 for h in hh):
        raise ValueError('Need four centres and four positive half-widths, in radians')
    cap = sharp_R_cap(cc,hh)
    if cap is None:
        return dict(ok=False, reason='unbounded_R')
    if cap <= 0:
        return dict(ok=True, reason='R_nonpositive', R_cap=str(cap))
    result = cover_paired_sides(cc,hh,cap,**options)
    return dict(result,R_cap=str(cap))
