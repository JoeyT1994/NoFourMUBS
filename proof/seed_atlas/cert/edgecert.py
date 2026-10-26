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


def _Jq_tm(self, qt, xt):
    """dF/dq (B, 7, 4) over the Taylor models (q4 = y enters only F_6, with coefficient 1/48)."""
    E = self._E(qt, xt)
    zero = TMA.ZERO
    rows = {}
    for c in range(4):
        for k in range(3):
            coef = [acb(0, int(self.N[m, k]) * int(self.C[c, m])) for m in range(self.M)]
            if any(int(self.N[m, k]) * int(self.C[c, m]) for m in range(self.M)): rows[(c, k)] = self._combo(E, coef)
    ent = []
    for c, part in ((0, 're'), (0, 'im'), (1, 're'), (1, 'im'), (2, 're'), (2, 'im'), (3, 'im')):
        for k in range(4):
            if k == 3: ent.append(arb(1) / 48 if c == 3 else zero); continue
            if (c, k) not in rows: ent.append(zero); continue
            t = getattr(rows[(c, k)], part)()
            ent.append(t.scale(arb(1) / 24) if c == 3 else t)
    return stack(ent, (7, 4), xt.h, False)


EdgeSystem.Jq_tm = _Jq_tm
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
        # the chart centre: p = q0 + Mth w (FORMAT.md section 8; default 0, the ball centred at F6)
        self.q0 = np.array([hx(x) for x in d.get('q0', [0.0] * 4)], float)
        need(self.q0.shape == (4,) and np.all(np.isfinite(self.q0)), 'edge ball: malformed q0')
        self.q0_a = oarb(self.q0)
        # quartet exclusion: Stage C on the enclosure (default), or return X (no quartet edge within phase distance
        # 3/20 of F6), which needs the image certified inside that distance (certify_edge_c1)
        self.exclusion = d.get('exclusion', 'stagec')
        need(self.exclusion in ('stagec', 'X'), 'edge ball: unknown exclusion %r' % (self.exclusion,))
        # return X holds up to phase distance 9/20 (proof/theorems/X_radius_045); float(0.45) < 9/20
        self.x_radius = hx(d.get('x_radius', (0.15).hex())) if self.exclusion == 'X' else None
        need(self.x_radius is None or 0 < self.x_radius <= 0.45, 'edge ball: x_radius must lie in (0, 9/20]')
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


def side_predictor(sysm, Mq, wcf, q0, eps=1e-5):
    """Quadratic predictor of x(q(w)) in the box variable u, q = Mq (wc + u): value, gradient (B, 7, 4), monomial
    coefficients (B, 7, 10), and Y = (dF/dx)^-1 at the centre."""
    qc = wcf @ Mq.T + q0[None, :]
    xc, ok = continue_x(sysm, qc)
    def d1(q, x):
        Jx, Jq = sysm.J_float(q, x)
        return -np.linalg.solve(Jx, Jq @ Mq)                                    # (B, 7, 4): dx/du
    g = d1(qc, xc)
    B = len(qc); Hm = np.zeros((B, 7, 4, 4))
    for l in range(4):
        e = np.zeros(4); e[l] = eps
        qp, qm = (wcf + e) @ Mq.T + q0[None, :], (wcf - e) @ Mq.T + q0[None, :]
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
def param_tm(Mq, wc, h, q0a):
    """q(u) = q0 + Mq (wc + u) as a real TM (B, 4) with exact linear part Mq."""
    B = wc.shape[0]
    Ma = oarb(Mq)
    return TM(np.einsum('ij,bj->bi', Ma, wc) + q0a[None, :], np.broadcast_to(Ma, (B, 4, 4)).copy(), zeros((B, 4, 10)), zeros((B, 4)), h)


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


def D_predictor(sysm, Mh, Mv, wcf, xh, xv, q0h, q0v, eps=1e-4):
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
        qh = (wcf + o) @ Mh.T + q0h[None, :]; qv = (wcf + o) @ Mv.T + q0v[None, :]
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


def ival(t):
    """Entrywise balls containing the range of the TM t over its box (c +- var), arb or acb."""
    v = t.var()
    out = np.empty(t.c.shape, dtype=object)
    for i, (c, w) in enumerate(zip(t.c.flat, v.flat)):
        rad = arb(0, up(w))
        out.flat[i] = acb(c.real + rad, c.imag + rad) if isinstance(c, acb) else c + rad
    return out


