"""Edge balls (SPEC.md section 10): the four-dimensional chart through F6, certified in Arb.

Chart (return U, eq. 20).  p = (u1, u2, u3, y).  The horizontal unknowns x_h = (t, phi_h) in R^7 solve
    gamma(PH0 + phi_h) = Gamma_h(TH0 + (u1, u2, u3, t)),      Im Psi(X(PH0 + phi_h))/24 + y/48 = 0,
with gamma = (Re s, Im s, Re t, Im t, Re r, Im r), s = sum x_j, t = sum y_j, r = sum conj(x_j) y_j over the side rows
x = e^{i phi[0:3]}, y = e^{i phi[3:6]}, and Gamma_h the entries (1,0), (2,0), (2,1) of G_h = 6I - E E^*.  The vertical
unknowns x_v = (t', phi_v) solve the same system at q_v = (u1, u3, u2, -y) (E^T has the seed (th1, th3, th2, th4)).
TH0 = (1,2,2,4) pi/3 and PH0 = (3,4,5,0,2,4) pi/3 are exact (Arb pi): every monomial below is e^{i(n.z + kappa)}
with z = (q1, q2, q3, t, phi_0..5) and kappa = n.(TH0, PH0), an integer multiple of pi/3.

The edge ball is E = {p = Mth w : ||w|| <= r}.  C1e (certify_edge_c1), per w-box of the k-grid:
  * a parametric Krawczyk tube for each 7-unknown system (unique solution in the inclusion box pred + [-rho, rho]^7);
  * t' = t: both t, t' solve R(u1, u2, u3, TH0_4 + .) = y^2 (R o Gamma = 4 S^2, S = -+y/2), so dR/dth4 > 0 on the
    hull of the two t-ranges forces t = t'; and g > 0 there (both evaluated in Arb on the seed-phase ranges);
  * H = [[E, B], [C, D]], D by residual correction (seedcert.forced_block), arg D, and the per-box bound of
    ||Q - P - U w - 2 pi N|| as for seed balls.
The tubes are kept (EdgeTubes) for T3: a matrix K enters the edge ball if its corner data p_K lies in int E and its
two dephased sides (with theta_K4) lie in the inclusion boxes at p_K; uniqueness then gives K = H(p_K).
"""
import itertools, math, time
from collections import defaultdict
import numpy as np
from flint import arb, acb, arb_mat, ctx

import tmarb as TMA
from tmarb import TM, oarb, oacb, up, vup, vmap, stack, exp_i, zeros
import seedcert as S
from seedcert import CertError, need

K_TH0 = (1, 2, 2, 4)
K_PH0 = (3, 4, 5, 0, 2, 4)
TH0f = np.array(K_TH0) * math.pi / 3
PH0f = np.array(K_PH0) * math.pi / 3
QPERM_V = np.array([0, 2, 1, 3]); QSIGN_V = np.array([1, 1, 1, -1])     # q_v = (q1, q3, q2, -y)


# ======================================================================================== the system as trig polynomials
def _laurent_psi():
    """Psi(X) = perm(X) det(X)^2 prod conj(X_ab) for X = [[1,1,1], x, y] with unimodular entries, as
    {exponent vector over phi_0..5: integer coefficient}."""
    def mul(A, B):
        C = defaultdict(int)
        for ka, va in A.items():
            for kb, vb in B.items():
                C[tuple(a + b for a, b in zip(ka, kb))] += va * vb
        return {k: v for k, v in C.items() if v}
    perm, det = defaultdict(int), defaultdict(int)
    for (a, b), sg in zip(S._PERM6, S._SGN):
        k = [0] * 6; k[a] += 1; k[3 + b] += 1; k = tuple(k)
        perm[k] += 1; det[k] += sg
    return mul(mul(mul(dict(perm), dict(det)), dict(det)), {(-1,) * 6: 1})


