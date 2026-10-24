"""Certified checks for the seed atlas (SPEC.md sections 2 and 4), in Arb ball arithmetic.

  * certify_c1(ball):        claim C1 for one seed ball: a rigorous n_cert with ||Q - P - U w - 2 pi N|| <= n_cert for
                             every ||w|| <= r, and the verdict n_cert <= n.
  * stage_c_args(ball):      rigorous rcol, rF (and the cycle-unit arguments) for the Stage C call.
  * T0, T1, T2 (seed boundary boxes), rec and T1' (record boundary boxes; T1' with the 2-norm Krawczyk enclosure of
    nu, nu_enclosure), and the sphere / shell coverage traversals: see the functions below.

Floats enter only as PREDICTORS (side solutions, their derivatives, the forced block and its derivatives, the
Krawczyk preconditioner Y, the inverse A0) or as exact certificate data (binary64 values are exact rationals).  Every
inequality that decides a verdict is evaluated in Arb on exact data; a float is only ever compared after rounding it
in the safe direction (tmarb.up / lo).

Conventions (SPEC section 1).  theta = (theta_1..4) <-> E_11, E_12, E_21, E_22; E = [[1,1,1],[1,a,b],[1,c,d]].
Horizontal side B: rows (1,1,1), e^{i phi_h[0:3]}, e^{i phi_h[3:6]}, B B^* = G_h = 6I - E E^*.
Vertical side V = C^T: same shape, V V^* = G_v = 6I - E^T conj(E).  H = [[E, B], [C, D]], D = -C E^* (B^*)^-1.
Q (36, row-major): Q_{1+a,1+b} = theta, Q_{j,3+k} = phi_h[3(j-1)+k] (j = 1, 2), Q_{3+k,j} = phi_v[3(j-1)+k],
Q_{3+j,3+k} = arg D_jk, first row and column 0.
"""
import itertools, math, os, sys, time
from fractions import Fraction as Fr
import numpy as np
from flint import arb, acb, arb_mat, ctx

import tmarb as TMA
from tmarb import TM, oarb, oacb, up, vup, vmap, stack, exp_i, zeros

ATLAS = os.path.abspath(os.path.join(os.path.dirname(os.path.abspath(__file__)), '../../atlas'))   # stagec.py etc.
if ATLAS not in sys.path: sys.path.append(ATLAS)
PREC = 120
ctx.prec = PREC
PI = arb.pi()
TWO_PI_ARB = 2 * PI
POS = [(1, 1), (1, 2), (2, 1), (2, 2)]
PAIRS = [(0, 1), (0, 2), (1, 2)]


class CertError(Exception):
    """A check failed (the certificate is rejected)."""


def need(cond, msg):
    if not cond: raise CertError(msg)


# ======================================================================================== seed-ball data
def _hexf(x):
    if isinstance(x, str): return float.fromhex(x)
    need(isinstance(x, (int, float)) and not isinstance(x, bool), 'not a number: %r' % (x,))
    return float(x)


class Ball:
    """One seed ball record (exact binary64 data) with Arb copies."""

    def __init__(self, d):
        self.theta0 = np.array([_hexf(x) for x in d['theta0']], float)
        self.Mth = np.array([_hexf(x) for x in d['Mth']], float)
        self.r = _hexf(d['r']); self.n = _hexf(d['n']); self.label_radius = _hexf(d['label_radius'])
        self.o = d['o']; self.k = d['k']
        self.P = np.array([_hexf(x) for x in d['P']], float)
        self.U = np.array([_hexf(x) for x in d['U']], float)
        need(self.theta0.shape == (4,) and self.Mth.shape == (16,) and self.P.shape == (36,) and self.U.shape == (144,),
             'seed ball: wrong array sizes')
        self.Mth = self.Mth.reshape(4, 4); self.U = self.U.reshape(36, 4)
        need(isinstance(self.o, int) and not isinstance(self.o, bool) and self.o in (1, -1), 'seed ball: orientation must be +1 or -1')
        need(isinstance(self.k, int) and not isinstance(self.k, bool) and 1 <= self.k <= 64, 'seed ball: k must be an integer in [1, 64]')
        allf = np.concatenate([self.theta0, self.Mth.ravel(), self.P, self.U.ravel(), [self.r, self.n, self.label_radius]])
        need(np.all(np.isfinite(allf)), 'seed ball: non-finite data')
        need(self.r > 0 and self.n >= 0 and self.label_radius > 0, 'seed ball: r > 0, n >= 0, label_radius > 0 required')
        self.theta0_a = oarb(self.theta0); self.Mth_a = oarb(self.Mth); self.P_a = oarb(self.P); self.U_a = oarb(self.U)
        self.r_a = arb(self.r)
        self._Minv = None

    def Minv(self):
        """Rigorous enclosure of Mth^-1 (raises if Mth is not certified invertible)."""
        if self._Minv is None:
            M = arb_mat(self.Mth.tolist())
            try:
                Mi = M.inv()
            except ZeroDivisionError:
                raise CertError('Mth not certified invertible')
            A = np.empty((4, 4), dtype=object)
            for i in range(4):
                for j in range(4):
                    A[i, j] = Mi[i, j]
            need(all(x.is_finite() for x in A.flat), 'Mth not certified invertible')
            self._Minv = A
        return self._Minv


# ======================================================================================== float predictors
def seedE_f(th):
    a = np.exp(1j * th)
    E = np.ones(th.shape[:-1] + (3, 3), complex)
    E[..., 1, 1] = a[..., 0]; E[..., 1, 2] = a[..., 1]; E[..., 2, 1] = a[..., 2]; E[..., 2, 2] = a[..., 3]
    return E


def grams_f(E):
    I3 = 6 * np.eye(3)
    return I3 - E @ np.conj(np.swapaxes(E, -1, -2)), I3 - np.swapaxes(E, -1, -2) @ np.conj(E)


def side_f(phi):
    S = np.ones(phi.shape[:-1] + (3, 3), complex)
    S[..., 1, :] = np.exp(1j * phi[..., :3]); S[..., 2, :] = np.exp(1j * phi[..., 3:])
    return S


def F_f(phi, G):
    S = side_f(phi); M = S @ np.conj(np.swapaxes(S, -1, -2))
    v = np.stack([M[..., 0, 1] - G[..., 0, 1], M[..., 0, 2] - G[..., 0, 2], M[..., 1, 2] - G[..., 1, 2]], -1)
    return np.concatenate([v.real, v.imag], -1)


def J_f(phi):
    b1, b2 = np.exp(1j * phi[..., :3]), np.exp(1j * phi[..., 3:])
    Jc = np.zeros(phi.shape[:-1] + (3, 6), complex)
    Jc[..., 0, :3] = -1j * np.conj(b1); Jc[..., 1, 3:] = -1j * np.conj(b2)
    Jc[..., 2, :3] = 1j * b1 * np.conj(b2); Jc[..., 2, 3:] = -1j * b1 * np.conj(b2)
    return np.concatenate([Jc.real, Jc.imag], -2)


def dG_f(th, which):
    """d/dtheta of the 6 Gram coordinates ((0,1), (0,2), (1,2); real then imaginary): (..., 6, 4)."""
    E = seedE_f(th); out = []
    for (i, j) in POS:
        dE = np.zeros_like(E); dE[..., i, j] = 1j * E[..., i, j]
        EH = np.conj(np.swapaxes(E, -1, -2)); dEH = np.conj(np.swapaxes(dE, -1, -2))
        if which == 'h': dG = -(dE @ EH + E @ dEH)
        else: dG = -(np.swapaxes(dE, -1, -2) @ np.conj(E) + np.swapaxes(E, -1, -2) @ np.conj(dE))
        v = np.stack([dG[..., 0, 1], dG[..., 0, 2], dG[..., 1, 2]], -1)
        out.append(np.concatenate([v.real, v.imag], -1))
    return np.stack(out, -1)


def newton_f(phi, G, iters=8, tol=1e-13):
    phi = phi.copy()
    for _ in range(iters):
        f = F_f(phi, G)
        if np.abs(f).max(initial=0) < tol: break
        try:
            phi = phi - np.linalg.solve(J_f(phi), f[..., None])[..., 0]
        except np.linalg.LinAlgError:
            break
    ok = np.all(np.abs(F_f(phi, G)) < 1e-10, axis=-1) & np.all(np.isfinite(phi), axis=-1)
    return phi, ok


def D_f(th, phh, phv):
    E = seedE_f(th); B = side_f(phh); C = np.swapaxes(side_f(phv), -1, -2)
    BH = np.conj(np.swapaxes(B, -1, -2))
    return -(C @ np.conj(np.swapaxes(E, -1, -2))) @ np.linalg.inv(BH)


def centre_sides(ball):
    """Float sides at theta0, from the phases in P (Newton-polished).  Any choice is only a predictor."""
    P = ball.P.reshape(6, 6)
    phh = np.array([P[1, 3], P[1, 4], P[1, 5], P[2, 3], P[2, 4], P[2, 5]])
    phv = np.array([P[3, 1], P[4, 1], P[5, 1], P[3, 2], P[4, 2], P[5, 2]])
    Gh, Gv = grams_f(seedE_f(ball.theta0))
    phh, okh = newton_f(phh, Gh); phv, okv = newton_f(phv, Gv)
    return phh, phv, bool(okh and okv)


