#!/usr/bin/env python3
"""Exact replay of off-critical side numerators and the p=0 strip census."""
from collections import Counter
from itertools import combinations, permutations, product
import json
from derive_strip_moments import add, mul, conjugate
import verify_fourier_coverage as fourier


def check_side_numerators():
    one = {(0,) * 6: 1}
    def scale(p, c):
        return {e: c * v for e, v in p.items()}
    def mono(i):
        return {tuple(int(j == i) for j in range(6)): 1}
    x = [mono(j) for j in range(3)]
    y = [mono(j + 3) for j in range(3)]
    e = [[one] * 3, x, y]
    per, det = {}, {}
    for p in permutations(range(3)):
        term = mul(mul(e[0][p[0]], e[1][p[1]]), e[2][p[2]])
        sign = (-1) ** sum(p[i] > p[j] for i in range(3) for j in range(i + 1, 3))
        per = add(per, term)
        det = add(det, scale(term, sign))
    s, t = add(*x), add(*y)
    r = add(*(mul(conjugate(a), b) for a, b in zip(x, y)))
    sb, tb, rb = map(conjugate, (s, t, r))
    xx, yy, zz = mul(s, sb), mul(t, tb), mul(r, rb)
    u = mul(mul(x[0], x[1]), x[2])
    v = mul(mul(y[0], y[1]), y[2])
    base = scale(mul(mul(u, v), mul(conjugate(det), conjugate(det))), -1)
    p0 = add(base, mul(add(scale(one, 9), scale(zz, -1)), per))
    p1 = mul(conjugate(u), add(base, mul(add(scale(one, 9), scale(yy, -1)), per)))
    p2 = mul(conjugate(v), add(base, mul(add(scale(one, 9), scale(xx, -1)), per)))
    q0 = add(mul(mul(s, t), add(scale(one, 3), scale(zz, -1))),
             mul(mul(s, s), r), mul(mul(t, t), rb))
    q1 = add(mul(mul(s, rb), add(scale(one, 3), scale(yy, -1))),
             mul(mul(s, s), tb), mul(mul(rb, rb), t))
    q2 = add(mul(mul(t, r), add(scale(one, 3), scale(xx, -1))),
             mul(mul(t, t), sb), mul(mul(r, r), s))
    assert p0 == q0
    assert conjugate(p1) == q1
    assert conjugate(p2) == q2


def check_zero_p_strip():
    h = fourier.fourier_matrix()
    # The top-three-row strip of N^T is [F3, diag(1,z,w) F3].
    fixed_columns = (0, 1, 2)
    u, v, t = fourier.mono(-1, 2), fourier.mono(1, 1), fourier.mono(-2, 1)
    sine = [fourier.add(a, fourier.scale(fourier.conj(a), -1)) for a in (u, v, t)]
    q = fourier.add(sine[0], fourier.scale(sine[1], -1), fourier.scale(sine[2], -1))
    expected = fourier.scale(fourier.mul(q, q), -9)
    counts = Counter()
    for rows in combinations(range(6), 3):
        e = [[h[i][j] for j in fixed_columns] for i in rows]
        r = fourier.discriminant(e)
        assert r == fourier.discriminant(list(map(list, zip(*e))))
        assert not r or r == expected
        counts["nonzero_polynomial" if r else "zero"] += 1
    assert counts == {"zero": 2, "nonzero_polynomial": 18}
    return dict(counts)


if __name__ == "__main__":
    check_side_numerators()
    census = check_zero_p_strip()
    print(json.dumps({"status": "PASS", "off_critical_side_identities": 3,
                      "p_zero_strip_census": census,
                      "numeric_acceptance_used": False}, indent=2))