class EdgeSystem:
    """Monomials e^{i(n.z + kappa)} (n in Z^10, z = (q1, q2, q3, t, phi_0..5)) and the complex quantities
    A0 = s - G_10, A1 = t - G_20, A2 = r - G_21, A3 = Psi as integer combinations of them.
    F = (Re A0, Im A0, Re A1, Im A1, Re A2, Im A2, Im A3 / 24 + q4 / 48)."""

    def __init__(self):
        terms = [defaultdict(int) for _ in range(4)]
        def ph(j): k = [0] * 10; k[4 + j] = 1; return k
        def add(c, n, v): terms[c][tuple(n)] += v
        for j in range(3):
            add(0, ph(j), 1); add(1, ph(3 + j), 1)
            n = ph(3 + j); n[4 + j] -= 1; add(2, n, 1)
        # -G_10 = 1 + e^{i th1} + e^{i th2}; -G_20 = 1 + e^{i th3} + e^{i th4}; -G_21 = 1 + e^{i(th3 - th1)} + e^{i(th4 - th2)}
        z0 = [0] * 10
        def th(*pairs):
            n = [0] * 10
            for k, v in pairs: n[k] += v
            return n
        for c, mons in ((0, [z0, th((0, 1)), th((1, 1))]), (1, [z0, th((2, 1)), th((3, 1))]),
                        (2, [z0, th((2, 1), (0, -1)), th((3, 1), (1, -1))])):
            for n in mons: add(c, n, 1)
        for k, v in _laurent_psi().items():
            add(3, [0, 0, 0, 0] + list(k), v)
        mons = sorted(set(n for t in terms for n in t))
        self.N = np.array(mons, dtype=np.int64)                                   # (M, 10)
        self.M = len(mons)
        idx = {n: m for m, n in enumerate(mons)}
        self.C = np.zeros((4, self.M), dtype=np.int64)
        for c in range(4):
            for n, v in terms[c].items(): self.C[c, idx[n]] = v
        keep = np.any(self.C != 0, axis=0)
        self.N, self.C = self.N[keep], self.C[:, keep]; self.M = len(self.N)
        base = np.array(list(K_TH0) + list(K_PH0))
        self.kap = (self.N @ base) % 6                                            # kappa = pi kap / 3
        # Arb data: e^{i kappa} and the coefficient matrices (complex) for A and dA/dx_k (x = z[3:10])
        self.ekap = np.array([acb(0, arb.pi() * int(k) / 3).exp() for k in self.kap], dtype=object)
        # dA_c/dx_k = sum_m i n_m,3+k C_cm e^{i(n_m.z + kappa_m)} (x = z[3:10]); exact Gaussian-integer coefficients
        self.CJ = np.array([[[acb(0, int(self.N[m, 3 + k]) * int(self.C[c, m])) for m in range(self.M)] for k in range(7)]
                            for c in range(4)], dtype=object).reshape(28, self.M)
        self.Nf = self.N.astype(float); self.kapf = self.kap * math.pi / 3
        self.Cf = self.C.astype(complex) * np.exp(1j * self.kapf)[None, :]

    # ---------------------------------------------------------------- floats (predictors only)
    def _z(self, q, x):
        return np.concatenate([q[..., :3], x], -1)

    def F_float(self, q, x):
        e = np.exp(1j * (self._z(q, x) @ self.Nf.T))                             # (..., M)
        A = e @ self.Cf.T                                                        # (..., 4)
        return np.stack([A[..., 0].real, A[..., 0].imag, A[..., 1].real, A[..., 1].imag, A[..., 2].real, A[..., 2].imag,
                         A[..., 3].imag / 24 + q[..., 3] / 48], -1)

    def J_float(self, q, x):
        """(dF/dx (..., 7, 7), dF/dq (..., 7, 4))."""
        e = np.exp(1j * (self._z(q, x) @ self.Nf.T))
        dA = 1j * np.einsum('...m,cm,mk->...ckm', e, self.Cf, self.Nf).sum(-1)     # (..., 4, 10): dA_c / dz_k
        def rows(d):
            return np.stack([d[..., 0, :].real, d[..., 0, :].imag, d[..., 1, :].real, d[..., 1, :].imag,
                             d[..., 2, :].real, d[..., 2, :].imag, d[..., 3, :].imag / 24], -2)
        R = rows(dA)                                                              # (..., 7, 10)
        Jx = R[..., 3:]
        Jq = np.concatenate([R[..., :3], np.zeros(R.shape[:-1] + (1,))], -1)
        Jq[..., 6, 3] = 1 / 48
        return Jx, Jq

    def newton(self, q, x, iters=10, tol=1e-13):
        x = x.copy()
        for _ in range(iters):
            f = self.F_float(q, x)
            if np.abs(f).max(initial=0) < tol: break
            Jx, _ = self.J_float(q, x)
            try: x = x - np.linalg.solve(Jx, f[..., None])[..., 0]
            except np.linalg.LinAlgError: break
        ok = np.all(np.abs(self.F_float(q, x)) < 1e-10, axis=-1) & np.all(np.isfinite(x), axis=-1)
        return x, ok

    # ---------------------------------------------------------------- Arb Taylor models
    def _E(self, qt, xt):
        """e^{i(n.z + kappa)} (B, M) as a complex TM, from the parameter TM qt (B, 4) and the unknowns xt (B, 7)."""
        B = xt.c.shape[0]
        z = TM(np.concatenate([qt.c[:, :3], xt.c], 1), np.concatenate([qt.g[:, :3], xt.g], 1),
               np.concatenate([qt.q[:, :3], xt.q], 1), np.concatenate([qt.rho[:, :3], xt.rho], 1), xt.h)
        ph = z.lmul(oarb(self.Nf))                                               # (B, M) real
        return exp_i(ph).scale(self.ekap)

    def _combo(self, E, coef):
        """sum_m coef[m] E[:, m] for a sparse coefficient row (exact acb/arb numbers), as a TM (B,)."""
        nz = [m for m in range(self.M) if coef[m] != 0]
        t = E[np.array(nz)].scale(np.array([coef[m] for m in nz], dtype=object))
        return S.sum1(t)

    def F_tm(self, qt, xt):
        E = self._E(qt, xt)
        A = [self._combo(E, [acb(int(v)) for v in self.C[c]]) for c in range(4)]
        y48 = qt[3].scale(arb(1) / 48)
        last = A[3].im().scale(arb(1) / 24) + y48
        return stack([A[0].re(), A[0].im(), A[1].re(), A[1].im(), A[2].re(), A[2].im(), last], (7,), xt.h, False)

    def J_tm(self, qt, xt):
        E = self._E(qt, xt)
        d = {}
        for c in range(4):
            for k in range(7):
                if np.any(self.C[c] * self.N[:, 3 + k] != 0): d[7 * c + k] = self._combo(E, self.CJ[7 * c + k])
        zero = TMA.ZERO
        ent = []
        for c, part in ((0, 're'), (0, 'im'), (1, 're'), (1, 'im'), (2, 're'), (2, 'im'), (3, 'im')):
            for k in range(7):
                if 7 * c + k not in d: ent.append(zero); continue
                t = getattr(d[7 * c + k], part)()
                ent.append(t.scale(arb(1) / 24) if c == 3 else t)
        return stack(ent, (7, 7), xt.h, False)


SYS = None


def system():
    global SYS
    if SYS is None: SYS = EdgeSystem()
    return SYS