def edge_box_Q(eb, wc, h, wcf, tubes=None, deriv=False):
    """Taylor models (B, 36) of the phases of H(p), p = Mth (wc + u), over B w-boxes, with every C1e check.
    Optionally records the tube data in `tubes` (EdgeTubes).  With deriv=True also returns, per box, a ball enclosure
    (B, 36, 4) of dQ/dw over the box (dQ_derivative)."""
    sysm = system()
    B = wc.shape[0]
    Mh = eb.Mth; Mv = QSIGN_V[:, None] * eb.Mth[QPERM_V]
    q0h = eb.q0; q0v = QSIGN_V * eb.q0[QPERM_V]
    q0ha = eb.q0_a; q0va = np.array([arb(int(QSIGN_V[i])) * eb.q0_a[QPERM_V[i]] for i in range(4)], dtype=object)
    qh = param_tm(Mh, wc, h, q0ha); qv = param_tm(Mv, wc, h, q0va)
    xs = {}
    for side, Mq, qt, q0 in (('h', Mh, qh, q0h), ('v', Mv, qv, q0v)):
        xc, g, q2, Y, ok = side_predictor(sysm, Mq, wcf, q0)
        need(ok.all(), 'edge: predictor (float continuation) failed')
        pred = TM(oarb(xc), oarb(g), oarb(q2), zeros((B, 7)), h)
        tube, rin = kraw_tube(sysm, qt, pred, Y)
        xs[side] = (tube, xc, Y)
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
    D0, gD, qD, okD = D_predictor(sysm, Mh, Mv, wcf, xs['h'][1], xs['v'][1], q0h, q0v)
    need(okD.all(), 'edge: D predictor failed')
    Xp = TM(oacb(D0), oacb(gD), oacb(qD), zeros((B, 3, 3)), h)
    D = S.forced_block(Xp, E, Bs, C, third=(S.E_tm3(th), S.side_tm3(phh), S.side_tm3(phv).T()))
    aD = S.arg_tm(D, eb.P.reshape(6, 6)[3:, 3:])
    dQ = dQ_derivative(sysm, eb, qh, qv, xs, E, Bs, C, D) if deriv else None
    ent = []
    for j in range(6):
        for k in range(6):
            if j == 0 or k == 0: ent.append(TMA.ZERO)
            elif j < 3 and k < 3: ent.append(th[S.POS.index((j, k))])
            elif j < 3: ent.append(phh[3 * (j - 1) + (k - 3)])
            elif k < 3: ent.append(phv[3 * (k - 1) + (j - 3)])
            else: ent.append(aD[j - 3, k - 3])
    Q = stack(ent, (36,), h, False)
    return (Q, dQ) if deriv else Q


def _rowmax(A):
    """Per box, max over rows of the row sums of a nonnegative ball array (B, m, n) -> arb (B,)."""
    return np.array([max(row.sum(-1), key=up) for row in A], dtype=object)


def dQ_derivative(sysm, eb, qh, qv, xs, E, Bs, C, D):
    """Taylor models (B, 36, 4) of dQ/dw over each box (TM of the derivative, so its variation over the box is
    first order and not inflated by interval dependency):
      dx/dw = sum_k X^k z0 with z0 = -Y F_q Mq, X = I - Y F_x (TMs over the tube, Y the box's preconditioner):
        z0 + X z0 + X^2 z0 kept, the tail sum_{k>=3} bounded entrywise by q^3/(1-q) max_i |z0_ij|, q = sup ||X||_inf;
      dtheta = (Mh rows 1..3, dt); dE = i E dtheta, dB = i B dphi_h, dC = i C dphi_v (entrywise);
      (B^*)^-1 = A0 (I - X_B)^-1, X_B = I - B^* A0: A0 (I + X_B + X_B^2) kept, tail ||A0||_inf q_B^3/(1-q_B);
      dD = -(dC E^* + C dE^* + D dB^*) (B^*)^-1 (from D B^* = -C E^*);
      d arg D = Im(dD conj(D)) (the entries of the Hadamard H(p) are unimodular)."""
    B = qh.c.shape[0]
    Mh = eb.Mth; Mv = QSIGN_V[:, None] * eb.Mth[QPERM_V]
    I7 = np.full((7, 7), TMA.ZERO, dtype=object)
    for i in range(7): I7[i, i] = arb(1)
    z = {}
    for side, Mq, qt in (('h', Mh, qh), ('v', Mv, qv)):
        tube, _, Y = xs[side]
        Ya = oarb(Y)
        X = S.cmatmul(Ya, sysm.J_tm(qt, tube)).scale(arb(-1)) + I7
        z0 = (S.cmatmul(Ya, sysm.Jq_tm(qt, tube)) @ oarb(Mq)).scale(arb(-1))
        q = _rowmax(X.bound())
        need(all(x < 1 for x in q), 'edge derivative: ||I - Y F_x|| >= 1')
        zb = z0.bound()                                                      # (B, 7, 4)
        col = np.array([[max(zb[b_, :, j], key=up) for j in range(4)] for b_ in range(B)], dtype=object)   # (B, 4)
        tail = (q * q * q / (1 - q))[:, None] * col                          # (B, 4)
        Xz = X @ z0
        z[side] = (z0 + Xz + X @ Xz).add_rho(np.broadcast_to(tail[:, None, :], (B, 7, 4)))
    Bh = Bs.H()
    Bmid = np.array([[[complex(float(v.real.mid()), float(v.imag.mid())) for v in row] for row in M] for M in Bh.c])
    A0 = oacb(np.linalg.inv(Bmid))
    I3 = np.full((3, 3), TMA.CZERO, dtype=object)
    for i in range(3): I3[i, i] = acb(1)
    XB = (Bh @ A0).scale(acb(-1)) + I3
    qB = _rowmax(XB.bound())
    need(all(x < 1 for x in qB), 'edge derivative: Neumann for (B^*)^-1 failed')
    nA0 = _rowmax(np.abs(A0))
    Binv = S.cmatmul(A0, XB + I3 + XB @ XB).add_rho(np.broadcast_to((nA0 * qB * qB * qB / (1 - qB))[:, None, None], (B, 3, 3)))
    I_ = acb(0, 1)
    EH, Dc = E.H(), D.conj()
    ent = [[TMA.ZERO] * 4 for _ in range(36)]
    for j in range(4):
        dth = [TM(np.full(B, arb(float(Mh[m, j])), dtype=object), zeros((B, 4)), zeros((B, 10)), zeros(B), qh.h) for m in range(3)]
        dth.append(z['h'][0, j])
        dE = [[TMA.CZERO] * 3 for _ in range(3)]; dBm = [[TMA.CZERO] * 3 for _ in range(3)]; dCm = [[TMA.CZERO] * 3 for _ in range(3)]
        for m, (r, c) in enumerate(S.POS): dE[r][c] = (E[r, c] * dth[m]).scale(I_)
        for k in range(6):
            a1, c1 = 1 + k // 3, k % 3
            dBm[a1][c1] = (Bs[a1, c1] * z['h'][1 + k, j]).scale(I_)
            dCm[c1][a1] = (C[c1, a1] * z['v'][1 + k, j]).scale(I_)
        dE = stack(sum(dE, []), (3, 3), qh.h, True); dBm = stack(sum(dBm, []), (3, 3), qh.h, True); dCm = stack(sum(dCm, []), (3, 3), qh.h, True)
        dD = ((dCm @ EH) + (C @ dE.H()) + (D @ dBm.H())).__matmul__(Binv).scale(acb(-1))
        dargD = (dD * Dc).im()
        for m, (r, c) in enumerate(S.POS): ent[6 * r + c][j] = dth[m]
        for k in range(6):
            a1, c1 = 1 + k // 3, k % 3
            ent[6 * a1 + 3 + c1][j] = z['h'][1 + k, j]
            ent[6 * (3 + c1) + a1][j] = z['v'][1 + k, j]
        for r in range(3):
            for c in range(3): ent[6 * (3 + r) + 3 + c][j] = dargD[r, c]
    return stack(sum(ent, []), (36, 4), qh.h, False)


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


