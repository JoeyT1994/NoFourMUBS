"""Require the surviving side-column labels to form a compatible triple.

All acceptance is by outward Arb arithmetic and exhaustive finite graph
checks. Loops and repeated labels are retained unless rigorously excluded.
No reconstruction, matrix inversion, or division by det(G) is used.
"""
from itertools import combinations, product
from pathlib import Path
import math
import sys

sys.path.insert(0, str(Path(__file__).resolve().parent.parent/'SideColumnPrune'))
from prune import arb, acb, complementary_R, R_upper_bound, grid_box


def contains_zero(z):
    return z.real.contains(0) and z.imag.contains(0)


def gram_adjugate(s, t, r):
    """Adjugate of [[3,bar(s),bar(t)],[s,3,bar(r)],[t,r,3]]."""
    return [
        [9-abs(r)**2, t.conjugate()*r-3*s.conjugate(),
         s.conjugate()*r.conjugate()-3*t.conjugate()],
        [t*r.conjugate()-3*s, 9-abs(t)**2, s*t.conjugate()-3*r.conjugate()],
        [s*r-3*t, s.conjugate()*t-3*r, 9-abs(s)**2],
    ]


def collect_labels(centers, radii, cap, depth=8, budget=50000, maxlabels=512):
    """Cover all columns compatible with D0; retain undecided small boxes."""
    angles = [c+arb(0, h) for c, h in zip(centers, radii)]
    ex, ey = [arb(0), *angles[:2]], [arb(0), *angles[2:]]
    xs = [acb(0, v).exp() for v in ex]
    ys = [acb(0, v).exp() for v in ey]
    s, t = -sum(xs), -sum(ys)
    r = -sum(y*x.conjugate() for x, y in zip(xs, ys))
    queue = [(arb(k)/8+arb(1)/16, arb(l)/8+arb(1)/16,
              arb(1)/16, arb(1)/16, 0)
             for k in range(8) for l in range(8)]
    labels = []
    stats = dict(nodes=0, moment_leaves=0, corner_leaves=0, labels=0)
    while queue:
        if stats['nodes'] >= budget:
            return None, (s, t, r), dict(stats, reason='cover_budget')
        cx, cy, rx, ry, level = queue.pop()
        stats['nodes'] += 1
        tx, ty = (cx+arb(0, rx))*2*arb.pi(), (cy+arb(0, ry))*2*arb.pi()
        x, y = acb(0, tx).exp(), acb(0, ty).exp()
        A, B, C = s-x, t-y, r-y*x.conjugate()
        residual = A*C*B.conjugate()-(abs(A)**2+abs(B)**2+abs(C)**2-4)
        if any(abs(v) > 2 for v in (A, B, C)) or not contains_zero(residual):
            stats['moment_leaves'] += 1
            continue
        if any(complementary_R([ex[j], ex[k], tx], [ey[j], ey[k], ty]) > cap
               for j, k in combinations(range(3), 2)):
            stats['corner_leaves'] += 1
            continue
        if level >= depth:
            if len(labels) >= maxlabels:
                return None, (s, t, r), dict(stats, reason='label_limit')
            labels.append((x, y, y*x.conjugate()))
            stats['labels'] += 1
            continue
        if rx >= ry:
            queue.extend((cx+sign*rx/2, cy, rx/2, ry, level+1)
                         for sign in (-1, 1))
        else:
            queue.extend((cx, cy+sign*ry/2, rx, ry/2, level+1)
                         for sign in (-1, 1))
    leaves = stats['moment_leaves']+stats['corner_leaves']+len(labels)
    assert stats['nodes'] == 2*leaves-64
    return labels, (s, t, r), stats


def possible_pair(first, second, gram, adj_first_times_second):
    """Necessary conditions for TWO column positions, including same label."""
    if not contains_zero(adj_first_times_second):
        return False
    x, y, z = first
    xx, yy, zz = second
    s, t, r = gram
    u, v = s-x-xx, t-y-yy
    return ((abs(u)**2-1).contains(0) and (abs(v)**2-1).contains(0)
            and contains_zero(r-z-zz-v*u.conjugate()))