# ======================================================================================== the edge ball
class EdgeBall:
    """One edge-ball record (FORMAT.md section 8): chart "F6-012", Mth (16), r, P (36), U (144), n, label_radius,
    k (4 ints, boxes per w-axis), transfers."""

    def __init__(self, d):
        hx = S._hexf
        need(d.get('chart') == 'F6-012', 'edge ball: unknown chart %r' % (d.get('chart'),))
        self.Mth = np.array([hx(x) for x in d['Mth']], float)
        self.P = np.array([hx(x) for x in d['P']], float)
        self.U = np.array([hx(x) for x in d['U']], float)
        self.r = hx(d['r']); self.n = hx(d['n']); self.label_radius = hx(d['label_radius'])
        need(self.Mth.shape == (16,) and self.P.shape == (36,) and self.U.shape == (144,), 'edge ball: wrong array sizes')
        self.Mth = self.Mth.reshape(4, 4); self.U = self.U.reshape(36, 4)
        k = d['k']
        need(isinstance(k, list) and len(k) == 4 and all(isinstance(v, int) and not isinstance(v, bool) and 1 <= v <= 64 for v in k),
             'edge ball: k must be 4 integers in [1, 64]')
        self.k = k
        allf = np.concatenate([self.Mth.ravel(), self.P, self.U.ravel(), [self.r, self.n, self.label_radius]])
        need(np.all(np.isfinite(allf)), 'edge ball: non-finite data')
        need(self.r > 0 and self.n >= 0 and self.label_radius > 0, 'edge ball: r > 0, n >= 0, label_radius > 0 required')
        self.Mth_a = oarb(self.Mth); self.P_a = oarb(self.P); self.U_a = oarb(self.U); self.r_a = arb(self.r)
        self.o = None
        self._Minv = None

    def Minv(self):
        if self._Minv is None:
            try: Mi = arb_mat(self.Mth.tolist()).inv()
            except ZeroDivisionError: raise CertError('edge ball: Mth not certified invertible')
            A = np.array([[Mi[i, j] for j in range(4)] for i in range(4)], dtype=object)
            need(all(x.is_finite() for x in A.flat), 'edge ball: Mth not certified invertible')
            self._Minv = A
        return self._Minv


def edge_boxes(r, k):
    """Boxes of [-r, r]^4 with k_a per axis that meet the open ball (exact rationals; see seedcert.ball_boxes)."""
    from fractions import Fraction as Fr
    rq = Fr(r); hq = [rq / ka for ka in k]
    keep = []
    for idx in itertools.product(*[range(ka) for ka in k]):
        cq = [-rq + (2 * i + 1) * hq[a] for a, i in enumerate(idx)]
        if sum(max(abs(c) - hq[a], Fr(0)) ** 2 for a, c in enumerate(cq)) < rq * rq: keep.append(idx)
    ra = arb(r)
    wc = np.array([[ra * (2 * i + 1 - k[a]) / k[a] for a, i in enumerate(idx)] for idx in keep], dtype=object).reshape(len(keep), 4)
    h = np.array([[ra / k[a] for a in range(4)] for _ in keep], dtype=object).reshape(len(keep), 4)
    wcf = np.array([[r * (2 * i + 1 - k[a]) / k[a] for a, i in enumerate(idx)] for idx in keep], float).reshape(len(keep), 4)
    return keep, wc, h, wcf


# ---------------------------------------------------------------- float predictors
def continue_x(sysm, q, step=0.05):
    """Solutions x(q) (B, 7) of the augmented system by continuation from q = 0, x = 0 (exact there)."""
    B = len(q)
    x = np.zeros((B, 7)); ok = np.ones(B, bool)
    m = max(1, int(math.ceil(np.abs(q).max(initial=0) / step)))
    for s in range(1, m + 1):
        x2, ok2 = sysm.newton(q * (s / m), x)
        ok &= ok2 & (np.abs(x2 - x).max(1) < 0.5)
        x = x2
    return x, ok


def side_predictor(sysm, Mq, wcf, eps=1e-5):
    """Quadratic predictor of x(q(w)) in the box variable u, q = Mq (wc + u): value, gradient (B, 7, 4), monomial
    coefficients (B, 7, 10), and Y = (dF/dx)^-1 at the centre."""
    qc = wcf @ Mq.T
    xc, ok = continue_x(sysm, qc)
    def d1(q, x):
        Jx, Jq = sysm.J_float(q, x)
        return -np.linalg.solve(Jx, Jq @ Mq)                                    # (B, 7, 4): dx/du
    g = d1(qc, xc)
    B = len(qc); Hm = np.zeros((B, 7, 4, 4))
    for l in range(4):
        e = np.zeros(4); e[l] = eps
        qp, qm = (wcf + e) @ Mq.T, (wcf - e) @ Mq.T
        xp, okp = sysm.newton(qp, xc); xm, okm = sysm.newton(qm, xc)
        ok &= okp & okm
        Hm[:, :, :, l] = (d1(qp, xp) - d1(qm, xm)) / (2 * eps)
    Hm = 0.5 * (Hm + np.swapaxes(Hm, -1, -2))
    q2 = np.stack([0.5 * Hm[..., j, j] if j == l else Hm[..., j, l] for j, l in TMA.MONO], -1)
    Jx, _ = sysm.J_float(qc, xc)
    Y = np.linalg.inv(Jx)
    ok &= np.all(np.isfinite(g.reshape(B, -1)), 1) & np.all(np.isfinite(q2.reshape(B, -1)), 1) & np.all(np.isfinite(Y.reshape(B, -1)), 1)
    return xc, g, q2, Y, ok


# ---------------------------------------------------------------- Arb pieces
def param_tm(Mq, wc, h):
    """q(u) = Mq (wc + u) as a real TM (B, 4) with exact linear part Mq."""
    B = wc.shape[0]
    Ma = oarb(Mq)
    return TM(np.einsum('ij,bj->bi', Ma, wc), np.broadcast_to(Ma, (B, 4, 4)).copy(), zeros((B, 4, 10)), zeros((B, 4)), h)


UNIQ_TRY = (0.03, 0.01, 0.003, 0.001, 3e-4)


