"""Exact mirror of the kernel boundary checker (`KernelAtlas/BoundaryK.lean`), and the data it needs.

The boundary cover of one Record (`BoundaryCover`, Lemma 4.1) in exact integer arithmetic:
  * the eta-cube [-W, W]^4 (W >= r_H dyadic) is a 16-ary tree; the box at depth d with integer centre m is
    {eta : |2^d eta_k - W m_k| <= W}, half-width h_d = W / 2^d, half-diagonal 2 h_d;
  * a box is OFF (code 0) if it misses the ball ||eta|| <= r_H (sum_k max(|m_k| - 1, 0)^2 > B_d) or lies inside the
    inner shell ||T eta||^2 < R^2 - n^2 (m^T GT m < Phi_d, GT the integer Gram of T^ = DT T);
  * a box is a LEAF for target j (code 2 + j) if ||c_j + M_j eta|| + n < R_t on the whole box, by
    w^T G_j w < Theta_{j,d} with w = (Wd 2^d DT, L Wn m_0, ..., L Wn m_3) and G_j the integer Gram of
    H_0 = hor36(L (A P_s + 2 pi~ N - P_t)), H_k = hor36(A T^_k);
  * otherwise it is split (code 1) into 16 children 2m + s, s in {-1, 1}^4.
Thresholds (one-time rational checks in the kernel):
  B_d   >= r_H^2 4^d / W^2,
  Phi_d <= ((sq - 2 slam h_d) 2^d DT / W)^2 with sq^2 <= R^2 - nbar^2, slam^2 >= lam,
  Theta_{j,d} <= (kappa_d D_{j,d})^2, kappa_d = 36 L Wd 2^d DT,
  D_{j,d} = R_t - nbar - 2 slam h_d - 10^-20 (sum N^2 + 1)   (the last term covers pi - pi~ <= 10^-20).
The tree is preorder, packed into one natural number (base BASE, first code in the lowest digit).
"""
import math
from fractions import Fraction as Fr

PI_LO = Fr(314159265358979323846, 10 ** 20)
PI_ERR = Fr(1, 10 ** 20)
BASE = 4096
IDX = list(range(6))
SIGNS = [(s0, s1, s2, s3) for s0 in (-1, 1) for s1 in (-1, 1) for s2 in (-1, 1) for s3 in (-1, 1)]   # Lean `offs`


def hor36(Z):
    rs = [sum(Z[a]) for a in range(6)]
    cs = [sum(Z[a][b] for a in range(6)) for b in range(6)]
    t = sum(rs)
    return [[36 * Z[a][b] - 6 * rs[a] - 6 * cs[b] + t for b in range(6)] for a in range(6)]


def gram(Hs):
    return [[sum(Ha[a][b] * Hb[a][b] for a in range(6) for b in range(6)) for Hb in Hs] for Ha in Hs]


def act(sg, tr, rp, cp, X):
    """(A X)_{ab} = sg (X or X^T)[rp[a]][cp[b]]."""
    return [[sg * (X[cp[b]][rp[a]] if tr else X[rp[a]][cp[b]]) for b in range(6)] for a in range(6)]


def inv(p):
    q = [0] * 6
    for i, x in enumerate(p):
        q[x] = i
    return q


def qf(G, w):
    return sum(w[a] * w[b] * G[a][b] for a in range(len(w)) for b in range(len(w)))


def sqrt_up(x, den=2 ** 40):
    s = Fr(math.ceil(math.sqrt(float(x)) * (1 + 1e-12) * den), den)
    while s * s < x:
        s += Fr(1, den)
    return s


def sqrt_down(x, den=2 ** 40):
    s = Fr(math.floor(math.sqrt(float(x)) * (1 - 1e-12) * den), den)
    while s > 0 and s * s > x:
        s -= Fr(1, den)
    return max(s, Fr(0))


def floor_fr(x):
    return x.numerator // x.denominator


