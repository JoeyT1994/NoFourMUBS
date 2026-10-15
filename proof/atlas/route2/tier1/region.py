"""Tier-1 region certificate, FLOAT prototype with exact bound formulas (Taylor models; nothing sampled except the
chart residual measurement).  See MILESTONE1.md section 5.

Region: Hadamards e^{i(P + delta)}, delta = T eta + q(eta, eta)/2 + nu, ||eta|| <= rho (or a sub-cube), nu normal with
||nu||_F <= n3 (the second-order normal bound, an assumed Lemma; default n3 = N3C rho^3).
Coefficients A(eta) = conj(H(eta))^T / sqrt6 as Taylor models.  For each of the 252 roots (bilinear system of
returns/A_root_count, one affine chart per root):
    model m(zeta)   : chord-Newton in TM arithmetic (degree D),
    preconditioner  : C(zeta) = C0 - C0 (J(zeta) - J0)_lin C0  (affine),
    Krawczyk        : eps_k + kappa0_k r + kappa1_k r^2 < r for all rows k, with
                      eps = |C F(A, m)|, kappa0 = |I - C J(A, m)|, kappa1 = sum |C dJ/dw| (J is affine in w).
Roots failing on the whole region are retried on sub-cubes (each root its own subdivision).
Then: pairwise projective separation (2x2 determinant witnesses), torus / off-torus classification, and the
no-5-clique test (returns/B_pairing Thm 6.1 + Lemma 4.1) on torus roots with TM lower bounds of |<x_a, x_b>|.
Usage: region.py rho id ... [--D 3] [--maxd 2] [--n3c 0.5]
"""
import sys, math, time, json, itertools, argparse
import numpy as np, networkx as nx
from centres import load
from roots import hc_roots, frame
from geometry import jacobian, HB
from bilin import TT, F as Fpt, Root, roots_from_log
from tm import Space

IU = np.triu_indices(6, 1)
LOCAL_CHARTS = True
MAXTESTS = 30000
CLUSTERS = True
DEG_FIRST = 3
WFLOOR = 1e-3
EDGE_MAXD = 2

def Phi(P, d):
    H = np.exp(1j * (P + d.reshape(6, 6))); G = H @ H.conj().T
    return np.concatenate([G[IU].real, G[IU].imag])

def J36(P, d):
    H = np.exp(1j * (P + d.reshape(6, 6))); return jacobian(H) @ HB.T

class LocalChart:
    def model(self, eta): return self.g0 + self.T @ eta + 0.5 * np.einsum('eij,i,j->e', self.q, eta, eta)