def kraw_tube(sysm, qt, pred, Y, tries=8, rho_max=0.3):
    """Parametric Krawczyk for the 7-unknown system over the box (as seedcert.side_tube): with X(u) = pred(u) +
    [-rho, rho]^7, b = sup|Y F(pred)|, q_i = row sums of sup |I - Y dF/dx(X)|, b + q rho < rho (certified) gives a
    unique zero in X(u) for every u, lying in pred + [-(b + q rho), b + q rho].  Returns (tube TM, rho_uniq):
    the tube from the smallest working rho (the C1e enclosure), and per box the LARGEST rho in UNIQ_TRY (or the small
    one) for which the same test passes, so that the zero is unique in pred + [-rho_uniq, rho_uniq]^7 (used by T3)."""
    B = pred.c.shape[0]
    Ya = oarb(Y)
    b = sysm.F_tm(qt, pred).lmul(Ya).bound()
    bf = vup(b)
    I7 = np.full((7, 7), TMA.ZERO, dtype=object)
    for i in range(7): I7[i, i] = arb(1)

    def test(idx, rho):
        ra = oarb(rho)
        tot = pred.select(idx).add_rho(np.broadcast_to(ra[:, None], (len(idx), 7)))
        A = (S.cmatmul(Ya[idx], sysm.J_tm(qt.select(idx), tot)).scale(arb(-1)) + I7).bound()
        q = A.sum(-1)
        nd = b[idx] + q * ra[:, None]
        return q, nd, [all(nd[t, k] < ra[t] for k in range(7)) for t in range(len(idx))]

    rho = np.maximum(1.5 * bf.max(1), 1e-300)
    done = np.zeros(B, bool); needv = np.empty((B, 7), dtype=object); runiq = np.zeros(B)
    for _ in range(tries):
        idx = np.where(~done)[0]
        q, nd, good = test(idx, rho[idx])
        for t, i in enumerate(idx):
            if good[t]:
                done[i] = True; needv[i] = nd[t]; runiq[i] = rho[i]
            else:
                qf = vup(q[t])
                if np.any(qf >= 1): raise CertError('edge Krawczyk: q >= 1 (no contraction)')
                rho[i] = (bf[i] / (1 - qf)).max() * 1.2 + 1e-300
                if rho[i] > rho_max: raise CertError('edge Krawczyk: tube radius too large')
        if done.all(): break
    else:
        raise CertError('edge Krawczyk: no contraction after %d tries' % tries)
    open_ = np.arange(B)
    for big in UNIQ_TRY:                                                     # uniqueness radius for T3
        idx = open_[runiq[open_] < big]
        if not len(idx): continue
        _, _, good = test(idx, np.full(len(idx), big))
        for t, i in enumerate(idx):
            if good[t]: runiq[i] = big
        open_ = open_[runiq[open_] < big]
    return pred.add_rho(needv), runiq


def dR4_and_g_tm(th):
    """(dR/dtheta_4, g) as real Taylor models (B,) of the seed TM th (B, 4) (formulas of seedball.R_of; the Gram
    entries s, t, r = G_10, G_20, G_21 of G_h = 6I - E E^*)."""
    e = exp_i(th)
    a, b, c, d = e[0], e[1], e[2], e[3]
    one = TMA.acb(1)
    s = -(a + b + one); t = -(c + d + one); r = -(c * a.conj() + d * b.conj() + one)
    mi = TMA.acb(0, -1)
    dt = d.scale(mi); dr = (d * b.conj()).scale(mi)
    X = (s * s.conj()).re(); Y = (t * t.conj()).re(); Z = (r * r.conj()).re()
    dY = (t.conj() * dt).re().scale(arb(2)); dZ = (r.conj() * dr).re().scale(arb(2))
    p = X + Y + Z; dp = dY + dZ
    J = (s * r * t.conj()).re().scale(arb(2)); dJ = (s * dr * t.conj() + s * r * dt.conj()).re().scale(arb(2))
    W = X * Y + X * Z + Y * Z - X * Y * Z
    dW = X * dY + X * dZ + dY * Z + Y * dZ - X * (dY * Z + Y * dZ)
    g = (p.scale(arb(-3)) + J) + arb(27); dg = dp.scale(arb(-3)) + dJ
    eta = (J - p) + arb(9); deta = dJ - dp
    chi = W - (p - arb(9)) * (p - arb(18)) + (p - arb(15)) * J
    dchi = dW - dp * (p - arb(18)) - (p - arb(9)) * dp + dp * J + (p - arb(15)) * dJ
    dR = (g * dg * eta).scale(arb(8)) + (g * g * deta).scale(arb(4)) - (chi * dchi).scale(arb(2))
    return dR, g


def check_edge_regular(qt, xh, xv):
    """dR/dth4 > 0 and g > 0 at theta = TH0 + (q1, q2, q3, s) for every u in the box and every s on the segment
    between t(u) and t'(u) (so R(.., TH0_4 + t) = y^2 = R(.., TH0_4 + t') forces t = t'): s is enclosed by the Taylor
    model of t with its remainder enlarged by sup |t' - t|, and both quantities are evaluated as Taylor models."""
    B = qt.c.shape[0]
    th0 = np.array([arb.pi() * k / 3 for k in K_TH0], dtype=object)
    gap = (xv[0] - xh[0]).bound()                                               # sup |t' - t| (B,)
    seg = xh[0].add_rho(gap)
    th = stack([qt[0], qt[1], qt[2], seg], (4,), qt.h, False) + th0[None, :]
    dR, g = dR4_and_g_tm(th)
    need(np.all(S.sign_certified(dR) == 1), 'edge: dR/dtheta_4 > 0 not certified on the seed range')
    need(np.all(S.sign_certified(g) == 1), 'edge: g > 0 not certified on the seed range')


