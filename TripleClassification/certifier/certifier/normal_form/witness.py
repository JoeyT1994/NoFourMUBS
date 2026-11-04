#!/usr/bin/env python3
"""Curved normal-form pattern witness for hard seed balls (Antigravity).

Implements:
  - Joint (u, y) Gauss-Newton family completion proposal + strong-only chord polishing at Q_0
  - Cubic normal-form coordinates: z_s_tilde = z_s - q_2(z_w) - q_3(z_w), with Lam_w = 0
  - Binomial Isometry on R^2 for exact spectral norms of homogeneous weak polynomials (degrees 2, 3, 4)
    and the combined zeta_s' x w^2 operator D^2_{ss} G_g(0)[zeta_s', q_2(w)] + 1/2 D^3_{sww} G_g(0)[zeta_s', w, w]
  - Stacked 90-ridge Gram flattenings for F_{HKK} and F_{HKKK} + degree-4 F_{HKKKK} tail
  - Combined orthogonal-tensor Gram flattenings for D^2 G and D^3 G + 16-angle directional bound on D^2_{sw} G
  - Weak-ray strong cap scap = R(w_0) in colour_product
  - Recursive multi-threshold Core + Outer-Peel Exhaustion on the retained fine-bin graph
  - Exact proposal certificates and strict Arb witness acceptance (--certificate / --check)
    Native cover construction retains its separately reviewed binary64 enclosures.
"""
import base64
import math
import os
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
os.environ.setdefault('TC_ROOT', str(ROOT))
for d in (
    'proof/seed_atlas/driver',
    'proof/seed_atlas/cert',
    'proof/theorems/TC_triple_classification/family_neighbourhoods',
):
    if str(ROOT / d) not in sys.path:
        sys.path.insert(0, str(ROOT / d))
if str(Path(__file__).resolve().parent) not in sys.path:
    sys.path.insert(0, str(Path(__file__).resolve().parent))

import numpy as np
from flint import acb, arb, arb_mat, fmpq
import fine_patterns as FP
import moving as MV
import native_columns as C

PAIRS = [(a, b) for a in range(6) for b in range(a + 1, 6)]
Z = C.Z
GROUPS = (range(28), range(28, 30))
TARGETS = (0.005, 0.0075, 0.01, 0.015, 0.02, 0.025)
PEEL_TAUS = ('0.375', '0.400', '0.420')


def up(x):
    return arb(x.upper())


def frob(a):
    return C.norm([a[i, j] for i in range(a.nrows()) for j in range(a.ncols())])


def sub(a, rows, cols):
    return arb_mat([[a[i, j] for j in cols] for i in rows])


def spectral(a):
    return up(Z.spectral(a))


def fmax(xs):
    best = None
    for x in xs:
        u = up(x)
        if not u.is_finite():
            raise ArithmeticError('nonfinite maximum')
        if best is None or u > best:
            best = u
    if best is None:
        raise ArithmeticError('empty maximum')
    return best


def fmin(xs):
    best = None
    for x in xs:
        u = up(x)
        if not u.is_finite():
            raise ArithmeticError('nonfinite minimum')
        if best is None or u < best:
            best = u
    if best is None:
        raise ArithmeticError('empty minimum')
    return best


def winding(x):
    """Choose an integer lift by exact rational rounding of an Arb midpoint.

    Any integer is a valid phase lift; no nearest-integer assertion is used.
    """
    if not x.is_finite():
        raise ArithmeticError('nonfinite phase lift')
    return int((x.mid().fmpq() + fmpq(1, 2)).floor())


def finite_array(a, shape, name):
    a = np.asarray(a, dtype=np.float64)
    if a.shape != tuple(shape) or not np.isfinite(a).all():
        raise ArithmeticError('invalid finite array: ' + name)
    return a


def target_value(t):
    if isinstance(t, (bool, np.bool_)) or not isinstance(t, (int, float, np.integer, np.floating)):
        raise ArithmeticError('tube radius must be a finite positive number')
    if not arb(t).is_finite() or not arb(t) > 0:
        raise ArithmeticError('tube radius must be a finite positive number')
    return t


def validate_plan(plan):
    """Validate proposal syntax; coverage is still reconstructed independently."""
    if not isinstance(plan, dict) or plan.get('mode') not in ('direct', 'peel'):
        raise ArithmeticError('invalid replay plan')
    if plan['mode'] == 'direct':
        target_value(plan.get('t'))
        finite_array(plan.get('w0'), (2,), 'weak centre')
    else:
        taus, leaves = plan.get('taus'), plan.get('leaves')
        if not isinstance(taus, list) or not taus or not isinstance(leaves, dict):
            raise ArithmeticError('invalid peel plan')
        for tau in taus:
            if not arb(str(tau)).is_finite() or not arb(str(tau)) > 0:
                raise ArithmeticError('invalid peel threshold')
        for name, leaf in leaves.items():
            if not isinstance(name, str) or not name.startswith('root/') or not isinstance(leaf, dict):
                raise ArithmeticError('invalid peel leaf')
            target_value(leaf.get('t'))
            finite_array(leaf.get('w0'), (2,), 'peel weak centre')


def helmert():
    w = arb_mat(6, 5)
    for j in range(5):
        a = arb((j + 1) * (j + 2)).sqrt()
        for r in range(j + 1):
            w[r, j] = 1 / a
        w[j + 1, j] = -(j + 1) / a
    e = arb_mat(36, 30)
    for c in range(6):
        for r in range(6):
            for j in range(5):
                e[6 * r + c, 5 * c + j] = w[r, j]
    return w, e


W6, E = helmert()


# ---- Floating-point proposals (untrusted; never used in --check) ---------------------------------------------------

def residual(q, y):
    h, k = np.exp(1j * q.reshape(6, 6)), np.exp(1j * y.reshape(6, 6))
    g = k.conj().T @ k
    o = np.array([g[a, b] for a, b in PAIRS])
    return np.r_[o.real, o.imag, (np.abs(h.conj().T @ k) ** 2 / 6 - 1).ravel()]


def propose(q0, U, columns, steps=25):
    """Joint (u, y) Gauss-Newton proposal on F(Q_0 + U u, y) = 0 followed by strong-only chord polishing at Q_0."""
    e = Z.mid_np(E)
    y = np.array(columns).T.ravel().copy()
    y = y.reshape(6, 6); y -= y.mean(axis=0); y = y.ravel()
    u = np.zeros(4)
    for _ in range(steps):
        q_u = q0 + U @ u
        r_vec = residual(q_u, y)
        if np.linalg.norm(r_vec) < 1e-13:
            break
        jy = np.array([(residual(q_u, y + d) - residual(q_u, y - d)) / 2e-7 for d in np.eye(36) * 1e-7]).T @ e
        ju = np.array([(residual(q_u + U @ du, y) - residual(q_u - U @ du, y)) / 2e-7 for du in np.eye(4) * 1e-7]).T
        J = np.c_[ju, jy]
        delta = np.linalg.lstsq(J, r_vec, rcond=None)[0]
        u -= delta[:4]
        y -= e @ delta[4:]
        y = y.reshape(6, 6); y -= y.mean(axis=0); y = y.ravel()
    jk = np.array([(residual(q0, y + d) - residual(q0, y - d)) / 2e-7 for d in np.eye(36) * 1e-7]).T @ e
    _, s, vt = np.linalg.svd(jk)
    t = vt.T
    b = np.linalg.pinv(jk @ t)
    t_s = t[:, :28]
    b_s = b[:28, :]
    for _ in range(20):
        y -= e @ t_s @ (b_s @ residual(q0, y))
    jk = np.array([(residual(q0, y + d) - residual(q0, y - d)) / 2e-7 for d in np.eye(36) * 1e-7]).T @ e
    _, s, vt = np.linalg.svd(jk)
    t = vt.T
    b = np.linalg.pinv(jk @ t)
    return dict(
        y=y, T=t, B=b, sigma=s, u_norm=float(np.linalg.norm(u)),
        residual=float(np.linalg.norm(residual(q0, y))),
        g0=float(np.linalg.norm(b @ residual(q0, y))),
    )