def _c1e_chunk(args):
    """One chunk of C1e boxes in a worker (certify_edge_c1 with a pool): the bounds and the float tube data."""
    ed, gspec, s0, s1 = args
    ctx.prec = S.PREC
    try:
        eb = EdgeBall(ed); eb.Minv()
        graph = GraphData(gspec) if gspec is not None else None
        keep, wc, h, wcf = edge_boxes(eb.r, eb.k)
        sl = slice(s0, s1)
        tubes = EdgeTubes(eb.r, eb.k)
        if graph is not None:
            Q, dQ = edge_box_Q(eb, wc[sl], h[sl], wcf[sl], tubes, deriv=True)
        else:
            Q = edge_box_Q(eb, wc[sl], h[sl], wcf[sl], tubes)
        Q = edge_representative(eb, Q, wcf[sl])
        res = TM(Q.c - eb.P_a[None] - np.einsum('ej,bj->be', eb.U_a, wc[sl]), Q.g - eb.U_a[None], Q.q, Q.rho, Q.h)
        out = dict(ok=True, worst=max(up(x) for x in TMA.norm_sup(res)), dmax=0.0, emax=0.0, smin=math.inf,
                   wcf=tubes.wcf, hf=tubes.hf, pred=tubes.pred, rho=tubes.rho, need=tubes.need)
        if graph is not None:
            dn, en, sig = graph_image_and_sigma(eb, graph, Q, dQ, wcf[sl])
            out.update(dmax=max(up(x) for x in dn), emax=max(up(x) for x in en), smin=min(sig))
        return out
    except CertError as e:
        return dict(ok=False, reason=str(e))