def forced_D_float(qh, xh, xv):
    th = TH0f + np.concatenate([qh[..., :3], xh[..., :1]], -1)
    E = S.seedE_f(th); Bm = S.side_f(PH0f + xh[..., 1:]); C = np.swapaxes(S.side_f(PH0f + xv[..., 1:]), -1, -2)
    return -(C @ np.conj(np.swapaxes(E, -1, -2))) @ np.linalg.inv(np.conj(np.swapaxes(Bm, -1, -2)))


def D_predictor(sysm, Mh, Mv, wcf, xh, xv, eps=1e-4):
    """Quadratic predictor of D(w) on each box (finite differences of the float completion)."""
    B = len(wcf)
    offs = [np.zeros(4)]
    for j in range(4):
        e = np.zeros(4); e[j] = 1; offs += [e, -e]
    pairs = list(itertools.combinations(range(4), 2))
    for (j, l) in pairs:
        for a, b in ((1, 1), (1, -1), (-1, 1), (-1, -1)):
            e = np.zeros(4); e[j] = a; e[l] = b; offs.append(e)
    offs = np.array(offs) * eps
    Dn = []
    ok = np.ones(B, bool)
    for o in offs:
        qh = (wcf + o) @ Mh.T; qv = (wcf + o) @ Mv.T
        a, oka = sysm.newton(qh, xh); b, okb = sysm.newton(qv, xv); ok &= oka & okb
        Dn.append(forced_D_float(qh, a, b))
    D0 = Dn[0]
    g = np.stack([(Dn[1 + 2 * j] - Dn[2 + 2 * j]) / (2 * eps) for j in range(4)], -1)
    qd = {}
    for j in range(4): qd[(j, j)] = 0.5 * (Dn[1 + 2 * j] - 2 * D0 + Dn[2 + 2 * j]) / eps ** 2
    for p_, (j, l) in enumerate(pairs):
        a = Dn[9 + 4 * p_: 13 + 4 * p_]
        qd[(j, l)] = (a[0] - a[1] - a[2] + a[3]) / (4 * eps ** 2)
    q2 = np.stack([qd[jl] for jl in TMA.MONO], -1)
    return D0, g, q2, ok


class EdgeTubes:
    """Per edge box: centre wc (arb), half-widths h (arb), float centre, and for both sides the float predictor
    (c (7,), g (7, 4), q (7, 10)) and a Krawczyk radius rho with a unique zero in pred + [-rho, rho]^7 (kraw_tube)."""

    def __init__(self, r=None, k=None):
        self.r, self.k = r, k
        self.idx = []; self.wcf = []; self.hf = []; self.pred = {'h': [], 'v': []}; self.rho = {'h': [], 'v': []}
        self.need = {'h': [], 'v': []}

    def finish(self):
        self.idx = np.array(self.idx, dtype=np.int64).reshape(-1, 4)
        self.wcf = np.concatenate(self.wcf) if self.wcf else np.zeros((0, 4)); self.hf = np.concatenate(self.hf) if self.hf else np.zeros((0, 4))
        for s in 'hv':
            self.pred[s] = [np.concatenate([p[i] for p in self.pred[s]]) for i in range(3)] if self.pred[s] else None
            self.rho[s] = np.concatenate(self.rho[s]) if self.rho[s] else np.zeros(0)
            self.need[s] = np.concatenate(self.need[s]) if self.need[s] else np.zeros((0, 7))
        return self


def edge_box_Q(eb, wc, h, wcf, tubes=None):
    """Taylor models (B, 36) of the phases of H(p), p = Mth (wc + u), over B w-boxes, with every C1e check.
    Optionally records the tube data in `tubes` (EdgeTubes)."""
    sysm = system()
    B = wc.shape[0]
    Mh = eb.Mth; Mv = QSIGN_V[:, None] * eb.Mth[QPERM_V]
    qh = param_tm(Mh, wc, h); qv = param_tm(Mv, wc, h)
    xs = {}
    for side, Mq, qt in (('h', Mh, qh), ('v', Mv, qv)):
        xc, g, q2, Y, ok = side_predictor(sysm, Mq, wcf)
        need(ok.all(), 'edge: predictor (float continuation) failed')
        pred = TM(oarb(xc), oarb(g), oarb(q2), zeros((B, 7)), h)
        tube, rin = kraw_tube(sysm, qt, pred, Y)
        xs[side] = (tube, xc)
        if tubes is not None:
            tubes.pred[side].append((xc, g, q2)); tubes.rho[side].append(rin)
            tubes.need[side].append(vup(tube.rho))
    if tubes is not None:
        tubes.wcf.append(wcf); tubes.hf.append(np.array([[float(x.mid()) for x in row] for row in h]))
    xh, xv = xs['h'][0], xs['v'][0]
    check_edge_regular(qh, xh, xv)
    th0 = np.array([arb.pi() * k / 3 for k in K_TH0], dtype=object)
    th = stack([qh[0], qh[1], qh[2], xh[0]], (4,), h, False) + th0[None, :]
    E = S.E_tm(th)
    ph0 = np.array([arb.pi() * k / 3 for k in K_PH0], dtype=object)
    phh = xh[slice(1, 7)] + ph0[None, :]; phv = xv[slice(1, 7)] + ph0[None, :]
    Bs = S.side_tm(phh); C = S.side_tm(phv).T()
    D0, gD, qD, okD = D_predictor(sysm, Mh, Mv, wcf, xs['h'][1], xs['v'][1])
    need(okD.all(), 'edge: D predictor failed')
    Xp = TM(oacb(D0), oacb(gD), oacb(qD), zeros((B, 3, 3)), h)
    D = S.forced_block(Xp, E, Bs, C)
    aD = S.arg_tm(D, eb.P.reshape(6, 6)[3:, 3:])
    ent = []
    for j in range(6):
        for k in range(6):
            if j == 0 or k == 0: ent.append(TMA.ZERO)
            elif j < 3 and k < 3: ent.append(th[S.POS.index((j, k))])
            elif j < 3: ent.append(phh[3 * (j - 1) + (k - 3)])
            elif k < 3: ent.append(phv[3 * (k - 1) + (j - 3)])
            else: ent.append(aD[j - 3, k - 3])
    return stack(ent, (36,), h, False)