def match(y, cache, tol=1e-5):
    cols = y.reshape(6, 6).T
    for k, entry in cache.items():
        ref = entry['prop']['y'].reshape(6, 6).T
        perm, used = [], set()
        for c in cols:
            d = [np.linalg.norm((c - r) - np.round((c - r) / (2 * math.pi)) * 2 * math.pi) for r in ref]
            j = int(np.argmin(d))
            if d[j] < tol and j not in used:
                perm.append(j)
                used.add(j)
        if len(perm) == 6:
            return k, perm
    return None, None


# ---- Arb: curved normal-form expansion and slack bounds ------------------------------------------------------------

def tensor_bounds(Cg, Sg, AS, AW, KS, KW, kinds=None):
    """Order-n derivative tensor bounds h_{n,k}/((n-k)! k!) for n = 2..8 via Gram flattenings."""
    out, cache, used = {}, {}, {}

    def power(key, Kx, m):
        if (key, m) not in cache:
            cache[key, m] = arb_mat([[Kx[i, j] ** m for j in range(180)] for i in range(180)])
        return cache[key, m]

    def had(*ms):
        return arb_mat([[math.prod(m[i, j] for m in ms) for m in ms] for i in range(180)] if False else
                       [[math.prod(m[i, j] for m in ms) for j in range(180)] for i in range(180)])

    if not kinds:
        fV = [Z.mid_np(Cg), Z.mid_np(Sg)]
        fS, fW = Z.mid_np(AS), Z.mid_np(AW)
        fKS, fKW = fS @ fS.T, fW @ fW.T
    for n in range(2, 9):
        V = [Cg, Sg, -Cg, -Sg][n % 4]
        for k in range(n + 1):
            ns, nw = n - k, k
            if kinds:
                kind = kinds[n, k]
            else:
                fv = fV[n % 2]
                cands = [('output', np.linalg.norm(fv @ (fKS ** ns * fKW ** nw) @ fv.T, 2))]
                if ns:
                    cands.append(('strong', np.linalg.norm(fS.T @ ((fv.T @ fv) * fKS ** (ns - 1) * fKW ** nw) @ fS, 2)))
                if nw:
                    cands.append(('weak', np.linalg.norm(fW.T @ ((fv.T @ fv) * fKS ** ns * fKW ** (nw - 1)) @ fW, 2)))
                kind = min(cands, key=lambda x: x[1])[0]
            if not (kind == 'output' or (kind == 'strong' and ns) or (kind == 'weak' and nw)):
                raise ArithmeticError('invalid flattening')
            used[n, k] = kind
            if kind == 'output':
                g = V * had(power('s', KS, ns), power('w', KW, nw)) * V.transpose()
            elif kind == 'strong':
                g = AS.transpose() * had(V.transpose() * V, power('s', KS, ns - 1), power('w', KW, nw)) * AS
            else:
                g = AW.transpose() * had(V.transpose() * V, power('s', KS, ns), power('w', KW, nw - 1)) * AW
            out[n, k] = up(arb(Z.spectral(g).upper()).sqrt()) / (math.factorial(ns) * math.factorial(nw))
    return out, used