def certify_edge_c1(eb, chunk=64, keep_tubes=True, graph=None, sigma_D=None, pool=None, ed=None, gspec=None):
    """C1e for one edge ball, and with `graph` (GraphData, SPEC sections 10.1-10.2) also: the edge image inside the (G)
    region ||hor(Q - P_F + 2 pi N)|| < R_G, and (D) sigma_D_cert = min over the C1e boxes of a lower bound of
    sigma_min(T_F^+ dQ/dw) > 0 (>= the stored sigma_D if given).
    Returns dict(ok, n_cert, reason, boxes, seconds, tubes, graph info)."""
    ctx.prec = S.PREC
    t0 = time.time()
    tubes = EdgeTubes(eb.r, eb.k) if keep_tubes else None
    out = dict(ok=False, n_cert=math.inf, reason='', boxes=None, tubes=None)
    try:
        eb.Minv()
        keep, wc, h, wcf = edge_boxes(eb.r, eb.k)
        if tubes is not None: tubes.idx = list(keep)
        worst = 0.0; dmax = 0.0; emax = 0.0; smin = math.inf
        if pool is not None:                          # the chunks in parallel; tube data merged in box order
            jobs = [(ed, gspec if graph is not None else None, s, min(s + chunk, len(keep))) for s in range(0, len(keep), chunk)]
            for r in pool.map(_c1e_chunk, jobs):
                if not r['ok']: raise CertError(r['reason'])
                worst = max(worst, r['worst']); dmax = max(dmax, r['dmax']); emax = max(emax, r['emax']); smin = min(smin, r['smin'])
                if tubes is not None:
                    tubes.wcf += r['wcf']; tubes.hf += r['hf']
                    for sd in 'hv':
                        tubes.pred[sd] += r['pred'][sd]; tubes.rho[sd] += r['rho'][sd]; tubes.need[sd] += r['need'][sd]
        for s in (range(0, len(keep), chunk) if pool is None else ()):
            sl = slice(s, s + chunk)
            if graph is not None:
                Q, dQ = edge_box_Q(eb, wc[sl], h[sl], wcf[sl], tubes, deriv=True)
            else:
                Q = edge_box_Q(eb, wc[sl], h[sl], wcf[sl], tubes)
            Q = edge_representative(eb, Q, wcf[sl])
            res = TM(Q.c - eb.P_a[None] - np.einsum('ej,bj->be', eb.U_a, wc[sl]), Q.g - eb.U_a[None], Q.q, Q.rho, Q.h)
            worst = max(worst, max(up(x) for x in TMA.norm_sup(res)))
            if graph is not None:
                dn, en, sig = graph_image_and_sigma(eb, graph, Q, dQ, wcf[sl])
                dmax = max(dmax, max(up(x) for x in dn)); emax = max(emax, max(up(x) for x in en)); smin = min(smin, min(sig))
        if tubes is not None:
            tubes.finish()
            check_tube_consistency(tubes)
        out.update(n_cert=worst, boxes=len(keep), tubes=tubes)
        reasons = []
        if worst > eb.n: reasons.append('C1e: n_cert %.6e > n %.6e' % (worst, eb.n))
        if eb.exclusion == 'X':
            # d_ph([H(w)], [F6]) <= ||hor(Q - P_F + 2 pi N)||, rounded up, below x_radius <= 9/20
            if graph is None: reasons.append('X: the image bound needs the graph data')
            elif not dmax < eb.x_radius: reasons.append('X: edge image not certified within phase distance %g of F6 (%.6e)' % (eb.x_radius, dmax))
        if graph is not None:
            out['graph'] = dict(R_G=graph.R, sigma=graph.sigma, image_delta_max=dmax, image_eta_max=emax, sigma_D_cert=smin)
            if not dmax < graph.R: reasons.append('(G): edge image not inside ||hor(Q - P_F)|| < R_G (%.4e >= %.4e)' % (dmax, graph.R))
            if not smin > 0: reasons.append('(D): sigma_D not certified positive')
            if sigma_D is not None and not smin >= sigma_D: reasons.append('(D): sigma_D_cert %.4e < stored sigma_D %.4e' % (smin, sigma_D))
        out['ok'] = not reasons; out['reason'] = '; '.join(reasons)
    except CertError as e:
        out.update(ok=False, reason='C1e: ' + str(e), tubes=None)
    out['seconds'] = time.time() - t0
    return out


class EdgeWB:
    """The X-ball's C1e by return ZT's whole-ball contraction (edge_wholeball.py), in place of the tubes of the box
    method: no boxes; the model is recomputed (about a second) in each process that needs it."""
    wb = True

    def __init__(self, ed):
        self.ed = ed; self._m = None

    def model(self):
        if self._m is None:
            import edge_wholeball as EW
            old = ctx.prec
            try: self._m = EW.edge_model(self.ed)
            finally: ctx.prec = old
        return self._m

    def __getstate__(self): return {'ed': self.ed, '_m': None}


def _hor_arb():
    P6 = 6 * np.eye(6, dtype=int) - np.ones((6, 6), dtype=int)
    Hk = np.kron(P6, P6)
    return arb_mat([[arb(int(Hk[i, j])) / 36 for j in range(36)] for i in range(36)])


def _sigma_min_lower(A):
    """A certified lower bound of sigma_min(A) (A real, m x 4, m >= 4): A^T A - s^2 I positive definite (exact
    leading minors in Arb) for s = 0.999^k times the float sigma_min."""
    import wholeball as W
    sv = float(np.linalg.svd(W.mid_np(A), compute_uv=False)[-1])
    G = A.transpose() * A
    s = sv * 0.999
    for _ in range(60):
        B = arb_mat([[G[i, j] - (arb(s) ** 2 if i == j else arb(0)) for j in range(4)] for i in range(4)])
        if all(arb_mat([[B[i, j] for j in range(k)] for i in range(k)]).det() > 0 for k in (1, 2, 3, 4)): return s
        s *= 0.98
    return 0.0


def f6_wholeball(D):
    """F6 = H(0): at w = 0 the predictor is the Fourier lift q0 and the augmented residual vanishes there (Phi(q0) = 0,
    F6 being Hadamard, and psi_h(q0) = Im Psi(B0) = 0 = -p_4/2); z = 0 then solves G(0, z) = 0, and the contraction's
    uniqueness in ||z|| <= tau gives z(0) = 0, so H(0) = e^{i q0}.  Certified: the residual at q0 contains 0."""
    import edge_wholeball as EW
    N, C, _ = EW.coefficients()
    q0 = arb_mat([[arb.pi() * ((i * j) % 6) / 3] for i in range(6) for j in range(6)])
    z = [acb(0, (N * q0)[k, 0]).exp() for k in range(N.nrows())]
    res = [sum(((C[k][a] * z[k]).real for k in range(N.nrows())), arb(0)) for a in range(31)]
    return all(x.contains(0) and abs(x) < arb(2) ** -100 for x in res)


