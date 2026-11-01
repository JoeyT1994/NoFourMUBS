#!/usr/bin/env python3
"""Tests of gamma_exact.score_lower, the exact lower bound of Gamma_F(exp iP) used for the cells' g_cell.

  python test_gamma_exact.py

1. every table entry is an integer within 2 of 2^SCALE times the squared circular distance, computed independently in
   Arb at 256 bits (the three nearest multiples of 2 pi);
2. on random phases and on the Fourier matrix's, the bound is at most gamma_test's Arb upper bound at the best
   alignment, and within 1e-9 of it;
3. the bound is never below gamma_test's float64 bound (which subtracts its rounding margin);
4. for one random P, all 14,400 alignments evaluated directly in Arb: the bound is below every one, and within 1e-9 of
   the least.
"""
import math, os, sys
import numpy as np
from flint import arb, ctx

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import gamma_exact as GX, gamma_test as GT

failures = 0


def report(name, ok, detail=''):
    global failures
    failures += not ok; print('%-4s %-70s %s' % ('PASS' if ok else 'FAIL', name, detail))


def dist2(d):
    """dist(d, 2 pi Z)^2 in Arb, over the three nearest multiples of 2 pi."""
    tp = 2 * arb.pi(); n = round(float(d.mid()) / (2 * math.pi))
    return min((abs(d - m * tp) for m in (n - 1, n, n + 1)), key=lambda x: float(x.mid())) ** 2


def cost(P, a, b):
    """The exact squared cost of alignment (a, b), as an Arb ball."""
    p = [[arb(float(P[i][j])) for j in range(6)] for i in range(6)]
    return sum((dist2(p[i][j] + p[k][l] - p[i][l] - p[k][j] - arb.pi() / 3 * ((a[i] - a[k]) * (b[j] - b[l])))
                for i, k, j, l in GX.QUAD), arb(0))


def main():
    rng = np.random.default_rng(20261101)
    cases = [('random %d' % s, rng.uniform(-3, 3, (6, 6))) for s in range(4)]
    cases.append(('Fourier matrix', np.array([[2 * math.pi * i * j / 6 for j in range(6)] for i in range(6)])))
    ctx.prec = 256
    P = cases[0][1]; T = GX.table(P); worst = 0
    p = [[arb(float(P[i][j])) for j in range(6)] for i in range(6)]
    for (i, k, j, l), (x, y) in GX.ROW.items():
        for r in range(6):
            e = dist2(p[i][j] + p[k][l] - p[i][l] - p[k][j] - r * arb.pi() / 3) * arb(2) ** GX.SCALE
            gap = e - int(T[x, y, r]); worst = max(worst, float(gap.upper()))
            if not (gap >= 0 and gap < 2): report('table entry (%d, %d, %d)' % (x, y, r), False, str(gap)); return
    report('table: 1,350 integers within [0, 2) below the scaled exact terms', True, 'largest gap %.3f' % worst)
    ctx.prec = 160
    for name, P in cases:
        g = GX.score_lower(P); a, b = GT.best_alignment(P)
        u = GT.score_upper([[arb(float(P[i][j])) for j in range(6)] for i in range(6)], a, b, arb)
        report('%s: bound <= Arb upper bound at the best alignment, within 1e-9' % name, g <= u and u - g < 1e-9, '%r <= %r' % (g, u))
        f = GT.score_lower(P)
        report('%s: bound >= the float64 bound' % name, g >= f, '%r >= %r' % (g, f))
    P = cases[1][1]; g = GX.score_lower(P); least = math.inf; below = True
    for a in GX.LABELS:
        for b in GX.LABELS:
            c = cost(P, a, b)
            below &= arb(g) * arb(g) * 225 <= c.lower(); least = min(least, float(c.upper()))
    report('all 14,400 alignments in Arb: bound below each, within 1e-9 of the least', below and math.sqrt(least) / 15 - g < 1e-9,
           '%r vs %r' % (g, math.sqrt(least) / 15))
    print('%d failure(s)' % failures); sys.exit(1 if failures else 0)


if __name__ == '__main__': main()