def curved_expansion(model, q, y, T, B, Lam=None, kinds=None):
    """Arb constants for the cubic normal-form expansion (z_s = q_2(z_w) + q_3(z_w) + z_s_tilde, Lam_w = 0)."""
    ET = E * T
    yref = y
    U, H2, X, r = model['U'], model['H2'], model['X'], up(model['r'])
    eH_tilde = up(frob(model['Q0'] - q) + spectral(X) * model['tau'])
    d2 = up(spectral(H2) * r * r / 2)
    hrem = up(eH_tilde + d2)
    d_u = up(spectral(U) * r)
    D = up(d_u + hrem)
    H = [[acb(0, q[6 * a + j, 0]).exp() for j in range(6)] for a in range(6)]
    K = [[acb(0, yref[6 * a + j, 0]).exp() for j in range(6)] for a in range(6)]
    HK = [[sum((H[s][a].conjugate() * K[s][b] for s in range(6)), acb(0)) for b in range(6)] for a in range(6)]
    JH = arb_mat(66, 36)
    for a in range(6):
        for b in range(6):
            for s in range(6):
                JH[30 + 6 * a + b, 6 * s + a] = (HK[a][b].conjugate() * H[s][a].conjugate() * K[s][b]).imag / 3

    feats, rc, rs = [], [], []
    for j, (a, b) in enumerate(PAIRS):
        for s in range(6):
            feats.append([ET[6 * s + b, k] - ET[6 * s + a, k] for k in range(30)])
            phi = yref[6 * s + b, 0] - yref[6 * s + a, 0]
            cc = [arb(0)] * 66; ss = [arb(0)] * 66
            cc[j], cc[15 + j], ss[j], ss[15 + j] = phi.cos(), phi.sin(), -phi.sin(), phi.cos()
            rc.append(cc); rs.append(ss)
    for b in range(6):
        for s, u in PAIRS:
            feats.append([ET[6 * s + b, k] - ET[6 * u + b, k] for k in range(30)])
            cc = [arb(0)] * 66; ss = [arb(0)] * 66
            for a in range(6):
                phi = -q[6 * s + a, 0] + yref[6 * s + b, 0] + q[6 * u + a, 0] - yref[6 * u + b, 0]
                cc[30 + 6 * a + b] = phi.cos() / 3; ss[30 + 6 * a + b] = -phi.sin() / 3
            rc.append(cc); rs.append(ss)

    A = arb_mat(feats)
    Craw = arb_mat(rc).transpose()
    Sraw = arb_mat(rs).transpose()
    Cf, Sf = B * Craw, B * Sraw
    G0 = B * (Craw * arb_mat(180, 1, [1] * 180))
    lin = Sf * A - Z.eye(30)
    AS, AW = sub(A, range(180), range(28)), sub(A, range(180), range(28, 30))
    KS, KW = AS * AS.transpose(), AW * AW.transpose()
    nT = spectral(T)
    BJ = B * JH

    if Lam is None:
        Lam_np = -Z.mid_np(BJ * U)
        Lam_np[28:30, :] = 0.0
        Lam = Z.mat(Lam_np)
    # Enforce Lam_w = 0 in Arb so z_w = zeta_w identically:
    for r_idx in (28, 29):
        for c_idx in range(4):
            if not Lam[r_idx, c_idx].is_zero():
                raise ArithmeticError('Lam_w must be identically zero')
    Ku = (Sf * A) * Lam + BJ * U

    Cj = []
    AS_m = sub(A, range(90, 180), range(28))
    AW_m = sub(A, range(90, 180), range(28, 30))
    KS_m, KW_m = AS_m * AS_m.transpose(), AW_m * AW_m.transpose()
    fhkk_ss = [arb(0), arb(0)]
    fhkk_sw = [arb(0), arb(0)]
    fhkk_ww = [arb(0), arb(0)]
    fhkkk = [[arb(0)] * 4, [arb(0)] * 4]
    amp_u = [[arb(0)] * 90 for _ in range(30)]
    BC_list, BS_list = [], []
    for j in range(4):
        F_c = arb_mat(66, 30)
        raw_s_j = arb_mat(66, 90)
        raw_c_j = arb_mat(66, 90)
        for b in range(6):
            for m, (s, t) in enumerate(PAIRS):
                col_idx = 15 * b + m
                row = feats[90 + col_idx]
                for a in range(6):
                    phi = -q[6 * s + a, 0] + yref[6 * s + b, 0] + q[6 * t + a, 0] - yref[6 * t + b, 0]
                    du = U[6 * t + a, j] - U[6 * s + a, j]
                    cs = -phi.cos() / 3 * du
                    sn = -phi.sin() / 3 * du
                    raw_c_j[30 + 6 * a + b, col_idx] = cs
                    raw_s_j[30 + 6 * a + b, col_idx] = sn
                    for k in range(30):
                        F_c[30 + 6 * a + b, k] += cs * row[k]
        Cj.append(B * F_c)
        BC_j = B * raw_s_j
        BS_j = B * raw_c_j
        BC_list.append(BC_j)
        BS_list.append(BS_j)
        for i in range(30):
            for l in range(90):
                amp_u[i][l] += BC_j[i, l] ** 2 + BS_j[i, l] ** 2
    for g, rows in enumerate(GROUPS):
        VC = arb_mat([[BC_list[j][i, l] for l in range(90)] for j in range(4) for i in rows])
        VS = arb_mat([[BS_list[j][i, l] for l in range(90)] for j in range(4) for i in rows])
        VCtVC = VC.transpose() * VC
        VStVS = VS.transpose() * VS
        g_ss = AS_m.transpose() * arb_mat([[VCtVC[i, k] * KS_m[i, k] for k in range(90)] for i in range(90)]) * AS_m
        g_sw = AS_m.transpose() * arb_mat([[VCtVC[i, k] * KW_m[i, k] for k in range(90)] for i in range(90)]) * AS_m
        g_ww = AW_m.transpose() * arb_mat([[VCtVC[i, k] * KW_m[i, k] for k in range(90)] for i in range(90)]) * AW_m
        fhkk_ss[g] = up(spectral(g_ss).sqrt()) / 2
        fhkk_sw[g] = up(spectral(g_sw).sqrt())
        fhkk_ww[g] = up(spectral(g_ww).sqrt()) / 2
        for k in range(4):
            ns, nw = 3 - k, k
            denom = math.factorial(ns) * math.factorial(nw)
            if ns > 0:
                had = arb_mat([[VStVS[i, c] * (KS_m[i, c] ** (ns - 1)) * (KW_m[i, c] ** nw) for c in range(90)] for i in range(90)])
                gram = AS_m.transpose() * had * AS_m
            else:
                had = arb_mat([[VStVS[i, c] * (KW_m[i, c] ** (nw - 1)) for c in range(90)] for i in range(90)])
                gram = AW_m.transpose() * had * AW_m
            fhkkk[g][k] = up(spectral(gram).sqrt()) / denom
    for i in range(30):
        for l in range(90):
            amp_u[i][l] = up(amp_u[i][l].sqrt())

    M_comb = arb_mat(30, 16)
    for j1 in range(4):
        for j2 in range(4):
            col = 4 * j1 + j2
            h2_col = arb_mat(36, 1, [H2[r_idx, col] for r_idx in range(36)])
            jh_h2 = BJ * h2_col
            fhh_col = arb_mat(66, 1)
            for a in range(6):
                for b in range(6):
                    val = arb(0)
                    for s in range(6):
                        for t in range(s + 1, 6):
                            phi = -q[6 * s + a, 0] + yref[6 * s + b, 0] + q[6 * t + a, 0] - yref[6 * t + b, 0]
                            du1 = U[6 * t + a, j1] - U[6 * s + a, j1]
                            du2 = U[6 * t + a, j2] - U[6 * s + a, j2]
                            val += -phi.cos() / 3 * du1 * du2
                    fhh_col[30 + 6 * a + b, 0] = val
            bfhh = B * fhh_col
            for r_idx in range(30):
                c_ul = sum((Cj[j1][r_idx, k] * Lam[k, j2] + Cj[j2][r_idx, k] * Lam[k, j1] for k in range(30)), arb(0)) / 2
                M_comb[r_idx, col] = (jh_h2[r_idx, 0] + bfhh[r_idx, 0]) / 2 + c_ul

    aw1 = [AW[l, 0] for l in range(180)]
    aw2 = [AW[l, 1] for l in range(180)]
    sq2 = arb(2).sqrt()
    sq3 = arb(3).sqrt()
    m20_s, m11_s, m02_s = [], [], []
    m_q_rows = []
    for i in range(28):
        v20 = sum((-Cf[i, l] * (aw1[l] ** 2) / 2 for l in range(180)), arb(0))
        v11 = sum((-Cf[i, l] * (aw1[l] * aw2[l]) / 2 for l in range(180)), arb(0))
        v02 = sum((-Cf[i, l] * (aw2[l] ** 2) / 2 for l in range(180)), arb(0))
        m20_s.append(-v20); m11_s.append(-v11); m02_s.append(-v02)
        m_q_rows.append([-v20, -sq2 * v11, -v02])
    kap_q = spectral(arb_mat(m_q_rows))

    m_w2_rows = []
    for i in range(28, 30):
        v20 = sum((-Cf[i, l] * (aw1[l] ** 2) / 2 for l in range(180)), arb(0))
        v11 = sum((-Cf[i, l] * (aw1[l] * aw2[l]) / 2 for l in range(180)), arb(0))
        v02 = sum((-Cf[i, l] * (aw2[l] ** 2) / 2 for l in range(180)), arb(0))
        m_w2_rows.append([v20, sq2 * v11, v02])
    kap_w2 = spectral(arb_mat(m_w2_rows))

    b20 = [sum((AS[l, i] * m20_s[i] for i in range(28)), arb(0)) for l in range(180)]
    b11 = [sum((AS[l, i] * m11_s[i] for i in range(28)), arb(0)) for l in range(180)]
    b02 = [sum((AS[l, i] * m02_s[i] for i in range(28)), arb(0)) for l in range(180)]

    q30_s, q21_3_s, q12_3_s, q03_s = [], [], [], []
    m_q3_rows = []
    m_swq2_rows = []
    for i in range(28):
        sw30 = sum((-Cf[i, l] * (b20[l] * aw1[l]) for l in range(180)), arb(0))
        sw21_3 = sum((-Cf[i, l] * (b20[l] * aw2[l] + 2 * b11[l] * aw1[l]) for l in range(180)), arb(0))
        sw12_3 = sum((-Cf[i, l] * (2 * b11[l] * aw2[l] + b02[l] * aw1[l]) for l in range(180)), arb(0))
        sw03 = sum((-Cf[i, l] * (b02[l] * aw2[l]) for l in range(180)), arb(0))
        p30 = sw30 + sum((-Sf[i, l] * (aw1[l] ** 3 / 6) for l in range(180)), arb(0))
        p21_3 = sw21_3 + sum((-Sf[i, l] * (aw1[l] ** 2 * aw2[l] / 2) for l in range(180)), arb(0))
        p12_3 = sw12_3 + sum((-Sf[i, l] * (aw1[l] * aw2[l] ** 2 / 2) for l in range(180)), arb(0))
        p03 = sw03 + sum((-Sf[i, l] * (aw2[l] ** 3 / 6) for l in range(180)), arb(0))
        q30_s.append(-p30); q21_3_s.append(-p21_3); q12_3_s.append(-p12_3); q03_s.append(-p03)
        m_q3_rows.append([-p30, -p21_3 / sq3, -p12_3 / sq3, -p03])
        m_swq2_rows.append([sw30, sw21_3 / sq3, sw12_3 / sq3, sw03])
    kap_q3 = spectral(arb_mat(m_q3_rows))
    kap_swq2 = spectral(arb_mat(m_swq2_rows))

    b30 = [sum((AS[l, i] * q30_s[i] for i in range(28)), arb(0)) for l in range(180)]
    b21_3 = [sum((AS[l, i] * q21_3_s[i] for i in range(28)), arb(0)) for l in range(180)]
    b12_3 = [sum((AS[l, i] * q12_3_s[i] for i in range(28)), arb(0)) for l in range(180)]
    b03 = [sum((AS[l, i] * q03_s[i] for i in range(28)), arb(0)) for l in range(180)]

    m3_w_rows = []
    m3_w_raw_rows = []
    for i in range(28, 30):
        w30_raw = sum((-Sf[i, l] * (aw1[l] ** 3 / 6) for l in range(180)), arb(0))
        w21_3_raw = sum((-Sf[i, l] * (aw1[l] ** 2 * aw2[l] / 2) for l in range(180)), arb(0))
        w12_3_raw = sum((-Sf[i, l] * (aw1[l] * aw2[l] ** 2 / 2) for l in range(180)), arb(0))
        w03_raw = sum((-Sf[i, l] * (aw2[l] ** 3 / 6) for l in range(180)), arb(0))
        p30 = sum((-Cf[i, l] * (b20[l] * aw1[l]) for l in range(180)), arb(0)) + w30_raw
        p21_3 = sum((-Cf[i, l] * (b20[l] * aw2[l] + 2 * b11[l] * aw1[l]) for l in range(180)), arb(0)) + w21_3_raw
        p12_3 = sum((-Cf[i, l] * (2 * b11[l] * aw2[l] + b02[l] * aw1[l]) for l in range(180)), arb(0)) + w12_3_raw
        p03 = sum((-Cf[i, l] * (b02[l] * aw2[l]) for l in range(180)), arb(0)) + w03_raw
        m3_w_rows.append([p30, p21_3 / sq3, p12_3 / sq3, p03])
        m3_w_raw_rows.append([w30_raw, w21_3_raw / sq3, w12_3_raw / sq3, w03_raw])
    kap_w3 = spectral(arb_mat(m3_w_rows))
    kap_w3_raw = spectral(arb_mat(m3_w_raw_rows))

    kap_4 = []
    kap_4_raw = []
    sq6_bin = arb(6).sqrt()
    for g, rows in enumerate(GROUPS):
        m4_rows = []
        m4_raw_rows = []
        for i in rows:
            r40 = sum((Cf[i, l] * (aw1[l] ** 4) / 24 for l in range(180)), arb(0))
            r31_4 = sum((Cf[i, l] * (aw1[l] ** 3 * aw2[l]) / 6 for l in range(180)), arb(0))
            r22_6 = sum((Cf[i, l] * (aw1[l] ** 2 * aw2[l] ** 2) / 4 for l in range(180)), arb(0))
            r13_4 = sum((Cf[i, l] * (aw1[l] * aw2[l] ** 3) / 6 for l in range(180)), arb(0))
            r04 = sum((Cf[i, l] * (aw2[l] ** 4) / 24 for l in range(180)), arb(0))
            q40 = sum((
                -Cf[i, l] * (b30[l] * aw1[l] + (b20[l] ** 2) / 2)
                - Sf[i, l] * (b20[l] * aw1[l] ** 2) / 2
                for l in range(180)), arb(0)) + r40
            q31_4 = sum((
                -Cf[i, l] * (b30[l] * aw2[l] + b21_3[l] * aw1[l] + 2 * b20[l] * b11[l])
                - Sf[i, l] * (b20[l] * aw1[l] * aw2[l] + b11[l] * aw1[l] ** 2)
                for l in range(180)), arb(0)) + r31_4
            q22_6 = sum((
                -Cf[i, l] * (b21_3[l] * aw2[l] + b12_3[l] * aw1[l] + b20[l] * b02[l] + 2 * b11[l] ** 2)
                - Sf[i, l] * (b20[l] * aw2[l] ** 2 + 4 * b11[l] * aw1[l] * aw2[l] + b02[l] * aw1[l] ** 2) / 2
                for l in range(180)), arb(0)) + r22_6
            q13_4 = sum((
                -Cf[i, l] * (b12_3[l] * aw2[l] + b03[l] * aw1[l] + 2 * b11[l] * b02[l])
                - Sf[i, l] * (b11[l] * aw2[l] ** 2 + b02[l] * aw1[l] * aw2[l])
                for l in range(180)), arb(0)) + r13_4
            q04 = sum((
                -Cf[i, l] * (b03[l] * aw2[l] + (b02[l] ** 2) / 2)
                - Sf[i, l] * (b02[l] * aw2[l] ** 2) / 2
                for l in range(180)), arb(0)) + r04
            m4_rows.append([q40, q31_4 / arb(2), q22_6 / sq6_bin, q13_4 / arb(2), q04])
            m4_raw_rows.append([r40, r31_4 / arb(2), r22_6 / sq6_bin, r13_4 / arb(2), r04])
        kap_4.append(spectral(arb_mat(m4_rows)))
        kap_4_raw.append(spectral(arb_mat(m4_raw_rows)))

    ex = dict(
        g0=[], eta=[], beta_s=[], beta_w=[], gB=[], coef=[], kinds=[],
        Lam=Lam, lam=up(spectral(Lam)), r=r, nT=nT, eH=hrem, d_u=d_u, D=D,
        ET_Lam=ET * Lam, Cj=Cj, M_comb=M_comb, lam_a=[up(spectral(sub(Lam, rows, range(4)))) for rows in GROUPS],
        kap_q=kap_q, kap_q3=kap_q3, kap_swq2=kap_swq2, kap_w2=kap_w2, kap_w3=kap_w3, kap_w3_raw=kap_w3_raw,
        kap_4=kap_4, kap_4_raw=kap_4_raw, kap_sw2=[],
        fhkk_ss=fhkk_ss, fhkk_sw=fhkk_sw, fhkk_ww=fhkk_ww, fhkkk=fhkkk, amp_u=amp_u,
        nTs_c=fmax([spectral(sub(T, range(5 * c, 5 * c + 5), range(28))) for c in range(6)]),
        nTw_c=fmax([spectral(sub(T, range(5 * c, 5 * c + 5), range(28, 30))) for c in range(6)]),
        c2_comb_07=[], c2_comb_10=[], c2_comb_12=[], c3_comb_10=[], c3_comb_12=[],
    )
    al07 = arb(7) / arb(10)
    al12 = arb(6) / arb(5)
    cos_16 = (arb.pi() / 32).cos()
    sq2_bin = arb(2).sqrt()
    sq6 = arb(6).sqrt()
    c_hhh = arb(2) / arb(3).sqrt()
    for g, rows in enumerate(GROUPS):
        bn = spectral(sub(B, rows, range(66)))
        ex['g0'].append(C.norm([G0[i, 0] for i in rows]))
        ex['eta'].append(up(
            spectral(sub(Ku, rows, range(4))) * r
            + spectral(sub(BJ, rows, range(36))) * eH_tilde
            + spectral(sub(M_comb, rows, range(16))) * r * r
            + bn * hrem * (2 * sq6 * d_u + sq6 * hrem)
            + c_hhh * bn * (d_u ** 3)
        ))
        cs_h = spectral(arb_mat([[Cj[j][i, k] for j in range(4) for k in range(28)] for i in rows]))
        cs_v = spectral(arb_mat([[Cj[j][i, k] for k in range(28)] for j in range(4) for i in rows]))
        cs_norm = fmin([cs_h, cs_v])
        cw_h = spectral(arb_mat([[Cj[j][i, k] for j in range(4) for k in range(28, 30)] for i in rows]))
        cw_v = spectral(arb_mat([[Cj[j][i, k] for k in range(28, 30)] for j in range(4) for i in rows]))
        cw_norm = fmin([cw_h, cw_v])
        ex['beta_s'].append(up(spectral(sub(lin, rows, range(28))) + cs_norm * r))
        ex['beta_w'].append(up(spectral(sub(lin, rows, range(28, 30))) + cw_norm * r))
        ex['gB'].append(bn)
        Cf_g = sub(Cf, rows, range(180))
        Sf_g = sub(Sf, rows, range(180))
        cf_g, used_g = tensor_bounds(Cf_g, Sf_g, AS, AW, KS, KW, kinds=kinds[g] if kinds else None)
        M_sw1 = arb_mat([[-Cf_g[i, l] * aw1[l] for l in range(180)] for i in range(len(rows))]) * AS
        M_sw2 = arb_mat([[-Cf_g[i, l] * aw2[l] for l in range(180)] for i in range(len(rows))]) * AS
        c21_ang = up(fmax([spectral(M_sw1 * (arb.pi() * j / 16).cos() + M_sw2 * (arb.pi() * j / 16).sin()) for j in range(16)]) / cos_16)
        cf_g[2, 1] = fmin([cf_g[2, 1], c21_ang])
        ex['coef'].append(cf_g)
        ex['kinds'].append(used_g)
        L20 = arb_mat([[-Cf_g[i, l] * b20[l] - Sf_g[i, l] * (aw1[l] ** 2) / 2 for l in range(180)] for i in range(len(rows))]) * AS
        L11 = arb_mat([[-Cf_g[i, l] * b11[l] - Sf_g[i, l] * (aw1[l] * aw2[l]) / 2 for l in range(180)] for i in range(len(rows))]) * AS
        L02 = arb_mat([[-Cf_g[i, l] * b02[l] - Sf_g[i, l] * (aw2[l] ** 2) / 2 for l in range(180)] for i in range(len(rows))]) * AS
        M_sw2_h = arb_mat([[L20[i, j] for j in range(28)] + [sq2_bin * L11[i, j] for j in range(28)] + [L02[i, j] for j in range(28)]
                           for i in range(len(rows))])
        M_sw2_v = arb_mat([[L20[i, j] for j in range(28)] for i in range(len(rows))]
                          + [[sq2_bin * L11[i, j] for j in range(28)] for i in range(len(rows))]
                          + [[L02[i, j] for j in range(28)] for i in range(len(rows))])
        ex['kap_sw2'].append(fmin([spectral(M_sw2_h), spectral(M_sw2_v)]))
        VtV_c = Cf_g.transpose() * Cf_g
        VtV_s = Sf_g.transpose() * Sf_g
        g2_07 = AS.transpose() * arb_mat([[VtV_c[i, j] * (KS[i, j] / 4 + KW[i, j] / al07) for j in range(180)] for i in range(180)]) * AS
        g2_10 = AS.transpose() * arb_mat([[VtV_c[i, j] * (KS[i, j] / 4 + KW[i, j]) for j in range(180)] for i in range(180)]) * AS
        g2_12 = AS.transpose() * arb_mat([[VtV_c[i, j] * (KS[i, j] / 4 + KW[i, j] / al12) for j in range(180)] for i in range(180)]) * AS
        g3_10 = AS.transpose() * arb_mat([[VtV_s[i, j] * (KS[i, j] ** 2 / 36 + KS[i, j] * KW[i, j] / 8 + KW[i, j] ** 2 / 4) for j in range(180)] for i in range(180)]) * AS
        g3_12 = AS.transpose() * arb_mat([[VtV_s[i, j] * (KS[i, j] ** 2 / 36 + KS[i, j] * KW[i, j] / (8 * al12) + KW[i, j] ** 2 / (4 * al12 * al12)) for j in range(180)] for i in range(180)]) * AS
        ex['c2_comb_07'].append(up(spectral(g2_07).sqrt()))
        ex['c2_comb_10'].append(up(spectral(g2_10).sqrt()))
        ex['c2_comb_12'].append(up(spectral(g2_12).sqrt()))
        ex['c3_comb_10'].append(up(spectral(g3_10).sqrt()))
        ex['c3_comb_12'].append(up(spectral(g3_12).sqrt()))
    ex['ns'] = [up(C.norm([A[i, j] for j in range(28)])) for i in range(180)]
    ex['nw'] = [up(C.norm([A[i, j] for j in range(28, 30)])) for i in range(180)]
    ex['amp'] = [[up((Cf[i, l] ** 2 + Sf[i, l] ** 2).sqrt()) for l in range(180)] for i in range(30)]
    return ex