def continue_sides(ball, targets, step=0.004):
    """Sides at every target seed (B, 4) by continuation from theta0 along segments (vectorised).  Predictors only."""
    phh0, phv0, ok0 = centre_sides(ball)
    B = len(targets)
    phh = np.repeat(phh0[None], B, 0); phv = np.repeat(phv0[None], B, 0)
    ok = np.full(B, ok0)
    dist = np.linalg.norm(targets - ball.theta0[None], axis=1).max(initial=0)
    m = max(1, int(math.ceil(dist / step)))
    for s in range(1, m + 1):
        th = ball.theta0[None] + (targets - ball.theta0[None]) * (s / m)
        Gh, Gv = grams_f(seedE_f(th))
        h2, okh = newton_f(phh, Gh); v2, okv = newton_f(phv, Gv)
        ok &= okh & okv & (np.abs(h2 - phh).max(1) < 0.5) & (np.abs(v2 - phv).max(1) < 0.5)
        phh, phv = h2, v2
    return phh, phv, ok


def predictors(ball, thc, eps=1e-4):
    """Second-order predictors in u (theta = thc + Mth u) for both sides and for D, at box centres thc (B, 4)."""
    B = len(thc); Mf = ball.Mth
    phh, phv, ok = continue_sides(ball, thc)
    sg = []
    for j in range(4):
        e = np.zeros(4); e[j] = 1; sg += [e, -e]
    for j, l in itertools.combinations(range(4), 2):
        for a, b in ((1, 1), (1, -1), (-1, 1), (-1, -1)):
            e = np.zeros(4); e[j] = a; e[l] = b; sg.append(e)
    sg = np.array(sg)                                                       # (32, 4) offsets in u
    thp = thc[None] + eps * (sg @ Mf.T)[:, None, :]                         # (32, B, 4)
    Gh, Gv = grams_f(seedE_f(thp))
    hp, okh = newton_f(np.broadcast_to(phh, thp.shape[:2] + (6,)), Gh, iters=5)
    vp, okv = newton_f(np.broadcast_to(phv, thp.shape[:2] + (6,)), Gv, iters=5)
    ok &= okh.all(0) & okv.all(0)

    def d1(phi, th, which):                                                 # d phi / du = J^-1 dG/dtheta Mth
        return np.linalg.solve(J_f(phi), dG_f(th, which)) @ Mf

    out = {'ok': ok}
    for which, ph0, php in (('h', phh, hp), ('v', phv, vp)):
        g = d1(ph0, thc, which)                                             # (B, 6, 4)
        Hm = np.zeros((B, 6, 4, 4))
        for l in range(4):
            Hm[:, :, :, l] = (d1(php[2 * l], thp[2 * l], which) - d1(php[2 * l + 1], thp[2 * l + 1], which)) / (2 * eps)
        Hm = 0.5 * (Hm + np.swapaxes(Hm, -1, -2))
        q = np.stack([0.5 * Hm[..., j, j] if j == l else Hm[..., j, l] for j, l in TMA.MONO], -1)
        out[which] = (ph0, g, q)
        out['Y' + which] = np.linalg.inv(J_f(ph0))
    D0 = D_f(thc, phh, phv); Dp = D_f(thp, hp, vp)                         # (B,3,3), (32,B,3,3)
    g = np.stack([(Dp[2 * j] - Dp[2 * j + 1]) / (2 * eps) for j in range(4)], -1)
    qd = {}
    for j in range(4): qd[(j, j)] = 0.5 * (Dp[2 * j] - 2 * D0 + Dp[2 * j + 1]) / eps ** 2
    for m, (j, l) in enumerate(itertools.combinations(range(4), 2)):
        a = Dp[8 + 4 * m: 12 + 4 * m]
        qd[(j, l)] = (a[0] - a[1] - a[2] + a[3]) / (4 * eps ** 2)
    out['D'] = (D0, g, np.stack([qd[jl] for jl in TMA.MONO], -1))
    for key in ('h', 'v', 'D'):
        for arr in out[key]: ok &= np.all(np.isfinite(arr.reshape(B, -1)), axis=1)
    out['ok'] = ok
    return out


# ======================================================================================== Arb Taylor-model pieces
def theta_tm(ball, wc, h):
    """theta = theta0 + Mth (wc + u) as a TM (B, 4): exact linear part Mth."""
    B = wc.shape[0]
    c = ball.theta0_a[None, :] + np.einsum('ij,bj->bi', ball.Mth_a, wc)
    g = np.broadcast_to(ball.Mth_a, (B, 4, 4)).copy()
    return TM(c, g, zeros((B, 4, 10)), zeros((B, 4)), h)


def E_tm(th):
    e = exp_i(th)
    one = TMA.acb(1)
    return stack([one, one, one, one, e[0], e[1], one, e[2], e[3]], (3, 3), th.h, True)


def side_tm(phi):
    """The side matrix (B, 3, 3) of a real TM phi (B, 6), first row ones."""
    e = exp_i(phi)
    one = TMA.acb(1)
    return stack([one, one, one] + [e[k] for k in range(6)], (3, 3), phi.h, True)


def gram_tms(E):
    six = np.full((3, 3), TMA.CZERO, dtype=object)
    for i in range(3): six[i, i] = TMA.acb(6)
    Gh = six - (E @ E.H())
    Gv = six - (E.T() @ E.conj())
    return Gh, Gv


def F_tm(phi, G):
    """Gram residual (B, 6): Re, Im of (SS^* - G) at (0,1), (0,2), (1,2), with S the side of phi."""
    e = exp_i(phi)
    b1, b2 = e[slice(0, 3)], e[slice(3, 6)]
    cb1, cb2 = b1.conj(), b2.conj()
    m01 = sum1(cb1); m02 = sum1(cb2); m12 = sum1(b1 * cb2)
    v = [m01 - G[0, 1], m02 - G[0, 2], m12 - G[1, 2]]
    return stack([x.re() for x in v] + [x.im() for x in v], (6,), phi.h, False)


def J_tm(phi):
    """dF/dphi (B, 6, 6) over the TM phi (independent of G)."""
    e = exp_i(phi)
    b1, b2 = e[slice(0, 3)], e[slice(3, 6)]
    mi = TMA.acb(0, -1); pi_ = TMA.acb(0, 1)
    r0 = [b1[k].conj().scale(mi) for k in range(3)]
    r1 = [b2[k].conj().scale(mi) for k in range(3)]
    p = b1 * b2.conj()
    r2a = [p[k].scale(pi_) for k in range(3)]; r2b = [p[k].scale(mi) for k in range(3)]
    zero = TMA.CZERO
    rows = [r0 + [zero] * 3, [zero] * 3 + r1, r2a + r2b]
    ent = []
    for part in ('re', 'im'):
        for row in rows:
            ent += [getattr(x, part)() if isinstance(x, TM) else TMA.ZERO for x in row]
    return stack(ent, (6, 6), phi.h, False)


def sum1(t):
    """Sum of a TM over its (single) entry axis."""
    return TM(t.c.sum(1), t.g.sum(1), t.q.sum(1), t.rho.sum(1), t.h)


def cmatmul(Y, t):
    """Constant (B, p, m) @ matrix TM (B, m, n)."""
    E = np.einsum
    return TM(E('bpm,bmn->bpn', Y, t.c), E('bpm,bmnv->bpnv', Y, t.g), E('bpm,bmnv->bpnv', Y, t.q),
              E('bpm,bmn->bpn', np.abs(Y), t.rho), t.h)


_PERM6 = [(a, b) for a in range(3) for b in range(3) if a != b]
_SGN = []
for a, b in _PERM6:
    c = 3 - a - b
    p = (c, a, b)
    inv = sum(1 for i in range(3) for j in range(i + 1, 3) if p[i] > p[j])
    _SGN.append(1 if inv % 2 == 0 else -1)


def psi_tm(S):
    """Psi(S) = perm(S) det(S)^2 / prod S_ab for a side TM S (B, 3, 3) with first row ones and unimodular entries
    (1 / prod S_ab = conj(prod S_ab))."""
    b1, b2 = S[1], S[2]
    A = [a for a, b in _PERM6]; Bi = [b for a, b in _PERM6]
    pr = b1[np.array(A)] * b2[np.array(Bi)]                                  # (B, 6)
    perm = sum1(pr)
    det = sum1(pr.scale(np.array([TMA.arb(s) for s in _SGN], dtype=object)))
    d = b1 * b2
    prod = (d[0] * d[1]) * d[2]
    return (perm * (det * det)) * prod.conj()


def sign_certified(t):
    """+1 / -1 where the real TM t (B,) is certified positive / negative over the box, 0 otherwise."""
    v = t.var()
    out = np.zeros(t.c.shape[0], int)
    for i, (c, w) in enumerate(zip(t.c, v)):
        if c - w > 0: out[i] = 1
        elif c + w < 0: out[i] = -1
    return out


