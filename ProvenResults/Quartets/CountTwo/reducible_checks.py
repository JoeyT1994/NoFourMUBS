#!/usr/bin/env python3
"""Independent exact / randomized checks for the reducible count-two residual chain.

Self-contained: uses only the Python standard library, sympy and numpy.  It reads
no archive file.  ``calculate()`` returns a JSON-serialisable dict and raises
``CheckFailure`` (never ``assert``) on any failed check.

Scope (see the report printed by ``__main__``):
  * exact sympy verification of the key symbolic identities of RBR / CF / CR /
    DP / Interior / Endpoint;
  * exact controls in the cyclotomic field Q(zeta_24) (own integer arithmetic,
    minimal polynomial x^8 - x^4 + 1): DP section-10 normal-form controls,
    CR section-7 nonbinary frame control, Interior section-8 edge control,
    an Endpoint Lemma 5.1 constant-line-sum control;
  * randomized numerical tests of DP Lemma 2.1, Interior Lemma 6.1,
    Endpoint Lemma 6.1 and Interior Lemma 4.1 (on its constructible orbit),
    plus several operator identities.

The finite exact controls are NOT flat tensors and NOT physical MUB triangles;
they only confirm algebra and normalisations.
"""
from __future__ import annotations

import itertools
import json
import math
import time
from fractions import Fraction

import numpy as np
import sympy as sp


class CheckFailure(Exception):
    pass


def require(cond, msg):
    if not cond:
        raise CheckFailure(msg)


# ---------------------------------------------------------------------------
# Exact arithmetic in Q(zeta_24).  Element = (tuple of 8 ints, positive den).
# zeta^8 = zeta^4 - 1.
# ---------------------------------------------------------------------------
_N = 24
_DEG = 8


def _reduce_poly(p):
    p = list(p)
    for d in range(len(p) - 1, _DEG - 1, -1):
        c = p[d]
        if c:
            p[d - 4] += c
            p[d - 8] -= c
            p[d] = 0
    p = p[:_DEG] + [0] * max(0, _DEG - len(p))
    return p


