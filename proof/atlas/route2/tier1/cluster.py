"""Two-root (fold) cluster certificate, uniform over an eta-domain: the cylinder
      Z(eta) = { mm(eta) + u t + Q_z z : |t| <= tau, |z_j| <= rz }
contains EXACTLY TWO roots counted with multiplicity, for every eta (returns/A section 5.3: local holomorphic count).
Float prototype with exact bound formulas (MILESTONE1.md section 8).

Coordinates: w in C^10 (the bilinear chart of root a); Q = [u, Q_z] unitary, u = right singular vector of the smallest
singular value of J at the pair midpoint; rows of W = [l^H; Pi] the left singular vectors (l: smallest).  Since F is
bilinear in (x, v) for fixed A,
      F(w + dw) = F(w) + J(w) dw + Bq(dw, dw),   Bq(dw, dw)_k = sum_{s,t} T(A)[k,s,t] dx_s dv_t     (exact).
Step 1 (Krawczyk in z, uniformly in eta and |t| <= tau): Pi F(mm + u t + Q_z z) = 0 has a unique z(eta, t), |z| <= rz.
Step 2 (Rouche in t): g(eta, t) = l.F(mm + u t + Q_z z(eta,t)) = c0 + c1 t + c2 t^2 + E with |E| <= Ebound;
      if sup|c0| + sup|c1| tau + Ebound < inf|c2| tau^2, g has exactly two zeros in |t| < tau (g is holomorphic in t
      because z(eta, t) is, by the implicit function theorem).  Zeros of F in Z <-> zeros of g.
"""
import math
import numpy as np
from bilin import TT, Root
import region as RG

def _split(r0, w):
    x = r0.x.copy(); v = r0.v.copy(); x[r0.fx] = w[:5]; v[r0.fv] = w[5:]; return x, v