class Chart:
    """delta(eta) = T eta + nu(eta), nu in N = horizontal complement of span T, with Phi(delta) = 0 (graph chart)."""
    def __init__(self, P, T=None):
        self.P = P; self.T = frame(P) if T is None else T                # 36 x 4 (orthonormal up to ~1e-9)
        Ph = HB @ HB.T; Tq = np.linalg.qr(self.T)[0]; PN = Ph - Tq @ Tq.T
        w, V = np.linalg.eigh(PN); self.Nb = V[:, w > 0.5]               # 36 x 21
        self.q = self._hessian()
    def graph(self, eta, it=30):
        s = self.Nb.T @ (self.model(eta) - self.T @ eta) if hasattr(self, 'q') else np.zeros(21)   # warm start
        for _ in range(it):
            d = self.T @ eta + self.Nb @ s; r = Phi(self.P, d)
            JN = J36(self.P, d) @ self.Nb; step = np.linalg.lstsq(JN, -r, rcond=None)[0]; s += step
            if np.max(abs(step)) < 1e-15: break
        return self.T @ eta + self.Nb @ s
    def _hessian(self, h=2e-3):
        q = np.zeros((36, 4, 4)); E = np.eye(4) * h; g0 = self.graph(np.zeros(4))
        for i in range(4):
            q[:, i, i] = (self.graph(E[i]) - 2 * g0 + self.graph(-E[i])) / h ** 2
        for i, j in itertools.combinations(range(4), 2):
            v = (self.graph(E[i] + E[j]) - self.graph(E[i] - E[j]) - self.graph(-E[i] + E[j]) + self.graph(-E[i] - E[j])) / (4 * h * h)
            q[:, i, j] = q[:, j, i] = v
        self.g0 = g0
        return q
    def model(self, eta): return self.g0 + self.T @ eta + 0.5 * np.einsum('eij,i,j->e', self.q, eta, eta)
    def local(self, ec, h=2e-3):
        """second-order Taylor model of the graph chart at ec (finite differences; any polynomial is a valid model, its
        error is bounded through e3 of the sub-cube)"""
        L = LocalChart(); L.P = self.P; L.Nb = self.Nb; E = np.eye(4) * h
        g = lambda z: self.graph(ec + z)
        L.g0 = g(np.zeros(4)); gp = [g(E[k]) for k in range(4)]; gm = [g(-E[k]) for k in range(4)]
        L.T = np.stack([(gp[k] - gm[k]) / (2 * h) for k in range(4)], 1)
        q = np.zeros((36, 4, 4))
        for k in range(4): q[:, k, k] = (gp[k] - 2 * L.g0 + gm[k]) / h ** 2
        for k, l in itertools.combinations(range(4), 2):
            q[:, k, l] = q[:, l, k] = (g(E[k] + E[l]) - g(E[k] - E[l]) - g(-E[k] + E[l]) + g(-E[k] - E[l])) / (4 * h * h)
        L.q = q; return L
    def residual(self, rho, n=12, rng=np.random.default_rng(5)):
        out = 0.0
        for _ in range(n):
            e = rng.normal(size=4); e *= rho / np.linalg.norm(e)
            out = max(out, np.linalg.norm(self.graph(e) - self.model(e)))
        return out

def A_tm(S, ch, ec, n3):
    """TM of A(eta_c + zeta) entries (36, flattened row-major A_jm) over the domain of S."""
    P = ch.P; g0 = ch.g0
    # delta(ec + z) = g0 + T ec + q(ec,ec)/2 + (T + q(ec, .)) z + q(z, z)/2   (exact polynomial in z)
    d0 = ch.model(ec); L = ch.T + np.einsum('eij,j->ei', ch.q, ec)
    c = np.zeros((36, S.M))
    c[:, 0] = d0
    for k in range(4): c[:, S.lin[k]] = L[:, k]
    for i in range(4):
        for j in range(4):
            m = tuple((1 if t == i else 0) + (1 if t == j else 0) for t in range(4))
            c[:, S.idx[m]] += 0.5 * ch.q[:, i, j]
    # entry e = 6 r + col of delta (H index); A_jm = conj(H_mj)/sqrt6 = exp(-i(P_mj + delta_mj))/sqrt6
    arg = -(P.reshape(36)[:, None] * np.eye(S.M)[0][None, :] + c)          # phases of conj(H), H-index order
    # rigorous: the float sum P + delta0(0) has error <= u |P + delta0(0)|; it is a real perturbation of the argument
    rad = np.full(36, n3) + (2 * 2.0 ** -53 * abs(arg[:, 0]) if S.rig else 0.0)
    E = S.expi((arg + 0j, rad))                                            # |nu_e| <= n3 per entry
    order = np.array([6 * m + j for j in range(6) for m in range(6)])      # A_jm <- H_mj
    # the scalar 1/sqrt6 is irrelevant (F is linear in A); the division is rounded: relative error <= u
    sc = 1 / math.sqrt(6)
    Ec, Ee = E[0][order] * sc, E[1][order] * sc
    if S.rig: Ee = (Ee + 2 * 2.0 ** -53 * S._pb(Ec)) * (1 + 1e-15)
    return Ec, Ee

def TA(S, At):
    """T(A)[k,s,t] = sum_a TT[k,a,s,t] A_a  (linear)"""
    c = np.einsum('kast,am->kstm', TT, At[0]); e = np.einsum('kast,a->kst', np.abs(TT), At[1])
    if S.rig: e = (e + 2 * 12 * 2.0 ** -53 * np.einsum('kast,a->kst', np.abs(TT), S._pb(At[0]))) * (1 + 1e-14)
    return c, e