def box_exact(tubes, e):
    """Exact centre (arb (4,)) and half-widths of edge box e."""
    ra = arb(tubes.r); k = tubes.k; idx = tubes.idx[e]
    return (np.array([ra * int(2 * idx[a] + 1 - k[a]) / k[a] for a in range(4)], dtype=object),
            np.array([ra / k[a] for a in range(4)], dtype=object))


def _shift_poly(c, g, q2, s):
    """Coefficients (in u) of c + g v + sum_m q_m v_j v_l at v = u + s: exact algebra in Arb.  c (7,), g (7, 4),
    q2 (7, 10) arb object arrays; s (4,) arb."""
    ss = np.array([s[j] * s[l] for j, l in TMA.MONO], dtype=object)
    c2 = c + g.dot(s) + q2.dot(ss)
    g2 = g.copy()
    for m, (j, l) in enumerate(TMA.MONO):
        if j == l: g2[:, j] = g2[:, j] + q2[:, m] * 2 * s[j]
        else:
            g2[:, j] = g2[:, j] + q2[:, m] * s[l]; g2[:, l] = g2[:, l] + q2[:, m] * s[j]
    return c2, g2, q2


def check_tube_consistency(tubes):
    """H(p) is one map: for adjacent edge boxes e1, e2 (indices within 1 on every axis), the enclosure of e1's
    solution (pred_e1 + [-need_e1, need_e1]) lies, over the whole box e1, inside e2's uniqueness box
    (pred_e2 at the same w, radius rho_e2); so on shared faces both boxes pick the same solution, for both sides.
    The difference pred_e1(u) - pred_e2(u + w_e1 - w_e2) is a quadratic polynomial in u, bounded over the box by
    |c| + sum |g| h + sum |q| h h, plus need_e1."""
    pos = {tuple(int(v) for v in idx): e for e, idx in enumerate(tubes.idx)}
    P = {side: [oarb(tubes.pred[side][i]) for i in range(3)] for side in 'hv'}
    for e1, idx in enumerate(tubes.idx):
        w1, h1 = box_exact(tubes, e1)
        hh = np.array([h1[j] * h1[l] for j, l in TMA.MONO], dtype=object)
        for d in itertools.product((-1, 0, 1), repeat=4):
            e2 = pos.get(tuple(int(idx[a]) + d[a] for a in range(4))) if any(d) else None
            if e2 is None: continue
            s_ = w1 - box_exact(tubes, e2)[0]
            for side in 'hv':
                c2, g2, q22 = _shift_poly(P[side][0][e2], P[side][1][e2], P[side][2][e2], s_)
                dc = P[side][0][e1] - c2; dg = P[side][1][e1] - g2; dq = P[side][2][e1] - q22
                bnd = np.abs(dc) + np.abs(dg).dot(h1) + np.abs(dq).dot(hh) + oarb(tubes.need[side][e1])
                rho2 = arb(tubes.rho[side][e2])
                need(all(b < rho2 for b in bnd), 'C1e: tubes of adjacent boxes %d, %d not consistent' % (e1, e2))


def edge_representative(eb, Q, wcf):
    return S.wind_to(Q, eb.P[None] + wcf @ eb.U.T)


def certify_edge_c1(eb, chunk=64, keep_tubes=True):
    """C1e for one edge ball.  Returns dict(ok, n_cert, reason, boxes, seconds, tubes)."""
    ctx.prec = S.PREC
    t0 = time.time()
    tubes = EdgeTubes(eb.r, eb.k) if keep_tubes else None
    try:
        eb.Minv()
        keep, wc, h, wcf = edge_boxes(eb.r, eb.k)
        if tubes is not None: tubes.idx = list(keep)
        worst = 0.0
        for s in range(0, len(keep), chunk):
            sl = slice(s, s + chunk)
            Q = edge_representative(eb, edge_box_Q(eb, wc[sl], h[sl], wcf[sl], tubes), wcf[sl])
            res = TM(Q.c - eb.P_a[None] - np.einsum('ej,bj->be', eb.U_a, wc[sl]), Q.g - eb.U_a[None], Q.q, Q.rho, Q.h)
            worst = max(worst, max(up(x) for x in TMA.norm_sup(res)))
        if tubes is not None:
            tubes.finish()
            check_tube_consistency(tubes)
        ok = worst <= eb.n
        return dict(ok=ok, n_cert=worst, reason='' if ok else 'C1e: n_cert %.6e > n %.6e' % (worst, eb.n),
                    boxes=len(keep), seconds=time.time() - t0, tubes=tubes)
    except CertError as e:
        return dict(ok=False, n_cert=math.inf, reason='C1e: ' + str(e), boxes=None, seconds=time.time() - t0, tubes=None)


# ======================================================================================== transfers
def tm_recentre(t, delta, hnew):
    """The same Taylor model on a sub-box: u = delta + u', |u'_j| <= hnew_j (delta (B, 4) arb, hnew (B, 4) arb)."""
    sh = (t.c.shape[0],) + (1,) * (t.c.ndim - 1)
    d = delta.reshape(sh + (4,))
    dd = (delta[:, TMA.MJ] * delta[:, TMA.ML]).reshape(sh + (10,))
    c = t.c + (t.g * d).sum(-1) + (t.q * dd).sum(-1)
    g = t.g.copy()
    for m, (j, l) in enumerate(TMA.MONO):
        if j == l: g[..., j] = g[..., j] + t.q[..., m] * 2 * d[..., j]
        else:
            g[..., j] = g[..., j] + t.q[..., m] * d[..., l]; g[..., l] = g[..., l] + t.q[..., m] * d[..., j]
    return TM(c, g, t.q.copy(), t.rho, hnew)


