"""A lower bound of the labelled Fourier score Gamma_F(exp iP), by Arb and exact integer arithmetic.

  Gamma_F(exp iP) = (1/15) min_{a,b} || dist_{2pi}(RP - (pi/3) v(a,b)) ||_2,
  (RP)_(ik;jl) = P_ij + P_kl - P_il - P_kj (i<k, j<l),  v(a,b)_(ik;jl) = (a_i - a_k)(b_j - b_l),

over the 120 x 120 labellings a, b (gamma_test.py, from the TC_questions_3_4 return). Every v(a,b) is an integer, and
(pi/3) 6 = 2 pi, so modulo 2 pi each of the 225 entries of RP - (pi/3) v sees only one of six shifts (pi/3) r with
r = v mod 6. Each entry's squared circular distance at each shift is bounded below in Arb and rounded down to an
integer multiple of 2^-SCALE: 1,350 Arb evaluations. Each of the 14,400 alignments' costs is then an exact int64 sum of
225 of these integers, each at most its exact term, so the least such sum bounds the least exact cost from below. No
floating-point rounding enters the bound.
"""
import itertools
import numpy as np
from flint import arb

QUAD = [(i, k, j, l) for i in range(6) for k in range(i + 1, 6) for j in range(6) for l in range(j + 1, 6)]
LABELS = [(0,) + p for p in itertools.permutations(range(1, 6))]
SCALE = 48                       # 225 terms of at most pi^2 2^48 stay below 2^63
PAIRS = [(i, k) for i in range(6) for k in range(i + 1, 6)]
A = np.array([[a[i] - a[k] for i, k in PAIRS] for a in LABELS], dtype=np.int64) % 6     # 120 x 15, v mod 6 factors
ROW = {(i, k, j, l): (PAIRS.index((i, k)), PAIRS.index((j, l))) for i, k, j, l in QUAD}


def table(P):
    """T[x, y, r] <= 2^SCALE dist(RP_(x;y) - (pi/3) r, 2 pi Z)^2, an integer, for the exact binary64 phases P."""
    pi = arb.pi(); tp = 2 * pi
    p = [[arb(float(P[i][j])) for j in range(6)] for i in range(6)]
    T = np.zeros((15, 15, 6), dtype=np.int64)
    for (i, k, j, l), (x, y) in ROW.items():
        rp = p[i][j] + p[k][l] - p[i][l] - p[k][j]
        for r in range(6):
            d = rp - r * pi / 3
            n = int(round(float(d.mid()) / float(tp.mid())))
            e = abs(d - n * tp)                                    # |e| = distance to 2 pi n; dist = min(e, 2 pi - e)
            if not e < tp: raise ArithmeticError('a phase difference is not reduced below 2 pi')
            m = min(arb(e.lower()), arb((tp - e).lower()))
            if not m > 0: m = arb(0)
            v = (m * m * arb(2) ** SCALE).lower().floor()          # an exact integer <= the exact scaled term
            T[x, y, r] = int(v.unique_fmpz())
    return T


def score_lower(P):
    """An exact binary64 number <= Gamma_F(exp iP), for an exact binary64 6x6 phase array P."""
    T = table(P)
    xs, ys = np.arange(15)[:, None], np.arange(15)[None, :]
    best = None
    for a in A:
        c = T[xs, ys, (a[None, :, None] * A[:, None, :]) % 6].sum(axis=(1, 2), dtype=np.int64)   # every b at once
        m = int(c.min()); best = m if best is None else min(best, m)
    g = (arb(best) / arb(2) ** SCALE).sqrt() / 15
    return lo(g)


def lo(x):
    """An exact binary64 number <= every point of the Arb ball x."""
    import math
    v = float(x.lower())
    while arb(v) > x.lower(): v = math.nextafter(v, -math.inf)
    return v
