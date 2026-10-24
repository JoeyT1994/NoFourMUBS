#!/usr/bin/env python3
"""Exact, standard-library replay of the Fourier-family corner census.

No atlas data or Stage C input is read.  Arithmetic is in
Z[omega][z,z^-1,w,w^-1], omega^2 + omega + 1 = 0.
The generic corner discriminant and the complementary signature square
are independently regenerated for all 400 positional corners.
"""

from collections import Counter
from itertools import combinations, permutations, product
import json
from pathlib import Path


def ca(a, b):
    return (a[0] + b[0], a[1] + b[1])


def cm(a, b):
    return (a[0] * b[0] - a[1] * b[1],
            a[0] * b[1] + a[1] * b[0] - a[1] * b[1])


def cc(a):
    return (a[0] - a[1], -a[1])


def const(n):
    return {} if n == 0 else {(0, 0): (n, 0)}


def add(*ps):
    out = {}
    for p in ps:
        for e, c in p.items():
            value = ca(out.get(e, (0, 0)), c)
            if value == (0, 0):
                out.pop(e, None)
            else:
                out[e] = value
    return out


def scale(p, n):
    return {e: (n * c[0], n * c[1]) for e, c in p.items() if n}


def mul(*ps):
    out = const(1)
    for p in ps:
        new = {}
        for e, c in out.items():
            for f, d in p.items():
                k = (e[0] + f[0], e[1] + f[1])
                value = ca(new.get(k, (0, 0)), cm(c, d))
                if value == (0, 0):
                    new.pop(k, None)
                else:
                    new[k] = value
        out = new
    return out


def conj(p):
    return {(-e[0], -e[1]): cc(c) for e, c in p.items()}


def norm(p):
    return mul(p, conj(p))


def signature(e):
    det = {}
    per = {}
    for p in permutations(range(3)):
        term = mul(*(e[i][p[i]] for i in range(3)))
        inv = sum(p[i] > p[j] for i in range(3) for j in range(i + 1, 3))
        det = add(det, scale(term, (-1) ** inv))
        per = add(per, term)
    # Every entry is a unit monomial, so conjugating the entry product
    # is its exact inverse in this Laurent ring.
    inv_product = conj(mul(*(e[i][j] for i in range(3) for j in range(3))))
    psi = mul(per, det, det, inv_product)
    return add(psi, scale(conj(psi), -1))


def discriminant(e):
    # G = 6 I - E E*, with correlations in the convention
    # s = sum x, t = sum y, r = sum conjugate(x) y.
    s = scale(add(*(mul(conj(e[0][j]), e[1][j]) for j in range(3))), -1)
    t = scale(add(*(mul(conj(e[0][j]), e[2][j]) for j in range(3))), -1)
    r = scale(add(*(mul(conj(e[1][j]), e[2][j]) for j in range(3))), -1)
    x, y, z = norm(s), norm(t), norm(r)
    p = add(x, y, z)
    j = add(mul(s, r, conj(t)), mul(conj(s), conj(r), t))
    w = add(mul(x, y), mul(x, z), mul(y, z), scale(mul(x, y, z), -1))
    g = add(const(27), scale(p, -3), j)
    eta = add(const(9), scale(p, -1), j)
    chi = add(w, scale(mul(add(p, const(-9)), add(p, const(-18))), -1),
              mul(add(p, const(-15)), j))
    return add(scale(mul(g, g, eta), 4), scale(mul(chi, chi), -1))


def key(p):
    return tuple(sorted(p.items()))


def mono(a, b):
    return {(a, b): (1, 0)}


def fourier_matrix():
    roots = ((1, 0), (0, 1), (-1, -1))
    h = []
    for row in range(6):
        values = []
        for col in range(6):
            c = roots[((row % 3) * (col % 3)) % 3]
            if row >= 3 and col >= 3:
                c = (-c[0], -c[1])
            ex = (int(row >= 3 and col % 3 == 1),
                  int(row >= 3 and col % 3 == 2))
            values.append({ex: c})
        h.append(values)
    return h