def t3_orders(grp):
    """FORMAT.md section 8: rows = (i0, i1, i2), cols = (j0, j1, j2) the ordered corner, hcols an order of J^c, vrows an
    order of I^c.  Returns the full orders (chart row a = K's row R[a], chart column b = K's column C[b])."""
    def tri(v, what):
        need(isinstance(v, (list, tuple)) and len(v) == 3 and all(isinstance(x, int) and not isinstance(x, bool) and 0 <= x < 6 for x in v),
             'T3: malformed %s' % what)
        return [int(x) for x in v]
    I, J, hc, vr = tri(grp.get('rows'), 'rows'), tri(grp.get('cols'), 'cols'), tri(grp.get('hcols'), 'hcols'), tri(grp.get('vrows'), 'vrows')
    R, C = I + vr, J + hc
    need(sorted(R) == list(range(6)) and sorted(C) == list(range(6)), 'T3: rows + vrows and cols + hcols must be permutations')
    return R, C


IDX_TH = [7, 8, 13, 14]; IDX_PH = [9, 10, 11, 15, 16, 17]; IDX_PV = [19, 25, 31, 20, 26, 32]


def corner_data(Q, g, rows, cols):
    """For K = g . (matrix with phases Q) reordered to rows, cols and dephased: the seed (4), the horizontal side
    angles (6) and the vertical side angles (6) as real TMs (B, .) (linear in Q, exact)."""
    sgn, gi = S.g_perm(g)
    Qp = S.apply_signed_perm(Q, sgn, gi)
    L = np.zeros((36, 36), int)
    for a in range(6):
        for b in range(6):
            L[6 * a + b, 6 * rows[a] + cols[b]] += 1; L[6 * a + b, 6 * rows[a] + cols[0]] -= 1
            L[6 * a + b, 6 * rows[0] + cols[b]] -= 1; L[6 * a + b, 6 * rows[0] + cols[0]] += 1
    Kd = Qp.lmul(oarb(L.astype(float)))
    return Kd[np.array(IDX_TH)], Kd[np.array(IDX_PH)], Kd[np.array(IDX_PV)]


def pred_compose(c, g, q2, v):
    """c + g v + sum_m q_m v_j v_l at the TM v (B, 4), for per-row predictor coefficients c (B, 7), g (B, 7, 4),
    q2 (B, 7, 10) (floats, exact) or a single box's (7,), (7, 4), (7, 10)."""
    B = v.c.shape[0]
    c, g, q2 = (np.broadcast_to(np.asarray(a, float), (B,) + np.shape(a)[-k:]) for a, k in ((c, 1), (g, 2), (q2, 2)))
    vv = [v[j] for j in range(4)]
    pr = [vv[j] * vv[l] for j, l in TMA.MONO]
    def bcast(t):                                                            # scalar TM (B,) -> (B, 7)
        return TM(np.repeat(t.c[:, None], 7, 1), np.repeat(t.g[:, None], 7, 1), np.repeat(t.q[:, None], 7, 1),
                  np.repeat(t.rho[:, None], 7, 1), t.h)
    out = TM(oarb(c), zeros((B, 7, 4)), zeros((B, 7, 10)), zeros((B, 7)), v.h)
    for j in range(4): out = out + bcast(vv[j]).scale(oarb(g[:, :, j]))
    for m in range(10): out = out + bcast(pr[m]).scale(oarb(q2[:, :, m]))
    return out


def check_T3(Q, eb, tubes, grp, max_depth=8):
    """T3 (FORMAT.md section 8) on boxes with source phase TMs Q (B, 36): K = g . H_source (phases Q'); the corner seed
    th' at (rows, cols), the side angles phi'_h (columns hcols) and phi'_v (rows vrows), each dephased at (i0, j0) and
    shifted by 2 pi wind, wind_h, wind_v; y' = -2 Im Psi(K[I, J^c]); p' = (th'_1..3 - TH0_1..3, y').
    Certified: ||Mth^-1 p'|| < r, and (th'_4 - TH0_4, phi'_h - PH0) resp. (th'_4 - TH0_4, phi'_v - PH0) within the
    uniqueness radius of the C1e tube of EVERY edge box the image of Mth^-1 p' may meet, over the whole source box (the
    C1e tubes define H, and are consistent across faces).  Uniqueness then gives K = H(p') (the vertical side solves
    the system at -y' when the corner is matched, or y' = 0; a strict nonmatched corner would make K Tao, SPEC
    section 10).  Source boxes are bisected when no candidate edge box certifies."""
    need(tubes is not None and len(tubes.rho['h']), 'T3: edge ball not certified')
    R, C = t3_orders(grp)
    N4 = S.ints(grp.get('wind'), 4, 'T3 wind'); Nh = S.ints(grp.get('wind_h'), 6, 'T3 wind_h'); Nv = S.ints(grp.get('wind_v'), 6, 'T3 wind_v')
    th, phh, phv = corner_data(Q, grp['g'], R, C)
    tp = S.TWO_PI_ARB
    th0 = np.array([arb.pi() * k / 3 for k in K_TH0], dtype=object); ph0 = np.array([arb.pi() * k / 3 for k in K_PH0], dtype=object)
    th = th + oarb(N4.astype(float))[None, :] * tp - th0[None, :]
    phh = phh + oarb(Nh.astype(float))[None, :] * tp
    phv = phv + oarb(Nv.astype(float))[None, :] * tp
    y = S.psi_tm(S.side_tm(phh)).im().scale(arb(-2))                       # Psi is invariant under the 2 pi shifts
    p = stack([th[0], th[1], th[2], y], (4,), Q.h, False)
    w = p.lmul(eb.Minv())
    sup = TMA.norm_sup(w)
    need(all(x < eb.r_a for x in sup), 'T3: p_K not certified inside the edge ball')
    phh = phh - ph0[None, :]; phv = phv - ph0[None, :]
    xh = stack([th[3]] + [phh[k] for k in range(6)], (7,), Q.h, False)
    xv = stack([th[3]] + [phv[k] for k in range(6)], (7,), Q.h, False)
    ra = arb(tubes.r)
    for b in range(Q.c.shape[0]):
        _t3_box(w.select([b]), xh.select([b]), xv.select([b]), tubes, ra, 0, max_depth)