def curved_slack(ex, s_tilde, w, s_cap=None, R=None):
    """Upper bounds on ||z_s - q_2(z_w) - q_3(z_w)||_2 and ||z_w||_2 using the cubic normal form."""
    s_t = up(s_tilde + ex['lam_a'][0] * ex['r'])
    q2_norm = up(ex['kap_q'] * w * w)
    q3_norm = up(ex['kap_q3'] * (w ** 3))
    q_norm = up(q2_norm + q3_norm)
    s_t3 = up(s_t + q3_norm)
    s_full = up(s_t + q_norm)
    if s_cap is not None:
        s_full = fmin([s_full, s_cap])
    s_z = up(s_tilde + q_norm)
    if s_cap is not None:
        s_z = fmin([s_z, up(s_cap + ex['lam_a'][0] * ex['r'])])
    rho_zeta = up((s_full * s_full + w * w).sqrt())
    if R is not None:
        rho_zeta = fmin([rho_zeta, R])
    al07 = arb(7) / arb(10)
    al12 = arb(6) / arb(5)
    rho_zeta_07 = up((s_full * s_full + al07 * w * w).sqrt())
    rho_zeta_12 = up((s_full * s_full + al12 * w * w).sqrt())

    v = [(ex['ns'][l] * s_full + ex['nw'][l] * w) ** 9 / math.factorial(9) for l in range(180)]
    v4_u = [(ex['ns'][90 + l] * s_full + ex['nw'][90 + l] * w) ** 4 / 24 for l in range(90)]
    sq2 = arb(2).sqrt()
    out = []
    for g, rows in enumerate(GROUPS):
        cf = ex['coef'][g]
        tail = C.norm([sum((ex['amp'][i][l] * v[l] for l in range(180)), arb(0)) for i in rows])
        p_pure = (arb(0) if g == 0 else ex['kap_w2'] * (w ** 2) + ex['kap_w3'] * (w ** 3)) + ex['kap_4'][g] * (w ** 4)
        rem_2 = cf[2, 1] * s_t * w + cf[2, 0] * s_t3 * s_t3
        rem_3 = ex['kap_sw2'][g] * s_t3 * (w ** 2) + cf[3, 1] * (s_full ** 2) * w + cf[3, 0] * (s_full ** 3)
        rem_48 = sum((cf[n, k] * (s_full ** (n - k)) * (w ** k)
                      for n in range(4, 9) for k in range(n + 1) if (n, k) != (4, 4)), arb(0))
        poly_curved = up(p_pure + rem_2 + rem_3 + rem_48)

        deg2_split = cf[2, 0] * s_full * s_full + cf[2, 1] * s_full * w
        deg2_c07 = ex['c2_comb_07'][g] * s_full * rho_zeta_07
        deg2_c10 = ex['c2_comb_10'][g] * s_full * rho_zeta
        deg2_c12 = ex['c2_comb_12'][g] * s_full * rho_zeta_12
        deg2_flat = fmin([deg2_split, deg2_c07, deg2_c10, deg2_c12])
        deg3_split = cf[3, 0] * (s_full ** 3) + cf[3, 1] * (s_full ** 2) * w + cf[3, 2] * s_full * (w ** 2)
        deg3_c10 = ex['c3_comb_10'][g] * s_full * (rho_zeta ** 2)
        deg3_c12 = ex['c3_comb_12'][g] * s_full * (rho_zeta_12 ** 2)
        deg3_flat = fmin([deg3_split, deg3_c10, deg3_c12])
        w_pure_flat = (ex['kap_swq2'] * (w ** 3) if g == 0 else ex['kap_w2'] * (w ** 2) + ex['kap_w3_raw'] * (w ** 3)) + ex['kap_4_raw'][g] * (w ** 4)
        poly_flat = up(deg2_flat + deg3_flat + w_pure_flat + rem_48)
        poly = fmin([poly_curved, poly_flat])

        gamma_u2 = ex['r'] * (ex['fhkk_ss'][g] * s_full * s_full + ex['fhkk_sw'][g] * s_full * w + ex['fhkk_ww'][g] * w * w)
        gamma_u4_ridge = ex['r'] * C.norm([sum((ex['amp_u'][i][l] * v4_u[l] for l in range(90)), arb(0)) for i in rows])
        gamma_u4_univ = (sq2 / 8) * ex['gB'][g] * ex['d_u'] * ((ex['nT'] * rho_zeta) ** 4)
        gamma_u4 = fmin([gamma_u4_ridge, gamma_u4_univ])
        gamma_u3_gram = ex['r'] * sum((ex['fhkkk'][g][k] * (s_full ** (3 - k)) * (w ** k) for k in range(4)), arb(0)) + gamma_u4
        gamma_u3_univ = (arb(2) / 3) * ex['gB'][g] * ex['d_u'] * ((ex['nT'] * rho_zeta) ** 3)
        gamma_u3 = fmin([gamma_u3_gram, gamma_u3_univ])
        gamma_hhk = sq2 * ex['gB'][g] * (ex['d_u'] ** 2) * ex['nT'] * rho_zeta
        gamma = 2 * ex['gB'][g] * ex['nT'] * ex['eH'] * rho_zeta + gamma_hhk + gamma_u2 + gamma_u3

        lin_term = ex['beta_s'][g] * s_z + ex['beta_w'][g] * w
        out.append(up(ex['eta'][g] + lin_term + gamma + poly + tail))
    return out