def side_tube(pred, G, Y, tries=8, rho_max=0.3):
    """Parametric Krawczyk on F(phi; G(u)) = 0 over the box.  pred: real TM (B, 6) with zero remainder (the
    predictor), Y: (B, 6, 6) exact constants.  For each box, with the tube X(u) = pred(u) + [-rho, rho]^6,
        b = sup_u |Y F(pred(u); G(u))|,  q_i = sum_k sup_{u, phi in X(u)} |I - Y J(phi)|_ik,
    b_i + q_i rho < rho for all i (certified in Arb) implies: for every u exactly one zero of F(.; G(u)) in X(u), and it
    lies in pred(u) + [-(b + q rho), b + q rho].  Returns the tube TM (pred with remainder b + q rho) or raises."""
    B = pred.c.shape[0]
    b = F_tm(pred, G).lmul(Y).bound()                                       # (B, 6) arb
    bf = vup(b)
    rho = np.maximum(1.5 * bf.max(1), 1e-300)
    I6 = np.full((6, 6), TMA.ZERO, dtype=object)
    for i in range(6): I6[i, i] = arb(1)
    done = np.zeros(B, bool); needv = np.empty((B, 6), dtype=object)
    for _ in range(tries):
        idx = np.where(~done)[0]
        sub = pred.select(idx)
        ra = oarb(rho[idx])
        tot = sub.add_rho(np.broadcast_to(ra[:, None], (len(idx), 6)))
        A = (cmatmul(Y[idx], J_tm(tot)).scale(arb(-1)) + I6).bound()        # sup |I - Y J| (B', 6, 6)
        q = A.sum(-1)
        nd = b[idx] + q * ra[:, None]
        for t, i in enumerate(idx):
            if all(nd[t, k] < ra[t] for k in range(6)):
                done[i] = True; needv[i] = nd[t]
            else:
                qf = vup(q[t]); bt = bf[i]
                if np.any(qf >= 1): raise CertError('Krawczyk: q >= 1 (no contraction)')
                rho[i] = (bt / (1 - qf)).max() * 1.2 + 1e-300
                if rho[i] > rho_max: raise CertError('Krawczyk: tube radius too large')
        if done.all(): return pred.add_rho(needv)
    raise CertError('Krawczyk: no contraction after %d tries' % tries)


def forced_block(Xp, E, Bs, C):
    """D = -C E^* (B^*)^-1 enclosed as the predictor Xp plus a remainder (never through an inverse product):
    D - Xp = -(C E^* + Xp B^*) (B^*)^-1, so |D - Xp| <= |Rs| Minv entrywise, with |Rs| <= sup|C E^* + Xp B^*| and
    Minv >= |(B^*)^-1|: for any A0, X = I - A0 B^*, q = sup ||X||_inf < 1 gives (B^*)^-1 = sum_k X^k A0 and
    |(B^*)^-1| <= |A0| + q/(1-q) ||A0||_inf (entrywise)."""
    Bh = Bs.H()
    Rs = (C @ E.H()) + (Xp @ Bh)
    Rb = Rs.bound()                                                          # (B, 3, 3)
    Bmid = np.array([[[complex(float(z.real.mid()), float(z.imag.mid())) for z in row] for row in M] for M in Bh.c])
    A0f = np.linalg.inv(Bmid)
    A0 = oacb(A0f)
    I3 = np.full((3, 3), TMA.CZERO, dtype=object)
    for i in range(3): I3[i, i] = TMA.acb(1)
    X = cmatmul(A0, Bh).scale(TMA.acb(-1)) + I3
    q = X.bound().sum(-1)                                                    # (B, 3) row sums
    qmax = np.array([max(row, key=up) for row in q], dtype=object)
    qm = oarb(np.array([up(x) for x in qmax]))
    need(all(x < 1 for x in qm), 'forced block: Neumann q >= 1')
    aA = np.abs(A0)
    nA = np.array([max(aA[b].sum(-1), key=up) for b in range(len(aA))], dtype=object)
    nA = oarb(np.array([up(x) for x in nA]))
    tail = qm / (1 - qm) * nA                                                # (B,)
    Minv = aA + tail[:, None, None]
    extra = np.einsum('bjm,bmk->bjk', Rb, Minv)
    return Xp.add_rho(extra)


def arg_tm(D, Pref):
    """arg D (B, 3, 3) on the branch nearest Pref (3, 3 floats):
    arg(c(1 + v)) = arg c + Im(v - v^2/2) + Im R, |R| <= |v|^3 / (3 (1 - |v|)), with c = D's constant (exact)."""
    c = D.c
    cinv = vmap(lambda z: 1 / z, c)
    v = TM(D.c - c, D.g * cinv[..., None], D.q * cinv[..., None], D.rho * np.abs(cinv), D.h)
    ub = v.bound()
    need(all(x < arb(0.5) for x in ub.flat), 'arg: |D/c - 1| not < 1/2')
    w = v - (v * v).scale(arb(0.5))
    a = vmap(lambda z: z.arg(), c)
    af = np.array([float(x.mid()) for x in a.flat]).reshape(a.shape)
    k = np.rint((Pref[None] - af) / (2 * math.pi))
    a = a + oarb(k) * TWO_PI_ARB
    t = w.im()
    tail = vmap(lambda x: x ** 3 / (3 * (1 - x)), oarb(vup(ub)))
    return TM(t.c + a, t.g, t.q, t.rho + tail, t.h)


def real_tm(c, g, q, h):
    B = c.shape[0]
    return TM(oarb(c), oarb(g), oarb(q), zeros(c.shape), h)


def box_Q(ball, wc, h, wcf):
    """Taylor models (B, 36) of the phases Q of the matched completion H_o(theta), theta = theta0 + Mth (wc + u),
    u in prod [-h, h], for B boxes.  wc, h: (B, 4) arb (exact box centres / half-widths enclosed), wcf: float centres
    (predictors only).  Raises CertError if any box fails."""
    B = wc.shape[0]
    th = theta_tm(ball, wc, h)
    thcf = ball.theta0[None] + wcf @ ball.Mth.T
    pr = predictors(ball, thcf)
    need(pr['ok'].all(), 'predictor (float continuation) failed')
    E = E_tm(th)
    Gh, Gv = gram_tms(E)
    tubes = {}
    for which, G in (('h', Gh), ('v', Gv)):
        ph0, g, q = pr[which]
        pred = real_tm(ph0, g, q, h)
        tubes[which] = side_tube(pred, G, oarb(pr['Y' + which]))
    Bs = side_tm(tubes['h']); V = side_tm(tubes['v']); C = V.T()
    sB = sign_certified(psi_tm(Bs).im()); sV = sign_certified(psi_tm(V).im())
    need(np.all(sB == ball.o), 'orientation: sign Im Psi(B) not certified = o')
    need(np.all(sV == -ball.o), 'matching: sign Im Psi(C^T) not certified = -o')
    D0, gD, qD = pr['D']
    Xp = TM(oacb(D0), oacb(gD), oacb(qD), zeros((B, 3, 3)), h)
    D = forced_block(Xp, E, Bs, C)
    Pm = ball.P.reshape(6, 6)
    aD = arg_tm(D, Pm[3:, 3:])
    ent = []
    for j in range(6):
        for k in range(6):
            if j == 0 or k == 0: ent.append(TMA.ZERO)
            elif j < 3 and k < 3: ent.append(th[POS.index((j, k))])
            elif j < 3: ent.append(tubes['h'][3 * (j - 1) + (k - 3)])
            elif k < 3: ent.append(tubes['v'][3 * (k - 1) + (j - 3)])
            else: ent.append(aD[j - 3, k - 3])
    Q = stack(ent, (36,), h, False)
    return Q


def wind_to(Q, Pref):
    """Shift each entry of the real TM Q (B, m) by 2 pi N (N integer per box and entry, chosen at the box centre)
    towards Pref ((m,) or (B, m) floats).  Every shift is a valid representative (phases are taken modulo 2 pi)."""
    cf = np.array([float(x.mid()) for x in Q.c.flat]).reshape(Q.c.shape)
    Pref = np.broadcast_to(np.asarray(Pref, float), cf.shape)
    N = np.rint((Pref - cf) / (2 * math.pi))
    return Q + oarb(N) * TWO_PI_ARB


def representative(ball, Q, wcf):
    """The representative of FORMAT.md section 3: entrywise nearest P + U w (decided at the box centre wcf)."""
    return wind_to(Q, ball.P[None] + wcf @ ball.U.T)


# ======================================================================================== claim C1
def ball_boxes(r, k):
    """The closed boxes of [-r, r]^4 (k per axis) that meet the OPEN ball ||w|| < r: min ||w||^2 over the box < r^2,
    decided in exact rationals.  Their union contains the closed ball: for ||w|| <= r, the points (1 - 1/m) w lie in
    the open ball, hence each in some kept box; one of the finitely many kept boxes contains infinitely many of them,
    and it is closed, so it contains w.  (Boxes meeting the ball in boundary points only, e.g. the 16 corner boxes for
    k = 4 that touch it at one vertex, are not needed.)  Returns (index tuples, wc arb (B, 4), h arb (B, 4), wc float)."""
    rq = Fr(r); hq = rq / k
    keep = []
    for idx in itertools.product(range(k), repeat=4):
        cq = [-rq + (2 * i + 1) * hq for i in idx]
        dmin = sum(max(abs(c) - hq, Fr(0)) ** 2 for c in cq)
        if dmin < rq * rq: keep.append(idx)
    ra = arb(r)
    wc = np.array([[ra * (2 * i + 1 - k) / k for i in idx] for idx in keep], dtype=object).reshape(len(keep), 4)
    h = np.full((len(keep), 4), ra / k, dtype=object)
    wcf = np.array([[r * (2 * i + 1 - k) / k for i in idx] for idx in keep], float).reshape(len(keep), 4)
    return keep, wc, h, wcf