def certify_edge_wholeball(eb, ed, graph, sigma_D=None):
    """C1e, (G), (D), the X image bound and F6 = H(0) for an X-ball centred at F6, from one whole-ball contraction
    (return ZT, edge appendix): Q(w) = Q0 + U w + H2[w, w]/2 + X z(w), ||z|| <= tau, ||Dz|| <= Z1 on ||w|| <= r.
      - C1e: sup ||G q(w) - P - U_stored w|| <= ZT's dephased lift gap (stored P, U; the stored windings' lift);
      - the image: ||h(Q(w) - P_F + 2 pi N)|| <= ||h(Q0 - P_F + 2 pi N)|| + ||h U|| r + ||h H2|| r^2/2 + ||h X|| tau;
      - (D): sigma_min(T_F^+ h DQ(w)) >= sigma_min(T_F^+ h U) - ||T_F^+ h|| (||H2|| r + ||X|| Z1).
    Returns the dict of certify_edge_c1, with tubes = an EdgeWB handle."""
    import wholeball as W, edge_wholeball as EW
    t0 = time.time()
    out = dict(ok=False, n_cert=math.inf, reason='', boxes=0, tubes=None, method='wholeball')
    old = ctx.prec
    try:
        need(graph is not None, 'C1e (whole ball): the graph data is required')
        need(not eb.q0.any(), 'C1e (whole ball): the X-ball must be centred at F6')
        h = EdgeWB(ed)
        try:
            D = h.model()
        except (ArithmeticError, ValueError, ZeroDivisionError) as e:
            raise CertError('whole-ball contraction: %s' % e)
        ctx.prec = 224
        sp = EW.spectral_safe
        r, U, H2, X, tau, Z1 = D['r'], D['U'], D['H2'], D['X'], D['tau'], D['Z1']
        n_cert = D['summary']['dephased_lift_gap_upper']
        Hm = _hor_arb()
        PF = arb_mat([[arb(float(x))] for x in graph.P])
        N0 = np.rint((W.mid_np(D['Q0'])[:, 0] - graph.P) / (2 * math.pi))
        off = Hm * (D['Q0'] - PF - arb_mat([[2 * arb.pi() * int(k)] for k in N0]))
        c0 = W.frob(off)
        dmax = W.upper(c0 + sp(Hm * U) * r + sp(Hm * H2) * r * r / 2 + sp(Hm * X) * tau)
        Tp = arb_mat([[x for x in row] for row in graph.Tplus])
        emax = W.upper(sp(Tp) * c0 + sp(Tp * Hm * U) * r + sp(Tp * Hm * H2) * r * r / 2 + sp(Tp * Hm * X) * tau)
        pert = W.upper(sp(Tp * Hm) * (sp(H2) * r + sp(X) * Z1))
        smin = _sigma_min_lower(Tp * Hm * U) - pert
        out.update(n_cert=n_cert, tubes=h, f6=f6_wholeball(D),
                   graph=dict(R_G=graph.R, sigma=graph.sigma, image_delta_max=dmax, image_eta_max=emax, sigma_D_cert=smin,
                              q=D['summary']['q'], tau=D['summary']['tau']))
        reasons = []
        if n_cert > eb.n: reasons.append('C1e: n_cert %.6e > n %.6e' % (n_cert, eb.n))
        if eb.exclusion == 'X' and not dmax < eb.x_radius:
            reasons.append('X: edge image not certified within phase distance %g of F6 (%.6e)' % (eb.x_radius, dmax))
        if not dmax < graph.R: reasons.append('(G): edge image not inside ||hor(Q - P_F)|| < R_G (%.4e >= %.4e)' % (dmax, graph.R))
        if not smin > 0: reasons.append('(D): sigma_D not certified positive')
        if sigma_D is not None and not smin >= sigma_D: reasons.append('(D): sigma_D_cert %.4e < stored sigma_D %.4e' % (smin, sigma_D))
        out['ok'] = not reasons; out['reason'] = '; '.join(reasons)
    except CertError as e:
        out.update(ok=False, reason='C1e: ' + str(e), tubes=None)
    finally:
        ctx.prec = old
    out['seconds'] = time.time() - t0
    return out


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


X_DIST = (3, 20)                     # return XS, (XS1): the coarse distance to F6 under which p'(K) determines K
W_TANGENT = ((1, -0.5, -0.5, 0), (-0.5, 1.75, 0.25, 0), (-0.5, 0.25, 1.75, 0), (0, 0, 0, 1))   # W's form, XS (1)
W_RADIUS = (1, 5)                    # W's chart and normal graph hold on E_{1/5}


def t3_corner(grp):
    """The ordered corner of a T3 group, completed by the complementary rows and columns in increasing order (their
    order is immaterial: Psi is invariant under it, and XS needs no side data)."""
    def tri(v, what):
        need(isinstance(v, (list, tuple)) and len(v) == 3 and all(isinstance(x, int) and not isinstance(x, bool) and 0 <= x < 6 for x in v)
             and len(set(v)) == 3, 'T3: malformed %s' % what)
        return [int(x) for x in v]
    I, J = tri(grp.get('rows'), 'rows'), tri(grp.get('cols'), 'cols')
    return I + [r for r in range(6) if r not in I], J + [c for c in range(6) if c not in J]


