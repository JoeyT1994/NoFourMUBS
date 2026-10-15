"""Exact-integer mirror of the Lean kernel bin checker (lean/NoFourMUBS/KernelAtlas/Bins.lean) and its data generator.

Everything here is exact (Python ints and Fractions); the integers it produces are the ones the Lean kernel recomputes
or checks, so the two must agree bit for bit.  Nothing here is trusted: every number exported to Lean is either
recomputed by the kernel (trig tables, tree nodes, thresholds) or only enters through a kernel-checked inequality.

Conventions (see Bins.lean):
  * p      precision: complex numbers are Gaussian integers at scale Z = 2^p;
  * EU[k]  = round(Z * exp(i * 2 pi~ k'/192)), k' = k (k <= 96) or k - 192, pi~ = 3.14159265358979323846;
  * EP[j][i] = round(Z * exp(-i P_ji)), P the Record centre in RADIANS (exact binary64 rationals);
  * node (coordinate m = 1..5, midpoint k in units 1/192) holds v_i = round(EU[k] EP[m][i] / Z), stored with offset
    BOFF = 2^(p+1) as natural numbers;
  * a bin's column sums are  acc = W0 + sum_m v_m,  W0_i = EP[0][i] + BOFF, so Sigma_i = acc_i - 6 BOFF.
"""
import math
from fractions import Fraction as Fr

PI_LO = Fr(314159265358979323846, 10 ** 20)        # Mathlib Real.pi_gt_d20
PI_HI = Fr(314159265358979323847, 10 ** 20)        # Mathlib Real.pi_lt_d20
PIT = PI_LO                                         # the rational pi used in the arguments
PIHI_Q = Fr(31415926535897932385, 10 ** 19)         # the upper bound used in the thresholds (ParQ.pihi)
NTAYLOR = 30


def taylor_cis(x, n=NTAYLOR):
    """(C, S) with sum_{m<n} (i x)^m / m! = C + i S, exact; same recursion as Trig.lean `taylorCS`."""
    tr, ti, sr, si = Fr(1), Fr(0), Fr(0), Fr(0)
    for m in range(n):
        sr, si = sr + tr, si + ti
        tr, ti = -ti * x / (m + 1), tr * x / (m + 1)
    return sr, si


def taylor_rem(x, n=NTAYLOR):
    """|x|^n / n! * 2 (Mathlib Complex.exp_bound', valid when |x|/(n+1) <= 1/2)."""
    return abs(x) ** n / math.factorial(n) * 2


def rnd(q, p):
    """floor(q * 2^p + 1/2) (round half up), as in Trig.lean `rnd`."""
    v = q * 2 ** p + Fr(1, 2)
    return v.numerator // v.denominator


def cis_round(x, p, n=NTAYLOR):
    c, s = taylor_cis(x, n)
    return rnd(c, p), rnd(s, p)


def eu_arg(k):
    kk = k if k <= 96 else k - 192
    return 2 * PIT * kk / 192


def eu_table(p):
    return [cis_round(eu_arg(k), p) for k in range(192)]


def ep_table(Prad, p):
    """Prad: 6x6 list of Fractions (radians).  EP[j][i] = round(Z exp(-i P_ji))."""
    return [[cis_round(-Prad[j][i], p) for i in range(6)] for j in range(6)]


def cmul(a, b):
    return a[0] * b[0] - a[1] * b[1], a[0] * b[1] + a[1] * b[0]


def rshift_round(x, p):
    """round(x / 2^p) = floor((x + 2^(p-1)) / 2^p)  (Python >> floors)."""
    return (x + (1 << (p - 1))) >> p


def node_vals(EU, EPm, k, p):
    """The six complex values of a node of coordinate m at midpoint k, offset by BOFF."""
    B = 1 << (p + 1)
    out = []
    for i in range(6):
        re, im = cmul(EU[k], EPm[i])
        out += [rshift_round(re, p) + B, rshift_round(im, p) + B]
    return out


def build_tree(EU, EPm, k, d, p):
    """Node at midpoint k with half-width 2^d (units 1/192); children at k -+ 2^(d-1)."""
    v = node_vals(EU, EPm, k, p)
    if d == 0:
        return (k, v, None, None)
    h = 1 << (d - 1)
    return (k, v, build_tree(EU, EPm, k - h, d - 1, p), build_tree(EU, EPm, k + h, d - 1, p))


def roots(EU, EP, p):
    """For coordinates m = 1..5: the 12 level-12 trees (midpoints k = 8(2b+1), half-width 8, depth 3)."""
    return [[build_tree(EU, EP[m], 8 * (2 * b + 1), 3, p) for b in range(12)] for m in range(1, 6)]


# ---------------------------------------------------------------- parameters and thresholds (mirror of `Params`)
S6LO, S6HI = Fr(2449489742, 10 ** 9), Fr(2449489743, 10 ** 9)          # s6lo^2 <= 6 <= s6hi^2
I6HI = Fr(408248291, 10 ** 9)                                          # (1/sqrt6) <= i6hi:  6 i6hi^2 >= 1
X29HI = Fr(2198484327, 10 ** 9)                                         # sqrt(29/6) <= x29hi


def check_consts():
    assert S6LO ** 2 <= 6 <= S6HI ** 2 and 6 * I6HI ** 2 >= 1 and 6 * X29HI ** 2 >= 29


