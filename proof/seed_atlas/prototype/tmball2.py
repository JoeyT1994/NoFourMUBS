"""Seed-ellipsoid remainder via second-order Taylor models (tm2.py).  Same structure as tmball.py; the side
predictor is quadratic and the residual bound uses the quadratic form exactly:
   sup ||a + b z + z^T Hq z + e|| over the box  <=  ||a|| + sum_j ||b_j|| h_j + sum_jk ||Hq_jk|| h_j h_k + ||Rho||,
and on a box centred at the origin the quadratic term is bounded over the ellipsoid itself (w = S z, ||w|| <= r)."""
import itertools
import numpy as np
import tm2 as M
from seedball import complete
from tmball import J_float, dG_float, sides_at, POS, PAIRS


def E_tm(th):
    ent = []
    for i in range(3):
        for j in range(3):
            ent.append(M.exp_i(M.entry(th, POS.index((i, j)))) if (i, j) in POS else 1.0)
    return M.assemble(ent, (3, 3), th.h)


def side_tm(phi):
    return M.assemble([1.0, 1.0, 1.0] + [M.exp_i(M.entry(phi, k)) for k in range(6)], (3, 3), phi.h)


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


def dphi(phi, th, which):
    return np.linalg.solve(J_float(phi), dG_float(th, which))


def side_tube(sb, phic, thc, Vm, G, which, h, tries=8, eps=1e-5):
    Dc = dphi(phic, thc, which) @ Vm                              # d phi / d z
    # second derivative d^2 phi / dz^2 by central differences of the first derivative (any predictor is valid)
    H2 = np.zeros((6, 4, 4))
    for j in range(4):
        out = []
        for sgn in (1, -1):
            t = thc + sgn * eps * Vm[:, j]
            s = sides_at(sb, t)
            p = s[0] if which == 'h' else s[1]
            out.append(dphi(p, t, which) @ Vm)
        H2[:, j, :] = (out[0] - out[1]) / (2 * eps)
    H2 = 0.5 * (H2 + np.swapaxes(H2, 1, 2))
    pred = M.TM(phic.astype(complex), Dc.astype(complex), (0.5 * H2).astype(complex), np.zeros(6), h)
    F = F_tm(pred, G)
    Y = np.linalg.inv(J_float(phic))
    Fm = M.TM(F.C[:, None], F.G[:, None, :], F.Hq[:, None, :, :], F.Rho[:, None], h)
    b = Fm.lmul(Y).bound()[:, 0]
    rho = b.max() * 1.5 + 1e-15
    for _ in range(tries):
        tot = M.TM(pred.C, pred.G, pred.Hq, pred.Rho + rho, h)
        A = (M.const(np.eye(6), h) - J_tm(tot).lmul(Y)).bound()
        q = A.sum(1)
        need = b + q * rho
        if np.all(need < rho): return M.TM(pred.C, pred.G, pred.Hq, pred.Rho + need, h)
        if np.any(q >= 1): return None
        rho = (b / (1 - q)).max() * 1.2 + 1e-15
        if rho > 0.3: return None
    return None


def D_numeric(sb, th):
    s = sides_at(sb, th)
    H, _, _ = complete(th, s[0], s[1])
    return H[3:, 3:]


def forced_block(sb, thc, Vm, hw, E, B, C, eps=1e-4):
    """D = -C E^* (B^*)^-1 as a TM: a second-order predictor Xp from numerical derivatives, corrected by
    D - Xp = -(C E^* + Xp B^*) (B^*)^-1, whose size is bounded entrywise (residual bound times |(B^*)^-1| bound)."""
    D0 = D_numeric(sb, thc)
    g = np.zeros((3, 3, 4), complex); Hq = np.zeros((3, 3, 4, 4), complex)
    Dp = [D_numeric(sb, thc + eps * Vm[:, j]) for j in range(4)]
    Dm = [D_numeric(sb, thc - eps * Vm[:, j]) for j in range(4)]
    for j in range(4):
        g[..., j] = (Dp[j] - Dm[j]) / (2 * eps)
        Hq[..., j, j] = 0.5 * (Dp[j] - 2 * D0 + Dm[j]) / eps ** 2
    for j in range(4):
        for l in range(j + 1, 4):
            dd = (D_numeric(sb, thc + eps * (Vm[:, j] + Vm[:, l])) - D_numeric(sb, thc + eps * (Vm[:, j] - Vm[:, l]))
                  - D_numeric(sb, thc - eps * (Vm[:, j] - Vm[:, l])) + D_numeric(sb, thc - eps * (Vm[:, j] + Vm[:, l]))) / (4 * eps ** 2)
            Hq[..., j, l] = Hq[..., l, j] = 0.5 * dd
    Xp = M.TM(D0, g, Hq, np.zeros((3, 3)), hw)
    Rs = C @ E.H() + Xp @ B.H()                                      # = 0 for the true D
    Bh = B.H()
    A0 = np.linalg.inv(Bh.C); aA = np.abs(A0)
    dB = Bh.var()
    q = (aA @ dB).sum(1).max()
    if q >= 1: return None
    Minv = aA + q / (1 - q) * np.abs(A0).sum(1).max() * np.ones((3, 3))   # entrywise bound of |(B^*)^-1| on the box
    extra = Rs.bound() @ Minv
    return M.TM(Xp.C, Xp.G, Xp.Hq, (Xp.Rho + extra) * (1 + 1e-9) + 1e-15, hw)