def edge_in_W(eb):
    """Certify once per edge ball that its parameter ellipsoid {p = Mth w : ||w|| <= r} lies inside W's E_{1/5}
    = {p : q^T W q <= 1/25}, q = (p1, p2, p3, p4/24): (1/(25 r^2)) I - S^T W S positive definite (exact LDL in Arb),
    S = diag(1, 1, 1, 1/24) Mth.  XS (1)-(XS1) need the target inside E_{1/5}; a shifted target (q0 != 0) is not
    covered here."""
    if getattr(eb, '_in_W', None) is not None: return eb._in_W
    need(not eb.q0.any(), 'T3: the X-ball must be centred at F6 (q0 = 0) for the XS transfer')
    Sm = [[arb(eb.Mth[i, j]) / (24 if i == 3 else 1) for j in range(4)] for i in range(4)]
    W = [[arb(x) for x in row] for row in W_TANGENT]
    M = [[sum((Sm[a][i] * W[a][b2] * Sm[b2][j] for a in range(4) for b2 in range(4)), arb(0)) for j in range(4)] for i in range(4)]
    c = arb(W_RADIUS[0]) ** 2 / (arb(W_RADIUS[1]) ** 2 * arb(eb.r) ** 2)
    A = [[(c if i == j else arb(0)) - M[i][j] for j in range(4)] for i in range(4)]
    L = [[arb(0)] * 4 for _ in range(4)]; d = [arb(0)] * 4
    for k in range(4):
        d[k] = A[k][k] - sum((L[k][j] ** 2 * d[j] for j in range(k)), arb(0))
        need(d[k] > 0, 'T3: the X-ball\'s ellipsoid is not certified inside W\'s E_1/5')
        for i in range(k + 1, 4):
            L[i][k] = (A[i][k] - sum((L[i][j] * L[k][j] * d[j] for j in range(k)), arb(0))) / d[k]
    eb._in_W = True
    return True


_H36 = None


def _hor():
    """The exact horizontal projection h(Z) = P6 Z P6 on row-major 6 x 6 phases (36 x 36, entries in Z/36, Arb).  It
    removes row and column constants, so a dephasing before it changes nothing."""
    global _H36
    if _H36 is None:
        P6 = 6 * np.eye(6) - np.ones((6, 6))                                 # 6 P6, integers
        Hk = np.kron(P6, P6).astype(int)                                     # 36 h, integers
        _H36 = np.array([[arb(int(Hk[i, j])) / 36 for j in range(36)] for i in range(36)], dtype=object)
    return _H36


def t3_distance(Qp, I, J):
    """Certified upper bound, per box, of the phase distance d([K], [F6]) for K with phases Qp (B, 36) over the box:
    K's rows (I, then I^c in some order) and columns (J, then J^c in some order) are aligned with F6's Fourier rows
    and columns 0..5, dephased at (I[0], J[0]), shifted by an integer winding N, and projected horizontally; the
    sup of ||h(.)|| over the box bounds the distance (any alignment and winding do, XS section 5.1).  The order of
    the complements and N are chosen in floats (untrusted) and then bounded in Arb."""
    B = Qp.c.shape[0]
    Hd = _hor(); Hdf = np.array([[float(x.mid()) for x in row] for row in Hd])
    tp = S.TWO_PI_ARB
    PFf = np.array([2 * math.pi * ((a * b) % 6) / 6 for a in range(6) for b in range(6)])
    Ic = [r for r in range(6) if r not in I]; Jc = [c for c in range(6) if c not in J]
    out = []
    for bx in range(B):
        Qc = np.array([float(x.mid()) for x in Qp.c[bx]])
        best = None
        for rc in itertools.permutations(Ic):
            for cc in itertools.permutations(Jc):
                R, C = I + list(rc), J + list(cc)
                idx = np.array([6 * R[a] + C[b] for a in range(6) for b in range(6)])
                D = Qc[idx] - PFf
                Dd = (D.reshape(6, 6) - D.reshape(6, 6)[:, :1] - D.reshape(6, 6)[:1, :] + D[0]).reshape(36)
                N = np.round(Dd / (2 * math.pi))                         # windings of the dephased difference
                z = Hdf @ (Dd - 2 * math.pi * N)
                v = float(np.linalg.norm(z))
                if best is None or v < best[0]: best = (v, idx, N)
        _, idx, N = best
        Kb = Qp.select([bx])[idx]
        PFd = [(a * b) % 6 for a in range(6) for b in range(6)]                 # F6's phases are already dephased
        shift = np.array([[tp * PFd[k] / 6 + tp * int(N[k]) for k in range(36)]], dtype=object)
        Ld = np.zeros((36, 36), int)                                       # dephase at (0, 0) before the winding
        for a in range(6):
            for b in range(6):
                Ld[6 * a + b, 6 * a + b] += 1; Ld[6 * a + b, 6 * a] -= 1; Ld[6 * a + b, b] -= 1; Ld[6 * a + b, 0] += 1
        z = (Kb.lmul(oarb(Ld.astype(float))) - shift).lmul(Hd)
        out.append(TMA.norm_sup(z)[0])
    return out