def root_tm(S, At, TAt, r0, A0c, iters=None):
    """polynomial model of root r0 (Root at the domain centre, coefficients A0c), chord Newton in TM arithmetic"""
    iters = iters or S.D + 1
    C0 = np.linalg.inv(r0.J(A0c))
    x = S.const(r0.x); v = S.const(r0.v)
    for _ in range(iters):
        Fv = Ftm(S, TAt, x, v)
        step = (np.einsum('kl,lm->km', C0, Fv[0]),)
        x = (x[0].copy(), x[1]); v = (v[0].copy(), v[1])
        x[0][r0.fx] -= step[0][:5]; v[0][r0.fv] -= step[0][5:]
    return (x[0], np.zeros(6)), (v[0], np.zeros(6))

def Ftm(S, TAt, x, v):
    xv = S.mul((x[0][:, None, :], x[1][:, None]), (v[0][None, :, :], v[1][None, :]))      # 6 x 6
    pr = S.mul(TAt, (xv[0][None], xv[1][None]))
    return S.sumax(pr, (1, 2))

def Jtm(S, TAt, x, v, r0):
    Jx = S.sumax(S.mul(TAt, (v[0][None, None], v[1][None, None])), (2,))        # k, s
    Jx = (Jx[0][:, r0.fx], Jx[1][:, r0.fx])
    Jv = S.sumax(S.mul(TAt, (x[0][None, :, None], x[1][None, :, None])), (1,))
    Jv = (Jv[0][:, r0.fv], Jv[1][:, r0.fv])
    return np.concatenate([Jx[0], Jv[0]], 1), np.concatenate([Jx[1], Jv[1]], 1)

def matmul(S, A, B):
    """TM matrix product A (n x k) B (k x m)"""
    pr = S.mul((A[0][:, :, None, :], A[1][:, :, None]), (B[0][None, :, :, :], B[1][None, :, :]))
    return S.sumax(pr, (1,))