def residual_bound(ball, Q, wc, wcf):
    """Per box: an upper bound (arb) of sup_u ||Q(u) - P - 2 pi N - U (wc + u)||."""
    Qw = representative(ball, Q, wcf)
    res = TM(Qw.c - ball.P_a[None] - np.einsum('ej,bj->be', ball.U_a, wc), Qw.g - ball.U_a[None], Qw.q, Qw.rho, Q.h)
    return TMA.norm_sup(res)


def certify_c1(ball, chunk=64):
    """Claim C1 for one seed ball.  Returns dict(ok, n_cert, reason, boxes, seconds)."""
    ctx.prec = PREC
    t0 = time.time()
    try:
        ball.Minv()                                                          # E is a genuine 4-dim ellipsoid
        keep, wc, h, wcf = ball_boxes(ball.r, ball.k)
        worst = 0.0
        for s in range(0, len(keep), chunk):
            sl = slice(s, s + chunk)
            Q = box_Q(ball, wc[sl], h[sl], wcf[sl])
            nb = residual_bound(ball, Q, wc[sl], wcf[sl])
            worst = max(worst, max(up(x) for x in nb))
        ok = worst <= ball.n
        return dict(ok=ok, n_cert=worst, reason='' if ok else 'C1: n_cert %.6e > n %.6e' % (worst, ball.n),
                    boxes=len(keep), seconds=time.time() - t0)
    except CertError as e:
        return dict(ok=False, n_cert=math.inf, reason='C1: ' + str(e), boxes=None, seconds=time.time() - t0)


# ======================================================================================== Stage C arguments
def opnorm_up(M):
    """Rigorous upper bound (float) of the spectral norm of the float matrix M (exact entries): mu^2 I - M^T M is
    certified positive definite by an Arb Cholesky factorisation, mu slightly above the float estimate; fallback
    sqrt of the Gershgorin bound of M^T M."""
    M = np.asarray(M, float)
    A = arb_mat(M.tolist()); G = A.transpose() * A
    k = G.nrows()
    s = float(np.linalg.norm(M, 2)) if M.size else 0.0
    for fac in (1 + 1e-12, 1 + 1e-9, 1 + 1e-6):
        mu = s * fac + 1e-300
        Sm = arb_mat([[(arb(mu) ** 2 if i == j else 0) - G[i, j] for j in range(k)] for i in range(k)])
        if _cholesky_pd(Sm): return up(arb(mu))
    g = max(sum((abs(G[i, j]) for j in range(k)), arb(0)) for i in range(k))
    return up(arb(up(g)).sqrt())


def _cholesky_pd(A):
    n = A.nrows(); L = [[arb(0)] * n for _ in range(n)]
    for j in range(n):
        s = A[j, j] - sum((L[j][m] * L[j][m] for m in range(j)), arb(0))
        if not s > 0: return False
        L[j][j] = s.sqrt()
        for i in range(j + 1, n):
            L[i][j] = (A[i, j] - sum((L[i][m] * L[j][m] for m in range(j)), arb(0))) / L[j][j]
    return True


def stage_c_args(ball):
    """Arguments of stagec.stage_c for the enclosure Q = P + U w + nu + 2 pi N (||w|| <= r, ||nu|| <= n), in cycles.
    P/2pi is rounded to a float Pc; the rounding d = ||P - 2 pi Pc|| is added to n (Q/2pi = Pc + U(w/2pi) + nu'/2pi + N
    with ||nu'|| <= n + d).  rcol = max_i ||U_(block i)||_2 r + n', rF = ||U||_2 r + n', all rounded up."""
    Pc = ball.P / (2 * math.pi)
    d = sum(((arb(float(p)) - TWO_PI_ARB * arb(float(c))) ** 2 for p, c in zip(ball.P, Pc)), arb(0))
    n1 = arb(ball.n) + arb(up(d)).sqrt()
    tcol = max(opnorm_up(ball.U.reshape(6, 6, 4)[:, i, :]) for i in range(6))
    tF = opnorm_up(ball.U)
    r = arb(ball.r)
    return dict(P=Pc.reshape(6, 6), rcol=up((arb(tcol) * r + n1) / TWO_PI_ARB), rH=up(r / TWO_PI_ARB),
                nN=up(n1 / TWO_PI_ARB), rF=up((arb(tF) * r + n1) / TWO_PI_ARB), T=ball.U.copy(), radius=ball.label_radius)


def run_stage_c(ball):
    import stagec as SCm
    a = stage_c_args(ball)
    ctx.prec = 120                                                          # as in certify.py (stagec sets 120)
    out = SCm.stage_c(a['P'], a['rcol'], tang=(a['T'], a['rH'], a['nN']), radius=a['radius'], rF=a['rF'])
    ctx.prec = PREC
    out.update(rcol=a['rcol'], rF=a['rF'], nN=a['nN'])
    return out


# ======================================================================================== transfers: shared pieces
G4 = ('id', 'conj', 'T', 'conjT')


def g_index(g):
    """(sign, transpose) of g acting on phases: Q'_ab = sign * (Q_ba if transpose else Q_ab)."""
    need(g in G4, 'unknown group element %r' % (g,))
    return (-1 if g in ('conj', 'conjT') else 1), g in ('T', 'conjT')