def check_T3(Q, eb, tubes, grp, max_depth=8):
    """T3 (FORMAT.md section 8) on boxes with source phase TMs Q (B, 36), by return XS's transfer theorem (XS1): for
    K = g . H_source, if its corner parameter p'(K) = (th'_1..3 - TH0_1..3, -2 Im Psi(K[I, J^c])) lies in a target
    inside W's E_{1/5} and d([K], [F6]) <= 3/20, then K ~ H(p'(K)).  Certified here, over the whole source box:
      - the X-ball's ellipsoid lies inside E_{1/5} (once per edge ball);
      - ||Mth^-1 p'|| < r, so p'(K) is in the X-ball's open parameter ellipsoid;
      - the phase distance of K to F6 is below 3/20.
    No side orders, side windings, orientation signs or tubes are needed (XS sections 3, 6).  wind: 2 pi windings of
    the first three corner phases (a fourth entry is ignored)."""
    need(tubes is not None and (getattr(tubes, 'wb', False) or len(tubes.rho['h'])), 'T3: edge ball not certified')
    edge_in_W(eb)
    R, C = t3_corner(grp)
    wv = grp.get('wind')
    need(isinstance(wv, (list, tuple)) and len(wv) in (3, 4), 'T3: wind must have 3 (or 4) entries')
    N3 = S.ints(list(wv)[:3], 3, 'T3 wind')
    th, phh, _ = corner_data(Q, grp['g'], R, C)
    tp = S.TWO_PI_ARB
    th0 = np.array([arb.pi() * k / 3 for k in K_TH0[:3]], dtype=object)
    y = S.psi_tm(S.side_tm(phh)).im().scale(arb(-2))                       # Psi(K[I, J^c]): any order, any 2 pi shift
    p = stack([th[0] + tp * int(N3[0]) - th0[0], th[1] + tp * int(N3[1]) - th0[1], th[2] + tp * int(N3[2]) - th0[2], y],
              (4,), Q.h, False)
    w = p.lmul(eb.Minv())
    sup = TMA.norm_sup(w)
    need(all(x < eb.r_a for x in sup), 'T3: p_K not certified inside the edge ball')
    sgn, gi = S.g_perm(grp['g'])
    dist = t3_distance(S.apply_signed_perm(Q, sgn, gi), R[:3], C[:3])
    lim = arb(X_DIST[0]) / X_DIST[1]
    need(all(x < lim for x in dist), 'T3: the source is not certified within phase distance 3/20 of F6')


def check_edge_transfers(eb, seeds, groups, max_level, chunk=64, edges=(), check=True, cover=True):
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
        need(kind in ('T1', 'T3'), 'edge ball: transfer kind %r not allowed (T1, T3 only)' % (kind,))
        if not check: continue                         # coverage only (the boxes are checked by other work items)
        if kind == 'T3':                              # into another edge ball of the same chart (EdgeInQ)
            need(0 <= t < len(edges), 'T3: target out of range')
            teb, ttubes = edges[t]
            need(teb is not None, 'T3: target edge ball malformed')
            xc, h, xcf = S.box_geometry(boxes, eb.r)
            for s0 in range(0, len(boxes), chunk):
                sl = slice(s0, s0 + chunk)
                Q = edge_representative(eb, edge_box_Q(eb, xc[sl], h[sl], xcf[sl]), xcf[sl])
                check_T3(Q, teb, ttubes, grp)
            cnt['T3'] = cnt.get('T3', 0) + len(boxes)
            continue
        need(0 <= t < len(seeds), 'T1: target out of range')
        rows = [int(x) for x in S.ints(grp.get('rows'), 3, 'rows')]; cols = [int(x) for x in S.ints(grp.get('cols'), 3, 'cols')]
        S.corner_L(rows, cols); S.g_index(grp.get('g'))
        own = next((tb for (e2, tb) in edges if e2 is eb), None)
        if getattr(own, 'wb', False):                 # return ZT: the patch test on box cap sphere from the whole-ball model
            import edge_wholeball as EWB
            done = set(EWB.certify_edge_boxes(own.model(), seeds[t], grp, [list(b) for b in boxes]))
            cnt['T1_patch'] = cnt.get('T1_patch', 0) + len(done); cnt['T1'] += len(done)
            boxes = [b for k, b in enumerate(boxes) if k not in done]
            if not boxes: continue
        xc, h, xcf = S.box_geometry(boxes, eb.r)
        for s0 in range(0, len(boxes), chunk):
            sl = slice(s0, s0 + chunk)
            Q = edge_representative(eb, edge_box_Q(eb, xc[sl], h[sl], xcf[sl]), xcf[sl])
            S.check_T1_general(seeds[t], grp['g'], rows, cols, grp.get('wind'), Q)
        cnt['T1'] += len(boxes)
    if not cover: return cnt
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


# ======================================================================================== SPEC 10.1: (G) and (D)
F6_PHI = np.array([[2 * math.pi * ((a * b) % 6) / 6 for b in range(6)] for a in range(6)]).reshape(36)