def kraw_tm(S, At, TAt, r0, A0c, n3=0.0, margin=0.0):
    """At must be the TM of A WITHOUT the normal part; nu (||nu||_F <= n3) is added by Cauchy-Schwarz:
    A_jm -> A_jm e^{-i nu_mj}, |e^{-i nu} - 1| <= |nu|, so a linear functional sum_e c_e (A_e(e^{-i nu_e} - 1))
    is bounded by n3 ||(c_e A_e)_e||_2 (+ second order n3^2 terms, bounded by n3^2 sum|c_e A_e| / 2... included as 1.01 factor
    for n3 <= 0.02)."""
    x, v = root_tm(S, At, TAt, r0, A0c)
    Fv = Ftm(S, TAt, x, v); J = Jtm(S, TAt, x, v, r0)
    C0 = np.linalg.inv(J[0][..., 0])
    J1 = J[0].copy(); J1[..., 0] = 0; J1[..., S.deg > 1] = 0                # linear part
    C = (C0[..., None] * np.eye(S.M)[0] - np.einsum('ij,jkm,kl->ilm', C0, J1, C0), np.zeros((10, 10)))
    CF = matmul(S, C, (Fv[0][:, None, :], Fv[1][:, None]))
    CJ = matmul(S, C, J); I = S.const(np.eye(10)); R = S.sub(I, CJ)
    Tsub = (TAt[0][:, r0.fx][:, :, r0.fv], TAt[1][:, r0.fx][:, :, r0.fv])     # k, 5, 5
    G = matmul(S, C, (Tsub[0].reshape(10, 25, S.M), Tsub[1].reshape(10, 25)))      # sum_j C_kj T[j,s,t] (TM)
    Gb = S.absb(G).reshape(10, 5, 5)
    # nu terms: A -> A o e^{-i nu^T}; F and J are linear in A, so F(A o e^{-i nu}) - F(A) = sum_e dF/dA_e A_e (e^{-i nu_e} - 1)
    # with |e^{-i nu_e} - 1| <= |nu_e| and ||nu||_2 <= n3: bounded by n3 ||(c_e)_e||_2 (Cauchy-Schwarz), c = C dF/dA_e A_e.
    xv = S.mul((x[0][:, None, :], x[1][:, None]), (v[0][None, :, :], v[1][None, :]))
    FaT = (np.einsum('kast,stm->kam', TT, xv[0]), np.einsum('kast,st->ka', np.abs(TT), xv[1]))
    if S.rig: FaT = (FaT[0], (FaT[1] + 24 * 2.0 ** -53 * np.einsum('kast,st->ka', np.abs(TT), S._pb(xv[0]))) * (1 + 1e-14))
    FaT = S.mul(FaT, (At[0][None], At[1][None]))                                  # k, e
    CFa = S.absb(matmul(S, C, FaT))                                              # 10 x 36
    nuF = np.sqrt((CFa ** 2).sum(1)) * n3 * (1 + 1e-12)
    # Jacobian: dJ_{j,l}/dA_e A_e at the model point, plus the y-dependent part (|y_l| <= r s_l, absorbed below by
    # the factor (1 + r_max) with r_max <= 0.1 enforced in solve_r)
    JAx = (np.einsum('kast,tm->kasm', TT, v[0])[:, :, r0.fx], np.einsum('kast,t->kas', np.abs(TT), v[1])[:, :, r0.fx])
    JAv = (np.einsum('kast,sm->katm', TT, x[0])[:, :, r0.fv], np.einsum('kast,s->kat', np.abs(TT), x[1])[:, :, r0.fv])
    JA = (np.concatenate([JAx[0], JAv[0]], 2), np.concatenate([JAx[1], JAv[1]], 2))   # k, e, l
    JA = S.mul(JA, (At[0][None, :, None], At[1][None, :, None]))
    CJA = S.absb(matmul(S, C, (JA[0].reshape(10, 360, S.M), JA[1].reshape(10, 360)))).reshape(10, 36, 10)
    CJA_y_parts = (S.absb(C), S.absb(At))                                         # for the y-dependent part, per mode
    best = None
    for mode in ('rel', 'abs', 'sqrt'):
        w0 = np.concatenate([x[0][r0.fx, 0], v[0][r0.fv, 0]])
        sw = {'rel': np.maximum(abs(w0), WFLOOR * abs(w0).max()), 'abs': np.ones(10),
              'sqrt': np.sqrt(np.maximum(abs(w0), WFLOOR * abs(w0).max()))}[mode]
        eps = (S.absb(CF)[:, 0] + nuF) / sw
        # y-part of dJ/dA_e: |sum_t TT[j,e,s,t] y_t| <= 0.1 sum_t |TT| s_t (x-columns; v-columns likewise), r <= 0.1
        Cb, Ab = CJA_y_parts; ATT = np.abs(TT)
        yx = np.einsum('jest,t->jes', ATT[:, :, r0.fx][:, :, :, r0.fv], sw[5:])
        yv = np.einsum('jest,s->jet', ATT[:, :, r0.fx][:, :, :, r0.fv], sw[:5])
        Jy = 0.1 * np.concatenate([yx, yv], 2) * Ab[None, :, None]                # j, e, l
        CJAy = np.einsum('kj,jel->kel', Cb, Jy)
        k0 = ((S.absb(R) * sw[None, :]).sum(1) + n3 * np.einsum('kl,l->k', np.sqrt(((CJA + CJAy) ** 2).sum(1)), sw)) / sw
        k1 = 2 * np.einsum('kst,s,t->k', Gb, sw[:5], sw[5:]) / sw
        rr = solve_r(eps + margin, k0 + margin, k1 + margin)
        if rr is not None:
            best = (rr * sw, mode, eps, k0, k1); break
        if best is None or mode == 'rel': fail = (eps, k0, k1)
    sweep = S.absb((x[0] - x[0][..., :1] * np.eye(S.M)[0], x[1]))           # |x_s(zeta) - x_s(0)|
    if best is None:
        eps, k0, k1 = fail
        return dict(ok=False, eps=float(eps.max()), k0=float(k0.max()), k1=float(k1.max()), x=x, v=v, sweep=sweep)
    rv, mode, eps, k0, k1 = best
    return dict(ok=True, r=float(rv.max()), rvec=rv, mode=mode, eps=float(eps.max()), k0=float(k0.max()), k1=float(k1.max()),
                x=x, v=v, sweep=sweep)