def exact_equivalences():
    witnesses = []
    for a in range(6):
        for b in range(6):
            if (a + b) % 3:
                continue
            phases = (0, a, b)
            ex = [[(2 * (i % 3) * (j % 3)
                    + (phases[j % 3] if i >= 3 else 0)
                    + (3 if i >= 3 and j >= 3 else 0)) % 6
                   for j in range(6)] for i in range(6)]
            found = None
            for ir in range(6):
                col_perm = ex[ir]
                if sorted(col_perm) != list(range(6)):
                    continue
                row_perm = []
                for row in ex:
                    rs = [r for r in range(6)
                          if all(row[j] == r * col_perm[j] % 6 for j in range(6))]
                    if len(rs) != 1:
                        break
                    row_perm.append(rs[0])
                if sorted(row_perm) == list(range(6)):
                    found = (row_perm, col_perm)
                    break
            assert found is not None, (a, b)
            rp, cp = found
            assert all(ex[i][j] == rp[i] * cp[j] % 6
                       for i in range(6) for j in range(6))
            witnesses.append({"a": a, "b": b, "row_exponents": rp, "column_exponents": cp})
    assert len(witnesses) == 12
    return witnesses


def run():
    h = fourier_matrix()
    triples = list(combinations(range(6), 3))
    u, v, t = mono(-1, 2), mono(1, 1), mono(-2, 1)
    sine_twice_i = [add(a, scale(conj(a), -1)) for a in (u, v, t)]
    expected = {}
    for s, t in product((-1, 1), repeat=2):
        q = add(sine_twice_i[0], scale(sine_twice_i[1], s),
                scale(sine_twice_i[2], t))
        expected[(s, t)] = scale(mul(q, q), -9)
    keys = {key(p): signs for signs, p in expected.items()}
    assert len(keys) == 4 and key({}) not in keys
    counts = Counter()
    first_reps = {}
    all_sum = {}
    row_strip_counts = {}
    row_anchor_counts = [Counter() for _ in range(6)]
    column_anchor_counts = [Counter() for _ in range(6)]
    checked = 0
    for rows in triples:
        row_counts = Counter()
        for cols in triples:
            complement = tuple(j for j in range(6) if j not in cols)
            e = [[h[i][j] for j in cols] for i in rows]
            b = [[h[i][j] for j in complement] for i in rows]
            r = discriminant(e)
            assert r == discriminant(list(map(list, zip(*e)))), (rows, cols, "transpose")
            d = signature(b)
            assert r == scale(mul(d, d), -1), (rows, cols, "signature")
            r_key = key(r)
            assert r_key == key({}) or r_key in keys, (rows, cols, "census")
            label = "zero" if not r else str(keys[r_key])
            counts[label] += 1
            row_counts[label] += 1
            for i in rows:
                row_anchor_counts[i][label] += 1
            for j in cols:
                column_anchor_counts[j][label] += 1
            if r:
                first_reps.setdefault(label, {"rows": rows, "columns": cols})
            all_sum = add(all_sum, r)
            checked += 1
        row_strip_counts[str(rows)] = dict(row_counts)
    expected_sum = scale(add(*(mul(p, p) for p in sine_twice_i)), -1296)
    assert all_sum == expected_sum
    assert counts["zero"] == 256
    assert all(counts[str(st)] == 36 for st in expected)
    for anchor_counts in row_anchor_counts + column_anchor_counts:
        assert anchor_counts["zero"] == 128
        assert all(anchor_counts[str(st)] == 18 for st in expected)
    witnesses = exact_equivalences()
    result = {"status": "PASS", "corners_checked": checked,
              "census": dict(counts), "representative_corners_zero_based": first_reps,
              "sum_identity": "sum R = 5184 (sin^2 X + sin^2 Y + sin^2 (X-Y))",
              "row_strip_censuses": row_strip_counts,
              "row_anchor_censuses": [dict(v) for v in row_anchor_counts],
              "column_anchor_censuses": [dict(v) for v in column_anchor_counts],
              "F6_equivalence_witnesses": witnesses,
              "numeric_arithmetic_used": False,
              "external_data_used": False}
    print(json.dumps(result, indent=2))
    return result


if __name__ == "__main__":
    run()