def ceil_fr(x):
    return -((-x.numerator) // x.denominator)


def winding(sg, tr, rp, cp, Ps, Pt):
    """The integer winding N with h(A P_s + 2 pi N - P_t) small (as transfer_data in certify.py)."""
    import numpy as np
    A = np.array(act(sg, tr, rp, cp, [[float(x) for x in r] for r in Ps])) - np.array([[float(x) for x in r] for r in Pt])
    Z = np.exp(1j * A)
    Z = Z / Z[:1, :]
    Z = Z / Z[:, :1]
    D = np.angle(Z)
    base = A - A[:1, :] - A[:, :1] + A[0, 0]
    Nf = (D - base) / (2 * math.pi)
    N = np.rint(Nf)
    assert np.abs(Nf - N).max() < 1e-6, 'winding not integral'
    return [[int(N[a][b]) for b in range(6)] for a in range(6)]


class Boundary:
    """All data of the kernel boundary check of one Record, and the exact tree search."""

    def __init__(self, Ps, That, DT, R, g, lam, nbar, targets, dmax=12, wden=2 ** 40):
        """Ps: source centre (6x6 Fractions); That: 4x6x6 ints, T = That / DT; R, g, lam, nbar: kernel constants
        (Fractions; r_H = g R); targets: list of (t, sg, tr, rp, cp, Pt, Rt)."""
        self.Ps, self.That, self.DT, self.R, self.lam, self.nbar = Ps, That, DT, R, lam, nbar
        self.rH = g * R
        self.dmax = dmax
        W = Fr(ceil_fr(self.rH * wden), wden)
        self.Wn, self.Wd = W.numerator, W.denominator
        self.W = W
        self.slam = sqrt_up(lam)
        q = R * R - nbar * nbar
        assert q > 0
        self.sq = sqrt_down(q)
        GT = gram([That[k] for k in range(4)])
        self.GT = GT
        self.Bd, self.Phi = [], []
        for d in range(dmax + 1):
            h = W / 2 ** d
            self.Bd.append(ceil_fr(self.rH ** 2 * 4 ** d / W ** 2))
            a = 2 * self.slam * h
            if a <= self.sq:
                X = ((self.sq - a) * 2 ** d * DT / W) ** 2
                self.Phi.append(floor_fr(X))
            else:
                self.Phi.append(0)
        self.tg = []
        Ls = 1
        raw = []
        for (t, sg, tr, rp, cp, Pt, Rt) in targets:
            N = winding(sg, tr, rp, cp, Ps, Pt)
            AP = act(sg, tr, rp, cp, Ps)
            Y = [[AP[a][b] + 2 * PI_LO * N[a][b] - Pt[a][b] for b in range(6)] for a in range(6)]
            for r in Y:
                for x in r:
                    Ls = Ls * x.denominator // math.gcd(Ls, x.denominator)
            raw.append((t, sg, tr, rp, cp, Pt, Rt, N, Y))
        self.L = Ls
        AT = None
        for (t, sg, tr, rp, cp, Pt, Rt, N, Y) in raw:
            Yh = [[int(Ls * Y[a][b]) for b in range(6)] for a in range(6)]
            assert all(Fr(Yh[a][b]) == Ls * Y[a][b] for a in range(6) for b in range(6))
            Hs = [hor36(Yh)] + [hor36(act(sg, tr, rp, cp, That[k])) for k in range(4)]
            G = gram(Hs)
            S = sum(N[a][b] ** 2 for a in range(6) for b in range(6))
            Th = []
            for d in range(dmax + 1):
                h = W / 2 ** d
                D = Rt - nbar - 2 * self.slam * h - PI_ERR * (S + 1)
                kap = 36 * Ls * self.Wd * 2 ** d * DT
                Th.append(floor_fr((kap * D) ** 2) if D >= 0 else 0)
            self.tg.append(dict(t=t, sg=sg, tr=tr, rp=list(rp), cp=list(cp), rpi=inv(rp), cpi=inv(cp), N=N, Pt=Pt,
                                Rt=Rt, Y=Yh, G=G, Th=Th))

    # ---- the per-box tests, exactly as in Lean
    def off_ok(self, d, m):
        e2 = sum(max(abs(x) - 1, 0) ** 2 for x in m)
        if e2 > self.Bd[d]:
            return True
        ph = self.Phi[d]
        return 0 < ph and qf(self.GT, m) < ph

    def w(self, d, m):
        c = self.L * self.Wn
        return [self.Wd * 2 ** d * self.DT] + [c * x for x in m]

    def tr_ok(self, j, d, m):
        t = self.tg[j]
        th = t['Th'][d]
        return 0 < th and qf(t['G'], self.w(d, m)) < th

    def margin(self, j, d, m):
        t = self.tg[j]
        return t['Th'][d] - qf(t['G'], self.w(d, m))

    def search(self):
        """Preorder codes of the tree (0 off, 1 split, 2 + j leaf), or raise if a box at depth dmax is undecided."""
        codes = []
        stats = dict(off=0, leaf=0, split=0, depth=[0] * (self.dmax + 1))

        def rec(d, m):
            stats['depth'][d] += 1
            if self.off_ok(d, m):
                codes.append(0); stats['off'] += 1; return
            ok = [j for j in range(len(self.tg)) if self.tr_ok(j, d, m)]
            if ok:
                codes.append(ok); stats['leaf'] += 1; return
            if d == self.dmax:
                raise AssertionError('undecided boundary box at depth %d, m = %s' % (d, m))
            codes.append(1); stats['split'] += 1
            for s in SIGNS:
                rec(d + 1, [2 * m[k] + s[k] for k in range(4)])

        rec(0, [0, 0, 0, 0])
        # leaf hints: a greedy set cover, so that few targets need their one-time kernel check
        leaves = [c for c in codes if isinstance(c, list)]
        left, hint = set(range(len(leaves))), {}
        cover = {}
        for i, ok in enumerate(leaves):
            for j in ok:
                cover.setdefault(j, set()).add(i)
        while left:
            j = max(cover, key=lambda j: (len(cover[j] & left), -j))
            for i in cover[j] & left:
                hint[i] = j
            left -= cover[j]
        it = iter(range(len(leaves)))
        self.codes = [2 + hint[next(it)] if isinstance(c, list) else c for c in codes]
        self.stats = stats
        return self.codes

    def prune(self):
        """Keep only the targets some leaf uses (the kernel checks every listed target once)."""
        used = sorted({c - 2 for c in self.codes if c >= 2})
        new = {j: i for i, j in enumerate(used)}
        self.tg = [self.tg[j] for j in used]
        self.codes = [c if c < 2 else 2 + new[c - 2] for c in self.codes]
        return len(used)

    def packed(self):
        assert len(self.tg) + 2 <= BASE
        n = 0
        for c in reversed(self.codes):
            n = n * BASE + c
        return n

    def walk(self, code):
        """The Lean `walk` on the packed code (a check of the packing): returns the remaining stream or None."""
        def go(f, d, m, s):
            if f == 0:
                return None
            k, s1 = s % BASE, s // BASE
            if k == 0:
                return s1 if self.off_ok(d, m) else None
            if k == 1:
                for sv in SIGNS:
                    s1 = go(f - 1, d + 1, [2 * m[i] + sv[i] for i in range(4)], s1)
                    if s1 is None:
                        return None
                return s1
            j = k - 2
            return s1 if j < len(self.tg) and self.tr_ok(j, d, m) else None
        return go(self.dmax + 1, 0, [0, 0, 0, 0], code)


def record_boundary(idx, cert=None, kc=None, dmax=12):
    """The Boundary object of atlas Record idx, from the kernel normal-bound constants (`knormal.kernel_consts`)."""
    import gzip, json, os, sys
    here = os.path.dirname(os.path.abspath(__file__))
    sys.path.insert(0, here)
    from knormal import kernel_consts
    from export_tangent import DT
    if cert is None:
        cert = json.load(gzip.open(os.path.join(here, '..', '..', 'proof/atlas/results/atlas_certificate.json.gz'), 'rt'))
    recs = cert['records']
    rec = recs[idx]
    if kc is None:
        kc = kernel_consts(rec, DT)
    cen = lambda r: [[Fr(float.fromhex(r['phi'][6 * j + i])) for i in range(6)] for j in range(6)]
    targets = []
    for (t, sg, tr, rp, cp) in rec['targets']:
        targets.append((t, sg, tr, rp, cp, cen(recs[t]), Fr(recs[t]['R'])))
    return Boundary(kc['Prad'], kc['That'], DT, kc['R'], kc['fc']['g'], kc['fc']['lam'], kc['n'], targets, dmax=dmax), kc


if __name__ == '__main__':
    import sys, time
    t0 = time.time()
    B, kc = record_boundary(int(sys.argv[1]))
    t1 = time.time()
    codes = B.search()
    t2 = time.time()
    n = B.packed()
    assert B.walk(n) == 0
    print('targets %d, L bits %d, nodes %d, stats %s, setup %.1fs, search %.1fs, code bits %d' % (
        len(B.tg), B.L.bit_length(), len(codes), B.stats, t1 - t0, t2 - t1, n.bit_length()))