def solve_r(eps, lin, quad):
    if np.any(lin >= 1): return None
    best = None
    for rr in np.geomspace(1e-15, 0.1, 600):
        if np.all(eps + lin * rr + quad * rr * rr < rr): return rr
    return None

def subcubes(ec, h):
    for s in itertools.product((-1, 1), repeat=4): yield ec + np.array(s) * h / 2, h / 2

def certify_region(i, rho, D=3, maxd=2, n3c=0.5, verbose=True, ch=None, n3abs=None, rig=False, margin=0.0):
    """rho: radius of the eta-ball.  ch / n3abs / rig / margin: used by the rigorous driver (rigorous_region.py)."""
    from chart2 import e3_bound, sigma_num, n3_bound_L
    t0 = time.time()
    phi, _, _ = load(); P = phi[i].reshape(6, 6); ch = ch or Chart(P)
    sig_num = sigma_num(ch); res_chart = ch.residual(rho, n=4)
    if n3abs is not None: n3 = n3abs
    elif n3c > 0: n3 = n3c * rho ** 3
    else:
        n3 = n3_bound_L(ch, rho)
        if n3 is None: raise SystemExit(json.dumps(dict(rec=i, rho=rho, fail='normal bound')))
    H0 = np.exp(1j * (P + ch.g0.reshape(6, 6)))
    U = hc_roots([np.exp(1j * P)], [i])[i]
    A0, R = roots_from_log(H0, U)                                     # refined at the exact chart centre
    spaces = {}
    def space(kind, size, deg=None):
        deg = deg or D; k = (deg, kind, round(size, 15))
        if k not in spaces: spaces[k] = Space(deg, kind, size, rig=rig)
        return spaces[k]
    tests = 0; cert = {}; unres = []; ncubes = [0]; clusters = []; nclus_try = [0]
    from cluster import cluster_cert
    from collections import OrderedDict
    todo = OrderedDict(); todo[('ball', 0)] = (np.zeros(4), rho, 'ball', 0, [(a, R[a]) for a in range(len(R))])
    while todo:
        key, (ec, size, kind, d, items) = todo.popitem(last=False)
        if kind == 'cube' and np.linalg.norm(np.maximum(abs(ec) - size, 0)) > rho: continue
        if kind == 'ball' or not LOCAL_CHARTS:
            chc, ecc = ch, ec; n3k = n3
        else:
            chc, ecc = ch.local(ec), np.zeros(4)
            nl = n3_bound_L(chc, size, kind='cube', rig=rig, a_priori=n3); n3k = n3 if nl is None else min(n3, nl)
        dat = {}
        def data(deg):
            if deg not in dat:
                Sd = space(kind, size, deg); Atd = A_tm(Sd, chc, ecc, 0.0); dat[deg] = (Sd, Atd, TA(Sd, Atd))
            return dat[deg]
        S, At, TAt = data(DEG_FIRST); A0c = At[0][:, 0].reshape(6, 6)
        ncubes[0] += 1
        if verbose and ncubes[0] % 20 == 0:
            print(f'  [rec {i}] cubes {ncubes[0]} depth {d} roots here {len(items)} tests {tests} queue {len(todo)} ({time.time()-t0:.0f}s)', file=sys.stderr, flush=True)
        failed_here = []
        for a, r0 in items:
            r1 = Root(r0.x.copy(), r0.v.copy()); r1.p, r1.q = r0.p, r0.q; r1.fx, r1.fv = r0.fx, r0.fv
            r1.x = r1.x / r1.x[r1.p]; r1.v = r1.v / r1.v[r1.q]
            if r1.newton(A0c) > 1e-10: unres.append((a, ec, size, 'newton')); continue
            tests += 1
            k = kraw_tm(S, At, TAt, r1, A0c, n3k, margin); Sk = S
            if not k['ok'] and D > DEG_FIRST:                      # escalate the model degree before subdividing
                S2, At2, TAt2 = data(D); k = kraw_tm(S2, At2, TAt2, r1, A0c, n3k, margin); Sk = S2
            if k['ok']:
                cert.setdefault(a, []).append(dict(ec=ec, size=size, kind=kind, d=d, r=k['r'], x=k['x'], v=k['v'], sweep=k['sweep'], S=Sk))
            else:
                failed_here.append((a, r1, k, Sk))
        # fold clusters: pair failing roots that are close (in the first root's chart) and certify the pair
        if CLUSTERS and len(failed_here) >= 2:
            used = set()
            for ia, (a, ra, ka, Sa) in enumerate(failed_here):
                if a in used: continue
                best = None
                for ib, (b, rb, kb, Sb) in enumerate(failed_here):
                    if b == a or b in used: continue
                    if abs(rb.x[ra.p]) < 1e-3 or abs(rb.v[ra.q]) < 1e-3: continue
                    dd = max(np.max(abs(rb.x / rb.x[ra.p] - ra.x)), np.max(abs(rb.v / rb.v[ra.q] - ra.v)))
                    if dd < 0.8 and (best is None or dd < best[0]): best = (dd, b, rb)
                if best is None: continue
                Sc, Atc, TAtc = data(D)
                cc = cluster_cert(Sc, Atc, TAtc, ra, best[2], A0c, n3k)
                nclus_try[0] += 1
                if cc['ok']:
                    used |= {a, best[1]}
                    sw = Sc.absb((cc['x'][0] - cc['x'][0][..., :1] * np.eye(Sc.M)[0], cc['x'][1]))
                    piece = dict(ec=ec, size=size, kind=kind, d=d, r=cc['xdisc'], x=cc['x'], v=cc['v'], sweep=sw, S=Sc, cluster=(a, best[1]), tau=cc['tau'])
                    cert.setdefault(a, []).append(piece); cert.setdefault(best[1], []).append(piece)
                    clusters.append((a, best[1], d, cc['tau'], cc['rz']))
            failed_here = [f for f in failed_here if f[0] not in used]
        for a, r1, k, Sk in failed_here:
            if d < maxd and tests < MAXTESTS:
                h = rho if kind == 'ball' else size
                for ec2, h2 in subcubes(ec if kind == 'cube' else np.zeros(4), h):
                    if np.linalg.norm(np.maximum(abs(ec2) - h2, 0)) > rho: continue
                    xs = Sk.evalpoly(k['x'][0], (ec2 - ec)[None])[:, 0]; vs = Sk.evalpoly(k['v'][0], (ec2 - ec)[None])[:, 0]
                    r2 = Root(xs, vs); r2.p, r2.q = r1.p, r1.q; r2.fx, r2.fv = r1.fx, r1.fv
                    r2.x = xs / xs[r2.p]; r2.v = vs / vs[r2.q]
                    k2 = ('cube', d + 1) + tuple(np.round(ec2, 12))
                    if k2 not in todo: todo[k2] = (ec2, h2, 'cube', d + 1, [])
                    todo[k2][4].append((a, r2))
            else:
                unres.append((a, ec, size, 'kraw eps %.2g k0 %.2g k1 %.2g' % (k['eps'], k['k0'], k['k1'])))
    t_cov = time.time() - t0
    n = len(R); unres_roots = sorted(set(u[0] for u in unres))
    tor = np.array([np.max(abs(abs(r.x) - 1)) < 1e-9 for r in R])           # torus at the centre (chart has |x_p| = 1)
    # --- separation (2x2 determinant witnesses, crude disc bounds)
    def disc(a):
        pcs = cert.get(a, [])
        return max((float(np.max(q['sweep'])) + q['r'] + np.linalg.norm(q['ec']) * 0 for q in pcs), default=np.inf)
    # the sweep of a sub-cube piece is relative to its own centre; add the distance of that centre value to the region centre
    def xdisc(a):
        best = 0.0
        for q in cert.get(a, []):
            x0 = q['x'][0][:, 0]; best = max(best, float(np.max(abs(x0 - R[a].x))) + float(np.max(q['sweep'])) + q['r'])
        return best
    dsc = np.array([xdisc(a) if a in cert and a not in unres_roots else np.inf for a in range(n)])
    X0 = np.array([r.x for r in R]); nsep_fail = 0
    partners = {}
    for (a_, b_, *_r) in clusters: partners.setdefault(a_, set()).add(b_); partners.setdefault(b_, set()).add(a_)
    for a in range(n):
        for b in range(a + 1, n):
            if b in partners.get(a, ()): continue
            M = np.abs(np.outer(X0[a], X0[b]) - np.outer(X0[b], X0[a]))
            s, t = np.unravel_index(np.argmax(M), M.shape)
            xa = max(abs(X0[a][s]), abs(X0[a][t])); xb = max(abs(X0[b][s]), abs(X0[b][t]))
            lb = M[s, t] - (2 * dsc[a] * (xb + dsc[b]) + 2 * dsc[b] * xa)
            if not lb > margin: nsep_fail += 1
    # --- off-torus: ||x_s|^2 - |x_t|^2| > 0 on the whole domain
    noff_fail = 0
    for a in range(n):
        if tor[a] or a in unres_roots or a in partners: continue
        ax = abs(R[a].x); s, t = np.argmax(ax), np.argmin(ax)
        if not (ax[s] ** 2 - ax[t] ** 2 - 2 * dsc[a] * (ax[s] + ax[t]) - 2 * dsc[a] ** 2 > margin): noff_fail += 1
    # --- torus classification (returns/A section 10.1): for a torus candidate a, the reciprocal-conjugate image
    # tau(x) = 1/conj(x) of its box must miss every other box b; then by completeness and uniqueness the root of box a
    # is tau-fixed, i.e. on the torus, at every exactly unitary A in the region
    ninv_fail = 0
    for a in range(n):
        if not tor[a] or a in unres_roots: continue
        xa = X0[a]; m = abs(xa).min()
        if not dsc[a] < m: ninv_fail += 1; continue
        y = 1 / np.conj(xa); dy = dsc[a] / (m * (m - dsc[a]))
        for b in range(n):
            if b == a or b in partners.get(a, ()): continue
            M = np.abs(np.outer(y, X0[b]) - np.outer(X0[b], y)); s_, t_ = np.unravel_index(np.argmax(M), M.shape)
            ya = max(abs(y[s_]), abs(y[t_])); xb = max(abs(X0[b][s_]), abs(X0[b][t_]))
            if not M[s_, t_] - (2 * dy * (xb + dsc[b]) + 2 * dsc[b] * ya) > margin: ninv_fail += 1; break
    # --- orthogonality graph on torus roots (TM lower bound of |<x_a, x_b>| on the whole region)
    tr = [a for a in range(n) if tor[a] or (a in partners and np.max(abs(abs(R[a].x) - 1)) < 0.5)]
    intra_bad = sum(1 for c in clusters if c[3] * 2 > 0.5)
    g = nx.Graph(); g.add_nodes_from(tr); lbmin = []
    St = space('ball', rho)
    nedge_tests = [0]
    def piece_for(a, qc, h, qkind):
        for q in cert.get(a, []):
            if q['kind'] == 'ball': return q
            if qkind == 'cube' and np.all(abs(qc - q['ec']) + h <= q['size'] + 1e-15): return q
        return None
    def recentre(q, Sq, qc):
        """q's TMs (x) re-expanded in the space Sq around qc (exact polynomial substitution)."""
        Sf = q['S']; sh = qc - q['ec']
        key = (id(Sf), id(Sq), tuple(np.round(sh, 15)))
        if key not in rc_cache:
            lin = [Sq.add(Sq.const(sh[k]), Sq.var(k)) for k in range(4)]
            mons = []
            for m in Sf.mono:
                t = Sq.const(1.0)
                for k in range(4):
                    for _ in range(m[k]): t = Sq.mul(t, lin[k])
                mons.append(t[0])
            rc_cache[key] = np.array(mons)                         # M_from x M_to
            if len(rc_cache) > 2000: rc_cache.clear()
        Mm = rc_cache[key]
        return q['x'][0] @ Mm, q['x'][1]
    rc_cache = {}
    def edge_ok(a, b, qc, h, kind, depth):
        pa, pb = piece_for(a, qc, h, kind), piece_for(b, qc, h, kind)
        if pa is not None and pb is not None:
            Sq = space(kind, h); nedge_tests[0] += 1
            xa = recentre(pa, Sq, qc) if not (kind == 'ball' and pa['kind'] == 'ball' and pa['S'].M == Sq.M) else pa['x']
            xb = recentre(pb, Sq, qc) if not (kind == 'ball' and pb['kind'] == 'ball' and pb['S'].M == Sq.M) else pb['x']
            gg = Sq.sumax(Sq.mul(Sq.conj(xa), xb), (0,))
            g0 = abs(gg[0][0]); var = Sq.absb((gg[0] - gg[0][0] * np.eye(Sq.M)[0], gg[1]))
            Ba = Sq.absb(xa); Bb = Sq.absb(xb)
            boxerr = float(np.sum(pa['r'] * Bb + pb['r'] * Ba + pa['r'] * pb['r']))
            if g0 - var - boxerr > margin: return True
        if depth >= EDGE_MAXD: return False
        hh = rho if kind == 'ball' else h
        for qc2, h2 in subcubes(qc if kind == 'cube' else np.zeros(4), hh):
            if np.linalg.norm(np.maximum(abs(qc2) - h2, 0)) > rho: continue
            if not edge_ok(a, b, qc2, h2, 'cube', depth + 1): return False
        return True
    for a, b in itertools.combinations(tr, 2):
        if b in partners.get(a, ()): continue                        # same cluster: not orthogonal if its diameter < 0.5 (intra_bad)
        if a in unres_roots or b in unres_roots: g.add_edge(a, b); continue
        if not edge_ok(a, b, np.zeros(4), rho, 'ball', 0): g.add_edge(a, b)
    w = max((len(c) for c in nx.find_cliques(g)), default=0)
    depth = {}
    for a, pcs in cert.items():
        for q in pcs: depth[q['d']] = depth.get(q['d'], 0) + 1
    tube = [max(q['r'] for q in cert[a]) for a in tr if a in cert and a not in unres_roots]
    out = dict(rec=i, rho=rho, D=D, n3=n3, chart_res=res_chart, roots=n, torus=int(tor.sum()), tests=tests,
               pieces_by_depth=depth, unresolved_roots=len(unres_roots), unresolved_torus=int(sum(tor[a] for a in unres_roots)),
               unres_examples=[u[3] for u in unres[:3]], clusters=len(clusters), cluster_tries=nclus_try[0], cluster_tau=[round(c[3], 3) for c in clusters][:6], intra_bad=intra_bad, sep_fail=nsep_fail, offtorus_fail=noff_fail, invol_fail=ninv_fail,
               tube_med=float(np.median(tube)) if tube else None, tube_max=float(max(tube)) if tube else None,
               edges=g.number_of_edges(), edge_tests=nedge_tests[0], clique=w, coverage=bool(not unres_roots and not nsep_fail and not noff_fail and not ninv_fail),
               T1=bool(not unres_roots and not nsep_fail and not noff_fail and not ninv_fail and w < 5),
               secs_cov=round(t_cov, 1), secs=round(time.time() - t0, 1))
    if verbose: print(json.dumps(out), flush=True)
    return out

if __name__ == '__main__':
    ap = argparse.ArgumentParser(); ap.add_argument('rho', type=float); ap.add_argument('ids', type=int, nargs='+')
    ap.add_argument('--D', type=int, default=3); ap.add_argument('--maxd', type=int, default=2); ap.add_argument('--n3c', type=float, default=-1)
    a = ap.parse_args()
    for i in a.ids: certify_region(i, a.rho, a.D, a.maxd, a.n3c)