# ---- Arb: colour product, curved 2D search, and recursive outer-peel -----------------------------------------------

def colour_product(y, Ti, columns, rho, T=None, w0_prop=None):
    """Enclosure of one pattern in Helmert coordinates relative to y*: returns (R, wcap, scap, w0_prop)."""
    pts, reach, x0_list = [], [], []
    for c, bins in enumerate(columns):
        P_list = []
        for k in bins:
            v = [arb(0)] + [2 * arb.pi() * int(j) / 192 for j in k]
            wind = [winding((v[a] - y[6 * a + c, 0]) / (2 * arb.pi())) for a in range(6)]
            d = [v[a] - 2 * arb.pi() * wind[a] - y[6 * a + c, 0] for a in range(6)]
            m = sum(d, arb(0)) / 6
            dd = W6.transpose() * arb_mat([[d[a] - m] for a in range(6)])
            P_list.append([dd[i, 0] for i in range(5)])
        pts.append(P_list)
        reach.append(up(fmax([C.norm(p) for p in P_list]) + rho))
        if w0_prop is None and T is not None:
            c_mid = [arb((min(float(p[i].mid()) for p in P_list) + max(float(p[i].mid()) for p in P_list)) / 2.0) for i in range(5)]
            x0_list.extend(c_mid)
    nTi = spectral(Ti)
    R = up(nTi * C.norm(reach))
    scap = R
    if T is not None:
        if w0_prop is None:
            z0 = Ti * arb_mat(30, 1, x0_list)
            w0_prop = [float(z0[28, 0].mid()), float(z0[29, 0].mid())]
        z0_w = arb_mat(30, 1, [arb(0)] * 28 + [arb(w0_prop[0]), arb(w0_prop[1])])
        x0_w = T * z0_w
        err_w = C.norm([(Ti * x0_w - z0_w)[i, 0] for i in range(30)])
        r_w_list = [
            up(fmax([C.norm([p[i] - x0_w[5 * c + i, 0] for i in range(5)]) for p in P_list]) + rho)
            for c, P_list in enumerate(pts)
        ]
        scap_w = up(nTi * C.norm(r_w_list) + err_w)
        scap = fmin([R, scap_w])
    caps = []
    for j in range(64):
        ang = 2 * arb.pi() * j / 64
        a = Ti.transpose() * arb_mat(30, 1, [arb(0)] * 28 + [ang.cos(), ang.sin()])
        a = [a[i, 0] for i in range(30)]
        caps.append(up(sum((fmax([sum((ac * pc for ac, pc in zip(a[5 * c:5 * c + 5], p)), arb(0)) for p in P_list])
                            + rho * C.norm(a[5 * c:5 * c + 5]) for c, P_list in enumerate(pts)), arb(0))))
    return R, up(fmax(caps) / (arb.pi() / 64).cos()), scap, w0_prop