def ceil_fr(q):
    return -((-q.numerator) // q.denominator)


def floor_fr(q):
    return q.numerator // q.denominator


def eps_tables(p, Prad):
    """Rigorous complex-norm errors of the tables: ||EU[k]/Z - e(k/192)|| <= epsU, ||EP[j][i]/Z - exp(-i P_ji)|| <= epsP.
    Taylor remainder + rounding (2^-p) [+ the pi approximation for EU: 2|k'|/192 |pi - pi~| <= pi_hi - pi_lo]."""
    epsU = max(taylor_rem(eu_arg(k)) for k in range(192)) + Fr(1, 2 ** p) + (PI_HI - PI_LO)
    epsP = max(taylor_rem(Prad[j][i]) for j in range(6) for i in range(6)) + Fr(1, 2 ** p)
    return epsU, epsP


def dyadic_up(q, bits=40):
    return Fr(ceil_fr(q * 2 ** bits), 2 ** bits)


class Params:
    """Per-Record rational parameters of the checker (mirror of Lean `Cfg` + `ParQ`).
    r, rF in CYCLES (upper bounds), K >= ||e(P)/sqrt6||_op."""

    def __init__(self, p, q, rbar, rFbar, Kbar, epsU, epsP):
        self.p, self.q = p, q
        self.rbar, self.rFbar, self.Kbar = rbar, rFbar, Kbar
        self.pihi = PIHI_Q
        self.epsU, self.epsP = epsU, epsP
        self.eps1 = dyadic_up(Fr(1, 2 ** p) + epsU * (1 + epsP) + epsP)   # one node: rounding + product error
        self.E = 6 * self.eps1                                             # Sigma_i error (six nodes)
        Z = self.Z = 2 ** p
        self.BOFF = 1 << (p + 1)
        self.C = 6 * self.BOFF
        self.SIX_Z2 = 6 * Z * Z
        self.S6Z = ceil_fr(S6HI * Z)
        self.Q2 = 2 ** q
        self.EQ = ceil_fr(self.E * self.Q2)
        self.thi, self.tlo, self.thr = [], [], []
        for d in range(4):                                            # depth d: half-width a = 2^d / 192
            a = Fr(2 ** d, 192)
            tau = 2 * self.pihi * (5 * a * I6HI + rbar)
            self.thi.append(ceil_fr(((S6HI * (1 + tau) + self.E) * Z) ** 2))
            lo = S6LO * (1 - tau) - self.E
            self.tlo.append(floor_fr((lo * Z) ** 2) if lo >= 0 else 0)
            F = 2 * self.pihi * (Kbar * (X29HI * a) + rFbar)
            self.thr.append(ceil_fr(6 * F * F * self.Q2 ** 2))


def newt(N, x):
    return (x + N // x) // 2 + 2


def dterm(par, N):
    U = newt(N, newt(N, par.S6Z))
    L = (par.Q2 * abs(N - par.SIX_Z2)) // (par.Z * (U + par.S6Z))
    return max(0, L - par.EQ)


def reject(par, d, acc):
    """Mirror of `rejectB`: per-column test, then the Frobenius test.  acc: 12 naturals (offset sums)."""
    C = par.C
    Ns = []
    for i in range(6):
        xr, xi = acc[2 * i] - C, acc[2 * i + 1] - C
        N = xr * xr + xi * xi
        if N > par.thi[d] or N < par.tlo[d]:
            return True
        Ns.append(N)
    tot = 0
    for N in Ns:
        D = dterm(par, N)
        tot += D * D
    return tot > par.thr[d]


def run(par, W0, R5, leaf_cb=None, stats=None):
    """Mirror of the traversal: returns True iff every bin is rejected or reaches depth 0 (where leaf_cb decides)."""
    stats = stats if stats is not None else {}

    def add(a, v):
        return [x + y for x, y in zip(a, v)]

    def binok(d, acc, ts):
        stats.setdefault(('tested', d), 0); stats[('tested', d)] += 1
        if reject(par, d, acc):
            stats.setdefault(('rejected', d), 0); stats[('rejected', d)] += 1
            return True
        if d == 0:
            stats.setdefault(('survivor', 0), 0); stats[('survivor', 0)] += 1
            return leaf_cb(acc, ts) if leaf_cb else True
        ok = True
        for c1 in (ts[0][2], ts[0][3]):
            a1 = add(W0, c1[1])
            for c2 in (ts[1][2], ts[1][3]):
                a2 = add(a1, c2[1])
                for c3 in (ts[2][2], ts[2][3]):
                    a3 = add(a2, c3[1])
                    for c4 in (ts[3][2], ts[3][3]):
                        a4 = add(a3, c4[1])
                        for c5 in (ts[4][2], ts[4][3]):
                            ok = binok(d - 1, add(a4, c5[1]), (c1, c2, c3, c4, c5)) and ok
        return ok

    ok = True
    for c1 in R5[0]:
        a1 = add(W0, c1[1])
        for c2 in R5[1]:
            a2 = add(a1, c2[1])
            for c3 in R5[2]:
                a3 = add(a2, c3[1])
                for c4 in R5[3]:
                    a4 = add(a3, c4[1])
                    for c5 in R5[4]:
                        ok = binok(3, add(a4, c5[1]), (c1, c2, c3, c4, c5)) and ok
    return ok, stats