def box_Q(sb, zc, hw, Vm):
    thc = sb.theta0 + Vm @ zc
    sides = sides_at(sb, thc)
    if sides is None: return None, 'continuation'
    th = M.TM(thc.astype(complex), Vm.astype(complex), np.zeros((4, 4, 4)), np.zeros(4), hw)
    E = E_tm(th)
    I3 = M.const(6 * np.eye(3), hw)
    Gh = I3 - E @ E.H(); Gv = I3 - E.T() @ E.conj()
    ph = side_tube(sb, sides[0], thc, Vm, Gh, 'h', hw)
    pv = side_tube(sb, sides[1], thc, Vm, Gv, 'v', hw)
    if ph is None or pv is None: return None, 'tube'
    B = side_tm(ph); C = side_tm(pv).T()
    D = forced_block(sb, thc, Vm, hw, E, B, C)
    if D is None: return None, 'forced block'
    argD = M.arg_near(D, sb.P[3:, 3:])
    if argD is None: return None, 'arg'
    ent = []
    for j in range(6):
        for k in range(6):
            if j < 3 and k < 3: ent.append(M.entry(th, POS.index((j, k))) if (j, k) in POS else 0.0)
            elif j < 3: ent.append(M.entry(ph, 3 * (j - 1) + (k - 3)) if j > 0 else 0.0)
            elif k < 3: ent.append(M.entry(pv, 3 * (k - 1) + (j - 3)) if k > 0 else 0.0)
            else: ent.append(M.entry(argD, (j - 3, k - 3)))
    return M.assemble(ent, (36,), hw), None


def tm2_n(sb, r, k_per_axis=1, stats=None):
    U, S, Vt = np.linalg.svd(sb.T, full_matrices=False)
    Vm = Vt.T; TV = sb.T @ Vm
    ax = r / S; k = np.full(4, k_per_axis); hw = ax / k
    worst = 0.0; nb = 0; parts = None
    for idx in itertools.product(*[range(kk) for kk in k]):
        zc = np.array([-ax[i] + (2 * idx[i] + 1) * hw[i] for i in range(4)])
        zn = np.sign(zc) * np.maximum(np.abs(zc) - hw, 0)
        if np.sum((S * zn) ** 2) > r * r: continue
        Q, why = box_Q(sb, zc, hw, Vm)
        if Q is None:
            if stats is not None: stats['fail'] = why
            return None
        a = Q.C.real - sb.P.reshape(36) - TV @ zc
        bm = Q.G.real - TV
        Hq = Q.Hq.real
        if k_per_axis == 1:
            # quadratic form over the ellipsoid itself: z = w / S, ||w|| <= r
            Hw = Hq / np.outer(S, S)[None]
            quad = r * r * np.sqrt(sum(np.max(np.abs(np.linalg.eigvalsh(Hw[e]))) ** 2 for e in range(36)))
            lin = r * np.linalg.norm(bm / S[None, :], 2)
        else:
            quad = sum(np.linalg.norm(Hq[:, j, l]) * hw[j] * hw[l] for j in range(4) for l in range(4))
            # sup of the convex function ||a + b z|| over the box is attained at a vertex
            lin = max(np.linalg.norm(a + bm @ (np.array(sg) * hw)) for sg in itertools.product((-1, 1), repeat=4))
            a = np.zeros(1)
        val = (np.linalg.norm(a) + lin + quad + np.linalg.norm(Q.Rho)) * (1 + 1e-9)
        if val > worst: worst = val; parts = (np.linalg.norm(a), lin, quad, np.linalg.norm(Q.Rho))
        nb += 1
    if stats is not None: stats['boxes'] = nb; stats['parts'] = parts
    return worst