def cluster_cert(S, At, TAt, ra, rb, A0c, n3, taus=None):
    # common chart: ra's (p, q)
    if abs(rb.x[ra.p]) < 1e-3 * abs(rb.x).max() or abs(rb.v[ra.q]) < 1e-3 * abs(rb.v).max():
        return dict(ok=False, why='chart')
    xb = rb.x / rb.x[ra.p]; vb = rb.v / rb.v[ra.q]
    wa = ra.w(); wb = np.concatenate([xb[ra.fx], vb[ra.fv]])
    mid0 = 0.5 * (wa + wb); sep = float(np.max(abs(wa - wb)))
    J0 = ra.J(A0c, *_split(ra, mid0))
    U, sv, Vh = np.linalg.svd(J0)
    u = Vh[-1].conj(); Qz = Vh[:-1].conj().T                     # 10 x 9 (orthonormal columns)
    l = U[:, -1].conj(); Pi = U[:, :-1].conj().T                 # l.F = sum l_k F_k ; Pi: 9 x 10
    # reduced chord Newton for z0(eta): Pi F(mid0 + Q_z z) = 0
    C0 = np.linalg.inv(Pi @ J0 @ Qz)                              # 9 x 9
    M = S.M
    z = np.zeros((9, M), complex)
    def wtm(z):
        w = np.zeros((10, M), complex); w[:, 0] = mid0; w += Qz @ z; return w
    def xv(w):
        x = np.zeros((6, M), complex); v = np.zeros((6, M), complex)
        x[ra.p, 0] = 1; v[ra.q, 0] = 1; x[ra.fx] = w[:5]; v[ra.fv] = w[5:]
        return (x, np.zeros(6)), (v, np.zeros(6))
    for _ in range(S.D + 1):
        x, v = xv(wtm(z)); Fv = RG.Ftm(S, TAt, x, v)
        z = z - C0 @ (Pi @ Fv[0])
    w = wtm(z); x, v = xv(w)
    Fm = RG.Ftm(S, TAt, x, v); Jm = RG.Jtm(S, TAt, x, v, ra)
    PiFm = (Pi @ Fm[0], np.abs(Pi).sum(1) * Fm[1].max())
    lFm = (l @ Fm[0], np.abs(l).sum() * Fm[1].max())
    JmQz = (np.einsum('kl,lj m->kjm'.replace(' ', ''), Jm[0], Qz) if False else np.einsum('klm,lj->kjm', Jm[0], Qz), None)
    Jmu = np.einsum('klm,l->km', Jm[0], u)
    Jerr = Jm[1].max() * 10                                          # crude: radius of J entries times row length
    # T(A) restricted to free coordinates: Tf[k, s, t] (s in fx, t in fv)
    Tf = (TAt[0][:, ra.fx][:, :, ra.fv], TAt[1][:, ra.fx][:, :, ra.fv])
    Tb = S.absb(Tf)                                                  # k, 5, 5 bounds over the domain
    def Bq_bound(rowvec, ax, av):
        """sup |rowvec . Bq(dw, dw)| for |dx_s| <= ax_s, |dv_t| <= av_t, rowvec applied before taking moduli"""
        G = np.einsum('k,kstm->stm', rowvec, Tf[0]); Gb = S.absb((G, np.einsum('k,kst->st', np.abs(rowvec), Tf[1])))
        return float(np.einsum('st,s,t->', Gb, ax, av))
    C0Pi = C0 @ Pi
    # step-1 quantities (componentwise over the 9 rows of C0 Pi)
    eps_F = S.absb((C0Pi @ Fm[0], np.abs(C0Pi).sum(1) * Fm[1].max()))
    eps_u = S.absb((C0Pi @ Jmu, np.abs(C0Pi).sum(1) * Jerr))
    R0 = (np.eye(9)[..., None] * np.eye(M)[0] - np.einsum('kj,jlm->klm', C0Pi, JmQz[0]), np.abs(C0Pi).sum(1)[:, None] * Jerr * np.ones((9, 9)))
    k0 = S.absb(R0).sum(1)
    # nu terms (Cauchy-Schwarz, centre values of dF/dA_e A_e; prototype)
    a0 = At[0][:, 0]; x0, v0 = _split(ra, mid0)
    Fa = np.einsum('kast,s,t->ka', TT, x0, v0) * a0[None, :]
    nuz = n3 * np.sqrt((np.abs(C0Pi @ Fa) ** 2).sum(1)) * 1.1
    nul = n3 * np.sqrt((np.abs(l @ Fa) ** 2).sum()) * 1.1
    uabs = np.abs(u); ux, uv = uabs[:5], uabs[5:]
    Qrow = np.abs(Qz).sum(1)                                         # |(Q_z z)_m| <= Qrow_m rz
    # sup over the domain of |c1| = |l.J u| and |c2| = |l.Bq(u, u)|, inf |c2|
    c1 = S.absb((l @ Jmu, np.abs(l).sum() * Jerr))
    c2tm = np.einsum('k,kstm,s,t->m', l, Tf[0], u[:5], u[5:])
    c2_0 = abs(c2tm[0]); c2var = S.absb((c2tm - c2tm[0] * np.eye(M)[0], np.einsum('k,kst,s,t->', np.abs(l), Tf[1], ux, uv)))
    c2inf = c2_0 - c2var
    c0 = S.absb(lFm) + nul
    lJQz = S.absb((np.einsum('k,kjm->jm', l, JmQz[0]), np.abs(l).sum() * Jerr * np.ones(9))).sum()
    GB = np.array([S.absb((np.einsum('k,kstm->stm', C0Pi[k], Tf[0]), np.einsum('k,kst->st', np.abs(C0Pi[k]), Tf[1]))) for k in range(9)])
    QX = np.abs(Qz[:5]).sum(1); QV = np.abs(Qz[5:]).sum(1)
    B2 = np.array([Bq_bound(C0Pi[k], ux, uv) for k in range(9)])
    best = None
    for tau in (taus if taus is not None else np.geomspace(1e-3, 0.6, 60)):
        # step 1: solve eps + k(r) r < r for rz, with the t-dependence of the residual and of the z-Jacobian
        epsz = eps_F + eps_u * tau + nuz
        # residual t^2 term: Pi Bq(u t, u t)
        q2 = B2 * tau ** 2
        epsz = epsz + q2
        # Jacobian change from dw = u t + Q_z z:  |C0 Pi dJ Q_z| row sums <= sum over (s,t) |G| (|dx_s| |Qz rows_t| + ...)
        def kz(rz):
            dx = ux * tau + Qrow[:5] * rz; dv = uv * tau + Qrow[5:] * rz
            # column j of Q_z: dJ Q_z e_j = Bq(dw, Qz e_j) + Bq(Qz e_j, dw); summed over j
            return np.einsum('kst,s,t->k', GB, dx, QV) + np.einsum('kst,s,t->k', GB, QX, dv)
        rz = None
        for r in np.geomspace(1e-9, 0.3, 80):
            if np.all(epsz + (k0 + kz(r)) * r < r): rz = r; break
        if rz is None: continue
        # step 2: E bound
        dzx = Qrow[:5] * rz; dzv = Qrow[5:] * rz
        E = lJQz * rz + Bq_bound(l, ux * tau, dzv) + Bq_bound(l, dzx, uv * tau) + Bq_bound(l, dzx, dzv)
        if c2inf > 0 and c0 + c1 * tau + E < c2inf * tau ** 2:
            best = dict(ok=True, tau=float(tau), rz=float(rz), c0=float(c0), c1=float(c1), c2=float(c2inf), E=float(E),
                        sep=sep, xdisc=float((ux * tau + dzx).max()), x=x, v=v, u=u)
            break
    if best is None:
        return dict(ok=False, why='rouche', c0=float(c0), c1=float(c1), c2=float(c2inf), sep=sep)
    return best
