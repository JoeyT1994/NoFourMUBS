"""Exact Fourier-family corner atlas and seed distances, in turns (angle / 2π).

These are proximity tests, NOT quartet-exclusion tests. See PROOF.md.
The runtime distance routines use only rational arithmetic.
"""
from fractions import Fraction as F
from itertools import permutations, product, combinations
from functools import lru_cache, reduce
from math import gcd, floor, ceil
from pathlib import Path
import json

HERE = Path(__file__).resolve().parent


def family_entry(row, col):
    """ξ^h z^x w^y in [[F,F],[F diag(1,z,w),-F diag(1,z,w)]]."""
    s, i = divmod(row, 3)
    t, j = divmod(col, 3)
    return (3*s*t + 2*i*j, s*int(j == 1), s*int(j == 2))


def dephase(entry, rows, cols, transpose=False):
    result = []
    for i, j in ((1, 1), (1, 2), (2, 1), (2, 2)):
        terms = (entry(rows[i], cols[j]), entry(rows[i], cols[0]),
                 entry(rows[0], cols[j]), entry(rows[0], cols[0]))
        v = tuple(terms[0][k]-terms[1][k]-terms[2][k]+terms[3][k] for k in range(3))
        result.append((v[0] % 6, v[1], v[2]))
    return tuple(result[i] for i in ((0, 2, 1, 3) if transpose else range(4)))


def all_corner_maps():
    """All 2 * (6*5*4)^2 ordered corners, deduplicated as monomial maps."""
    triples = list(permutations(range(6), 3))
    return {dephase(family_entry, rows, cols, transposed)
            for rows in triples for cols in triples for transposed in (False, True)}


def prototype_entry(which, row, col):
    if row == 0 or col == 0:
        return (0, 0, 0)
    if which == 2:
        return {(1,1):(2,0,0), (1,2):(4,0,0),
                (2,1):(0,1,0), (2,2):(0,0,1)}[row, col]
    return {(1,1):(2,0,0), (1,2):(0,0,0),
            (2,1):(0,1,0), (2,2):(3,0,0)}[row, col]


@lru_cache(None)
def relations(exponents):
    """Canonical saturated integer annihilator of the parameter matrix."""
    import sympy as sp
    from sympy.matrices.normalforms import hermite_normal_form
    A = sp.Matrix(exponents)
    null = A.T.nullspace()
    L = sp.Matrix.hstack(*[v*sp.ilcm(*[x.q for x in v]) for v in null]).T
    minors = [abs(int(L[:, ids].det())) for ids in combinations(range(4), L.rows)]
    # Primitivity certifies the whole integer kernel, not just a sublattice.
    assert reduce(gcd, minors) == 1
    assert L*A == sp.zeros(L.rows, 2)
    L = hermite_normal_form(L.T).T
    return tuple(tuple(int(v) for v in row) for row in L.tolist())


def image_key(seed_map):
    L = relations(tuple(v[1:] for v in seed_map))
    b = tuple(sum(row[i]*seed_map[i][0] for i in range(4)) % 6 for row in L)
    return L, b


def build_atlas():
    """Generate the 48 pieces from two prototypes and the 72 corner symmetries."""
    records = {}
    triples = list(permutations(range(3)))
    for which, rows, cols, tr in product((1, 2), triples, triples, (False, True)):
        seed_map = dephase(lambda r, c: prototype_entry(which, r, c), rows, cols, tr)
        key = image_key(seed_map)
        records.setdefault(key, dict(L=key[0], b=key[1],
            h=[v[0] for v in seed_map], A=[v[1:] for v in seed_map],
            prototype=which, rows=rows, cols=cols, transpose=tr))
    return [records[k] for k in sorted(records)]


def contains_map(component, seed_map):
    for row, b in zip(component['L'], component['b']):
        if (sum(row[i]*seed_map[i][0] for i in range(4))-b) % 6:
            return False
        if any(sum(row[i]*seed_map[i][p] for i in range(4)) for p in (1, 2)):
            return False
    return True


def load_atlas():
    return json.loads((HERE/'data/atlas.json').read_text())['components']


def inverse(matrix):
    n = len(matrix)
    a = [[F(v) for v in row]+[F(i == j) for j in range(n)]
         for i, row in enumerate(matrix)]
    for j in range(n):
        k = next(k for k in range(j, n) if a[k][j])
        a[j], a[k] = a[k], a[j]
        pivot = a[j][j]
        a[j] = [v/pivot for v in a[j]]
        for i in range(n):
            if i != j:
                factor = a[i][j]
                a[i] = [v-factor*w for v, w in zip(a[i], a[j])]
    return tuple(tuple(row[n:]) for row in a)


@lru_cache(None)
def gram_inverse(L):
    return inverse([[sum(a*b for a,b in zip(row, other)) for other in L] for row in L])


def component_distance_squared_turns(seed, component):
    """Return the EXACT torus distance squared, plus a closest seed lift."""
    x = tuple(F(v) for v in seed)
    if len(x) != 4:
        raise ValueError('A seed has four phase coordinates, in turns.')
    L = tuple(tuple(row) for row in component['L'])
    Q = gram_inverse(L)
    u = tuple(sum(row[i]*x[i] for i in range(4))-F(b,6)
              for row,b in zip(L, component['b']))
    # A nearest torus displacement has coordinates in [-1/2,1/2].
    ranges = [range(ceil(v-F(sum(map(abs,row)),2)), floor(v+F(sum(map(abs,row)),2))+1)
              for v,row in zip(u,L)]
    best = None
    for n in product(*ranges):
        residual = tuple(v-k for v,k in zip(u,n))
        qr = tuple(sum(a*b for a,b in zip(row,residual)) for row in Q)
        d2 = sum(a*b for a,b in zip(residual,qr))
        if best is None or d2 < best[0]:
            displacement = tuple(sum(L[j][i]*qr[j] for j in range(len(L))) for i in range(4))
            best = d2, tuple(x[i]-displacement[i] for i in range(4))
    assert best is not None
    return best


def distance_squared_turns(seed, *, strict_closure=False):
    """Return (squared distance, zero-based component index, closest seed lift)."""
    return min((q, i, y) for i, c in enumerate(load_atlas())
               if not strict_closure or len(c['L']) == 2
               for q,y in [component_distance_squared_turns(seed, c)])


def classify_box(center, half_widths, radius_turns, *, strict_closure=False):
    """Prove an entire seed box inside/outside an OPEN proximity tube, or undecided.

    This classifies proximity only. It does not activate a campaign prune.
    All inputs are rational turns. No square-root approximation is used.
    """
    widths = tuple(F(v) for v in half_widths)
    radius = F(radius_turns)
    if len(widths) != 4 or min(widths) < 0 or radius <= 0:
        raise ValueError('Use four nonnegative widths and a positive tube radius.')
    q, _, _ = distance_squared_turns(center, strict_closure=strict_closure)
    s = sum(v*v for v in widths)
    inside = radius*radius-q-s
    outside = q-radius*radius-s
    if inside > 0 and inside*inside > 4*q*s:
        return 'inside'
    if outside > 0 and outside*outside > 4*radius*radius*s:
        return 'outside'
    return 'undecided'


if __name__ == '__main__':
    import argparse
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument('turns', nargs=4, type=F, help='Four exact rational turns, e.g. 1/3 0 1/7 1/2')
    args = p.parse_args()
    q, index, witness = distance_squared_turns(args.turns)
    print('Squared distance in turns:', q)
    print('Squared distance in radians: (2*pi)^2 *', q)
    print('Component index (zero based):', index)
    print('Closest seed lift, in turns:', ', '.join(map(str,witness)))