def compatible_triples(edges):
    """Every unordered multiset of three pairwise-compatible label indices.

    A repeated index requires its self-loop; this is deliberate. No capacity
    or regularity assumption is imposed on a label.
    """
    for i in range(len(edges)):
        for j in sorted(v for v in edges[i] if v >= i):
            for k in sorted(v for v in edges[i] & edges[j] if v >= j):
                yield i, j, k


def exclude_triples(labels, gram, pair_budget=150000, triple_budget=100000):
    """True means no compatible side can be assembled from these labels."""
    s, t, r = gram
    adj = gram_adjugate(s, t, r)
    vectors = [(acb(1), x, y) for x, y, _ in labels]
    images = [tuple(sum(adj[i][j]*v[j] for j in range(3)) for i in range(3))
              for v in vectors]
    edges = [set() for _ in labels]
    stats = dict(pair_checks=0, edges=0, loops=0, triples=0)
    for i, first in enumerate(labels):
        for j in range(i, len(labels)):
            if stats['pair_checks'] >= pair_budget:
                return False, dict(stats, reason='pair_budget')
            stats['pair_checks'] += 1
            q = sum(vectors[i][k].conjugate()*images[j][k] for k in range(3))
            if possible_pair(first, labels[j], gram, q):
                edges[i].add(j)
                edges[j].add(i)
                stats['edges'] += 1
                stats['loops'] += int(i == j)
    for indices in compatible_triples(edges):
        if stats['triples'] >= triple_budget:
            return False, dict(stats, reason='triple_budget')
        stats['triples'] += 1
        # A true triple has exactly these three moment sums. Reusing a label
        # still encloses independent choices of several columns in that box.
        if all(contains_zero(sum(labels[i][j] for i in indices)-target)
               for j, target in enumerate(gram)):
            return False, dict(stats, reason='compatible_triple')
    return True, dict(stats, reason='no_side_triple')


def cover_side_triples(centers, radii, cap, **options):
    """Low-level test: caller must independently certify R(E) < cap."""
    labels, gram, stats = collect_labels(centers, radii, cap, **options)
    if labels is None:
        return dict(ok=False, **stats)
    ok, graph = exclude_triples(labels, gram)
    return dict(ok=ok, **stats, **graph)


def prune_box(centers, radii, depth=8, budget=50000, maxlabels=512):
    """Complete D0 certificate with automatic R cap; four angles in radians.

    Only ok=True authorises exclusion. Unresolved covers, graphs and limits
    return ok=False. Either the row or transposed orientation may certify.
    """
    centers, radii = list(map(arb, centers)), list(map(arb, radii))
    if len(centers) != 4 or len(radii) != 4 or not all(h > 0 for h in radii):
        raise ValueError('Need four centres and four positive half-widths')
    half = [h/2 for h in radii]
    bounds = [R_upper_bound([c+sign*h for c, sign, h in zip(centers, signs, half)], half)
              for signs in product((-1, 1), repeat=4)]
    try:
        cap = math.ceil(max(float(v.upper()) for v in bounds))
    except (OverflowError, ValueError):
        return dict(ok=False, reason='unbounded_R')
    if not all(v < cap for v in bounds):
        cap += 1
    if not all(v < cap for v in bounds):
        return dict(ok=False, reason='R_cap')
    if cap <= 0:
        return dict(ok=True, reason='R_negative', R_cap=cap)
    for transpose in (False, True):
        order = (0, 2, 1, 3) if transpose else (0, 1, 2, 3)
        result = cover_side_triples([centers[i] for i in order],
                                   [radii[i] for i in order], cap,
                                   depth=depth, budget=budget, maxlabels=maxlabels)
        if result['ok']:
            return dict(result, R_cap=cap, transpose=transpose)
    return dict(ok=False, reason='unresolved', R_cap=cap)