class GraphData:
    """SPEC section 10.2: the graph property (G) at F6 by the mean value theorem.  Fields "graph": {"R": R_G,
    "sigma": sigma} (defaults 0.45 and 1.7), with P_F = F6's phases (or an optional "phi") and the frame of
    ballrecord.Record (an optional "Tint").  Certified here: sigma <= sigma_min(J(0)|_N) by BallRecord's Arb Cholesky of
    N_b^T (J^T J - sigma^2) N_b at P_F, and R_G L < sigma with L = 2 sqrt3 (so two Hadamards T eta + nu_1, T eta + nu_2
    of norm <= R_G have nu_1 = nu_2: the averaged Jacobian on the segment is bounded below by sigma - L R_G > 0 on N).
    The exact frame T_F (for (D)'s eta = T_F^+ hor(.)) is the same Record's."""

    def __init__(self, g=None):
        g = g or {}
        hx = S._hexf
        phi = np.array([hx(x) for x in g['phi']]) if 'phi' in g else F6_PHI.copy()
        need(phi.shape == (36,) and np.all(np.isfinite(phi)), 'graph: malformed phi')
        Tint = np.array(g['Tint'], dtype=np.int64).reshape(36, 4) if g.get('Tint') is not None else None
        self.R = hx(g['R']) if 'R' in g else 0.45
        self.sigma = hx(g['sigma']) if 'sigma' in g else 1.7
        need(self.R > 0 and self.sigma > 0, 'graph: R and sigma must be positive')
        from ballrecord import BallRecord
        ctx.prec = 120
        try:
            B = BallRecord(phi, sigma_try=(self.sigma,), Tint=Tint)
        except AssertionError as e:
            raise CertError('graph (G): %s (sigma %.6g at F6)' % (e, self.sigma))
        finally:
            ctx.prec = S.PREC
        need(B.sigma == self.sigma, 'graph (G): sigma not certified')
        need(arb(self.R) * S.L_PHI_ARB < arb(self.sigma), 'graph (G): R_G L >= sigma (R %.6g, sigma %.6g)' % (self.R, self.sigma))
        self.P = np.asarray(phi, float)
        Tb = B.rec.Tb
        Tp = (Tb.transpose() * Tb).inv() * Tb.transpose()                       # T_F^+ (exact frame)
        self.Tplus = np.array([[Tp[i, j] for j in range(36)] for i in range(4)], dtype=object)


def sigma_lower(M):
    """A rigorous lower bound (float) of sigma_min of the 4x4 ball matrix M: sigma_min(mid) by an Arb Cholesky of
    mid^T mid - s^2 I, minus ||M - mid||_F (Weyl)."""
    Mc = np.array([[float(x.mid()) for x in row] for row in M])
    s = float(np.linalg.svd(Mc, compute_uv=False).min()) * (1 - 1e-6)
    if s <= 0: return 0.0
    A = arb_mat(Mc.tolist()); G = A.transpose() * A
    if not S._cholesky_pd(arb_mat([[G[i, j] - (arb(s) ** 2 if i == j else 0) for j in range(4)] for i in range(4)])): return 0.0
    rad = TMA.sqrt_up(sum((arb(up(abs(x - arb(float(x.mid()))))) ** 2 for x in M.flat), arb(0)))
    return TMA.lo(arb(s) - rad)


def graph_image_and_sigma(eb, gd, Q, dQ, wcf):
    """Per box: sup ||hor(Q - P_F + 2 pi N)|| (must be < R_G), sup ||T_F^+ (Q - P_F + 2 pi N)|| (reported), and a lower
    bound of sigma_min(T_F^+ dQ/dw) over the box (D): M(u) = T_F^+ dQ(u) is a TM (B, 4, 4) (sigma_tm_box)."""
    PF = gd.P
    d = S.wind_to(Q, PF[None] + wcf @ eb.U.T) - oarb(PF)[None, :]
    dn = TMA.norm_sup(d.lmul(S.hor()))
    en = TMA.norm_sup(d.lmul(gd.Tplus))
    cols = [dQ[slice(None), j].lmul(gd.Tplus) for j in range(4)]                # each (B, 4): column j of M
    M = stack([cols[j][i] for i in range(4) for j in range(4)], (4, 4), dQ.h, False)
    sig = [sigma_tm_box(M.select([b])) for b in range(M.c.shape[0])]
    return dn, en, sig


VERT16 = np.array([[1 if (v >> j) & 1 else -1 for j in range(4)] for v in range(16)])


def sigma_tm_box(M, depth=0, max_depth=6):
    """A lower bound (float) of sigma_min(M(u)) over the box of the 4x4 TM M (one box):
    sigma_min(M_c) - [max over the 16 vertices of ||sum_v G_v u_v||_F + ||sum_m |Q_m| h_j h_l||_F + ||rho||_F] (Weyl;
    the linear part's 2-norm is convex in u).  If that is not positive, the box is bisected along the axis with the
    largest linear contribution and the same TM, re-centred exactly on the halves (its remainder bound stays valid on
    sub-boxes), is bounded on each; the minimum is returned."""
    h = M.h[0]
    lin = max(up(sum((x * x for x in (M.g[0] * (h * VERT16[t])).sum(-1).flat), arb(0))) for t in range(16))
    hh = np.abs(h[TMA.MJ] * h[TMA.ML])
    quad = (np.abs(M.q[0]) * hh).sum(-1)
    dev = arb(lin).sqrt() + TMA.sqrt_up(sum((x * x for x in quad.flat), arb(0))) + TMA.sqrt_up(sum((x * x for x in M.rho[0].flat), arb(0)))
    s0 = sigma_lower(M.c[0])
    val = TMA.lo(arb(s0) - dev)
    if val > 0.1 * s0 or depth >= max_depth: return val
    axis = int(np.argmax([up(sum((x * x for x in (M.g[0][..., v] * h[v]).flat), arb(0))) for v in range(4)]))
    hnew = h.copy(); hnew[axis] = h[axis] / 2
    out = math.inf
    for sgn in (-1, 1):
        delta = np.array([[hnew[v] * sgn if v == axis else TMA.ZERO for v in range(4)]], dtype=object)
        out = min(out, sigma_tm_box(tm_recentre(M, delta, hnew[None, :]), depth + 1, max_depth))
    return out