def curved_search(ex, R, wcap, target, scap=None, budget=4000):
    """Discharge every closed (S_tilde, W) box in cubic normal-form coordinates."""
    lam_sr = up(ex['lam_a'][0] * ex['r'])
    w_top = fmin([R, wcap])
    s_top_init = fmin([R, scap]) if scap is not None else R
    R_s = up(s_top_init + lam_sr + ex['kap_q'] * w_top * w_top + ex['kap_q3'] * (w_top ** 3))
    max_t = arb(TARGETS[-1])
    stack, nodes, leaves = [(arb(0), R_s, arb(0), w_top, 0)], 0, {}
    while stack:
        sl, su, wl, wu, dep = stack.pop(); nodes += 1; why = None
        q_wu = ex['kap_q'] * wu * wu + ex['kap_q3'] * (wu ** 3)
        zeta_s_min = max(arb(0), arb((sl - lam_sr - q_wu).lower()))
        if zeta_s_min * zeta_s_min + wl * wl > R * R or (scap is not None and zeta_s_min > scap):
            why = 'outside initial ball'
        elif wl > wcap:
            why = 'outside colour product'
        else:
            s_cap = up(fmax([arb(0), R * R - wl * wl]).sqrt())
            if scap is not None:
                s_cap = fmin([s_cap, scap])
            qs, qw = curved_slack(ex, su, wu, s_cap=s_cap, R=R)
            if sl > ex['g0'][0] + qs:
                why = 'strong residual'
            elif wl > ex['g0'][1] + qw:
                why = 'weak residual'
            else:
                s_max = su + q_wu
                if ex['nTs_c'] * s_max + ex['nTw_c'] * wu < target:
                    why = 'localised'
        if why:
            leaves[why] = leaves.get(why, 0) + 1
            continue
        if dep >= 30 or nodes >= budget:
            s_max = su + q_wu
            kind = 'near' if ex['nTs_c'] * s_max + ex['nTw_c'] * wu < max_t else 'far'
            raise ArithmeticError('%s open box St<=%s W<=%s' % (kind, su.str(3), wu.str(3)))
        if su - sl >= wu - wl:
            m = (sl + su) / 2
            stack += [(sl, m, wl, wu, dep + 1), (m, su, wl, wu, dep + 1)]
        else:
            m = (wl + wu) / 2
            stack += [(sl, su, wl, m, dep + 1), (sl, su, m, wu, dep + 1)]
    return nodes, leaves


