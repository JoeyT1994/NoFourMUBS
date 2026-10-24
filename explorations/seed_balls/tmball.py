"""Remainder bound for a seed ellipsoid via first-order Taylor models (see tm.py).

Seed ellipsoid {theta0 + V z : sum (S_i z_i)^2 <= r^2},  T = DQ(theta0) = U S V^T, so theta0 + V z has w = S z and
U w = T V z.  The ellipsoid is covered by boxes in z.  On each box (centre zc, half-widths h):
  * theta = thc + V z (exact linear TM), E(theta), G_h, G_v as TMs;
  * each side: predictor phi_c + Dc V z; a parametric Krawczyk test on the TM residual F(predictor) gives
    phi(z) in predictor + [-rho, rho]^6, the unique solution there (so the continued branch);
  * B, C, D = -C E^* G_h^-1 B and the 36 phases Q as TMs (arg of D on the branch nearest P);
  * residual Q - P - T V (zc + z) = a + b z + e, with ||.|| <= ||a|| + sum_j ||b_j|| h_j + ||Rho||.
n = max over boxes.  Matched labels: the Krawczyk contraction makes dF/dphi invertible along the tube, so
Im Psi != 0 and R > 0 throughout, and the labels stay those of the centre (a matched completion).
"""
import itertools
import numpy as np
import tm as M
from seedball import complete

POS = [(1, 1), (1, 2), (2, 1), (2, 2)]
PAIRS = [(0, 1), (0, 2), (1, 2)]


def E_tm(th):
    ent = []
    for i in range(3):
        for j in range(3):
            ent.append(M.exp_i(M.entry(th, POS.index((i, j)))) if (i, j) in POS else 1.0)
    return M.assemble(ent, (3, 3), th.h)


def side_tm(phi):
    e = [M.exp_i(M.entry(phi, k)) for k in range(6)]
    return M.assemble([1.0, 1.0, 1.0] + e, (3, 3), phi.h)


def F_tm(phi, G):
    S = side_tm(phi); Mm = S @ S.H()
    v = [M.entry(Mm, p) - M.entry(G, p) for p in PAIRS]
    return M.assemble([M.re(x) for x in v] + [M.im(x) for x in v], (6,), phi.h)


def J_tm(phi):
    b = [M.exp_i(M.entry(phi, k)) for k in range(6)]; b1, b2 = b[:3], b[3:]
    Jc = [[0.0] * 6 for _ in range(3)]
    for k in range(3):
        Jc[0][k] = b1[k].conj().scale(-1j)
        Jc[1][3 + k] = b2[k].conj().scale(-1j)
        p = b1[k].mul(b2[k].conj())
        Jc[2][k] = p.scale(1j); Jc[2][3 + k] = p.scale(-1j)
    rows = []
    for part in (M.re, M.im):
        for i in range(3):
            rows += [part(x) if isinstance(x, M.TM) else 0.0 for x in Jc[i]]
    return M.assemble(rows, (6, 6), phi.h)


def J_float(phi):
    b1, b2 = np.exp(1j * phi[:3]), np.exp(1j * phi[3:])
    Jc = np.zeros((3, 6), complex)
    Jc[0, :3] = -1j * np.conj(b1); Jc[1, 3:] = -1j * np.conj(b2)
    Jc[2, :3] = 1j * b1 * np.conj(b2); Jc[2, 3:] = -1j * b1 * np.conj(b2)
    return np.vstack([Jc.real, Jc.imag])


def dG_float(th, which):
    a = np.exp(1j * np.asarray(th)); E = np.array([[1, 1, 1], [1, a[0], a[1]], [1, a[2], a[3]]], complex)
    out = []
    for m, (i, j) in enumerate(POS):
        dE = np.zeros((3, 3), complex); dE[i, j] = 1j * E[i, j]
        dG = -(dE @ E.conj().T + E @ dE.conj().T) if which == 'h' else -(dE.T @ E.conj() + E.T @ dE.conj())
        v = np.array([dG[p] for p in PAIRS]); out.append(np.concatenate([v.real, v.imag]))
    return np.array(out).T                                         # 6 x 4 (d G entries); dF/dtheta = -this