def _t3_box(w, xh, xv, tubes, ra, depth, max_depth):
    """Every edge box whose closed box may meet the image of w (outward-rounded bounding box, generous float
    tolerance; extra boxes only make the test stronger) must certify the T3 condition over the whole source box.
    Each image point lies in one of them (the kept boxes cover the ball, and ||w|| < r is certified), and the
    condition for that box at that point is all T3 needs.  If some box fails, the source box is bisected."""
    var = w.var()
    lo = np.array([TMA.lo(w.c[0, j] - var[0, j]) for j in range(4)]); hi = np.array([up(w.c[0, j] + var[0, j]) for j in range(4)])
    meet = np.all((tubes.wcf - tubes.hf <= hi[None] + 1e-12) & (lo[None] <= tubes.wcf + tubes.hf + 1e-12), axis=1)
    cand = np.where(meet)[0]
    if len(cand) and all(_t3_try(w, xh, xv, tubes, e) for e in cand): return
    if depth >= max_depth:
        raise CertError('T3: the image is not certified inside the edge tubes (depth %d)' % depth)
    hnew = w.h / 2
    for sg in itertools.product((-1, 1), repeat=4):
        delta = np.array([[hnew[0, j] * sg[j] for j in range(4)]], dtype=object)
        _t3_box(tm_recentre(w, delta, hnew), tm_recentre(xh, delta, hnew), tm_recentre(xv, delta, hnew), tubes, ra, depth + 1, max_depth)


def _t3_try(w, xh, xv, tubes, e):
    """|x_K - pred_e(w_K - w_e)| < rho_e (uniqueness radius of box e) over the whole source box, both sides."""
    we, he = box_exact(tubes, e)
    v = w - we[None, :]
    for side, x in (('h', xh), ('v', xv)):
        c, g, q2 = (tubes.pred[side][i][e] for i in range(3))
        D = (x - pred_compose(c, g, q2, v)).bound()
        rho = arb(tubes.rho[side][e])
        if not all(D[0, i] < rho for i in range(7)): return False
    return True


def check_edge_transfers(eb, seeds, groups, max_level, chunk=64):
    """The edge ball's own boundary: T1 groups into seed balls (C1e Taylor models over each box, the T1 test with
    both Psi signs checked) and the coverage of its sphere (as for seed balls)."""
    ctx.prec = S.PREC
    listed = set(); cnt = dict(T1=0)
    for grp in groups:
        need(isinstance(grp, dict), 'malformed transfer group')
        kind = grp.get('kind'); t = grp.get('target')
        need(isinstance(t, int) and not isinstance(t, bool), 'malformed target')
        boxes = S.dyadic_boxes(grp.get('boxes', []), max_level)
        if not boxes: continue
        listed.update(boxes)
        need(kind == 'T1', 'edge ball: transfer kind %r not allowed (T1 only)' % (kind,))
        need(0 <= t < len(seeds), 'T1: target out of range')
        rows = [int(x) for x in S.ints(grp.get('rows'), 3, 'rows')]; cols = [int(x) for x in S.ints(grp.get('cols'), 3, 'cols')]
        S.corner_L(rows, cols); S.g_index(grp.get('g'))
        xc, h, xcf = S.box_geometry(boxes, eb.r)
        for s0 in range(0, len(boxes), chunk):
            sl = slice(s0, s0 + chunk)
            Q = edge_representative(eb, edge_box_Q(eb, xc[sl], h[sl], xcf[sl]), xcf[sl])
            S.check_T1_general(seeds[t], grp['g'], rows, cols, grp.get('wind'), Q)
        cnt['T1'] += len(boxes)
    ok, info = S.covered(listed, max_level, S.misses_unit_sphere)
    need(ok, 'edge sphere coverage: box %r neither listed, off the sphere, nor refinable' % (info,))
    cnt['coverage_nodes'] = info
    return cnt


def f6_in_edge(tubes):
    """F6 = H(0): x = 0 solves both systems at p = 0 exactly (gamma(PH0) = Gamma_h(TH0), Psi(B0) = -3 is real), so
    if 0 lies in the inclusion box of an edge box containing w = 0, uniqueness gives H(0) = F6's corner completion."""
    ra = arb(tubes.r); k = tubes.k
    for e, idx in enumerate(tubes.idx):
        we = [ra * int(2 * idx[a] + 1 - k[a]) / k[a] for a in range(4)]; he = [ra / k[a] for a in range(4)]
        if not all(abs(we[a]) <= he[a] for a in range(4)): continue
        v = [-we[a] for a in range(4)]                                        # w = 0 in the box variable
        ok = True
        for side in 'hv':
            c, g, q2 = (tubes.pred[side][i][e] for i in range(3))
            val = [arb(c[i]) + sum((arb(g[i, j]) * v[j] for j in range(4)), arb(0))
                   + sum((arb(q2[i, m]) * v[j] * v[l] for m, (j, l) in enumerate(TMA.MONO)), arb(0)) for i in range(7)]
            ok &= all(abs(x) < arb(tubes.rho[side][e]) for x in val)
        if ok: return True
    return False
