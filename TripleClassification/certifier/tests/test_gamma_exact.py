"""gamma_exact.score_lower, the exact lower bound of Gamma_F(exp iP) behind each cell's g_cell.

1. every table entry is an integer within 2 of 2^SCALE times the squared circular distance, computed independently in
   Arb at 256 bits (the three nearest multiples of 2 pi);
2. on random phases and on the Fourier matrix's, the bound is at most gamma_test's Arb upper bound at the best
   alignment, within 1e-9 of it, and never below gamma_test's float64 bound;
3. for one random P, all 14,400 alignments evaluated directly in Arb: the bound is below every one, and within 1e-9 of
   the least.
"""
import math
import numpy as np
import pytest
from flint import arb, ctx
from certifier import pinned

GT, GX = pinned.gamma_test, pinned.gamma_exact
RNG = np.random.default_rng(20261101)
CASES = [('random %d' % s, RNG.uniform(-3, 3, (6, 6))) for s in range(4)]
CASES.append(('Fourier matrix', np.array([[2 * math.pi * i * j / 6 for j in range(6)] for i in range(6)])))


def dist2(d):
    """dist(d, 2 pi Z)^2 in Arb, over the three nearest multiples of 2 pi."""
    tp = 2 * arb.pi(); n = round(float(d.mid()) / (2 * math.pi))
    return min((abs(d - m * tp) for m in (n - 1, n, n + 1)), key=lambda x: float(x.mid())) ** 2


def cost(P, a, b):
    """The exact squared cost of alignment (a, b), as an Arb ball."""
    p = [[arb(float(P[i][j])) for j in range(6)] for i in range(6)]
    return sum((dist2(p[i][j] + p[k][l] - p[i][l] - p[k][j] - arb.pi() / 3 * ((a[i] - a[k]) * (b[j] - b[l])))
                for i, k, j, l in GX.QUAD), arb(0))


def test_table_entries():
    ctx.prec = 256
    P = CASES[0][1]; T = GX.table(P)
    p = [[arb(float(P[i][j])) for j in range(6)] for i in range(6)]
    for (i, k, j, l), (x, y) in GX.ROW.items():
        for r in range(6):
            gap = dist2(p[i][j] + p[k][l] - p[i][l] - p[k][j] - r * arb.pi() / 3) * arb(2) ** GX.SCALE - int(T[x, y, r])
            assert gap >= 0 and gap < 2, (x, y, r, gap)


@pytest.mark.parametrize('name,P', CASES, ids=[c[0] for c in CASES])
def test_bound_between_float_and_arb(name, P):
    ctx.prec = 160
    g = GX.score_lower(P); a, b = GT.best_alignment(P)
    u = GT.score_upper([[arb(float(P[i][j])) for j in range(6)] for i in range(6)], a, b, arb)
    assert g <= u and u - g < 1e-9
    assert g >= GT.score_lower(P)


def test_all_alignments():
    ctx.prec = 160
    P = CASES[1][1]; g = GX.score_lower(P); least = math.inf
    for a in GX.LABELS:
        for b in GX.LABELS:
            c = cost(P, a, b)
            assert arb(g) * arb(g) * 225 <= c.lower()
            least = min(least, float(c.upper()))
    assert math.sqrt(least) / 15 - g < 1e-9