def g_perm(g):
    """(sign, index array): (g Q)_k = sign * Q[index[k]] on row-major phases."""
    sgn, tr = g_index(g)
    return sgn, np.array([6 * (k % 6) + k // 6 if tr else k for k in range(36)])


def apply_signed_perm(Q, sgn, idx):
    """sign * Q[idx] for a real TM Q (B, 36): exact (an index map and a sign)."""
    t = Q[idx]
    return t if sgn == 1 else -t


def g_matrix(g):
    """36 x 36 signed permutation matrix (ints) of g on row-major phases."""
    sgn, tr = g_index(g)
    M = np.zeros((36, 36), int)
    for a in range(6):
        for b in range(6):
            M[6 * a + b, 6 * b + a if tr else 6 * a + b] = sgn
    return M


def corner_L(rows, cols):
    """4 x 36 integer matrix: theta'_k of the ordered corner (rows, cols) as a function of the phases (row-major)."""
    need(len(rows) == 3 and len(cols) == 3 and len(set(rows)) == 3 and len(set(cols)) == 3
         and all(isinstance(x, int) and 0 <= x < 6 for x in list(rows) + list(cols)), 'malformed corner')
    i0, i1, i2 = rows; j0, j1, j2 = cols
    L = np.zeros((4, 36), int)
    for k, (i, j) in enumerate(((i1, j1), (i1, j2), (i2, j1), (i2, j2))):
        L[k, 6 * i + j] += 1; L[k, 6 * i + j0] -= 1; L[k, 6 * i0 + j] -= 1; L[k, 6 * i0 + j0] += 1
    return L


def perm_matrix(rows, cols):
    """36 x 36 permutation: (pi X)_ab = X_{rows[a], cols[b]}."""
    need(sorted(rows) == list(range(6)) and sorted(cols) == list(range(6))
         and all(isinstance(x, int) for x in list(rows) + list(cols)), 'malformed permutation')
    M = np.zeros((36, 36), int)
    for a in range(6):
        for b in range(6): M[6 * a + b, 6 * rows[a] + cols[b]] = 1
    return M


def hor_matrix():
    """36 x 36 exact horizontal projector (object arb, entries in Z/36)."""
    H = np.empty((36, 36), dtype=object)
    for x in range(36):
        for y in range(36):
            v = (36 if x == y else 0) - (6 if x // 6 == y // 6 else 0) - (6 if x % 6 == y % 6 else 0) + 1
            H[x, y] = arb(v) / 36
    return H


HOR = None


def hor():
    global HOR
    if HOR is None: HOR = hor_matrix()
    return HOR


def ints(v, n, what):
    need(isinstance(v, (list, tuple)) and len(v) == n and all(isinstance(x, int) and not isinstance(x, bool) for x in v),
         'malformed %s' % what)
    return np.array(v, dtype=np.int64)


def dyadic_boxes(boxes, max_level):
    """[[m, i0..i3], ...] -> (levels (B,), idx (B, 4)) validated: 0 <= m <= max_level, 0 <= i < 2^m."""
    out = []
    for b in boxes:
        need(isinstance(b, (list, tuple)) and len(b) == 5 and all(isinstance(x, int) and not isinstance(x, bool) for x in b),
             'malformed box %r' % (b,))
        m = b[0]
        need(0 <= m <= max_level and all(0 <= x < (1 << m) for x in b[1:]), 'box out of range %r' % (b,))
        out.append(tuple(b))
    return out


def box_geometry(boxes, scale):
    """Dyadic boxes in u = x / scale -> exact Arb centres xc (B, 4) and half-widths h (B, 4), plus float centres.
    u_a in [-1 + i 2^(1-m), -1 + (i+1) 2^(1-m)]: centre -1 + (2i + 1) 2^-m, half-width 2^-m."""
    s = arb(scale)
    xc = np.empty((len(boxes), 4), dtype=object); h = np.empty((len(boxes), 4), dtype=object)
    xcf = np.empty((len(boxes), 4))
    for b, (m, *idx) in enumerate(boxes):
        hw = s * arb(2) ** (-m)
        for a in range(4):
            u = arb(-1) + arb(2 * idx[a] + 1) * arb(2) ** (-m)
            xc[b, a] = s * u; h[b, a] = hw
            xcf[b, a] = scale * (-1 + (2 * idx[a] + 1) * 2.0 ** (-m))
    return xc, h, xcf


VERT = np.array([[1 if (v >> j) & 1 else -1 for j in range(4)] for v in range(16)])


def affine_sup_sq(c, A, h):
    """Per box: an arb >= max over the 16 box vertices of ||c_b + A_b (h_b * s)||^2, c (B, m), A (B, m, 4) or (m, 4),
    h (B, 4).  (Squared norm of an affine map: convex, so this is its sup over the box.)"""
    A = np.asarray(A, dtype=object)
    V = h[:, None, :] * VERT[None]                                           # (B, 16, 4)
    if A.ndim == 2: off = np.einsum('mv,bkv->bkm', A, V)
    else: off = np.einsum('bmv,bkv->bkm', A, V)
    x = c[:, None, :] + off
    sq = (x * x).sum(-1)                                                     # (B, 16)
    return np.array([arb(max(up(y) for y in row)) for row in sq], dtype=object)


# ======================================================================================== T0 / T1 / T2 for a seed ball
def check_T0(ball, tgt, wind, xc, h):
    """theta_j(beta) in int E_l at all 16 vertices: ||Mth_l^-1 (theta0_j + Mth_j v - theta0_l + 2 pi N)|| < r_l."""
    need(tgt.o == ball.o, 'T0: orientation differs')
    N = ints(wind, 4, 'T0 winding')
    Mi = tgt.Minv()
    c0 = Mi.dot(ball.theta0_a - tgt.theta0_a + oarb(N.astype(float)) * TWO_PI_ARB)
    A = Mi.dot(ball.Mth_a)
    c = c0[None, :] + np.einsum('ij,bj->bi', A, xc)
    sq = affine_sup_sq(c, A, h)
    r2 = tgt.r_a * tgt.r_a
    need(all(s < r2 for s in sq), 'T0: a vertex is not certified inside the target ellipsoid')


CORNER9 = [6 * i + j for i in range(3) for j in range(3)]


def corner_symmetry(g, rows, cols):
    """rows, cols orderings of (0, 1, 2): theta' depends only on the top-left 3x3 block of Q (first row and column 0,
    the rest theta).  Returns (L9, s): theta' = L9 @ (that block, row-major), and the target orientation s * o_j.
    The sides of K = g H at this corner are B and C up to row/column order and conjugation (id: B, C; conj: conj B,
    conj C; T: C^T, B^T; conjT: conj C^T, conj B^T), so the corner is matched and its orientation is o_j for g in
    {id, conjT}, -o_j for g in {conj, T} (Psi is invariant under permutations, transposition, and conj flips Im)."""
    need(sorted(rows) == [0, 1, 2] and sorted(cols) == [0, 1, 2], 'not a corner symmetry')
    L = corner_L(rows, cols) @ g_matrix(g)
    need(np.all(np.delete(L, CORNER9, axis=1) == 0), 'corner symmetry outside the seed block')
    return L[:, CORNER9], (1 if g in ('id', 'conjT') else -1)


def check_T1_symmetry(ball, tgt, g, rows, cols, wind, xc, h, xcf):
    """T1 at a reordering of the seed corner, without Taylor models: on the representative of FORMAT.md section 3, the
    top-left block of Q is (0 or theta_a(w)) + 2 pi K_e, K decided at the box centre, so theta' = L9 (block) is affine
    in w and the ellipsoid test is the 16-vertex test of T0."""
    L9, s = corner_symmetry(g, rows, cols)
    need(tgt.o == s * ball.o, 'T1: orientation of the target differs')
    N = ints(wind, 4, 'T1 winding')
    B = len(xc)
    # exact block values at w: constant part V0 (9,), linear part V1 (9, 4) (rows of Mth for the theta entries)
    V0 = np.full(9, TMA.ZERO, dtype=object); V1 = np.full((9, 4), TMA.ZERO, dtype=object)
    for m, (i, j) in enumerate(POS):
        e = CORNER9.index(6 * i + j)
        V0[e] = ball.theta0_a[m]; V1[e] = ball.Mth_a[m]
    vcf = np.zeros((B, 9)); vcf[:, [CORNER9.index(6 * i + j) for i, j in POS]] = ball.theta0[None] + xcf @ ball.Mth.T
    pref = ball.P[CORNER9][None] + xcf @ ball.U[CORNER9].T
    K = np.rint((pref - vcf) / (2 * math.pi))                                  # representative: block + 2 pi K
    Mi = tgt.Minv()
    ML = Mi.dot(oarb(L9.astype(float)))                                      # (4, 9)
    c = (np.einsum('ie,be->bi', ML, V0[None, :] + oarb(K) * TWO_PI_ARB + np.einsum('ev,bv->be', V1, xc))
         + Mi.dot(oarb(N.astype(float)) * TWO_PI_ARB - tgt.theta0_a)[None, :])
    lin = ML.dot(V1)                                                         # (4, 4)
    sq = affine_sup_sq(c, lin, h)
    r2 = tgt.r_a * tgt.r_a
    need(all(x < r2 for x in sq), 'T1 (corner symmetry): not certified inside the target ellipsoid')


def dephased_side_phases(Qp, rows, cols, extra=None):
    """Real TM (B, 6) of the dephased phases of the 3x3 block K[rows, cols] (row 0, column 0 removed):
    X_ab = Q'_{r_a c_b} - Q'_{r_a c_0} - Q'_{r_0 c_b} + Q'_{r_0 c_0}, a, b = 1, 2 (rows of the side shape).
    Psi is invariant under row/column permutations and unimodular scalings, so Psi(block) = Psi(side of X)."""
    L = np.zeros((6, 36), int)
    for a in (1, 2):
        for b in range(3):
            k = 3 * (a - 1) + b
            L[k, 6 * rows[a] + cols[b]] += 1; L[k, 6 * rows[a] + cols[0]] -= 1
            L[k, 6 * rows[0] + cols[b]] -= 1; L[k, 6 * rows[0] + cols[0]] += 1
    X = Qp.lmul(oarb(L.astype(float)))
    if extra is not None: X = X.add_rho(extra)
    return X


def block_psi_sign(Qp, rows, cols, extra=None):
    X = dephased_side_phases(Qp, rows, cols, extra)
    return sign_certified(psi_tm(side_tm(X)).im())


def check_T1_general(tgt, g, rows, cols, wind, Q):
    """T1 on boxes with Q TMs (representative already chosen): theta' = L g Q, ||Mth_l^-1 (theta' + 2pi N - theta0_l)||
    < r_l over the box, sign Im Psi(K[I, J^c]) = o_l, sign Im Psi(K[I^c, J]^T) = -o_l."""
    N = ints(wind, 4, 'T1 winding')
    Qp = apply_signed_perm(Q, *g_perm(g))
    th = Qp.lmul(oarb(corner_L(rows, cols).astype(float)))
    Mi = tgt.Minv()
    x = (th + (oarb(N.astype(float)) * TWO_PI_ARB - tgt.theta0_a)[None, :]).lmul(Mi)
    sup = TMA.norm_sup(x)
    need(all(s < tgt.r_a for s in sup), 'T1: not certified inside the target ellipsoid')
    Ic = [i for i in range(6) if i not in rows]; Jc = [j for j in range(6) if j not in cols]
    sB = block_psi_sign(Qp, list(rows), Jc)
    need(np.all(sB == tgt.o), 'T1: orientation sign Im Psi(K[I, J^c]) not certified = o_l')
    sC = block_psi_sign(transpose_phases(Qp), list(cols), Ic)              # K[I^c, J]^T = K^T[J, I^c]
    need(np.all(sC == -tgt.o), 'T1: matching sign Im Psi(K[I^c, J]^T) not certified = -o_l')


def transpose_phases(Qp):
    """Phases of K^T from those of K (row-major 36-vectors)."""
    idx = np.array([6 * (e % 6) + e // 6 for e in range(36)])
    return Qp[idx]


def check_T2(rec_P, rec_R, g, rows, cols, wind, Q):
    """||hor(pi(g Q) + 2 pi N - P_t)|| < R_t over the box."""
    N = ints(wind, 36, 'T2 winding')
    perm_matrix(rows, cols)
    sgn, gi = g_perm(g)
    pi = np.array([6 * rows[a] + cols[b] for a in range(6) for b in range(6)])
    X = apply_signed_perm(Q, sgn, gi[pi]) + (oarb(N.astype(float)) * TWO_PI_ARB - oarb(rec_P))[None, :]
    Y = X.lmul(hor())
    sup = TMA.norm_sup(Y)
    need(all(s < arb(rec_R) for s in sup), 'T2: not certified inside the target record')


# ======================================================================================== coverage traversals
def _box_int(box):
    """Exact integer box in units of 2^-m: u_a in [lo_a, lo_a + 2] * 2^-m, lo_a = -2^m + 2 i_a."""
    m = box[0]
    lo = [-(1 << m) + 2 * i for i in box[1:]]
    return m, lo


def _children(box):
    m = box[0]
    return [(m + 1,) + tuple(2 * i + b[a] for a, i in enumerate(box[1:])) for b in itertools.product((0, 1), repeat=4)]


def covered(listed, max_level, discard):
    """FORMAT.md section 4 traversal from the level-0 box [-1, 1]^4: a box is covered if listed, or discarded
    (discard(box) is True only if it is certified to miss the set to be covered), or all 16 children are covered and
    m < max_level.  Returns (True, nodes) or (False, first uncovered box)."""
    stack = [(0, 0, 0, 0, 0)]; nodes = 0
    while stack:
        box = stack.pop(); nodes += 1
        if box in listed or discard(box): continue
        if box[0] >= max_level: return False, box
        stack.extend(_children(box))
    return True, nodes


def misses_unit_sphere(box):
    """Exact: the box misses {||u|| = 1} (min ||u||^2 > 1 or max ||u||^2 < 1), integer arithmetic."""
    m, lo = _box_int(box)
    R2 = 1 << (2 * m)
    mn = sum(0 if l <= 0 <= l + 2 else min(l * l, (l + 2) ** 2) for l in lo)
    mx = sum(max(l * l, (l + 2) ** 2) for l in lo)
    return mn > R2 or mx < R2


# ======================================================================================== one seed ball: C2
def check_seed_transfers(ball, seeds, records, groups, max_level, chunk=64, edges=()):
    """All transfer groups of one seed ball (FORMAT.md section 4; T3 into edge balls, SPEC section 10) and the
    coverage of its sphere.  seeds: list of Ball; records: list of (P (36 floats), R float); edges: list of
    (EdgeBall, EdgeTubes from its C1e).  Raises CertError on the first failure; returns counts."""
    ctx.prec = PREC
    listed = set(); cnt = dict(T0=0, T1=0, T1sym=0, T2=0, T3=0)
    jobs = []
    for grp in groups:
        need(isinstance(grp, dict), 'malformed transfer group')
        kind = grp.get('kind'); t = grp.get('target')
        need(isinstance(t, int) and not isinstance(t, bool), 'malformed target')
        boxes = dyadic_boxes(grp.get('boxes', []), max_level)
        if not boxes: continue
        listed.update(boxes)
        xc, h, xcf = box_geometry(boxes, ball.r)
        if kind == 'T0':
            need(0 <= t < len(seeds), 'T0: target out of range')
            check_T0(ball, seeds[t], grp.get('wind'), xc, h); cnt['T0'] += len(boxes)
        elif kind == 'T1':
            need(0 <= t < len(seeds), 'T1: target out of range')
            rows, cols = list(ints(grp.get('rows'), 3, 'rows')), list(ints(grp.get('cols'), 3, 'cols'))
            rows = [int(x) for x in rows]; cols = [int(x) for x in cols]
            corner_L(rows, cols); g_index(grp.get('g'))
            if sorted(rows) == [0, 1, 2] and sorted(cols) == [0, 1, 2]:
                check_T1_symmetry(ball, seeds[t], grp['g'], rows, cols, grp.get('wind'), xc, h, xcf); cnt['T1sym'] += len(boxes)
            else:
                jobs.append(('T1', grp, rows, cols, xc, h, xcf))
        elif kind == 'T2':
            need(0 <= t < len(records), 'T2: target out of range')
            rows = [int(x) for x in ints(grp.get('rows'), 6, 'rows')]; cols = [int(x) for x in ints(grp.get('cols'), 6, 'cols')]
            perm_matrix(rows, cols); g_index(grp.get('g'))
            jobs.append(('T2', grp, rows, cols, xc, h, xcf))
        elif kind == 'T3':
            need(0 <= t < len(edges), 'T3: target out of range')
            g_index(grp.get('g'))
            jobs.append(('T3', grp, grp.get('rows'), grp.get('cols'), xc, h, xcf))
        else:
            raise CertError('unknown transfer kind %r' % (kind,))
    for kind, grp, rows, cols, xc, h, xcf in jobs:
        for s in range(0, len(xc), chunk):
            sl = slice(s, s + chunk)
            Q = representative(ball, box_Q(ball, xc[sl], h[sl], xcf[sl]), xcf[sl])
            if kind == 'T1':
                check_T1_general(seeds[grp['target']], grp['g'], rows, cols, grp.get('wind'), Q)
            elif kind == 'T3':
                import edgecert
                eb, tubes = edges[grp['target']]
                edgecert.check_T3(Q, eb, tubes, grp['g'], rows, cols)
            else:
                P, R = records[grp['target']]
                check_T2(P, R, grp['g'], rows, cols, grp.get('wind'), Q)
        cnt[kind] += len(xc)
    ok, info = covered(listed, max_level, misses_unit_sphere)
    need(ok, 'sphere coverage: box %r neither listed, off the sphere, nor refinable' % (info,))
    cnt['coverage_nodes'] = info
    return cnt


# ======================================================================================== records: certification data
PAIRS15 = list(itertools.combinations(range(6), 2))


def _arb_rows(M, nr, nc):
    A = np.empty((nr, nc), dtype=object)
    for i in range(nr):
        for j in range(nc): A[i, j] = M[i, j]
    return A


class RecordData:
    """A full-matrix record after its own certification, with the exact data its boundary checks use.

    certify(): proof/atlas's record check, the calls of certify.certify_record: BallRecord(phi, Tint) (sigma by an Arb
    Cholesky factorisation), normal_bound(R) -> (r_H, n0), and Stage C at (R, label_radius) (BallRecord.stage_c, with
    the float frame and n0 + dT r_H, unchanged).  Every Hadamard e^{i(P + delta)} of the record (delta horizontal,
    ||delta|| <= R) has delta = Tb eta + nu with Tb the EXACT rational frame, eta = G^-1 Tb^T delta, ||eta|| <= r_H,
    nu = P_N delta in N (the horizontal complement of span Tb), ||nu|| <= n0 (ballrecord.py's lemma).
    Nb: an exact basis of N (P_N times a rational matrix; Nint, 36 x 21 integers in units 2^-30, if the certificate
    stores one, else the certifier's own), with cN >= 1/sigma_min(Nb) certified, so nu = Nb x has ||x||_2 <= cN n0."""

    def __init__(self, phi, R, label_radius, Tint, Nint=None, stage_c=True):
        from ballrecord import BallRecord
        ctx.prec = 120                                                       # as in certify.py
        try:
            B = BallRecord(np.asarray(phi, float).reshape(36), Tint=Tint)
        except AssertionError as e:
            raise CertError('record: %s' % e)
        nb = B.normal_bound(R)
        need(nb is not None, 'record: normal bound failed (R >= sigma/L)')
        self.rH, self.n0 = nb
        self.stagec = None
        if stage_c:
            o = B.stage_c(R, radius=label_radius)
            self.stagec = o
            need(o.get('ok'), 'record: Stage C failed: %s' % o.get('reason', 'quartet edge not excluded'))
        ctx.prec = PREC
        self.P = np.asarray(phi, float).reshape(36); self.R = R
        self.P_a = oarb(self.P)
        self.Tb = _arb_rows(B.rec.Tb, 36, 4); self.Tf = np.array(B.rec.Tbn, float)
        self.nT = up(opnorm_arb_up(self.Tb))
        PNn = np.array(B.rec.PNn, float)
        if Nint is None:
            u, sv, vt = np.linalg.svd(PNn)
            Nf = u[:, sv > 0.5]
            need(Nf.shape[1] == 21, 'record: N is not 21-dimensional')
            Nint = np.rint(Nf * 2 ** 30).astype(np.int64)
        Nint = np.asarray(Nint, dtype=np.int64).reshape(36, 21)
        from flint import arb_mat as AM
        Nb = B.rec.PN * AM([[arb(int(v)) / 2 ** 30 for v in row] for row in Nint.tolist()])   # exactly in N
        self.Nb = _arb_rows(Nb, 36, 21)
        self.Nf = np.array([[float(x.mid()) for x in row] for row in self.Nb])
        # sigma_min(Nb) >= mu: Nb^T Nb - mu^2 I certified positive definite
        G = Nb.transpose() * Nb
        smin = float(np.linalg.svd(self.Nf, compute_uv=False).min())
        need(smin > 0.1, 'record: basis of N is degenerate')
        mu = smin * (1 - 1e-6)
        need(_cholesky_pd(arb_mat([[G[i, j] - (arb(mu) ** 2 if i == j else 0) for j in range(21)] for i in range(21)])),
             'record: sigma_min(Nb) not certified')
        self.cN = up(1 / arb(mu))
        self.Nrow2 = np.array([arb(up(sum((x * x for x in row), arb(0)))).sqrt() for row in self.Nb], dtype=object)   # ||Nb[e,:]||_2
        self.Nabs = np.abs(self.Nb)
        # the constant parts of the Gram map: w_pc = e^{i(P_ac - P_bc)}
        w = []
        for p, (a, b) in enumerate(PAIRS15):
            for c in range(6):
                w.append(acb(0, self.P_a[6 * a + c] - self.P_a[6 * b + c]).exp())
        self.w = np.array(w, dtype=object)


def offshell_arb(rd, box, scale):
    """True if the box is certified to miss the shell of FORMAT.md section 6, {||eta|| <= rH, R^2 - n0^2 <= ||Tb eta||^2
    <= R^2} (on the boundary ||delta|| = R, delta = Tb eta + nu with nu orthogonal to span Tb, so ||Tb eta||^2 =
    R^2 - ||nu||^2): max over the box of ||Tb eta||^2 (16 vertices, convex) < R^2 - n0^2, or its min (centre minus
    ||Tb||_2 hd, hd = 2 hw the half-diagonal) > R^2, or min ||eta||^2 > rH^2."""
    xc, h, _ = box_geometry([box], scale)
    c = rd.Tb.dot(xc[0])
    smax = affine_sup_sq(c[None, :], rd.Tb, h)[0]
    s = (c * c).sum(); s_lo = TMA.lo(s)
    rc_lo = arb(s_lo).sqrt() if s_lo > 0 else arb(0)
    lo_norm = rc_lo - arb(rd.nT) * 2 * h[0, 0]
    R2 = arb(rd.R) ** 2
    emin2 = sum((d if d > 0 else arb(0)) ** 2 for d in (abs(xc[0, a]) - h[0, a] for a in range(4)))
    return bool((smax < R2 - arb(rd.n0) ** 2) or (lo_norm > 0 and lo_norm * lo_norm > R2) or (emin2 > arb(rd.rH) ** 2))


def check_rec_group(rd, tgt_P, tgt_R, g, rows, cols, wind, xc, h):
    """sup over the box of ||hor(pi(g (P_s + Tb eta)) + 2 pi N - P_t)|| + n0_s < R_t (FORMAT.md section 6;
    ||hor(pi g nu)|| <= ||nu|| <= n0)."""
    N = ints(wind, 36, 'rec winding')
    M = oarb((perm_matrix(rows, cols) @ g_matrix(g)).astype(float))
    Hm = hor()
    c0 = Hm.dot(M.dot(rd.P_a) + oarb(N.astype(float)) * TWO_PI_ARB - oarb(tgt_P))
    A = Hm.dot(M.dot(rd.Tb))                                                # (36, 4)
    c = c0[None, :] + np.einsum('ev,bv->be', A, xc)
    lim = arb(tgt_R) - arb(rd.n0)
    need(lim > 0, 'rec: R_t <= n_s')
    sq = affine_sup_sq(c, A, h)
    need(all(x < lim * lim for x in sq), 'rec: not certified inside the target record')


def opnorm_arb_up(M):
    """Upper bound (arb) of the spectral norm of an arb object matrix M (p x q): sqrt of the Gershgorin bound of the
    smaller of M M^T, M^T M."""
    S = M.dot(M.T) if M.shape[0] <= M.shape[1] else M.T.dot(M)
    g = max((sum((abs(x) for x in row), arb(0)) for row in S), key=up)
    return arb(up(g)).sqrt()


# ======================================================================================== records: the nu enclosure
def _phi_f(Q):
    """Float Gram residuals (B, 30) and Jacobians (B, 30, 36) of e^{iQ} (predictors only)."""
    H = np.exp(1j * np.asarray(Q).reshape(-1, 6, 6)); B = len(H)
    r = np.zeros((B, 30)); J = np.zeros((B, 30, 36))
    for p, (a, b) in enumerate(PAIRS15):
        z = H[:, a] * np.conj(H[:, b]); s = z.sum(1)
        r[:, p] = s.real; r[:, 15 + p] = s.imag
        d = 1j * z
        J[:, p, 6 * a:6 * a + 6] += d.real; J[:, p, 6 * b:6 * b + 6] -= d.real
        J[:, 15 + p, 6 * a:6 * a + 6] += d.imag; J[:, 15 + p, 6 * b:6 * b + 6] -= d.imag
    return r, J


def _solve_x(rd, etas, x0=None, it=12):
    """Gauss-Newton in N: x with Phi(Tf eta + Nf x) ~ 0 (floats; predictors only)."""
    q0 = rd.P[None] + etas @ rd.Tf.T
    x = np.zeros((len(etas), 21)) if x0 is None else np.array(x0, float)
    for _ in range(it):
        r, J = _phi_f(q0 + x @ rd.Nf.T)
        if np.abs(r).max(initial=0) < 1e-14: break
        A = J @ rd.Nf
        x -= np.linalg.solve(np.swapaxes(A, 1, 2) @ A, np.einsum('bij,bi->bj', A, r)[..., None])[..., 0]
    r, J = _phi_f(q0 + x @ rd.Nf.T)
    return x, np.all(np.abs(r) < 1e-10, axis=1) & np.all(np.isfinite(x), axis=1), J


def nu_predictor(rd, ecf, eps=1e-4):
    """Second-order predictor x~(eta_c + u) in the eta-box variables u, and the preconditioner Y = (J Nb)^+ (21 x 30)."""
    B = len(ecf)
    xc, ok, J = _solve_x(rd, ecf)
    def d1(x, J):                                                            # dx/deta = -(J Nb)^+ J T
        A = J @ rd.Nf
        return -np.linalg.pinv(A) @ (J @ rd.Tf)
    g = d1(xc, J)                                                            # (B, 21, 4)
    Hm = np.zeros((B, 21, 4, 4))
    for l in range(4):
        e = np.zeros(4); e[l] = eps
        xp, okp, Jp = _solve_x(rd, ecf + e, xc); xm, okm, Jm = _solve_x(rd, ecf - e, xc)
        ok &= okp & okm
        Hm[:, :, :, l] = (d1(xp, Jp) - d1(xm, Jm)) / (2 * eps)
    Hm = 0.5 * (Hm + np.swapaxes(Hm, -1, -2))
    q = np.stack([0.5 * Hm[..., j, j] if j == l else Hm[..., j, l] for j, l in TMA.MONO], -1)
    Y = np.linalg.pinv(J @ rd.Nf)
    ok &= np.all(np.isfinite(g.reshape(B, -1)), axis=1) & np.all(np.isfinite(q.reshape(B, -1)), axis=1) & np.all(np.isfinite(Y.reshape(B, -1)), axis=1)
    return xc, g, q, Y, ok


def delta_tm(rd, ec, h, xt, extra=None):
    """delta(u) = Tb (eta_c + u) + Nb x~(u) (+ per-entry remainder extra (B, 36)) as a real TM (B, 36)."""
    B = ec.shape[0]
    lin = TM(np.einsum('ev,bv->be', rd.Tb, ec), np.broadcast_to(rd.Tb, (B, 36, 4)).copy(), zeros((B, 36, 10)), zeros((B, 36)), h)
    d = lin + xt.lmul(rd.Nb)
    return d.add_rho(extra) if extra is not None else d


GA = np.array([6 * a + c for a, b in PAIRS15 for c in range(6)]); GB = np.array([6 * b + c for a, b in PAIRS15 for c in range(6)])


def gram_tm(rd, d):
    """Phi(delta) (B, 30): Re, Im of sum_c w_pc e^{i (delta_ac - delta_bc)} for the 15 pairs (a, b), a TM."""
    y = d[GA] - d[GB]                                                        # (B, 90)
    z = exp_i(y).scale(rd.w)                                                 # (B, 90) complex
    B = z.c.shape[0]
    s = TM(z.c.reshape(B, 15, 6).sum(-1), z.g.reshape(B, 15, 6, 4).sum(2), z.q.reshape(B, 15, 6, 10).sum(2),
           z.rho.reshape(B, 15, 6).sum(-1), z.h)                             # (B, 15)
    return stack([s[p].re() for p in range(15)] + [s[p].im() for p in range(15)], (30,), d.h, False)


L_PHI_ARB = arb(12).sqrt()          # ||Phi''[w, w']|| <= 2 sqrt3 ||w|| ||w'|| for all w, w' in R^36 (RIGOUR.md section 1)


def jac_centre(rd, c):
    """J_Phi = dPhi/ddelta (30 x 36 arb_mat) at the (ball) point c (36 arbs)."""
    J = [[arb(0)] * 36 for _ in range(30)]
    for p, (a1, a2) in enumerate(PAIRS15):
        for k in range(6):
            dz = acb(0, 1) * rd.w[6 * p + k] * acb(0, c[6 * a1 + k] - c[6 * a2 + k]).exp()
            for col, sg in ((6 * a1 + k, 1), (6 * a2 + k, -1)):
                J[p][col] += sg * dz.real; J[15 + p][col] += sg * dz.imag
    return arb_mat(J)


def nu_enclosure(rd, ec, h, ecf, iters=8):
    """For every eta in each box and every Hadamard of the record with that eta: nu = Nb x with
    ||x - x~(eta)||_2 <= r (returned per box, a float upper bound).

    This is an EXCLUSION argument (2-norm parametric Krawczyk without existence): it encloses the actual Hadamards and
    never claims that a solution exists.  F_eta(x) = Y Phi(Tb eta + Nb x), Y a fixed real 21 x 30 matrix (any).  The
    record's Hadamard has F_eta(x*) = 0 and ||Nb x*|| = ||nu|| <= n0 (ballrecord.py's normal bound), so
    ||x*||_2 <= cN n0 (cN >= 1/sigma_min(Nb), certified) and, for every eta in the box, ||x* - x~(eta)||_2 <= r_0 :=
    cN n0 + sup_box ||x~||_2.  Suppose ||x* - x~(eta)||_2 <= r for every eta in the box.  The mean value form
        x* - x~ = -F(x~) + (I - Jbar)(x* - x~),   Jbar = int_0^1 DF(x~ + t (x* - x~)) dt,
    gives ||x* - x~||_2 <= ||F(x~)||_2 + q r as soon as q >= ||I - DF(x)||_2 for every x on every segment from x~(eta)
    to a point of the ball B(x~(eta), r), for every eta in the box.  The certified quantities:
      (A1) bF >= sup over the WHOLE eta-box of ||F_eta(x~(eta))||_2, from the Taylor model of Phi along the predictor;
      (A2) eps0 >= ||I - Y J(c) Nb||_F (>= the 2-norm), evaluated in Arb with Y as it is: Y J(c) Nb = I is NOT assumed,
           so pseudo-inverse rounding, a poor Y or rank deficiency only make eps0 (hence q) larger;
      (A3) q(r) = eps0 + ||Y||_2 L ||Nb||_2 (s_u + ||Nb||_2 r).  On such a segment delta = delta~(eta) + Nb t (x* - x~)
           with ||delta - c||_2 <= ||delta~(eta) - c||_2 + ||Nb||_2 r <= s_u + ||Nb||_2 r, where c is the constant of
           the predictor's delta Taylor model and s_u >= sup_box ||delta~ - c||_2 (its variation); and
           ||I - Y J(delta) Nb||_2 <= ||I - Y J(c) Nb||_2 + ||Y||_2 ||J(delta) - J(c)||_2 ||Nb||_2 with
           ||J(delta) - J(c)||_2 <= L ||delta - c||_2, L = 2 sqrt3 (mean value theorem on Phi'' and RIGOUR.md's bound
           ||Phi''[w, w']|| <= 2 sqrt3 ||w|| ||w'||, valid for all w, w' in R^36).
    Hence r' = bF + q(r) r is again valid for every eta in the box, and r <- min(r, r') is sound at every step: no
    contraction condition is needed (if it does not shrink, r_0 stands)."""
    B = ec.shape[0]
    xc, g, q, Y, ok = nu_predictor(rd, ecf)
    need(ok.all(), "T1': record predictor (float Gauss-Newton) failed")
    xt = TM(oarb(xc), oarb(g), oarb(q), zeros((B, 21)), h)
    d0 = delta_tm(rd, ec, h, xt)
    bvec = gram_tm(rd, d0).lmul(oarb(Y)).bound()                            # (B, 21): sup over the box of |F(x~)|_i
    bF = vmap(TMA.sqrt_up, (bvec * bvec).sum(-1))                            # (A1)
    var = d0.var()
    su = vmap(TMA.sqrt_up, (var * var).sum(-1))                              # s_u >= sup_box ||delta~ - c||_2
    nNb = opnorm_arb_up(rd.Nb)
    Nb = arb_mat(rd.Nb.tolist())
    I21 = arb_mat([[1 if i == j else 0 for j in range(21)] for i in range(21)])
    r0 = arb(rd.cN) * arb(rd.n0) + TMA.norm_sup(xt)                          # B(x~, r0) holds every x* (all eta)
    rout = np.empty(B)
    for b in range(B):
        Yb = arb_mat(Y[b].tolist())
        M = I21 - Yb * jac_centre(rd, d0.c[b]) * Nb                          # Y as stored, no identity assumed
        eps0 = TMA.sqrt_up(sum((M[i, j] ** 2 for i in range(21) for j in range(21)), arb(0)))     # (A2)
        K = arb(opnorm_up(Y[b])) * L_PHI_ARB * nNb
        r = up(r0[b])
        for _ in range(iters):
            new = up(bF[b] + (eps0 + K * (su[b] + nNb * arb(r))) * arb(r))   # (A3): bF + q(r) r
            if new >= 0.95 * r:
                r = min(r, new); break
            r = new
        rout[b] = r
    return xt, rout


def record_phase_tm(rd, ec, h, ecf):
    """Phases P + Tb eta + nu of the record's Hadamards over each eta-box as a TM (B, 36): P + Tb(eta_c + u) + Nb x~(u)
    with per-entry remainder ||Nb[e,:]||_2 r (nu_enclosure)."""
    xt, r = nu_enclosure(rd, ec, h, ecf)
    d = delta_tm(rd, ec, h, xt, extra=rd.Nrow2[None, :] * oarb(r)[:, None])   # |(Nb e)_e| <= ||Nb[e,:]|| ||e||
    return d + rd.P_a[None, :], r


def check_T1prime_group(rd, tgt, g, rows, cols, wind, xc, h, xcf, chunk=64):
    """T1' with the nu enclosure: the T1 test of FORMAT.md section 4 (corner seed in int E_l, orientation o_l,
    matched) on the Taylor models of the record's Hadamard phases over each eta-box."""
    for s in range(0, len(xc), chunk):
        sl = slice(s, s + chunk)
        Q, _ = record_phase_tm(rd, xc[sl], h[sl], xcf[sl])
        try:
            check_T1_general(tgt, g, rows, cols, wind, Q)
        except CertError as e:
            raise CertError("T1': " + str(e))


def check_T1prime_crude(rd, tgt, g, rows, cols, wind, xc, h):
    """T1' with only ||nu|| <= n0 (SPEC section 4 as first written): kept for comparison in the tests."""
    N = ints(wind, 4, 'T1prime winding')
    G = oarb(g_matrix(g).astype(float)); L = oarb(corner_L(rows, cols).astype(float))
    Mi = tgt.Minv()
    MLG = Mi.dot(L.dot(G))
    c0 = MLG.dot(rd.P_a) + Mi.dot(oarb(N.astype(float)) * TWO_PI_ARB - tgt.theta0_a)
    A = MLG.dot(rd.Tb)
    c = c0[None, :] + np.einsum('iv,bv->bi', A, xc)
    lim = tgt.r_a - opnorm_arb_up(MLG) * arb(rd.n0)
    need(lim > 0, "T1' (crude): ||Mth_l^-1 L|| n0 >= r_l")
    sq = affine_sup_sq(c, A, h)
    need(all(x < lim * lim for x in sq), "T1' (crude): corner seed not certified inside the target ellipsoid")


def check_record_boundary(rd, eta_scale, seeds, records, groups, max_level):
    """All boundary groups of one record (FORMAT.md section 6) and the coverage of its shell."""
    ctx.prec = PREC
    need(eta_scale >= rd.rH, 'eta_scale < r_H')
    listed = set(); cnt = dict(rec=0, T1prime=0)
    for grp in groups:
        need(isinstance(grp, dict), 'malformed boundary group')
        kind = grp.get('kind'); t = grp.get('target')
        need(isinstance(t, int) and not isinstance(t, bool), 'malformed target')
        boxes = dyadic_boxes(grp.get('boxes', []), max_level)
        if not boxes: continue
        listed.update(boxes)
        xc, h, xcf = box_geometry(boxes, eta_scale)
        g = grp.get('g', 'id'); g_index(g)
        if kind == 'rec':
            need(0 <= t < len(records), 'rec: target out of range')
            rows = [int(x) for x in ints(grp.get('rows'), 6, 'rows')]; cols = [int(x) for x in ints(grp.get('cols'), 6, 'cols')]
            P, R = records[t]
            check_rec_group(rd, P, R, g, rows, cols, grp.get('wind'), xc, h)
        elif kind == 'T1prime':
            need(0 <= t < len(seeds), "T1': target out of range")
            rows = [int(x) for x in ints(grp.get('rows'), 3, 'rows')]; cols = [int(x) for x in ints(grp.get('cols'), 3, 'cols')]
            corner_L(rows, cols); ints(grp.get('wind'), 4, 'T1prime winding')
            check_T1prime_group(rd, seeds[t], g, rows, cols, grp.get('wind'), xc, h, xcf)
        else:
            raise CertError('unknown record boundary kind %r' % (kind,))
        cnt[kind] += len(boxes)
    ok, info = covered(listed, max_level, lambda box: offshell_arb(rd, box, eta_scale))
    need(ok, 'shell coverage: box %r neither listed, off the shell, nor refinable' % (info,))
    cnt['coverage_nodes'] = info
    return cnt