def side_tube(phic, thc, Vm, G, h, tries=8):
    Dc = np.linalg.solve(J_float(phic), dG_float(thc, G[1]))        # dphi/dtheta = J^-1 dG/dtheta
    aff = M.linear(phic, Dc @ Vm, h)
    F = F_tm(aff, G[0])
    Y = np.linalg.inv(J_float(phic))
    YF = F.rmatmul_point(Y) if False else None
    # |Y F| bound, entrywise: Y acts on the (real) 6-vector F
    Fm = M.TM(F.C[:, None], F.G[:, None, :], F.Rho[:, None], h)
    YFm = Fm.rmatmul_point(Y)
    b = YFm.bound()[:, 0]
    rho = b.max() * 1.5 + 1e-15
    for _ in range(tries):
        tot = M.TM(aff.C, aff.G, aff.Rho + rho, h)
        A = (M.const(np.eye(6), h) - J_tm(tot).rmatmul_point(Y)).bound()
        q = A.sum(1)
        need = b + q * rho
        if np.all(need < rho): return M.TM(aff.C, aff.G, aff.Rho + need, h)
        if np.any(q >= 1): return None
        rho = (b / (1 - q)).max() * 1.2 + 1e-15
        if rho > 0.3: return None
    return None


def sides_at(sb, theta, step=0.004):
    th0 = sb.theta0; theta = np.asarray(theta, float); m = max(1, int(np.ceil(np.linalg.norm(theta - th0) / step)))
    ph, pv = sb.phih, sb.phiv
    for k in range(1, m + 1):
        H, ph2, pv2 = complete(th0 + (theta - th0) * k / m, ph, pv)
        if H is None: return None
        ph, pv = ph2, pv2
    return ph, pv


def box_residual(sb, zc, hw, Vm, TV):
    thc = sb.theta0 + Vm @ zc
    sides = sides_at(sb, thc)
    if sides is None: return None, 'continuation'
    th = M.TM(thc.astype(complex), Vm.astype(complex), np.zeros(4), hw)
    E = E_tm(th)
    I3 = M.const(6 * np.eye(3), hw)
    Gh = I3 - E @ E.H(); Gv = I3 - E.T() @ E.conj()
    ph = side_tube(sides[0], thc, Vm, (Gh, 'h'), hw)
    pv = side_tube(sides[1], thc, Vm, (Gv, 'v'), hw)
    if ph is None or pv is None: return None, 'tube'
    B = side_tm(ph); C = side_tm(pv).T()
    Gi = M.inv3(Gh)
    if Gi is None: return None, 'inverse'
    D = -(C @ E.H() @ Gi @ B)
    argD = M.arg_near(D, sb.P[3:, 3:])
    if argD is None: return None, 'arg'
    # Q as a 36-vector TM
    ent = []
    for j in range(6):
        for k in range(6):
            if j < 3 and k < 3: ent.append(M.entry(th, POS.index((j, k))) if (j, k) in POS else 0.0)
            elif j < 3: ent.append(M.entry(ph, 3 * (j - 1) + (k - 3)) if j > 0 else 0.0)
            elif k < 3: ent.append(M.entry(pv, 3 * (k - 1) + (j - 3)) if k > 0 else 0.0)
            else: ent.append(M.entry(argD, (j - 3, k - 3)))
    Q = M.assemble(ent, (36,), hw)
    a = Q.C.real - sb.P.reshape(36) - TV @ zc
    bmat = Q.G.real - TV
    nb = np.linalg.norm(a) + sum(np.linalg.norm(bmat[:, j]) * hw[j] for j in range(4)) + np.linalg.norm(Q.Rho)
    return nb * (1 + 1e-9), None


def tm_n(sb, r, k_per_axis=None, h=None, stats=None):
    """Bound on ||Q(theta) - P - U w|| over the seed ellipsoid of matrix radius r.  Boxes: k_per_axis pieces along
    each z axis, or pieces of half-width <= h.  Returns n or None (with stats['fail'])."""
    U, S, Vt = np.linalg.svd(sb.T, full_matrices=False)
    Vm = Vt.T; TV = sb.T @ Vm
    ax = r / S
    if k_per_axis is not None: k = np.full(4, k_per_axis)
    else: k = np.maximum(1, np.ceil(ax / h).astype(int))
    hw = ax / k
    worst = 0.0; nb = 0
    for idx in itertools.product(*[range(kk) for kk in k]):
        zc = np.array([-ax[i] + (2 * idx[i] + 1) * hw[i] for i in range(4)])
        zn = np.sign(zc) * np.maximum(np.abs(zc) - hw, 0)
        if np.sum((S * zn) ** 2) > r * r: continue
        val, why = box_residual(sb, zc, hw, Vm, TV)
        if val is None:
            if stats is not None: stats['fail'] = why
            return None
        worst = max(worst, val); nb += 1
    if stats is not None: stats['boxes'] = nb
    return worst