def propagate_ac(valid, graph, colors, clique):
    valid = valid.copy()
    while True:
        if any(not np.any(valid & (colors == c)) for c in clique):
            return None
        updated = valid.copy()
        for color in clique:
            ids = np.flatnonzero(valid & (colors != color))
            refs = np.flatnonzero(valid & (colors == color))
            updated[ids] &= np.any(graph[np.ix_(ids, refs)], axis=1)
        if np.array_equal(valid, updated):
            return valid
        valid = updated


# ---- Witness interface for run_cell.py -----------------------------------------------------------------------------

def prepare(model, prop, stored=None):
    """Shared completion expansion and cached Step F verifications."""
    st = stored or {}
    y_np = finite_array(prop['y'], (36,), 'y')
    t_np = finite_array(prop['T'], (30, 30), 'T')
    b_np = finite_array(prop['B'], (30, 66), 'B')
    q = (Z.mat(finite_array(st['q'], (36, 1), 'q')) if 'q' in st else
         arb_mat([[arb(float(model['Q0'][i, 0].mid()))] for i in range(36)]))
    y = arb_mat([[arb(v)] for v in y_np])
    T, B = Z.mat(t_np), Z.mat(b_np)
    if 'Lam' in st:
        finite_array(st['Lam'], (30, 4), 'Lam')
    centre = curved_expansion(
        model, q, y, T, B,
        Lam=Z.mat(st['Lam']) if 'Lam' in st else None,
        kinds=st.get('kinds_centre'),
    )
    return dict(
        prop=prop, y=y, T=T, B=B, q=q, model=model, Ti=T.inv(),
        centre=centre, forced={}, native=dict(st.get('native', {})), replay=stored is not None,
    )


def force(shared, t):
    """Step F on the per-colour tube ||e_c||_2 <= t with carrier ET Lam."""
    target_value(t)
    if t not in shared['forced']:
        if shared.get('replay') and t not in shared['native']:
            raise ArithmeticError('missing native tube proposal during replay')
        tube = arb(t)
        y, ex, model = shared['y'], shared['centre'], shared['model']
        L = ex['ET_Lam']
        prepared = {
            c: dict(
                model=model,
                v0=arb_mat([[y[6 * r + c, 0]] for r in range(6)]),
                T=arb_mat([[L[6 * r + c, j] for j in range(4)] for r in range(6)]),
            )
            for c in range(6)
        }
        row = MV.classify(
            model, prepared, {c: dict(epsilon=tube) for c in range(6)},
            list(range(6)), stored=shared['native'].get(t),
        )
        if row['status'] == 'CERTIFIED':
            shared['native'][t] = row['proposal']
        shared['forced'][t] = row
    return shared['forced'][t]


def peel_search(ex, shared, refined, clique, order, rho, plan=None):
    """Recursive multi-threshold Core + Outer-Peel Exhaustion on the retained fine-bin graph."""
    y = shared['y']
    keep_all = np.flatnonzero(refined['valid_labels'])
    sub_graph = refined['label_graph'][np.ix_(keep_all, keep_all)]
    sub_colors = refined['label_colors'][keep_all]
    counts = [len(refined['bin_indices'][c]) for c in clique]
    offsets = np.r_[0, np.cumsum(counts)]
    cols0 = [refined['bin_indices'][clique[j]] for j in order]
    reaches = []
    for j in range(6):
        r_list = []
        for k in cols0[j]:
            v = [arb(0)] + [2 * arb.pi() * int(x) / 192 for x in k]
            wind = [winding((v[a] - y[6 * a + j, 0]) / (2 * arb.pi())) for a in range(6)]
            d = [v[a] - 2 * arb.pi() * wind[a] - y[6 * a + j, 0] for a in range(6)]
            m = sum(d, arb(0)) / 6
            dd = W6.transpose() * arb_mat([[d[a] - m] for a in range(6)])
            r_list.append(up(C.norm([dd[i, 0] for i in range(5)]) + rho))
        reaches.append(r_list)
    r_flat = [None] * int(offsets[-1])
    for c_idx in range(6):
        j = order.index(c_idx)
        for idx, val in enumerate(reaches[j]):
            r_flat[offsets[c_idx] + idx] = val

    taus = plan['taus'] if (plan and isinstance(plan, dict) and 'taus' in plan) else PEEL_TAUS
    tau_arbs = [arb(str(tau)) for tau in taus]
    in_flats = [np.array([not (r > tau_a) for r in r_flat], dtype=bool) for tau_a in tau_arbs]
    stored_leaves = plan.get('leaves') if (plan and isinstance(plan, dict)) else None

    queue = [('root', 0, 0, np.ones(len(keep_all), dtype=bool))]
    any_classified = False
    last_row = None
    total_nodes = 0
    leaf_plans = {}
    while queue:
        name, tidx, scol, vmask = queue.pop(0)
        if name != 'root':
            if stored_leaves is not None and name not in stored_leaves:
                # In replay mode, if this node was split further in the certificate, split it identically:
                pass
            else:
                cols = [[refined['bin_indices'][clique[j]][idx] for idx in range(counts[j]) if vmask[offsets[j] + idx]] for j in order]
                w0_in = stored_leaves[name]['w0'] if stored_leaves is not None else None
                t_list = [stored_leaves[name]['t']] if stored_leaves is not None else (
                    [t for t in reversed(TARGETS) if t in shared['forced'] and shared['forced'][t]['status'] == 'CERTIFIED']
                    + [t for t in TARGETS if t not in shared['forced']]
                )
                R_sub, wcap_sub, scap_sub, w0_out = colour_product(shared['y'], shared['Ti'], cols, rho, shared['T'], w0_prop=w0_in)
                case_status = 'OPEN'
                for t in t_list:
                    try:
                        nodes, leaves = curved_search(ex, R_sub, wcap_sub, arb(t), scap=scap_sub)
                    except ArithmeticError as exc:
                        if 'far open box' in str(exc) and stored_leaves is None:
                            break
                        continue
                    if 'localised' not in leaves:
                        case_status = 'EXCLUDED'
                        total_nodes += nodes
                        leaf_plans[name] = dict(t=t, w0=w0_out)
                        break
                    row = force(shared, t)
                    if row['status'] == 'CERTIFIED':
                        case_status = 'CLASSIFIED'
                        any_classified = True
                        last_row = row
                        total_nodes += nodes
                        leaf_plans[name] = dict(t=t, w0=w0_out)
                        break
                if case_status != 'OPEN':
                    continue
                if stored_leaves is not None:
                    return dict(status='OPEN', step='L', reason=f'replayed peel leaf {name} failed')
            if scol >= 6:
                if tidx + 1 < len(tau_arbs):
                    tidx += 1
                    scol = 0
                else:
                    return dict(status='OPEN', step='L', reason=f'peel exhausted at {name}')
        in_flat = in_flats[tidx]
        m0 = vmask.copy()
        for c_idx in range(scol, 6):
            m0[offsets[c_idx]:offsets[c_idx + 1]] &= in_flat[offsets[c_idx]:offsets[c_idx + 1]]
        m0_ac = propagate_ac(m0, sub_graph, sub_colors, clique)
        if m0_ac is not None:
            queue.append((f'{name}/core_{tidx}', tidx, 6, m0_ac))
        for a in range(scol, 6):
            ma = vmask.copy()
            for c_idx in range(scol, a):
                ma[offsets[c_idx]:offsets[c_idx + 1]] &= in_flat[offsets[c_idx]:offsets[c_idx + 1]]
            ma[offsets[a]:offsets[a + 1]] &= ~in_flat[offsets[a]:offsets[a + 1]]
            ma_ac = propagate_ac(ma, sub_graph, sub_colors, clique)
            if ma_ac is not None:
                queue.append((f'{name}/out{tidx}_{a}', tidx, a + 1, ma_ac))

    peel_plan = dict(mode='peel', taus=list(taus), leaves=leaf_plans)
    if stored_leaves is not None and set(leaf_plans) != set(stored_leaves):
        raise ArithmeticError('replay peel leaf set mismatch')
    if any_classified:
        return dict(
            status='CLASSIFIED', route='curved+peel', nodes=total_nodes, plan=peel_plan,
            q=last_row['q'], q_native=last_row['q_native'], q_p2=last_row['q_p2'],
        )
    return dict(status='EXCLUDED', route='curved+peel', nodes=total_nodes, plan=peel_plan)