class Q24:
    __slots__ = ("c", "d")

    def __init__(self, coeffs, den=1):
        coeffs = list(coeffs)
        if den < 0:
            den = -den
            coeffs = [-x for x in coeffs]
        g = den
        for x in coeffs:
            if x:
                g = math.gcd(g, x)
                if g == 1:
                    break
        if g > 1:
            coeffs = [x // g for x in coeffs]
            den //= g
        if not any(coeffs):
            den = 1
        self.c = tuple(coeffs)
        self.d = den

    # constructors
    @staticmethod
    def rat(x):
        x = Fraction(x)
        return Q24([x.numerator] + [0] * 7, x.denominator)

    @staticmethod
    def zeta_pow(m):
        return _ZPOW[m % _N]

    # arithmetic
    def __add__(self, o):
        if not isinstance(o, Q24):
            o = Q24.rat(o)
        d = self.d * o.d
        return Q24([a * o.d + b * self.d for a, b in zip(self.c, o.c)], d)

    __radd__ = __add__

    def __neg__(self):
        return Q24([-a for a in self.c], self.d)

    def __sub__(self, o):
        if not isinstance(o, Q24):
            o = Q24.rat(o)
        return self + (-o)

    def __rsub__(self, o):
        return Q24.rat(o) - self

    def __mul__(self, o):
        if not isinstance(o, Q24):
            o = Q24.rat(o)
        a, b = self.c, o.c
        p = [0] * 15
        for i, x in enumerate(a):
            if x:
                for j, y in enumerate(b):
                    if y:
                        p[i + j] += x * y
        return Q24(_reduce_poly(p), self.d * o.d)

    __rmul__ = __mul__

    def is_zero(self):
        return not any(self.c)

    def __eq__(self, o):
        if not isinstance(o, Q24):
            o = Q24.rat(o)
        return self.c == o.c and self.d == o.d

    def __hash__(self):
        return hash((self.c, self.d))

    def galois(self, k):
        p = [0] * _DEG
        for j, x in enumerate(self.c):
            if x:
                zp = _ZPOW_INT[(j * k) % _N]
                for t in range(_DEG):
                    p[t] += x * zp[t]
        return Q24(p, self.d)

    def conj(self):
        return self.galois(_N - 1)

    def inv(self):
        require(not self.is_zero(), "Q24: inverse of zero")
        prod = Q24.rat(1)
        for k in (5, 7, 11, 13, 17, 19, 23):
            prod = prod * self.galois(k)
        nrm = self * prod
        require(not any(nrm.c[1:]), "Q24: norm not rational")
        return prod * Q24.rat(Fraction(nrm.d, nrm.c[0]))

    def __truediv__(self, o):
        if not isinstance(o, Q24):
            o = Q24.rat(o)
        return self * o.inv()

    def to_complex(self):
        z = complex(math.cos(2 * math.pi / _N), math.sin(2 * math.pi / _N))
        return sum(x * z ** j for j, x in enumerate(self.c)) / self.d

    def is_rational(self):
        return not any(self.c[1:])

    def __repr__(self):
        return "Q24(%s/%d)" % (self.c, self.d)


_ZPOW_INT = []
for _m in range(_N):
    _p = [0] * (_m + 1)
    _p[_m] = 1
    _ZPOW_INT.append(_reduce_poly(_p))
_ZPOW = [Q24(v) for v in _ZPOW_INT]

ZERO = Q24.rat(0)
ONE = Q24.rat(1)
I_ = Q24.zeta_pow(6)                 # i
OMEGA = Q24.zeta_pow(8)              # exp(2 pi i/3)
Z6 = Q24.zeta_pow(4)                 # exp(i pi/3): z^2 - z + 1 = 0
SQRT2 = Q24.zeta_pow(3) + Q24.zeta_pow(21)
SQRT3 = Q24.zeta_pow(2) + Q24.zeta_pow(22)


def _field_selftest():
    require(Z6 * Z6 - Z6 + 1 == ZERO, "z^2-z+1 != 0")
    require(I_ * I_ == Q24.rat(-1), "i^2 != -1")
    require(SQRT2 * SQRT2 == Q24.rat(2), "sqrt2^2 != 2")
    require(SQRT3 * SQRT3 == Q24.rat(3), "sqrt3^2 != 3")
    require(OMEGA * OMEGA + OMEGA + 1 == ZERO, "omega relation")
    require(abs(SQRT2.to_complex() - math.sqrt(2)) < 1e-12, "sqrt2 embedding")
    require(abs(SQRT3.to_complex() - math.sqrt(3)) < 1e-12, "sqrt3 embedding")
    require(abs(Z6.to_complex() - complex(0.5, math.sqrt(3) / 2)) < 1e-12, "z embedding")
    a = Q24([3, -1, 4, 1, -5, 9, 2, -6], 7)
    require(a * a.inv() == ONE, "inverse")
    require(abs(a.conj().to_complex() - a.to_complex().conjugate()) < 1e-12, "conj")


# ---------------------------------------------------------------------------
# Exact matrices over Q24 (lists of lists)
# ---------------------------------------------------------------------------
def mzeros(n, m):
    return [[ZERO] * m for _ in range(n)]


def meye(n):
    M = mzeros(n, n)
    for i in range(n):
        M[i][i] = ONE
    return M


def mmul(A, B):
    n, k, m = len(A), len(B), len(B[0])
    out = mzeros(n, m)
    for i in range(n):
        Ai = A[i]
        row = out[i]
        for t in range(k):
            a = Ai[t]
            if a.is_zero():
                continue
            Bt = B[t]
            for j in range(m):
                b = Bt[j]
                if not b.is_zero():
                    row[j] = row[j] + a * b
    return out


def madj(A):
    return [[A[i][j].conj() for i in range(len(A))] for j in range(len(A[0]))]


def mT(A):
    return [[A[i][j] for i in range(len(A))] for j in range(len(A[0]))]


def mconj(A):
    return [[x.conj() for x in r] for r in A]


def madd(A, B, s=ONE):
    return [[a + s * b for a, b in zip(ra, rb)] for ra, rb in zip(A, B)]


def mscale(A, s):
    return [[s * a for a in r] for r in A]


def meq(A, B):
    return all(a == b for ra, rb in zip(A, B) for a, b in zip(ra, rb))


def mis_scalar(A, s):
    n = len(A)
    for i in range(n):
        for j in range(len(A[0])):
            if A[i][j] != (s if i == j else ZERO):
                return False
    return True


def rank_and_rref(rows):
    """Row-reduce a list of row vectors; return (rank, pivot rows)."""
    piv = []   # list of (col, row) with row[col] == 1, fully reduced among themselves not needed
    for r in rows:
        r = list(r)
        for col, pr in piv:
            f = r[col]
            if not f.is_zero():
                r = [a - f * b for a, b in zip(r, pr)]
        lead = next((j for j, a in enumerate(r) if not a.is_zero()), None)
        if lead is None:
            continue
        inv = r[lead].inv()
        r = [a * inv for a in r]
        # keep previous pivots reduced w.r.t. the new one (not needed for rank)
        piv.append((lead, r))
    return len(piv), piv


def mrank(A):
    return rank_and_rref(A)[0]


def nullspace(A, ncols):
    """Exact null space basis of the linear system A x = 0 (rows of A)."""
    _, piv = rank_and_rref(A)
    # full back-reduction
    piv.sort(key=lambda t: t[0])
    red = []
    for col, r in piv:
        red.append([col, r])
    for i in range(len(red)):
        ci, ri = red[i]
        for j in range(len(red)):
            if j != i:
                f = red[j][1][ci]
                if not f.is_zero():
                    red[j][1] = [a - f * b for a, b in zip(red[j][1], ri)]
    pivcols = {c for c, _ in red}
    basis = []
    for free in range(ncols):
        if free in pivcols:
            continue
        v = [ZERO] * ncols
        v[free] = ONE
        for c, r in red:
            v[c] = -r[free]
        basis.append(v)
    return basis


def mdet(A):
    A = [list(r) for r in A]
    n = len(A)
    det = ONE
    for c in range(n):
        p = next((r for r in range(c, n) if not A[r][c].is_zero()), None)
        if p is None:
            return ZERO
        if p != c:
            A[c], A[p] = A[p], A[c]
            det = -det
        det = det * A[c][c]
        inv = A[c][c].inv()
        for r in range(c + 1, n):
            f = A[r][c] * inv
            if not f.is_zero():
                A[r] = [a - f * b for a, b in zip(A[r], A[c])]
    return det


def to_np(A):
    return np.array([[x.to_complex() for x in r] for r in A])


# ---------------------------------------------------------------------------
# Section A: exact DP section-10 normal-form controls
# ---------------------------------------------------------------------------
def _dp_frame():
    """Phase columns 1, z^j, z^2j, z^3j, z^4j, -z^5j (unnormalised)."""
    cols = []
    for m in range(6):
        col = [Q24.zeta_pow(4 * m * j) for j in range(6)]
        if m == 5:
            col = [-x for x in col]
        cols.append(col)
    return cols


def _pow(x, e):
    r = ONE
    for _ in range(e):
        r = r * x
    return r


def dp_controls():
    out = {}
    cols = _dp_frame()
    f0, f1 = cols[0], cols[1]
    # residual assignment (x_ac = columns 2..5 in order 00,01,10,11), identical in all modes
    res = {(0, 0): cols[2], (0, 1): cols[3], (1, 0): cols[4], (1, 1): cols[5]}
    # frame is orthogonal Hadamard (squared norms 6)
    for a in range(6):
        for b in range(6):
            ip = sum((cols[a][j].conj() * cols[b][j] for j in range(6)), ZERO)
            require(ip == (Q24.rat(6) if a == b else ZERO), "DP frame not orthogonal")
    # pointwise rectangles x00 x11 = - x01 x10
    for j in range(6):
        require(res[0, 0][j] * res[1, 1][j] == -(res[0, 1][j] * res[1, 0][j]), "rectangle")

    cases = [("interior_4/5_3/5", Q24.rat(Fraction(4, 5)), Q24.rat(Fraction(3, 5)), False),
             ("endpoint_1/sqrt2", SQRT2 * Q24.rat(Fraction(1, 2)), SQRT2 * Q24.rat(Fraction(1, 2)), True)]
    for name, al, be, endpoint in cases:
        w = {0: al, 1: be}
        # --- route 1: eight support terms
        t = {}
        for k, i, j in itertools.product(range(6), repeat=3):
            s6 = ONE + f1[k] * f1[i] * f1[j]
            for s, a, c in itertools.product((0, 1), repeat=3):
                s6 = s6 + w[(s + a + c) % 2] * res[a, c][k] * res[s, a][i] * res[s, c][j]
            t[k, i, j] = s6 * Q24.rat(Fraction(1, 6))
        # --- route 2: independent closed cubic 6t = 1+z^(k+i+j)+z^(2(k+i+j)){...}
        for k, i, j in itertools.product(range(6), repeat=3):
            X = Q24.zeta_pow(4 * (2 * k + i))
            Y = Q24.zeta_pow(4 * (k + j))
            Z = Q24.zeta_pow(4 * (2 * i + 2 * j))
            br = al * (ONE - X * Y - X * Z - Y * Z) + be * (X + Y + Z - X * Y * Z)
            six_t = ONE + Q24.zeta_pow(4 * (k + i + j)) + Q24.zeta_pow(8 * (k + i + j)) * br
            require(six_t == t[k, i, j] * 6, "DP closed cubic disagrees (%s)" % name)
        # |t_000|^2
        t000sq = t[0, 0, 0] * t[0, 0, 0].conj()
        expect = Q24.rat(Fraction(16, 225)) if not endpoint else Q24.rat(Fraction(1, 9))
        require(t000sq == expect, "|t000|^2 mismatch %s" % name)

        # --- 18 slice unitarities
        def slice_(d, x):
            if d == 0:
                return [[t[x, i, j] for j in range(6)] for i in range(6)]
            if d == 1:
                return [[t[k, x, j] for j in range(6)] for k in range(6)]
            return [[t[k, i, x] for i in range(6)] for k in range(6)]
        nunit = 0
        for d in range(3):
            for x in range(6):
                S = slice_(d, x)
                require(mis_scalar(mmul(S, madj(S)), ONE), "slice %d,%d not unitary (%s)" % (d, x, name))
                nunit += 1

        # residual bases per mode (phase vectors, unnormalised); keys for block structure
        # direction d: slices map conj(mode_in) -> mode_out
        # mode vectors: A-mode x_ac, B-mode y_sa, C-mode h_sc (all = res[...] numerically)
        Xres = [res[0, 0], res[0, 1], res[1, 0], res[1, 1]]  # generic ordered residual basis

        def colsmat(vs):
            return [[vs[c][r] for c in range(len(vs))] for r in range(6)]
        Rm = colsmat(Xres)

        comm_dims = []
        gammas = []
        for d in range(3):
            Us = []
            for x in range(6):
                S = slice_(d, x)
                Us.append(mmul(mmul(madj(Rm), S), mconj(Rm)))
            # generators U_1^* U_l and adjoints
            gens = []
            for l in range(1, 6):
                g = mmul(madj(Us[0]), Us[l])
                gens.append(g)
                gens.append(madj(g))
            rows = []
            n = 4
            for g in gens:
                for p in range(n):
                    for q in range(n):
                        # (X g - g X)_{pq} = sum_r X_pr g_rq - g_pr X_rq
                        row = [ZERO] * (n * n)
                        for r in range(n):
                            row[p * n + r] = row[p * n + r] + g[r][q]
                            row[r * n + q] = row[r * n + q] - g[p][r]
                        rows.append(row)
            rk = mrank(rows)
            comm_dims.append(n * n - rk)

            # mixed Gram in witness-aligned blocks: block s (s = 0,1) of the slice.
            # direction d: output mode index 'first' of pair, blocks labelled by the index
            # shared by output and input mode vectors.
            # A-direction: outputs y_{sa} (B), inputs h_{sc} (C): shared s; entries (a,c)
            # B-direction: outputs x_{ac} (A), inputs h_{sc} (C): shared c; entries (a,s)
            # C-direction: outputs x_{ac} (A), inputs y_{sa} (B): shared a; entries (c,s)
            def outvec(blk, r):
                if d == 0:
                    return res[blk, r]
                if d == 1:
                    return res[r, blk]
                return res[blk, r]  # x_{a c}: a = blk, c = r

            def invec(blk, r):
                if d == 0:
                    return res[blk, r]          # h_{s c}
                if d == 1:
                    return res[r, blk]          # h_{s c}: c = blk, s = r
                return res[r, blk]              # y_{s a}: a = blk, s = r
            Fblk = []
            for blk in (0, 1):
                F = [[None] * 6 for _ in range(4)]
                for x in range(6):
                    S = slice_(d, x)
                    for r1 in (0, 1):
                        for r2 in (0, 1):
                            ov = outvec(blk, r1)
                            iv = invec(blk, r2)
                            # <ov/sqrt6, S conj(iv)/sqrt6>
                            val = ZERO
                            for p in range(6):
                                acc = ZERO
                                for q in range(6):
                                    acc = acc + S[p][q] * iv[q].conj()
                                val = val + ov[p].conj() * acc
                            F[2 * r1 + r2][x] = val * Q24.rat(Fraction(1, 6))
                Fblk.append(F)
            Fp, Fm = Fblk
            M = mmul(Fp, madj(Fm))
            gam = M[0][0]
            require(mis_scalar(M, gam), "F+F-^* not scalar (%s dir %d)" % (name, d))
            require(gam == 6 * al * be, "gamma != 6 alpha beta (%s dir %d)" % (name, d))
            gammas.append(gam)
            G = mmul(Fp, madj(Fp))
            g2 = gam * gam.conj()
            # G^2 - 6G + |gamma|^2 I = 0, tr G = 12
            Q = madd(madd(mmul(G, G), G, Q24.rat(-6)), mscale(meye(4), g2))
            require(mis_scalar(Q, ZERO), "Gram quadratic fails (%s dir %d)" % (name, d))
            require(sum((G[r][r] for r in range(4)), ZERO) == Q24.rat(12), "tr G != 12")
            # partial traces of G (index = 2*r1 + r2): tr_1 and tr_2 = 6 I2
            for pa in range(2):
                for pb in range(2):
                    t1 = G[pa][pb] + G[2 + pa][2 + pb]           # trace over first index
                    t2 = G[2 * pa][2 * pb] + G[2 * pa + 1][2 * pb + 1]
                    require(t1 == (Q24.rat(6) if pa == pb else ZERO), "tr_1 G")
                    require(t2 == (Q24.rat(6) if pa == pb else ZERO), "tr_2 G")
            # F^*F = 6 Pi, Pi rank-4 projection
            Fst = Fp + Fm
            FF = mmul(madj(Fst), Fst)
            require(meq(mmul(FF, FF), mscale(FF, Q24.rat(6))), "F^*F/6 not a projection")
            require(mrank(FF) == 4, "rank Pi != 4")
            if not endpoint:
                # (3.3): G = 6 diag(a^2,b^2,b^2,a^2) and (3.4) F- = conj(g) G^{-1} F+
                dg = [al * al, be * be, be * be, al * al]
                for r in range(4):
                    for c in range(4):
                        require(G[r][c] == (6 * dg[r] if r == c else ZERO), "DP (3.3) G diag")
                for r in range(4):
                    for x in range(6):
                        require(Fm[r][x] == gam.conj() * Fp[r][x] / (6 * dg[r]), "DP (3.4)")
            else:
                require(mis_scalar(G, Q24.rat(3)), "endpoint G != 3I")
                require(meq(Fp, Fm), "endpoint F+ != F-")

        expect_dims = [4, 4, 4] if endpoint else [2, 2, 2]
        require(comm_dims == expect_dims, "commutant dims %s != %s (%s)" % (comm_dims, expect_dims, name))

        # --- determinant cube identities det(T_l^* T_k) = (m_k/m_l)^3, m_k = z^k
        ndet = 0
        for d in range(3):
            dets = [mdet(slice_(d, x)) for x in range(6)]
            for k, l in itertools.combinations(range(6), 2):
                lhs = dets[l].conj() * dets[k]
                rhs = Q24.zeta_pow(4 * 3 * (k - l))
                require(lhs == rhs, "det-cube fails (%s dir %d, %d,%d)" % (name, d, k, l))
                ndet += 1

        # --- common alternating form: G_k J G_k^T = delta_k J, G_k = T_0^* T_k
        nform = 0
        form_dims = []
        for d in range(3):
            T0 = slice_(d, 0)
            pairs = [(p, q) for p in range(6) for q in range(p + 1, 6)]
            rows = []
            Gs = []
            for x in range(1, 6):
                Gk = mmul(madj(T0), slice_(d, x))
                Gs.append((x, Gk))
                dk = Q24.zeta_pow(4 * x)  # m_k/m_0
                # (G J G^T)_{pq} - dk J_pq, J = sum_{(u<v)} J_uv (E_uv - E_vu)
                for (p, q) in pairs:
                    row = []
                    for (u, v) in pairs:
                        coef = Gk[p][u] * Gk[q][v] - Gk[p][v] * Gk[q][u]
                        if (u, v) == (p, q):
                            coef = coef - dk
                        row.append(coef)
                    rows.append(row)
            require(len(rows) == 75, "alternating system size")
            ns = nullspace(rows, 15)
            form_dims.append(len(ns))
            require(len(ns) >= 1, "no common alternating form (%s dir %d)" % (name, d))
            # predicted unitary form J_in = conj(F_in) (eps+eps+eps) F_in^*, built from the
            # input-mode frame of this direction, paired as in DP section 9
            def inv_d(blk, r):
                if d == 0:
                    return res[blk, r]      # h_{s c}, block s
                if d == 1:
                    return res[r, blk]      # h_{s c}, block c
                return res[r, blk]          # y_{s a}, block a
            epairs = [(f0, f1), (inv_d(0, 0), inv_d(0, 1)), (inv_d(1, 0), inv_d(1, 1))]
            J = mzeros(6, 6)
            for (pv, qv) in epairs:
                for u in range(6):
                    for vv in range(6):
                        J[u][vv] = J[u][vv] + pv[u].conj() * qv[vv].conj() - qv[u].conj() * pv[vv].conj()
            vecJ = [J[u][vv] for (u, vv) in pairs]
            for row in rows:
                require(sum((a * b for a, b in zip(row, vecJ)), ZERO).is_zero(),
                        "predicted form violates alternating system (%s dir %d)" % (name, d))
            JJ = mmul(J, madj(J))
            require(mis_scalar(JJ, JJ[0][0]) and not JJ[0][0].is_zero(), "predicted form not conformal unitary")
            Jout = mmul(mmul(T0, J), mT(T0))
            JoJ = mmul(Jout, madj(Jout))
            require(mis_scalar(JoJ, JoJ[0][0]), "J_out not conformal unitary")
            for x in range(6):
                Tk = slice_(d, x)
                lhs = mmul(mmul(Tk, J), mT(Tk))
                require(meq(lhs, mscale(Jout, Q24.zeta_pow(4 * x))), "T_k J T_k^T != m_k J_out")
                nform += 1

        # --- (8.2)/(8.3): d_j = 3 det M_j = 6 kappa f0 f1 with constant kappa; M M^* = I/3
        kappas = []
        for j in range(6):
            Mj = [[res[0, 0][j], res[0, 1][j]], [res[1, 0][j], res[1, 1][j]]]
            # u = x/sqrt6: 3 det M_u = det(Mx)/2 ; 6 kappa f0 f1 = kappa z^j
            dj = (Mj[0][0] * Mj[1][1] - Mj[0][1] * Mj[1][0]) * Q24.rat(Fraction(1, 2))
            kappas.append(dj / f1[j])
            MM = mmul(Mj, madj(Mj))
            require(mis_scalar(MM, Q24.rat(2)), "M M^* != I/3")
        require(all(k == kappas[0] for k in kappas), "kappa not constant")
        kappa = kappas[0]
        # cofactor: C u00 = u11, C u01 = -u10 with C = D(d) conj, d_j = kappa z^j
        for j in range(6):
            dj = kappa * f1[j]
            require(dj * res[0, 0][j].conj() == res[1, 1][j], "cofactor 00")
            require(dj * res[1, 1][j].conj() == res[0, 0][j], "cofactor 11")
            require(dj * res[0, 1][j].conj() == -res[1, 0][j], "cofactor 01")
            require(dj * res[1, 0][j].conj() == -res[0, 1][j], "cofactor 10")
            # C f0 = kappa f1 (phase units)
            require(dj * f0[j].conj() == kappa * f1[j], "C f0 = kappa f1")
        Omega = kappa * kappa * kappa

        # --- Endpoint (3.2) on the endpoint control; Endpoint (8.1) on the interior control
        n32 = n81 = 0
        if endpoint:
            for k, i, j in itertools.product(range(6), repeat=3):
                Qv = f1[k] * f1[i] * f1[j]
                lhs = t[k, i, j] - Omega * Qv * t[k, i, j].conj()
                rhs = (ONE - Omega) * (ONE + Qv) * Q24.rat(Fraction(1, 6))
                require(lhs == rhs, "Endpoint (3.2) fails on endpoint control")
                n32 += 1
        else:
            dd = al * al - be * be
            for i, j in itertools.product(range(6), repeat=2):
                lhs = ZERO
                for k in range(6):
                    lhs = lhs + t[k, i, j] * t[k, i, j] * 6 / (f1[k] * f1[i] * f1[j])
                rB = -res[0, 0][i] / res[1, 0][i]
                rC = -res[0, 0][j] / res[1, 0][j]
                rr = rB * rC
                rhs = 2 + 8 * al * be * Omega + 2 * dd * Omega * (rr - rr.inv())
                require(lhs == rhs, "Endpoint (8.1) fails at (%d,%d)" % (i, j))
                n81 += 1
            # equal-weight invariance must fail for unequal weights
            Qv = f1[0] * f1[0] * f1[0]
            lhs = t[0, 0, 0] - Omega * Qv * t[0, 0, 0].conj()
            rhs = (ONE - Omega) * (ONE + Qv) * Q24.rat(Fraction(1, 6))
            require(lhs != rhs, "(3.2) unexpectedly holds for unequal weights")

        # --- RBR Theorem 2.1 on the control: block projection P (block 0) in dir A:
        #     U_k P U_k^* independent of k; lifted diagonals 1/3.
        # lifted input projection onto span(conj h_00, conj h_01)/sqrt6 : diag = 1/3 by flat frame
        for blk in (0, 1):
            vecs = [res[blk, 0], res[blk, 1]]
            for p in range(6):
                dia = sum((v[p] * v[p].conj() for v in vecs), ZERO) * Q24.rat(Fraction(1, 6))
                require(dia == Q24.rat(Fraction(1, 3)), "lifted projection diagonal != 1/3")
        Us = [mmul(mmul(madj(Rm), slice_(0, x)), mconj(Rm)) for x in range(6)]
        Pb = [[ONE if (r == c and r < 2) else ZERO for c in range(4)] for r in range(4)]
        Qs = [mmul(mmul(Us[x], Pb), madj(Us[x])) for x in range(6)]
        require(all(meq(Qs[0], Qx) for Qx in Qs), "U_k P U_k^* depends on k")

        out[name] = {
            "slice_unitarities": nunit,
            "residual_commutant_dims": comm_dims,
            "gamma": [str(g.to_complex().real) for g in gammas],
            "gamma_equals_6_alpha_beta": True,
            "det_cube_identities": ndet,
            "alternating_nullspace_dims": form_dims,
            "common_form_slice_relations": nform,
            "kappa": str(kappa.to_complex()),
            "Omega": str(Omega.to_complex()),
            "endpoint_3_2_entries": n32,
            "endpoint_8_1_identities": n81,
            "t000_sq": str(Fraction(t000sq.c[0], t000sq.d)),
        }
    return out



# ---------------------------------------------------------------------------
# Section B: exact symbolic identities (sympy)
# ---------------------------------------------------------------------------
def _sz(expr):
    return sp.simplify(sp.expand(expr)) == 0


def symbolic_identities():
    out = {}
    # --- RBR section 4: decompositions n = sum d_nu m_nu with all d_nu >= 2
    def decomps(n):
        res = set()
        pairs = [(d, m) for d in range(2, n + 1) for m in range(1, n + 1) if d * m <= n]

        def rec(rem, start, acc):
            if rem == 0:
                res.add(tuple(sorted(acc)))
                return
            for idx in range(start, len(pairs)):
                d, m = pairs[idx]
                if d * m <= rem:
                    rec(rem - d * m, idx, acc + [(d, m)])
        rec(n, 0, [])
        return sorted(res)
    d4, d5 = decomps(4), decomps(5)
    require(d4 == sorted([((4, 1),), ((2, 2),), ((2, 1), (2, 1))]), "RBR Thm 4.2 list %s" % d4)
    require(d5 == sorted([((5, 1),), ((2, 1), (3, 1))]), "RBR Thm 4.1 list %s" % d5)
    out["RBR_algebra_types"] = {"n=4": [str(x) for x in d4], "n=5": [str(x) for x in d5]}

    # --- CR Lemma 3.1, identity (3.3)
    s, t, u = sp.symbols("s t u", positive=True)
    v = s**2 * u / (t**2 + (s**2 - t**2) * u)
    require(_sz(s**2 * u * (1 - v) - t**2 * (1 - u) * v), "CR (3.3) root")
    require(_sz(v - u - (s**2 - t**2) * u * (1 - u) / (t**2 + (s**2 - t**2) * u)), "CR (3.3) difference")
    # the root is the unique solution (equation linear in v)
    vv = sp.symbols("vv")
    sol = sp.solve(sp.Eq(s**2 * u * (1 - vv), t**2 * (1 - u) * vv), vv)
    require(len(sol) == 1 and _sz(sol[0] - v), "CR (3.3) uniqueness")
    # zero-diagonal -> modulus equation: |a1|^2=u/3,|a2|^2=(1-u)/3,|b1|^2=(1-v)/3,|b2|^2=v/3
    require(_sz(s**2 * (u / 3) * ((1 - vv) / 3) - t**2 * ((1 - u) / 3) * (vv / 3)
                - (s**2 * u * (1 - vv) - t**2 * (1 - u) * vv) / 9), "CR (3.3) modulus form")
    out["CR_3_3"] = True

    # --- CR Cor 3.2 / (3.5): Delta = 2 tr((Z*Z)^2) - (tr Z*Z)^2 = (s^2-t^2)^2
    xs = sp.symbols("x0:8", real=True)
    Z = sp.Matrix([[xs[0] + sp.I * xs[1], xs[2] + sp.I * xs[3]],
                   [xs[4] + sp.I * xs[5], xs[6] + sp.I * xs[7]]])
    H = Z.H * Z
    Delta = 2 * (H * H).trace() - H.trace()**2
    disc = H.trace()**2 - 4 * H.det()          # = (lambda1-lambda2)^2 = (s^2-t^2)^2
    require(_sz(Delta - disc), "CR (3.5) generic 2x2")
    require(_sz((2 * (s**4 + t**4) - (s**2 + t**2)**2) - (s**2 - t**2)**2), "CR (3.5) singular values")
    out["CR_3_5_Delta"] = True

    # --- CR Cor 6A.2: lambda + g^2/lambda = 6, tr = 12 -> eigenvalues 3 +- d, each twice
    lam, g = sp.symbols("lam g", positive=True)
    roots = sp.solve(sp.Eq(lam**2 - 6 * lam + g**2, 0), lam)
    require(set(sp.simplify(r) for r in roots) == {3 - sp.sqrt(9 - g**2), 3 + sp.sqrt(9 - g**2)}, "6A.2 roots")
    nn, dd = sp.symbols("n d", positive=True)
    soln = sp.solve(sp.Eq(nn * (3 + dd) + (4 - nn) * (3 - dd), 12), nn)
    require(soln == [2], "6A.2 multiplicities")
    # matrix form: Y = conj(gam) X^{-*}  =>  Y^*Y = |gam|^2 (X^*X)^{-1}   (numeric generic check below)
    out["CR_6A_2"] = True

    # --- DP Lemma 2.1, identity (2.2)
    sx = sp.Matrix([[0, 1], [1, 0]]); sy = sp.Matrix([[0, -sp.I], [sp.I, 0]]); szm = sp.Matrix([[1, 0], [0, -1]])
    kp = sp.kronecker_product
    t1, t2, t3 = sp.symbols("t1 t2 t3", real=True)
    XX, YY, ZZ = kp(sx, sx), kp(sy, sy), kp(szm, szm)
    S = t1 * XX + t2 * YY + t3 * ZZ
    rhs = (t1**2 + t2**2 + t3**2) * sp.eye(4) - 2 * (t2 * t3 * XX + t1 * t3 * YY + t1 * t2 * ZZ)
    require((S * S - rhs).expand() == sp.zeros(4, 4), "DP (2.2)")
    Mind = sp.Matrix([list(m.reshape(1, 16)) for m in (sp.eye(4), XX, YY, ZZ)])
    require(Mind.rank() == 4, "DP 2.1 independence")
    # partial traces of sigma_i x sigma_j vanish; Pauli basis orthogonal
    paulis = [sp.eye(2), sx, sy, szm]
    for a_ in range(4):
        for b_ in range(4):
            Pab = kp(paulis[a_], paulis[b_])
            if a_ > 0 and b_ > 0:
                # tr_1 and tr_2 zero
                T1 = Pab[0:2, 0:2] + Pab[2:4, 2:4]
                T2 = sp.Matrix(2, 2, lambda p_, q_: Pab[2 * p_, 2 * q_] + Pab[2 * p_ + 1, 2 * q_ + 1])
                require(T1 == sp.zeros(2, 2) and T2 == sp.zeros(2, 2), "Pauli partial traces")
    # the only real solutions of (2.2)=I: exactly one |t_i|=1 (solve polynomial system)
    solset = sp.solve([t1**2 + t2**2 + t3**2 - 1, t2 * t3, t1 * t3, t1 * t2], [t1, t2, t3], dict=True)
    require(len(solset) == 6 and all(sorted(abs(sd[k_]) for k_ in (t1, t2, t3)) == [0, 0, 1] for sd in solset),
            "DP 2.1 solution set")
    out["DP_2_2_pauli_square"] = True

    # --- DP (3.1)-(3.4)
    al, be = sp.symbols("alpha beta", positive=True)
    subsn = {be: sp.sqrt(1 - al**2)}
    gg = 6 * al * be
    dpar = sp.sqrt(9 - gg**2)
    # with alpha > beta: d = 3(alpha^2 - beta^2)
    require(_sz((dpar**2 - (3 * (al**2 - be**2))**2).subs(subsn)), "DP d formula")
    require(_sz(((3 + 3 * (al**2 - be**2)) / 6 - al**2).subs(subsn)), "DP alpha^2=(3+d)/6")
    require(_sz(((3 - 3 * (al**2 - be**2)) / 6 - be**2).subs(subsn)), "DP beta^2=(3-d)/6")
    Gd = 6 * sp.diag(al**2, be**2, be**2, al**2)
    dsym = 3 * (al**2 - be**2)
    Sg = ((Gd - 3 * sp.eye(4)) / dsym).subs(subsn).applyfunc(sp.simplify)
    require(Sg == ZZ, "DP (3.3) S = sz x sz")
    require(((Gd * Gd - 6 * Gd + gg**2 * sp.eye(4)).subs(subsn)).applyfunc(sp.simplify) == sp.zeros(4, 4),
            "DP (3.1) quadratic on (3.3)")
    ratio = (gg * Gd.inv()).applyfunc(sp.simplify)
    require(ratio == sp.diag(be / al, al / be, al / be, be / al), "DP (3.4) ratios")
    out["DP_3_1_to_3_4"] = True

    # --- DP Lemma 4.1: x = alpha^2
    x = sp.symbols("x")
    solx = sp.solve(sp.Eq((be**2 / al**2) * x + (al**2 / be**2) * (1 - x), 1).subs(subsn), x)
    require(len(solx) == 1 and _sz(solx[0] - al**2), "DP Lemma 4.1 x=alpha^2")
    # B_k first row norm with x = alpha^2 and unitarity of B_k: rows (beta h00, alpha h01)
    out["DP_4_1"] = True

    # --- DP (5.1)-(5.2): |v00|^2 = |v01|^2 = 1/6
    X1, X2 = sp.symbols("X1 X2")
    sol5 = sp.solve([6 * (al**2 * X1 + be**2 * X2) - 1, 6 * (be**2 * X1 + al**2 * X2) - 1], [X1, X2], dict=True)
    require(len(sol5) == 1 and _sz((sol5[0][X1] - sp.Rational(1, 6)).subs(subsn))
            and _sz((sol5[0][X2] - sp.Rational(1, 6)).subs(subsn)), "DP (5.1)")
    # determinant of that linear system is 36(alpha^4-beta^4) != 0 for alpha != beta
    require(_sz(sp.Matrix([[al**2, be**2], [be**2, al**2]]).det() - (al**2 - be**2) * (al**2 + be**2)), "DP (5.1) det")
    out["DP_5_1_5_2"] = True

    # --- DP Lemma 8.1: |c + e q|^2 = |c|^2+|e|^2 + 2 Re(conj(c) e q)
    cr, ci, er, ei, th = sp.symbols("cr ci er ei th", real=True)
    c_ = cr + sp.I * ci; e_ = er + sp.I * ei; q_ = sp.exp(sp.I * th)
    lhs = sp.expand((c_ + e_ * q_) * sp.conjugate(c_ + e_ * q_))
    rhs = sp.expand(c_ * sp.conjugate(c_) + e_ * sp.conjugate(e_) + 2 * sp.re(sp.conjugate(c_) * e_ * q_))
    require(sp.simplify(sp.expand_complex(lhs - rhs)) == 0, "DP Lemma 8.1 expansion")
    out["DP_8_1"] = True

    # --- DP (8.3) cofactor identity for a generic 2x2 unitary W = sqrt3 M
    a1, a2, b1, b2, ph = sp.symbols("a1 a2 b1 b2 ph", real=True)
    a = a1 + sp.I * a2; b = b1 + sp.I * b2; ep = sp.exp(sp.I * ph)
    W = sp.Matrix([[a, b], [-ep * sp.conjugate(b), ep * sp.conjugate(a)]])
    dW = sp.expand(W.det())
    require(sp.simplify(dW - ep * (a1**2 + a2**2 + b1**2 + b2**2)) == 0, "unitary 2x2 det")
    # on the unitary locus |a|^2+|b|^2=1 : w11 = d conj(w00), w10 = -d conj(w01), w01 = -d conj(w10), w00 = d conj(w11)
    nrm = {a1: sp.sqrt(1 - a2**2 - b1**2 - b2**2)}
    dd_ = ep
    checks = [W[1, 1] - dd_ * sp.conjugate(W[0, 0]), W[1, 0] + dd_ * sp.conjugate(W[0, 1]),
              W[0, 1] + dd_ * sp.conjugate(W[1, 0]), W[0, 0] - dd_ * sp.conjugate(W[1, 1])]
    require(all(sp.simplify(sp.expand_complex(cc)) == 0 for cc in checks), "DP (8.3) cofactor")
    out["DP_8_3_cofactor"] = True

    # --- DP section 9: V eps V^T = det(V) eps; det A_k = det B_k = h00 h11 (= 6 u00 u11)
    v_ = sp.Matrix(2, 2, sp.symbols("v0:4"))
    eps = sp.Matrix([[0, 1], [-1, 0]])
    require((v_ * eps * v_.T - v_.det() * eps).expand() == sp.zeros(2, 2), "V eps V^T identity")
    h00, h01, h10 = sp.symbols("h00 h01 h10", nonzero=True)
    h11 = -h01 * h10 / h00
    Ak = sp.Matrix([[al * h00, be * h01], [be * h10, al * h11]])
    Bk = sp.Matrix([[be * h00, al * h01], [al * h10, be * h11]])
    require(_sz((Ak.det() - h00 * h11).subs(subsn)) and _sz((Bk.det() - h00 * h11).subs(subsn)), "DP (9.1) dets")
    # (3.4) maps A_k to B_k
    require(_sz((Bk[0, 0] - be / al * Ak[0, 0])) and _sz(Bk[0, 1] - al / be * Ak[0, 1]), "(3.4) vs (4.1)")
    out["DP_9"] = True

    # --- Interior (2.4): (a + b C^*)(a + b C) = a^2+b^2 + ab (C + C^*) when C^*C = 1
    Cn, Cdn = sp.symbols("C Cd", commutative=False)
    expr = sp.expand((al + be * Cdn) * (al + be * Cn))
    expr = expr.subs(Cdn * Cn, 1)
    require(sp.expand(expr - (al**2 + be**2 + al * be * (Cn + Cdn))) == 0, "Interior (2.4)")
    # (2.6) algebra: beta - alpha C = -C (alpha + beta C) when C^2 = -1
    expr2 = sp.expand(-Cn * (al + be * Cn)).subs(Cn * Cn, -1)
    require(sp.expand(expr2 - (be - al * Cn)) == 0, "Interior beta-alpha C = -C U")
    # tau: on ran P, C = -i => U = alpha - i beta, |tau| = 1
    tau = al - sp.I * be
    require(_sz((tau * sp.conjugate(tau) - 1).subs(subsn)), "Interior |tau|=1")
    out["Interior_2_4_2_6"] = True

    # --- Interior (3.6)-(3.7)
    z_ = sp.exp(sp.I * th)
    require(sp.simplify(sp.expand_complex((1 + sp.I * z_) * sp.conjugate(1 + sp.I * z_) - (2 - 2 * sp.sin(th)))) == 0,
            "|1+iz|^2")
    require(sp.simplify(sp.expand_complex((1 - sp.I * sp.conjugate(z_)) * sp.conjugate(1 - sp.I * sp.conjugate(z_))
                                          - (2 - 2 * sp.sin(th)))) == 0, "|1-i conj z|^2")
    # |<b,c>|^2 = |X|^2 |1+i z|^2 with |X|^2 = 1/6 ; centred overlap = |<b,c>|^2 - 1/3 = -Im(z)/3
    require(sp.simplify(sp.Rational(1, 6) * (2 - 2 * sp.sin(th)) - sp.Rational(1, 3) + sp.sin(th) / 3) == 0,
            "Interior (3.6)")
    rr1, rr2, ss1, ss2 = sp.symbols("rr1 rr2 ss1 ss2", real=True)
    require(sp.expand(sp.im(sp.expand((rr1 + sp.I * rr2) * (ss1 + sp.I * ss2))) - (rr1 * ss2 + rr2 * ss1)) == 0,
            "Interior (3.7)")
    # centred projector overlap formula in dimension 3
    out["Interior_3_6_3_7"] = True

    # --- Endpoint (3.1): sign product and complement permutation
    for s_, a_, c_2 in itertools.product((0, 1), repeat=3):
        require((-1) ** (a_ + c_2 + s_ + a_ + s_ + c_2) == 1, "Endpoint sign product")
        require(((1 - s_) + (1 - a_) + (1 - c_2)) % 2 != (s_ + a_ + c_2) % 2, "complement flips parity")
    # --- Endpoint (3.2) -> (3.3) using t tbar = 1/6
    tt, tb, Om, Qs = sp.symbols("t tb Omega Q")
    tb_sol = sp.solve(sp.Eq(tt - Om * Qs * tb, (1 - Om) * (1 + Qs) / 6), tb)[0]
    require(_sz(6 * Om * Qs * (tt * tb_sol - sp.Rational(1, 6))
                - (6 * tt**2 - (1 - Om) * (1 + Qs) * tt - Om * Qs)), "Endpoint (3.3)")
    # direct: 6t^2 = (1-Om)(1+Q)t + Om Q  <=>  6 t (t - Om Q tb) with t tb = 1/6
    require(_sz(sp.expand(6 * tt * (tt - Om * Qs * tb)).subs(tt * tb, sp.Rational(1, 6))
                - (6 * tt**2 - Om * Qs)), "Endpoint (3.3) direct")
    # --- Endpoint (4.1) coefficient
    require(sp.expand(6 * Om + 2 * (1 - Om) - (2 + 4 * Om)) == 0, "Endpoint L = 2 + 4 Omega")
    # --- Endpoint (4.2): S = z^2/(eta p q) = conj(E) F conj(G) with unit phases
    thH, thK, thT, the, thp, thq = sp.symbols("thH thK thT the thp thq", real=True)
    Hk, Kk, Tk = sp.exp(sp.I * thH), sp.exp(sp.I * thK), sp.exp(sp.I * thT)
    et, pp, qq = sp.exp(sp.I * the), sp.exp(sp.I * thp), sp.exp(sp.I * thq)
    zz = sp.conjugate(Hk) * Kk * sp.conjugate(Tk)
    Sval = zz**2 / (et * pp * qq)
    Eel = et * Hk**2 * pp; Fel = Kk**2 * sp.conjugate(qq); Gel = Tk**2
    require(sp.simplify(sp.powsimp(Sval - sp.conjugate(Eel) * Fel * sp.conjugate(Gel))) == 0, "Endpoint (4.2)")
    # --- Endpoint rank table |2+4 Omega|^2 for Omega^6=1
    table = {}
    for m in range(6):
        Omv = sp.exp(sp.I * sp.pi * m / 3)
        L2 = sp.nsimplify(sp.simplify(sp.expand_complex((2 + 4 * Omv) * sp.conjugate(2 + 4 * Omv))))
        table[m] = (str(L2), str(sp.Rational(36) / L2))
    require({v_[0] for v_ in table.values()} == {"36", "28", "12", "4"}, "rank table |L|^2")
    require(table[0][1] == "1" and table[1][1] == "9/7" and table[2][1] == "3" and table[3][1] == "9",
            "rank table ranks")
    out["Endpoint_rank_table"] = {"Omega=exp(i pi m/3), m": table}
    # --- Endpoint (2.3)->(2.4): with unit phases, conj(kA)^6 * P = kB^6 kC^6 * P  =>  Omega^6 = 1
    ka, kb, kc = sp.symbols("ka kb kc", real=True)
    KA, KB, KC = sp.exp(sp.I * ka), sp.exp(sp.I * kb), sp.exp(sp.I * kc)
    # conj(KA)^6 = KB^6 KC^6  <=>  (KA KB KC)^6 = 1  (multiply by KA^6)
    require(sp.simplify(sp.conjugate(KA)**6 * KA**6 - 1) == 0, "Endpoint (2.4) step")
    # --- Endpoint 2.2: a0 + b0 (-1)^par = sqrt2 w_par ; a0^2+b0^2 = 1 ; det(a0+b0 E) = 1
    a0 = (al + be) / sp.sqrt(2); b0 = (al - be) / sp.sqrt(2)
    require(_sz((a0 + b0) / sp.sqrt(2) - al) and _sz((a0 - b0) / sp.sqrt(2) - be), "Endpoint (2.6) coefficients")
    require(_sz((a0**2 + b0**2 - 1).subs(subsn)), "a0^2+b0^2=1")
    require(_sz(((a0 + sp.I * b0)**6 * (a0 - sp.I * b0)**6 - 1).subs(subsn)), "det(a0+b0E)=1")
    out["Endpoint_symbolic"] = True
    return out


# ---------------------------------------------------------------------------
# Section C: further exact controls in Q(zeta_24)
# ---------------------------------------------------------------------------
def cr_controls():
    out = {}
    z = lambda e: Q24.zeta_pow(4 * e)   # z = exp(i pi/3)
    # 7.1 nonbinary rank-three control
    f0 = [ONE] * 6
    q = [z(j) for j in range(6)]
    A = [[z(2 * j), z(4 * j)] for j in range(6)]
    B = [[z(3 * j), -z(5 * j)] for j in range(6)]
    cols = [f0, q, [r[0] for r in A], [r[1] for r in A], [r[0] for r in B], [r[1] for r in B]]
    for a in range(6):
        for b in range(6):
            ip = sum((cols[a][j].conj() * cols[b][j] for j in range(6)), ZERO)
            require(ip == (Q24.rat(6) if a == b else ZERO), "CR 7.1 orthogonality")
    sixth = Q24.rat(Fraction(1, 6))
    P = mscale(mmul(A, madj(A)), sixth)
    Q = mscale(mmul(B, madj(B)), sixth)
    require(all(P[j][j] == Q24.rat(Fraction(1, 3)) and Q[j][j] == Q24.rat(Fraction(1, 3)) for j in range(6)),
            "CR 7.1 diagonals")
    require(meq(mmul(P, P), P) and meq(mmul(Q, Q), Q) and mis_scalar(mmul(P, Q), ZERO), "CR 7.1 projections")
    # diagonal map Z -> diag(A Z B^*), as 6 x 4 matrix in the basis E_ab
    rows = []
    for j in range(6):
        rows.append([A[j][a] * B[j][b].conj() for a in range(2) for b in range(2)])
    rk = mrank(rows)
    ker = nullspace(rows, 4)
    require(rk == 3 and len(ker) == 1, "CR 7.1 cross rank")
    kv = ker[0]
    require(kv[1].is_zero() and kv[2].is_zero() and kv[0] == kv[3], "CR 7.1 kernel = C I2")
    require(len(set(q)) == 6, "CR 7.1 six distinct phase levels")
    # section 6 Pauli structure for V = A B^*/6
    V = mscale(mmul(A, madj(B)), sixth)
    Vs = madj(V)
    require(meq(mmul(Vs, V), Q) and meq(mmul(V, Vs), P) and mis_scalar(mmul(V, V), ZERO), "CR 6 V identities")
    require(all(V[j][j].is_zero() for j in range(6)), "CR 6 diag V = 0")
    Jx = madd(V, Vs)
    Jy = mscale(madd(V, Vs, Q24.rat(-1)), -I_)
    Jz = madd(P, Q, Q24.rat(-1))
    PQ = madd(P, Q)
    for Jm in (Jx, Jy, Jz):
        require(meq(mmul(Jm, Jm), PQ), "CR 6 J^2 = P+Q")
        require(meq(Jm, madj(Jm)), "CR 6 Hermitian")
        require(all(Jm[j][j].is_zero() for j in range(6)), "CR 6 zero diagonal")
    require(meq(mmul(Jx, Jy), mscale(Jz, I_)) and meq(mmul(Jy, Jz), mscale(Jx, I_))
            and meq(mmul(Jz, Jx), mscale(Jy, I_)), "CR 6 su(2) relations")
    # Hilbert-Schmidt identity (1.4): <P E_j Q, Z>_HS = Z_jj for Z = P Z Q
    for j in range(6):
        Ej = mzeros(6, 6); Ej[j][j] = ONE
        PEQ = mmul(mmul(P, Ej), Q)
        hs = sum((PEQ[a][b].conj() * V[a][b] for a in range(6) for b in range(6)), ZERO)
        require(hs == V[j][j], "CR (1.4) HS identity")
    out["CR_7_1"] = {"cross_rank": rk, "witness_dim": len(ker), "witness": "C*I2", "phase_levels": 6,
                     "pauli_relations": True}

    # 7.2 binary lower-rank control
    w = lambda e: Q24.zeta_pow(8 * e)   # omega
    Ab = [[w(j), ZERO] if j < 3 else [ZERO, w(j)] for j in range(6)]
    Bb = [[w(2 * j), ZERO] if j < 3 else [ZERO, w(2 * j)] for j in range(6)]
    qb = [ONE] * 3 + [Q24.rat(-1)] * 3
    colsb = [[ONE] * 6, qb, [r[0] for r in Ab], [r[1] for r in Ab], [r[0] for r in Bb], [r[1] for r in Bb]]
    for a in range(6):
        for b in range(a + 1, 6):
            require(sum((colsb[a][j].conj() * colsb[b][j] for j in range(6)), ZERO).is_zero(), "CR 7.2 orth")
    rowsb = [[Ab[j][a] * Bb[j][b].conj() for a in range(2) for b in range(2)] for j in range(6)]
    rkb = mrank(rowsb)
    kerb = nullspace(rowsb, 4)
    require(rkb == 2 and len(kerb) == 2, "CR 7.2 cross rank two")
    # rank-one witness E_01 and invertible unequal-singular-value witness E_01 + 2 E_10 lie in the kernel
    for vec in ([ZERO, ONE, ZERO, ZERO], [ZERO, ONE, Q24.rat(2), ZERO]):
        require(all(sum((r_[k_] * vec[k_] for k_ in range(4)), ZERO).is_zero() for r_ in rowsb), "CR 7.2 witness")
    out["CR_7_2"] = {"cross_rank": rkb, "rank_one_and_unequal_sv_witnesses": True}
    return out


def interior_edge_control():
    """Interior section 8 two-frame / one-edge control for Lemma 4.1."""
    w = lambda e: Q24.zeta_pow(8 * e)   # omega = exp(2 pi i/3)
    inv_s3 = SQRT3.inv()
    F = [[w(j * k) * inv_s3 for k in range(3)] for j in range(3)]
    Zd = [w(j) for j in range(3)]
    Zm = [[Zd[j] if j == k else ZERO for k in range(3)] for j in range(3)]
    Zs = madj(Zm)
    lower = mscale(mmul(mmul(Zs, madj(F)), Zs), Q24.rat(-1))
    O = mzeros(6, 6)
    for r in range(3):
        for c in range(3):
            O[r][3 + c] = F[r][c]
            O[3 + r][c] = lower[r][c]
    Mdiag = Zd + Zd
    J = [[I_ * Mdiag[r] * O[r][c] for c in range(6)] for r in range(6)]
    require(meq(J, madj(J)), "edge control: J Hermitian")
    require(mis_scalar(mmul(J, J), ONE), "edge control: J^2 = I")
    require(all(J[r][r].is_zero() for r in range(6)), "edge control: diag J = 0")
    half = Q24.rat(Fraction(1, 2))
    P = [[half * ((ONE if r == c else ZERO) + J[r][c]) for c in range(6)] for r in range(6)]
    Sig = [ONE] * 3 + [Q24.rat(-1)] * 3
    PSP = mmul(mmul(P, [[Sig[r] if r == c else ZERO for c in range(6)] for r in range(6)]), P)
    require(mis_scalar(PSP, ZERO), "edge control: P Sigma P = 0")
    # V_ph
    sig = [Q24.zeta_pow(2 * (1 - 2 * b)) for b in range(3)]
    g = [[w(j * j + b * j) for b in range(3)] for j in range(3)]
    h = [[(-I_) / sig[b] * w(-j - (b - 1 - j) ** 2) for b in range(3)] for j in range(3)]
    Vph = mzeros(6, 6)
    for j in range(3):
        for b in range(3):
            Vph[j][b] = g[j][b]; Vph[j][3 + b] = g[j][b]
            Vph[3 + j][b] = h[j][b]; Vph[3 + j][3 + b] = -h[j][b]
    require(mis_scalar(mmul(Vph, madj(Vph)), Q24.rat(6)), "edge control: V_ph Hadamard")
    require(all((x * x.conj()) == ONE for r in Vph for x in r), "edge control: V_ph phase entries")
    mus = sig + [-x for x in sig]
    require(len(set(mus)) == 6 and sum(mus, ZERO).is_zero(), "edge control: Mu traceless, six distinct")
    OV = mmul(O, Vph)
    for b in range(6):
        for r in range(6):
            require(OV[r][b] == mus[b] * Vph[r][b], "edge control: eigenrelation")
    # hypotheses of Lemma 4.1 in the form J = i Lambda V Mu V^*, V = V_ph/sqrt6
    # frames: sqrt2 P e_k and sqrt2 P v_b
    s6inv = Q24.rat(Fraction(1, 6))

    def centred_real_vectors(vectors):
        vecs = []
        for vcol in vectors:
            Pv = [sum((P[r][c] * vcol[c] for c in range(6)), ZERO) for r in range(6)]
            # projector 2 (Pv)(Pv)^* - P/3
            prj = [[2 * Pv[r] * Pv[c].conj() - P[r][c] * Q24.rat(Fraction(1, 3)) for c in range(6)] for r in range(6)]
            flat = []
            for r in range(6):
                for c in range(r, 6):
                    x = prj[r][c]
                    flat.append((x + x.conj()) * half)
                    flat.append((x - x.conj()) * half / I_)
            vecs.append(flat)
        return vecs
    E = [[ONE if r == c else ZERO for r in range(6)] for c in range(6)]
    Vcols = [[Vph[r][b] * SQRT2 * SQRT3 * s6inv for r in range(6)] for b in range(6)]  # normalised columns
    fe = centred_real_vectors(E)
    fv = centred_real_vectors(Vcols)
    dim_e, dim_v = mrank(fe), mrank(fv)
    # cross Gram |<a,b>|^2 - 1/3 with a = sqrt2 P e_k, b = sqrt2 P v_b
    cg = []
    for k in range(6):
        row = []
        for b in range(6):
            ip = sum((E[k][r].conj() * 2 * sum((P[r][c] * Vcols[b][c] for c in range(6)), ZERO)
                      for r in range(6)), ZERO)
            row.append(ip * ip.conj() - Q24.rat(Fraction(1, 3)))
        cg.append(row)
    cross = mrank(cg)
    require(sorted([dim_e, dim_v]) == [4, 5] and cross == 2, "edge control dims %s cross %d" % ((dim_e, dim_v), cross))
    # first frame = two orthonormal qutrit bases (not repeated rays): Gram of sqrt2 P e_k
    Gr = [[2 * P[k][l] for l in range(6)] for k in range(6)]
    nonzero_offdiag = sum(1 for k in range(6) for l in range(6) if k != l and not Gr[k][l].is_zero())
    zero_offdiag = sum(1 for k in range(6) for l in range(6) if k != l and Gr[k][l].is_zero())
    # conclusion: a zero ordinary 3x3 minor of V_ph on the +1 rows of Sigma
    nzero = 0
    for cols3 in itertools.combinations(range(6), 3):
        Msub = [[Vph[r][c] for c in cols3] for r in range(3)]
        if mdet(Msub).is_zero():
            nzero += 1
    require(nzero > 0, "edge control: no zero minor on + rows")
    # the antipodal pair columns b, 3+b coincide on the + rows
    require(all(Vph[r][b] == Vph[r][3 + b] for r in range(3) for b in range(3)), "Sigma v_b = v_{b+3}")
    return {"centred_dims(std,V)": [dim_e, dim_v], "cross_pairing_rank": cross,
            "P_Sigma_P_zero": True, "zero_minors_on_plus_rows": nzero,
            "std_frame_gram_zero_offdiag": zero_offdiag, "std_frame_gram_nonzero_offdiag": nonzero_offdiag}


def endpoint_linesum_control():
    """Endpoint Lemma 5.1 control: inflated qutrit constant-line-sum phase tensor, L = 2 + 4 omega."""
    w = lambda e: Q24.zeta_pow(8 * e)
    W3 = [[w(k * i) for i in range(3)] for k in range(3)]
    dvec = [ONE, ONE, w(1)]
    F0 = [[dvec[k] * W3[k][j] for j in range(3)] for k in range(3)]
    L0 = ONE + 2 * w(1)
    require(L0 * L0.conj() == Q24.rat(3), "|L0|^2 = 3")
    G0 = mscale(mmul(madj(W3), F0), L0.inv())
    require(all(x * x.conj() == ONE for r in G0 for x in r), "G0 phase entries")
    infl = lambda M: [[M[r // 2][c // 2] for c in range(6)] for r in range(6)]
    E, Fm, G = infl(W3), infl(F0), infl(G0)
    L = 2 * L0
    require(L == 2 + 4 * w(1), "L = 2 + 4 omega")
    nls = 0
    for (x, y) in itertools.product(range(6), repeat=2):
        s1 = sum((E[k][x].conj() * Fm[k][y] * G[x][y].conj() for k in range(6)), ZERO)       # sum over k
        s2 = sum((E[x][i].conj() * Fm[x][y] * G[i][y].conj() for i in range(6)), ZERO)       # sum over i
        s3 = sum((E[x][y].conj() * Fm[x][j] * G[y][j].conj() for j in range(6)), ZERO)       # sum over j
        require(s1 == L and s2 == L and s3 == L, "line sums")
        nls += 3
    Es, Gs = madj(E), madj(G)
    require(meq(mmul(Es, Fm), mscale(G, L)), "(5.2a) E^*F = L G")
    require(meq(mmul(E, G), mscale(Fm, L.conj())), "(5.2b) E G = conj(L) F")
    require(meq(mmul(Fm, Gs), mscale(E, L)), "(5.2c) F G^* = L E")
    require(meq(mmul(Es, E), mmul(G, Gs)) and meq(mmul(E, Es), mmul(Fm, madj(Fm)))
            and meq(mmul(madj(Fm), Fm), mmul(Gs, G)), "(5.3)")
    L2 = L * L.conj()
    for M in (E, Fm, G):
        require(meq(mmul(mmul(M, madj(M)), M), mscale(M, L2)), "singular values |L|")
    ranks = [mrank(M) for M in (E, Fm, G)]
    require(ranks == [3, 3, 3] and L2 == Q24.rat(12), "ranks / |L|^2")
    require(ranks[0] * 12 == 36, "r |L|^2 = n^2")
    # numeric frames from the support isometries: tight, pairwise unbiased, repeated rays
    En, Fn, Gn = to_np(E), to_np(Fm), to_np(G)
    Ln = L.to_complex(); h = abs(Ln)
    U0 = np.linalg.svd(En)[0][:, :3]
    U1 = (En.conj().T @ U0) / h
    U2 = (Fn.conj().T @ U0) / h
    require(np.allclose(En, h * U0 @ U1.conj().T) and np.allclose(Fn, h * U0 @ U2.conj().T)
            and np.allclose(Gn, Ln.conjugate() * U1 @ U2.conj().T), "(5.4) partial isometry triangle")
    frames = [np.sqrt(2) * U.conj().T for U in (U0, U1, U2)]      # columns = frame vectors
    for fr in frames:
        require(np.allclose(fr @ fr.conj().T, 2 * np.eye(3)), "tight frame")
        require(np.allclose(np.linalg.norm(fr, axis=0), 1), "unit frame vectors")
    for a_, b_ in ((0, 1), (0, 2), (1, 2)):
        ov = np.abs(frames[a_].conj().T @ frames[b_]) ** 2
        require(np.allclose(ov, 1 / 3), "pairwise unbiased (6.2)")
    dims = [_centred_dim(fr) for fr in frames]
    require(min(dims) <= 2 and any(_is_repeated_rays(fr) for fr in frames), "Lemma 6.1 conclusion on control")
    return {"line_sums": nls, "L": "2+4*omega", "ranks": ranks, "abs_L_sq": 12, "centred_frame_dims": dims}


def sign_hadamard_and_transfer():
    # no real (sign) Hadamard of order 6: max set of mutually orthogonal +-1 vectors has size 2
    vecs = list(itertools.product((1, -1), repeat=6))
    vecs = [v for v in vecs if v[0] == 1]   # up to global sign
    orth = lambda a, b: sum(x * y for x, y in zip(a, b)) == 0
    triples = 0
    for a, b in itertools.combinations(vecs, 2):
        if orth(a, b):
            for c in vecs:
                if c > b and orth(a, c) and orth(b, c):
                    triples += 1
    require(triples == 0, "found three mutually orthogonal sign vectors of length 6")
    # section 7 transfer on F6: rows 0,3 have equal squares; ratio has three + and three -
    z = lambda e: Q24.zeta_pow(4 * e)
    F6 = [[z(k * i) for i in range(6)] for k in range(6)]
    require(all(F6[3][i] * F6[3][i] == F6[0][i] * F6[0][i] for i in range(6)), "F6 squares proportional")
    ratio = [F6[3][i] / F6[0][i] for i in range(6)]
    require(sorted(str(r.c[0]) for r in ratio) == sorted(["1", "-1"] * 3) and all(r.is_rational() for r in ratio),
            "3+3 sign ratio")
    plus = [i for i in range(6) if ratio[i] == ONE]
    require(mdet([[F6[r][c] for c in plus] for r in (0, 3, 1)]).is_zero(), "zero 3x3 minor from proportional rows")
    return {"sign_vectors_mutually_orthogonal_triples": 0, "F6_transfer_zero_minor": True}


# helpers shared with numerics
def _centred_dim(fr, tol=1e-8):
    d = fr.shape[0]
    rows = []
    for k in range(fr.shape[1]):
        v = fr[:, k]
        Pm = np.outer(v, v.conj()) - np.eye(d) / d
        iu = np.triu_indices(d)
        rows.append(np.concatenate([Pm[iu].real, Pm[iu].imag]))
    sv = np.linalg.svd(np.array(rows), compute_uv=False)
    return int(np.sum(sv > tol * max(1, sv[0])))


def _is_repeated_rays(fr, tol=1e-6):
    """frame of 6 unit vectors in C^3 = three orthogonal rays, each exactly twice."""
    n = fr.shape[1]
    ov = np.abs(fr.conj().T @ fr) ** 2
    classes = []
    used = [False] * n
    for k in range(n):
        if used[k]:
            continue
        cls = [l for l in range(n) if ov[k, l] > 1 - tol]
        for l in cls:
            used[l] = True
        classes.append(cls)
    if len(classes) != 3 or any(len(c) != 2 for c in classes):
        return False
    reps = [c[0] for c in classes]
    return all(ov[a, b] < tol for a in reps for b in reps if a != b)


# ---------------------------------------------------------------------------
# Section D: randomized numerical tests
# ---------------------------------------------------------------------------
_PAULI = [np.eye(2, dtype=complex), np.array([[0, 1], [1, 0]], dtype=complex),
          np.array([[0, -1j], [1j, 0]]), np.array([[1, 0], [0, -1]], dtype=complex)]


def _ptr(S):
    """partial traces of a 4x4 matrix on C2 (x) C2: (tr_1 S, tr_2 S)."""
    S4 = S.reshape(2, 2, 2, 2)
    return np.einsum("aiaj->ij", S4), np.einsum("iaja->ij", S4)


def _haar(n, rng):
    Zm = (rng.normal(size=(n, n)) + 1j * rng.normal(size=(n, n))) / np.sqrt(2)
    Qm, Rm = np.linalg.qr(Zm)
    return Qm * (np.diag(Rm) / np.abs(np.diag(Rm)))


def _su2_from_rotation(R):
    """U in SU(2) with U sigma_j U^* = sum_i R_ij sigma_i."""
    # quaternion from rotation matrix
    tr = np.trace(R)
    w = np.sqrt(max(0.0, 1 + tr)) / 2
    if w > 1e-6:
        xq = (R[2, 1] - R[1, 2]) / (4 * w)
        yq = (R[0, 2] - R[2, 0]) / (4 * w)
        zq = (R[1, 0] - R[0, 1]) / (4 * w)
    else:
        raise CheckFailure("rotation near pi; resample")
    cands = [w * np.eye(2) - 1j * (xq * _PAULI[1] + yq * _PAULI[2] + zq * _PAULI[3]),
             w * np.eye(2) + 1j * (xq * _PAULI[1] + yq * _PAULI[2] + zq * _PAULI[3])]
    for U in cands:
        A = np.array([[np.trace(_PAULI[i + 1] @ U @ _PAULI[j + 1] @ U.conj().T).real / 2 for j in range(3)]
                      for i in range(3)])
        if np.allclose(A, R, atol=1e-9):
            return U
    raise CheckFailure("su2 lift failed")


def num_dp_lemma21(rng, trials=40, gn_starts=40):
    # (a) signed-SVD reduction and identity (2.2) for random correlation matrices
    ok_a = 0
    while ok_a < trials:
        C = rng.normal(size=(3, 3))
        S = sum(C[i, j] * np.kron(_PAULI[i + 1], _PAULI[j + 1]) for i in range(3) for j in range(3))
        t1, t2 = _ptr(S)
        require(np.allclose(S, S.conj().T) and np.allclose(t1, 0) and np.allclose(t2, 0), "Pauli expansion hyp")
        U_, sv, Vt = np.linalg.svd(C)
        R1, R2, tv = U_.copy(), Vt.T.copy(), sv.copy()
        if np.linalg.det(R1) < 0:
            R1[:, 2] *= -1; tv[2] *= -1
        if np.linalg.det(R2) < 0:
            R2[:, 2] *= -1; tv[2] *= -1
        try:
            U1, U2 = _su2_from_rotation(R1), _su2_from_rotation(R2)
        except CheckFailure:
            continue
        Sd = sum(tv[i] * np.kron(_PAULI[i + 1], _PAULI[i + 1]) for i in range(3))
        W = np.kron(U1, U2)
        require(np.allclose(W @ Sd @ W.conj().T, S, atol=1e-9), "signed SVD product-unitary reduction")
        rhs = (tv @ tv) * np.eye(4) - 2 * (tv[1] * tv[2] * np.kron(_PAULI[1], _PAULI[1]) +
                                           tv[0] * tv[2] * np.kron(_PAULI[2], _PAULI[2]) +
                                           tv[0] * tv[1] * np.kron(_PAULI[3], _PAULI[3]))
        require(np.allclose(Sd @ Sd, rhs), "(2.2) numeric")
        ok_a += 1

    # (b) Gauss-Newton projection of random Hermitian 4x4 onto {S^2=I, tr_1 S = tr_2 S = 0}
    basis = []
    for a in range(4):
        for b in range(4):
            basis.append(np.kron(_PAULI[a], _PAULI[b]))

    def build(xv):
        return sum(xv[k] * basis[k] for k in range(16))

    def resid(xv):
        S = build(xv)
        E = S @ S - np.eye(4)
        t1, t2 = _ptr(S)
        r = np.concatenate([E.ravel(), t1.ravel(), t2.ravel()])
        return np.concatenate([r.real, r.imag])

    converged = 0
    for _ in range(gn_starts):
        xv = rng.normal(size=16) * 0.4
        for it in range(200):
            r = resid(xv)
            if np.linalg.norm(r) < 1e-13:
                break
            h = 1e-6
            Jm = np.array([(resid(xv + h * e) - resid(xv - h * e)) / (2 * h) for e in np.eye(16)]).T
            step = np.linalg.lstsq(Jm, -r, rcond=None)[0]
            xv = xv + step
        if np.linalg.norm(resid(xv)) < 1e-11:
            converged += 1
            S = build(xv)
            Cm = np.array([[np.trace(np.kron(_PAULI[i + 1], _PAULI[j + 1]) @ S).real / 4 for j in range(3)]
                           for i in range(3)])
            # no identity / single-factor components
            for a in range(4):
                for b in range(4):
                    if a == 0 or b == 0:
                        require(abs(np.trace(basis[4 * a + b] @ S)) < 1e-8, "one-factor term survived")
            svc = np.linalg.svd(Cm, compute_uv=False)
            require(abs(svc[0] - 1) < 1e-8 and svc[1] < 1e-8, "DP Lemma 2.1 violated: sv %s" % svc)
            U_, sv, Vt = np.linalg.svd(Cm)
            nvec, mvec = U_[:, 0], Vt[0, :]
            Sprod = np.kron(sum(nvec[i] * _PAULI[i + 1] for i in range(3)), sum(mvec[i] * _PAULI[i + 1] for i in range(3)))
            require(np.allclose(S, Sprod, atol=1e-8) or np.allclose(S, -Sprod, atol=1e-8), "not a Pauli product")
    require(converged >= gn_starts // 4, "too few GN convergences (%d)" % converged)
    return {"signed_svd_trials": ok_a, "gn_starts": gn_starts, "gn_converged_all_product": converged}


def num_interior_lemma61(rng, trials=200, descent_starts=6):
    def orth(X):
        return np.linalg.qr(X)[0]

    def truncate_pairing(L1, X):
        """modify basis X so that pairing with L1 has rank <= 2."""
        P1 = L1 @ L1.T
        comp = P1 @ X
        Uc, sc, Vc = np.linalg.svd(comp, full_matrices=False)
        sc[2:] = 0
        return (X - comp) + (Uc * sc) @ Vc

    minsig = np.inf
    for _ in range(trials):
        L1 = orth(rng.normal(size=(8, 5)))
        B2 = truncate_pairing(L1, rng.normal(size=(8, 5)))
        B3 = truncate_pairing(L1, rng.normal(size=(8, 5)))
        require(np.linalg.matrix_rank(B2, tol=1e-9) == 5 and np.linalg.matrix_rank(B3, tol=1e-9) == 5, "dims")
        L2, L3 = orth(B2), orth(B3)
        s12 = np.linalg.svd(L1.T @ L2, compute_uv=False)
        s13 = np.linalg.svd(L1.T @ L3, compute_uv=False)
        require(s12[2] < 1e-9 and s13[2] < 1e-9, "construction")
        # proof step: L1-perp inside L2 and L3
        Pperp = np.eye(8) - L1 @ L1.T
        require(np.allclose(L2 @ L2.T @ Pperp, Pperp, atol=1e-8), "L1-perp not inside L2")
        s23 = np.linalg.svd(L2.T @ L3, compute_uv=False)
        require(s23[2] > 1 - 1e-8, "Interior Lemma 6.1 violated")
        minsig = min(minsig, s23[2])

    # descent: minimise F = sum of squared third singular values over three Stiefel frames
    best = np.inf
    for _ in range(descent_starts):
        Qs = [orth(rng.normal(size=(8, 5))) for _ in range(3)]
        lr = 0.2
        for it in range(600):
            grads = [np.zeros((8, 5)) for _ in range(3)]
            Fv = 0.0
            for a, b in ((0, 1), (0, 2), (1, 2)):
                M = Qs[a].T @ Qs[b]
                Uu, sv, Vv = np.linalg.svd(M)
                s3 = sv[2]
                Fv += s3 ** 2
                u3, v3 = Uu[:, 2], Vv[2, :]
                grads[a] += 2 * s3 * np.outer(Qs[b] @ v3, u3)     # d sigma3 / d Q_a
                grads[b] += 2 * s3 * np.outer(Qs[a] @ u3, v3)
            for a in range(3):
                G = grads[a] - Qs[a] @ (Qs[a].T @ grads[a] + grads[a].T @ Qs[a]) / 2
                Qs[a] = orth(Qs[a] - lr * G)
        # final value
        Fv = sum(np.linalg.svd(Qs[a].T @ Qs[b], compute_uv=False)[2] ** 2 for a, b in ((0, 1), (0, 2), (1, 2)))
        best = min(best, Fv)
    require(best > 1e-3, "descent drove all three pairing ranks to <= 2 (F=%g)" % best)
    return {"structured_trials": trials, "min_sigma3_L2L3": float(minsig),
            "descent_starts": descent_starts, "min_sum_sigma3_sq_found": float(best)}


def _frames_resid(xb):
    """xb: (B, 108) real -> residuals (B, 153) for three six-vector frames in C^3."""
    Bn = xb.shape[0]
    zc = xb[:, :54] + 1j * xb[:, 54:]
    fr = zc.reshape(Bn, 3, 3, 6)            # frame, component, vector
    res = []
    nr = np.sum(np.abs(fr) ** 2, axis=2) - 1   # (B,3,6)
    res.append(nr.reshape(Bn, -1))
    for f in range(3):
        T = np.einsum("bik,bjk->bij", fr[:, f], fr[:, f].conj()) - 2 * np.eye(3)
        iu = np.triu_indices(3)
        res.append(T[:, iu[0], iu[1]].real)
        iu1 = np.triu_indices(3, 1)
        res.append(T[:, iu1[0], iu1[1]].imag)
    for a, b in ((0, 1), (0, 2), (1, 2)):
        ov = np.abs(np.einsum("bik,bil->bkl", fr[:, a].conj(), fr[:, b])) ** 2 - 1 / 3
        res.append(ov.reshape(Bn, -1))
    return np.concatenate(res, axis=1)


def num_endpoint_lemma61(rng, starts=30):
    conv = 0
    patterns = {}
    for _ in range(starts):
        x = rng.normal(size=108) * 0.6
        lam = 1e-3
        r = _frames_resid(x[None])[0]
        for it in range(300):
            nrm = np.linalg.norm(r)
            if nrm < 1e-12:
                break
            h = 1e-6
            E = np.eye(108) * h
            Jm = ((_frames_resid(x[None] + E) - _frames_resid(x[None] - E)) / (2 * h)).T
            A = Jm.T @ Jm
            g = Jm.T @ r
            while True:
                step = np.linalg.solve(A + lam * np.diag(np.diag(A) + 1e-12), -g)
                rn = _frames_resid((x + step)[None])[0]
                if np.linalg.norm(rn) < nrm:
                    x, r = x + step, rn
                    lam = max(lam / 3, 1e-12)
                    break
                lam *= 4
                if lam > 1e8:
                    break
            if lam > 1e8:
                break
        if np.linalg.norm(r) < 1e-10:
            conv += 1
            zc = x[:54] + 1j * x[54:]
            fr = zc.reshape(3, 3, 6)
            dims = tuple(sorted(_centred_dim(fr[f], tol=1e-6) for f in range(3)))
            require(sum(dims) <= 8, "centred dims exceed 8")
            rep = [_is_repeated_rays(fr[f], tol=1e-5) for f in range(3)]
            require(any(rep), "Endpoint Lemma 6.1 violated: dims %s" % (dims,))
            # the frame of centred dim <= 2 is the repeated one
            for f in range(3):
                if _centred_dim(fr[f], tol=1e-6) <= 2:
                    require(rep[f], "centred dim <= 2 frame not repeated rays")
            key = "dims=%s,repeated=%d" % (dims, sum(rep))
            patterns[key] = patterns.get(key, 0) + 1
    require(conv >= 3, "too few LM convergences (%d)" % conv)
    return {"starts": starts, "converged": conv, "patterns": patterns}


def num_interior_lemma41(rng, orbit_trials=30, family_trials=60):
    # exact control data (numeric), then random symmetry orbit
    w = np.exp(2j * np.pi / 3)
    F = np.array([[w ** (j * k) for k in range(3)] for j in range(3)]) / np.sqrt(3)
    Zd = np.array([1, w, w ** 2])
    O0 = np.block([[np.zeros((3, 3)), F], [-np.diag(Zd.conj()) @ F.conj().T @ np.diag(Zd.conj()), np.zeros((3, 3))]])
    M0 = np.concatenate([Zd, Zd])
    sig = np.array([np.exp(1j * np.pi * (1 - 2 * b) / 6) for b in range(3)])
    g = np.array([[w ** (j * j + b * j) for b in range(3)] for j in range(3)])
    h = np.array([[(-1j / sig[b]) * w ** (-j - (b - 1 - j) ** 2) for b in range(3)] for j in range(3)])
    Vph = np.block([[g, g], [h, -h]])
    Mu = np.concatenate([sig, -sig])
    V0 = Vph / np.sqrt(6)
    require(np.allclose(V0 @ np.diag(Mu) @ V0.conj().T, O0), "numeric control O = V Mu V^*")
    zero_minor_found = 0
    for _ in range(orbit_trials):
        perm = rng.permutation(6)
        Pm = np.eye(6)[perm]
        D1 = np.diag(np.exp(2j * np.pi * rng.random(6)))
        D2 = np.diag(np.exp(2j * np.pi * rng.random(6)))
        cperm = rng.permutation(6)
        V = D1 @ Pm @ V0 @ D2 @ np.eye(6)[:, cperm]
        Muc = Mu[cperm]
        Lam = np.diag(Pm @ M0)
        J = 1j * Lam @ V @ np.diag(Muc) @ V.conj().T
        # hypotheses
        require(np.allclose(J, J.conj().T) and np.allclose(J @ J, np.eye(6)), "orbit: J Herm. involution")
        require(np.allclose(np.abs(V), 1 / np.sqrt(6)) and np.allclose(V @ V.conj().T, np.eye(6)), "orbit: V flat unitary")
        require(abs(Muc.sum()) < 1e-12 and len(set(np.round(Muc, 8))) >= 3, "orbit: Mu hyp")
        P = (np.eye(6) + J) / 2
        require(np.allclose(np.diag(P), 0.5), "P_kk = 1/2")
        # real dependence of P E_k P
        rows = []
        for k in range(6):
            X = np.outer(P[:, k], P[k, :])
            rows.append(np.concatenate([X.real.ravel(), X.imag.ravel()]))
        Um, sv, Vt = np.linalg.svd(np.array(rows).T)
        nd = int(np.sum(sv < 1e-9))
        if nd == 0:
            continue
        Dv = Vt[-1]
        Dm = np.diag(Dv)
        Q = np.eye(6) - P
        require(np.allclose(P @ Dm @ P, 0, atol=1e-9), "PDP=0")
        require(np.allclose(Q @ Dm @ Q, 0, atol=1e-9), "Lemma 4.1: QDQ != 0")
        require(np.allclose(J @ Dm + Dm @ J, 0, atol=1e-9), "Lemma 4.1: JD+DJ != 0")
        require(np.allclose(Dm @ Dm, (Dv @ Dv / 6) * np.eye(6), atol=1e-9), "Lemma 4.1: D^2 not scalar")
        signs = np.sign(Dv)
        require(abs(signs.sum()) < 1e-9, "Lemma 4.1: not a 3+3 split")
        plus = [k for k in range(6) if signs[k] > 0]
        best = min(abs(np.linalg.det(V[np.ix_(plus, list(c))])) for c in itertools.combinations(range(6), 3))
        require(best < 1e-10, "Lemma 4.1: no zero minor on the + coordinates")
        zero_minor_found += 1
    require(zero_minor_found == orbit_trials, "orbit: dependence missing in some trial")

    # structural family J = i (Z(+)Z) O with O = [[0,F],[-Z^*F^*Z^*,0]], F Haar, Z random phases
    ok = 0
    for _ in range(family_trials):
        Fh = _haar(3, rng)
        Zr = np.exp(2j * np.pi * rng.random(3))
        O = np.block([[np.zeros((3, 3)), Fh], [-np.diag(Zr.conj()) @ Fh.conj().T @ np.diag(Zr.conj()), np.zeros((3, 3))]])
        J = 1j * np.diag(np.concatenate([Zr, Zr])) @ O
        require(np.allclose(J, J.conj().T) and np.allclose(J @ J, np.eye(6)), "family: J")
        P = (np.eye(6) + J) / 2; Q = np.eye(6) - P
        Sg = np.diag([1, 1, 1, -1, -1, -1.0])
        require(np.allclose(P @ Sg @ P, 0) and np.allclose(Q @ Sg @ Q, 0), "family: P Sigma P / Q Sigma Q")
        ev, evec = np.linalg.eig(O)
        # antipodal pairing and the Sigma map on simple eigenvectors
        for a in range(6):
            b = int(np.argmin(np.abs(ev + ev[a])))
            require(abs(ev[b] + ev[a]) < 1e-8, "family: spectrum not antipodal")
            va, vb = evec[:, a], evec[:, b]
            if np.min(np.abs(np.delete(ev, a) - ev[a])) > 1e-6:
                c = np.vdot(vb, Sg @ va)
                require(np.allclose(Sg @ va, c * vb, atol=1e-8), "family: Sigma v_j not prop. v_l")
                require(np.allclose(va[:3], c * vb[:3], atol=1e-8), "family: top restrictions not proportional")
        # tr identities of (4.2)
        Dr = np.diag(rng.normal(size=6))
        require(np.allclose(np.diag(P), 0.5) and abs(np.trace(P @ Dr @ Dr) - np.trace(Dr @ Dr) / 2) < 1e-9,
                "tr(P D^2) = tr(D^2)/2")
        tot = np.linalg.norm(P @ Dr @ P) ** 2 + 2 * np.linalg.norm(P @ Dr @ Q) ** 2 + np.linalg.norm(Q @ Dr @ Q) ** 2
        require(abs(tot - np.trace(Dr @ Dr)) < 1e-9, "block Frobenius identity")
        ok += 1
    return {"orbit_trials_with_dependence_and_zero_minor": zero_minor_found, "structural_family_trials": ok}


def _random_mub_pair(rng):
    """flat unitaries A, B with A^*B flat (product construction, randomly dressed)."""
    w3 = np.exp(2j * np.pi / 3)
    F2 = np.array([[1, 1], [1, -1]]) / np.sqrt(2)
    F3 = np.array([[w3 ** (j * k) for k in range(3)] for j in range(3)]) / np.sqrt(3)
    A = np.kron(F2, F3)
    B = np.kron(np.diag([1, 1j]) @ F2, np.diag([1, 1, w3]) @ F3)
    Dl = np.diag(np.exp(2j * np.pi * rng.random(6)))
    Pm = np.eye(6)[rng.permutation(6)]
    A = Dl @ Pm @ A @ np.diag(np.exp(2j * np.pi * rng.random(6)))
    B = Dl @ Pm @ B @ np.diag(np.exp(2j * np.pi * rng.random(6)))
    X = A.conj().T @ B
    require(np.allclose(np.abs(A), 6 ** -0.5) and np.allclose(np.abs(B), 6 ** -0.5)
            and np.allclose(np.abs(X), 6 ** -0.5), "random MUB pair")
    return A, B, X


def _zero_sum_phases(rng):
    while True:
        ph = np.exp(2j * np.pi * rng.random(4))
        s_ = ph.sum()
        if abs(s_) < 2:
            # two unit phases summing to -s_
            r = abs(s_); base = np.angle(-s_); dlt = np.arccos(r / 2)
            v = np.concatenate([ph, [np.exp(1j * (base + dlt)), np.exp(1j * (base - dlt))]])
            v = v[rng.permutation(6)]
            if abs(v.sum()) < 1e-12:
                return v


def num_operator_identities(rng, trials=20):
    for _ in range(trials):
        A, B, X = _random_mub_pair(rng)
        t = A.conj()[:, :, None] * B[:, None, :] / X[None, :, :]     # t_kij
        # contraction identity: sum_k c_k t_kij = (A^* D(c) B)_ij / X_ij
        c = rng.normal(size=6) + 1j * rng.normal(size=6)
        require(np.allclose(np.einsum("k,kij->ij", c, t), (A.conj().T @ np.diag(c) @ B) / X), "contraction identity")
        # Phi_A(v) Phi_B(w) = A D(v) X D(w) B^*
        v = np.exp(2j * np.pi * rng.random(6)); wv = np.exp(2j * np.pi * rng.random(6))
        PhA = lambda f: A @ np.diag(f) @ A.conj().T
        PhB = lambda f: B @ np.diag(f) @ B.conj().T
        require(np.allclose(PhA(v) @ PhB(wv), A @ np.diag(v) @ X @ np.diag(wv) @ B.conj().T), "Phi product")
        # Interior (2.3) with random rectangles
        al = rng.uniform(0.72, 0.99); be = np.sqrt(1 - al ** 2)
        y00 = np.exp(2j * np.pi * rng.random(6)); m = _zero_sum_phases(rng); n = _zero_sum_phases(rng)
        h00 = np.exp(2j * np.pi * rng.random(6)); o = _zero_sum_phases(rng); ell = _zero_sum_phases(rng)
        y = {(0, 0): y00, (1, 0): m * y00, (0, 1): n * y00}
        y[1, 1] = -y[0, 1] * y[1, 0] / y[0, 0]
        hh = {(0, 0): h00, (1, 0): o * h00, (0, 1): ell * h00}
        hh[1, 1] = -hh[0, 1] * hh[1, 0] / hh[0, 0]
        wt = {0: al, 1: be}
        Dac = {(a, c_): sum(wt[(s_ + a + c_) % 2] * PhA(y[s_, a]) @ PhB(hh[s_, c_]) for s_ in (0, 1))
               for a in (0, 1) for c_ in (0, 1)}
        Y, W, M, N, O, L = PhA(y00), PhB(h00), PhA(m), PhA(n), PhB(o), PhB(ell)
        C = M @ O
        U = al * np.eye(6) + be * C
        require(np.allclose(Dac[0, 0], Y @ U @ W), "Interior (2.3) D00")
        require(np.allclose(Dac[1, 0], Y @ N @ (be * np.eye(6) - al * C) @ W), "Interior (2.3) D10")
        require(np.allclose(Dac[0, 1], Y @ (be * np.eye(6) - al * C) @ W @ L), "Interior (2.3) D01")
        # A^* (MO) A = D(m) X D(o) X^*, with zero diagonal
        AJA = A.conj().T @ C @ A
        require(np.allclose(AJA, np.diag(m) @ X @ np.diag(o) @ X.conj().T) and np.allclose(np.diag(AJA), 0),
                "Interior diag(A^* C A) = 0")
        require(np.allclose(np.diag(B.conj().T @ C @ B), 0), "Interior diag(B^* C B) = 0")
        # Endpoint section 2.2: E ~ diag(-MO, M^*O^*), tr E = 0
        Pm_ = {(s_, a): PhA(y[s_, a]) for s_ in (0, 1) for a in (0, 1)}
        Qm_ = {(s_, c_): PhB(hh[s_, c_]) for s_ in (0, 1) for c_ in (0, 1)}
        Vb = np.block([[Pm_[0, 0], Pm_[1, 0]], [Pm_[0, 1], Pm_[1, 1]]]) / np.sqrt(2)    # V_{a s} = P_{s a}
        Wb = np.block([[Qm_[0, 0], Qm_[0, 1]], [Qm_[1, 0], Qm_[1, 1]]]) / np.sqrt(2)    # W_{s c} = Q_{s c}
        Jb = np.diag([1.0] * 6 + [-1.0] * 6)
        require(np.allclose(Vb @ Vb.conj().T, np.eye(12)) and np.allclose(Wb @ Wb.conj().T, np.eye(12)), "V,W unitary")
        a0, b0 = (al + be) / np.sqrt(2), (al - be) / np.sqrt(2)
        Ub = np.block([[Dac[0, 0], Dac[0, 1]], [Dac[1, 0], Dac[1, 1]]]) / np.sqrt(2)
        require(np.allclose(Ub, a0 * Vb @ Wb + b0 * Jb @ Vb @ Jb @ Wb @ Jb), "Endpoint (2.6)")
        Eb = (Vb @ Wb).conj().T @ (Jb @ Vb @ Jb @ Wb @ Jb)
        Mx = PhA(y[0, 0].conj() * y[1, 0]); Ox = PhB(hh[1, 0] * hh[0, 0].conj())
        R_ = Vb.conj().T @ Jb @ Vb; S_ = Wb @ Jb @ Wb.conj().T
        require(np.allclose(R_, np.block([[np.zeros((6, 6)), Mx], [Mx.conj().T, np.zeros((6, 6))]])), "R block form")
        require(np.allclose(S_, np.block([[np.zeros((6, 6)), Ox.conj().T], [Ox, np.zeros((6, 6))]])), "S block form")
        require(np.allclose(Wb @ Eb @ Wb.conj().T, np.block([[-Mx @ Ox, np.zeros((6, 6))],
                                                            [np.zeros((6, 6)), Mx.conj().T @ Ox.conj().T]])),
                "E conjugate to diag(-MO, M^*O^*)")
        require(abs(np.trace(Eb)) < 1e-9 and abs(np.trace(Mx @ Ox)) < 1e-9, "tr E = 0 (MUB)")
        # DP (3.2): partial traces of G for random unitary blocks
        Ak = [_haar(2, rng) for _ in range(6)]
        Fa = np.array([Akk.ravel() for Akk in Ak]).T
        G = Fa @ Fa.conj().T
        t1, t2 = _ptr(G)
        require(np.allclose(t1, 6 * np.eye(2)) and np.allclose(t2, 6 * np.eye(2)), "DP (3.2)")
        # DP section 9: G J G^T = delta J  =>  det G = delta^3 (Pfaffian)
        Jf = np.kron(np.eye(3), np.array([[0, 1], [-1, 0]]))
        # conformal-symplectic element G = sqrt(delta) exp(J Sym), Sym complex symmetric
        Hh = rng.normal(size=(6, 6)) + 1j * rng.normal(size=(6, 6))
        Xs = Jf @ (Hh + Hh.T) / 2                              # J * symmetric lies in sp(6,C)
        Gs = _expm(Xs * 0.3)
        require(np.allclose(Gs @ Jf @ Gs.T, Jf, atol=1e-8), "symplectic construction")
        dl = np.exp(2j * np.pi * rng.random())
        Gc = np.sqrt(dl) * Gs
        require(np.allclose(Gc @ Jf @ Gc.T, dl * Jf, atol=1e-8) and abs(np.linalg.det(Gc) - dl ** 3) < 1e-6,
                "det G = delta^3")
    # DP Lemma 8.1: flat vectors c f0 + e f1 need Re(w q_j) = 0 for all j, w = conj(c) e;
    # the 6x2 real system has rank 2 (so w = 0) unless q takes two antipodal values
    nb = 0
    for _ in range(trials):
        q = _zero_sum_phases(rng)
        Mq = np.stack([q.real, -q.imag], axis=1)
        require(np.linalg.matrix_rank(Mq, tol=1e-9) == 2, "Lemma 8.1: nonbinary q collinear?")
        nb += 1
    qb = np.exp(1j * rng.random()) * np.array([1, 1, 1, -1, -1, -1])
    require(np.linalg.matrix_rank(np.stack([qb.real, -qb.imag], axis=1), tol=1e-9) == 1, "binary q rank")
    # CR (3.5) numeric: Delta(Z) = (s^2-t^2)^2 for random 2x2 Z
    for _ in range(trials):
        Zr = rng.normal(size=(2, 2)) + 1j * rng.normal(size=(2, 2))
        sv = np.linalg.svd(Zr, compute_uv=False)
        H = Zr.conj().T @ Zr
        require(abs(2 * np.trace(H @ H).real - np.trace(H).real ** 2 - (sv[0] ** 2 - sv[1] ** 2) ** 2) < 1e-9,
                "CR (3.5) numeric")
    return {"trials": trials, "lemma8_1_nonbinary_trials": nb}


def _expm(Xm):
    # scaling and squaring with Taylor series (numpy only)
    nrm = np.linalg.norm(Xm)
    k = max(0, int(np.ceil(np.log2(nrm + 1e-300))) + 1)
    Y = Xm / 2 ** k
    E = np.eye(Xm.shape[0], dtype=complex)
    term = np.eye(Xm.shape[0], dtype=complex)
    for j in range(1, 30):
        term = term @ Y / j
        E = E + term
    for _ in range(k):
        E = E @ E
    return E


# ---------------------------------------------------------------------------
def calculate(seed=20260927):
    t0 = time.time()
    timings = {}
    result = {}

    def run(name, fn, *a):
        s_ = time.time()
        result[name] = fn(*a)
        timings[name] = round(time.time() - s_, 3)
    _field_selftest()
    rng = np.random.default_rng(seed)
    run("symbolic_identities_sympy", symbolic_identities)
    run("DP_section10_exact_controls", dp_controls)
    run("CR_section7_exact_controls", cr_controls)
    run("Interior_section8_edge_control_exact", interior_edge_control)
    run("Endpoint_Lemma5_1_linesum_control_exact", endpoint_linesum_control)
    run("Endpoint_sign_Hadamard_and_transfer_exact", sign_hadamard_and_transfer)
    run("random_DP_Lemma2_1", num_dp_lemma21, rng)
    run("random_Interior_Lemma6_1", num_interior_lemma61, rng)
    run("random_Endpoint_Lemma6_1", num_endpoint_lemma61, rng)
    run("random_Interior_Lemma4_1", num_interior_lemma41, rng)
    run("random_operator_identities", num_operator_identities, rng)
    result["timings_s"] = timings
    result["total_runtime_s"] = round(time.time() - t0, 3)
    result["status"] = "PASS"
    json.dumps(result)
    return result

if __name__ == "__main__":
    print(json.dumps(calculate(), indent=1))