def pattern(shared, columns, rho, plan=None, refined=None, clique=None, order=None):
    """Certify one pattern (EXCLUDED, CLASSIFIED, or OPEN)."""
    if shared.get('replay'):
        validate_plan(plan)
    ex = shared['centre']
    if isinstance(plan, dict) and plan.get('mode') == 'peel':
        if refined is None or clique is None or order is None:
            return dict(status='OPEN', step='L', reason='missing refined graph for peel replay')
        return peel_search(ex, shared, refined, clique, order, rho, plan=plan)

    w0_in = plan.get('w0') if isinstance(plan, dict) else None
    t_list = [plan['t']] if isinstance(plan, dict) and 't' in plan else ([plan[1]] if isinstance(plan, list) else TARGETS)
    R, wcap, scap, w0_out = colour_product(shared['y'], shared['Ti'], columns, rho, shared['T'], w0_prop=w0_in)
    info = dict(R=R.str(3), wcap=wcap.str(3), scap=scap.str(3))
    last = dict(status='OPEN', step='L', reason='no tube')
    for t in t_list:
        try:
            nodes, leaves = curved_search(ex, R, wcap, arb(t), scap=scap)
        except ArithmeticError as exc:
            last = dict(status='OPEN', step='L', reason=str(exc))
            if 'far open box' in str(exc) and plan is None:
                break
            continue
        info.update(nodes=nodes, leaves=leaves, plan=dict(mode='direct', t=t, w0=w0_out))
        if 'localised' not in leaves:
            return dict(status='EXCLUDED', route='curved annulus', **info)
        row = force(shared, t)
        if row['status'] == 'CERTIFIED':
            return dict(status='CLASSIFIED', q=row['q'], q_native=row['q_native'], q_p2=row['q_p2'], **info)
        last = dict(status='OPEN', step='F', reason=[{k: a.get(k, '')[:60] for k in ('q_native', 'q_p2', 'reason')} for a in row['attempts']])

    if plan is None and refined is not None and clique is not None and order is not None:
        peel_res = peel_search(ex, shared, refined, clique, order, rho)
        if peel_res['status'] != 'OPEN':
            peel_res.update(R=R.str(3), wcap=wcap.str(3), scap=scap.str(3))
            return peel_res
    return dict(**last, **info)


# ---- Certificates: exact binary64 dyadic proposals, independently checked in Arb ---------------------------------

def pack(a):
    a = np.ascontiguousarray(a, dtype='<f8')
    return dict(shape=list(a.shape), f8=base64.b64encode(a.tobytes()).decode())


def unpack(d):
    if not isinstance(d, dict) or not isinstance(d.get('shape'), list):
        raise ArithmeticError('invalid packed array')
    shape = d['shape']
    if not shape or any(type(n) is not int or n < 0 for n in shape):
        raise ArithmeticError('invalid packed shape')
    a = np.frombuffer(base64.b64decode(d['f8'], validate=True), dtype='<f8').reshape(shape)
    if not np.isfinite(a).all():
        raise ArithmeticError('nonfinite packed array')
    return a


def completion_record(shared):
    """Exact proposals of one completion (binary64, exact dyadics)."""
    kinds = lambda ex: [[[n, k, v] for (n, k), v in sorted(g.items())] for g in ex['kinds']]
    return dict(
        q=pack(Z.mid_np(shared['q'])),
        y=pack(shared['prop']['y']),
        T=pack(shared['prop']['T']),
        B=pack(shared['prop']['B']),
        Lam=pack(Z.mid_np(shared['centre']['Lam'])),
        kinds_centre=kinds(shared['centre']),
        native={str(t): dict(action=p['action'], wind=p['wind'], pinv=pack(p['pinv'])) for t, p in shared['native'].items()},
    )


def from_record(model, rec):
    """Rebuild Arb constants from exact dyadic proposals; do not search for replacements."""
    required = {(n, k) for n in range(2, 9) for k in range(n + 1)}
    raw_kinds = rec['kinds_centre']
    if not isinstance(raw_kinds, list) or len(raw_kinds) != 2:
        raise ArithmeticError('missing flattening proposals')
    kinds = []
    for grp in raw_kinds:
        if not isinstance(grp, list) or any(not isinstance(v, list) or len(v) != 3 for v in grp):
            raise ArithmeticError('invalid flattening proposals')
        kg = {(n, k): v for n, k, v in grp}
        if len(kg) != len(grp) or set(kg) != required:
            raise ArithmeticError('incomplete flattening proposals')
        kinds.append(kg)
    native = {}
    for t, p in rec['native'].items():
        key = float(t)
        target_value(key)
        if key in native:
            raise ArithmeticError('duplicate native tube key')
        proposal = dict(action=p['action'], wind=p['wind'], pinv=unpack(p['pinv']))
        MV.validate_stored(proposal)
        native[key] = proposal
    st = dict(
        Lam=unpack(rec['Lam']),
        kinds_centre=kinds,
        native=native,
    )
    if 'q' in rec:
        st['q'] = unpack(rec['q'])
    prop = dict(y=unpack(rec['y']), T=unpack(rec['T']), B=unpack(rec['B']))
    return prepare(model, prop, stored=st)
