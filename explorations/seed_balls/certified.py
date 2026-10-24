"""Certified enclosure of a seed ellipsoid's matched completions (Arb ball arithmetic, python-flint).

Seed ellipsoid: Theta = {theta0 + M w : ||w|| <= r}, M = V S^-1 from T = DQ(theta0) = U S V^T.

For a box W of w values (a sub-box of [-r, r]^4), let Thb = theta0 + M W (interval box).
 1. Sides (Krawczyk).  The horizontal side angles phi_h solve F_h(phi, theta) = 0, the three upper off-diagonal
    entries of B B^* - G_h(theta) (6 real equations), and likewise phi_v for V V^* - G_v(theta).  With
    phi~ the numerical side at theta0 and Y ~ (dF/dphi)^-1 there,
        K = phi~ - Y F(phi~, Thb) + (I - Y dF/dphi(Phi, Thb)) (Phi - phi~).
    If K lies in the interior of Phi, then for every theta in Thb there is exactly one solution in Phi; it depends
    continuously on theta and equals the continued side at theta0.  dF/dphi is then invertible on Phi x Thb, and its
    determinant is Im Psi / 4, so R > 0 there and the label does not change: the completion stays matched.
 2. Derivatives.  Dphi = -(dF/dphi)^-1 dF/dtheta, enclosed by interval Gaussian elimination over Phi x Thb.
 3. DQ.  Q is the 36 entry phases of H = [[E, B], [C, D]], D = -C E^* G_h^-1 B: identity on the seed entries, Dphi on
    the sides, and d arg D = Im(dD / D) on the forced block (D enclosed away from 0).
 4. Remainder.  For theta in the ellipsoid the segment from theta0 lies in it, so
        Q(theta) - Q(theta0) - T (theta - theta0) = (int DQ - T) M w,
    with ||.|| <= ||  |DQ(Thb) - T| M  ||_2 * ||w||  taking the max over the boxes W covering the ball.
Untrusted parts in this prototype: the final 2-norm of the nonnegative 36 x 4 bound matrix is a float (x 1 + 1e-9),
and the covering of the ball by boxes W is by construction (full box or its 2^4 halves).
"""
import itertools
import numpy as np
from flint import arb, acb, arb_mat, acb_mat, ctx

ctx.prec = 80
I1 = acb(0, 1)
LAST_FAIL = [None]
POS = [(1, 1), (1, 2), (2, 1), (2, 2)]           # seed entries a, b, c, d of E


def seed_E_float(th):
    a, b, c, d = np.exp(1j * np.asarray(th, float))
    return np.array([[1, 1, 1], [1, a, b], [1, c, d]], complex)


def E_of(th):
    E = [[acb(1)] * 3 for _ in range(3)]
    for (i, j), t in zip(POS, th): E[i][j] = (I1 * t).exp()
    return acb_mat(E)


def dE_of(E, m):
    i, j = POS[m]
    D = [[acb(0)] * 3 for _ in range(3)]; D[i][j] = I1 * E[i, j]
    return acb_mat(D)


def conjT(A):
    return acb_mat([[A[j, i].conjugate() for j in range(A.nrows())] for i in range(A.ncols())])


def conjM(A):
    return acb_mat([[A[i, j].conjugate() for j in range(A.ncols())] for i in range(A.nrows())])


def side_mat(phi):
    e = [(I1 * p).exp() for p in phi]
    return acb_mat([[acb(1)] * 3, e[:3], e[3:]])


PAIRS = [(0, 1), (0, 2), (1, 2)]


def F_of(phi, G):
    S = side_mat(phi); M = S * conjT(S)
    v = [M[i, j] - G[i, j] for i, j in PAIRS]
    return [z.real for z in v] + [z.imag for z in v]


def Jphi_of(phi):
    """d F / d phi (6 x 6, arb)."""
    b1 = [(I1 * p).exp() for p in phi[:3]]; b2 = [(I1 * p).exp() for p in phi[3:]]
    Jc = [[acb(0)] * 6 for _ in range(3)]
    for k in range(3):
        Jc[0][k] = -I1 * b1[k].conjugate()
        Jc[1][3 + k] = -I1 * b2[k].conjugate()
        Jc[2][k] = I1 * b1[k] * b2[k].conjugate(); Jc[2][3 + k] = -I1 * b1[k] * b2[k].conjugate()
    return arb_mat([[z.real for z in row] for row in Jc] + [[z.imag for z in row] for row in Jc])


def Jtheta_of(dGs):
    """d F / d theta = - d G / d theta (6 x 4, arb)."""
    cols = []
    for dG in dGs:
        v = [-dG[i, j] for i, j in PAIRS]
        cols.append([z.real for z in v] + [z.imag for z in v])
    return arb_mat([[cols[m][e] for m in range(4)] for e in range(6)])


def krawczyk(phit, Y, G, rad0, tries=8):
    """Phi = phit + [-rad, rad]^6 with K(Phi) inside int Phi.  Returns the arb list Phi, or None."""
    pt = [arb(float(p)) for p in phit]
    Fm = F_of(pt, G)
    Ya = arb_mat([[arb(float(Y[i, j])) for j in range(6)] for i in range(6)])
    YF = Ya * arb_mat([[f] for f in Fm])
    rad = np.full(6, rad0)
    for _ in range(tries):
        Phi = [arb(float(p), float(r)) for p, r in zip(phit, rad)]
        Jp = Jphi_of(Phi)
        A = arb_mat([[arb(1) if i == j else arb(0) for j in range(6)] for i in range(6)]) - Ya * Jp
        dv = arb_mat([[Phi[i] - pt[i]] for i in range(6)])
        K = [pt[i] - YF[i, 0] + (A * dv)[i, 0] for i in range(6)]
        if all((abs(K[i] - pt[i]).upper() < rad[i]) for i in range(6)):
            return Phi, K
        # epsilon inflation
        rad = np.array([float(abs(K[i] - pt[i]).upper()) * 1.3 + 1e-14 for i in range(6)])
        if not np.all(np.isfinite(rad)) or rad.max() > 1.0: return None
    return None


def Y_of(phit):
    return np.linalg.inv(np.array([[float(x.mid()) for x in row] for row in
                                   [[Jphi_of([arb(float(p)) for p in phit])[i, j] for j in range(6)] for i in range(6)]]))


def inv_centred(G, Gc_float):
    """Enclosure of G^-1 for an interval matrix G near the point matrix Gc:  with A = Gc^-1 and dG = G - Gc,
    G^-1 = A - A dG A + Rest,  ||Rest||_inf <= ||A||^3 ||dG||^2 / (1 - ||A dG||)  (Neumann series)."""
    A = np.linalg.inv(Gc_float)
    Aa = acb_mat([[acb(complex(A[i, j]).real, complex(A[i, j]).imag) for j in range(3)] for i in range(3)])
    Gca = acb_mat([[acb(Gc_float[i, j].real, Gc_float[i, j].imag) for j in range(3)] for i in range(3)])
    dG = G - Gca
    nA = np.abs(A).sum(1).max() * (1 + 1e-12)
    ndG = max(sum(float(abs(dG[i, j]).upper()) for j in range(3)) for i in range(3))
    q = nA * ndG
    if q >= 1: return None
    tail = nA ** 3 * ndG ** 2 / (1 - q)
    Gi = Aa - Aa * dG * Aa
    return acb_mat([[Gi[i, j] + acb(arb(0, tail), arb(0, tail)) for j in range(3)] for i in range(3)])


def G_parts(th):
    E = E_of(th); Eh = conjT(E)
    I3 = acb_mat([[acb(6) if i == j else acb(0) for j in range(3)] for i in range(3)])
    Gh = I3 - E * Eh; Gv = I3 - E.transpose() * conjM(E)
    dEs = [dE_of(E, m) for m in range(4)]
    dGh = [-(dE * Eh + E * conjT(dE)) for dE in dEs]
    dGv = [-(dE.transpose() * conjM(E) + E.transpose() * conjM(dE)) for dE in dEs]
    return E, Eh, Gh, Gv, dEs, dGh, dGv


def J_float(phi):
    return np.array([[float(Jphi_of([arb(float(p)) for p in phi])[i, j].mid()) for j in range(6)] for i in range(6)])


def Dphi_float(phi, th, which):
    """Numerical d phi / d theta at a point (implicit function)."""
    _, _, _, _, _, dGh, dGv = G_parts([arb(float(t)) for t in th])
    Jt = Jtheta_of(dGh if which == 'h' else dGv)
    Jt = np.array([[float(Jt[i, j].mid()) for j in range(4)] for i in range(6)])
    return -np.linalg.solve(J_float(phi), Jt)


def tube(phic, Dc, thc, thb, G_c, G_b, dG_b, tries=6):
    """Parametric Krawczyk: for every theta in the box thb, a unique side phi(theta) in
    phic + Dc (theta - thc) + Psi, Psi = [-rho, rho]^6.  Returns (Phi_box, rho) or None."""
    dth = [thb[k] - arb(float(thc[k])) for k in range(4)]
    Dca = arb_mat([[arb(float(Dc[i, j])) for j in range(4)] for i in range(6)])
    aff = [arb(float(phic[i])) + sum((Dca[i, j] * dth[j] for j in range(4)), arb(0)) for i in range(6)]
    gc = F_of([arb(float(p)) for p in phic], G_c)                       # F at the predictor, theta = thc
    gp = Jphi_of(aff) * Dca + Jtheta_of(dG_b)                           # d/dtheta F(aff(theta), theta) over the box
    gbox = [gc[i] + sum((gp[i, j] * dth[j] for j in range(4)), arb(0)) for i in range(6)]
    Y = np.linalg.inv(J_float(phic)); Ya = arb_mat([[arb(float(Y[i, j])) for j in range(6)] for i in range(6)])
    Yg = Ya * arb_mat([[g] for g in gbox])
    I6 = arb_mat([[arb(1) if i == j else arb(0) for j in range(6)] for i in range(6)])
    rho = max(float(abs(Yg[i, 0]).upper()) for i in range(6)) * 1.5 + 1e-13
    for _ in range(tries):
        Psi = [arb(0, rho)] * 6
        Ptot = [aff[i] + Psi[i] for i in range(6)]
        A = I6 - Ya * Jphi_of(Ptot)
        K = [-Yg[i, 0] + sum((A[i, j] * Psi[j] for j in range(6)), arb(0)) for i in range(6)]
        kmax = max(float(abs(k).upper()) for k in K)
        if kmax < rho:
            return [aff[i] + K[i] for i in range(6)], kmax
        rho = kmax * 1.3
        if not np.isfinite(rho) or rho > 0.5: return None
    return None


def enclose_box(sb, thc, phc, pvc, thb):
    """DQ enclosure (36 x 4 arb_mat) over the theta box thb, using the numerical sides (phc, pvc) at its centre thc.
    None if any certification fails."""
    E, Eh, Gh, Gv, dEs, dGh, dGv = G_parts(thb)
    _, _, Ghc, Gvc, _, _, _ = G_parts([arb(float(t)) for t in thc])
    out = {}
    for name, phic, Gc, G, dG in (('h', phc, Ghc, Gh, dGh), ('v', pvc, Gvc, Gv, dGv)):
        Dc = Dphi_float(phic, thc, name)
        res = tube(phic, Dc, thc, thb, Gc, G, dG)
        if res is None: LAST_FAIL[0] = 'tube ' + name; return None
        Phi, _ = res
        try:
            Dphi = Jphi_of(Phi).solve(-Jtheta_of(dG))
        except Exception as ex:
            LAST_FAIL[0] = 'solve %s %r' % (name, ex); return None
        out[name] = (Phi, Dphi)
    (Phih, Dh), (Phiv, Dv) = out['h'], out['v']
    B = side_mat(Phih); V = side_mat(Phiv); C = V.transpose()
    Ec = seed_E_float(thc); Ghc_f = 6 * np.eye(3) - Ec @ Ec.conj().T
    Ginv = inv_centred(Gh, Ghc_f)
    if Ginv is None: LAST_FAIL[0] = 'Ginv'; return None
    D = -(C * Eh * Ginv * B)
    for j in range(3):
        for k in range(3):
            if not abs(D[j, k]) > 0: LAST_FAIL[0] = 'D zero'; return None
    DQ = [[arb(0)] * 4 for _ in range(36)]
    for m in range(4):
        i, j = POS[m]; DQ[6 * i + j][m] = arb(1)
        dB = acb_mat([[acb(0)] * 3] + [[I1 * B[r, k] * Dh[3 * (r - 1) + k, m] for k in range(3)] for r in (1, 2)])
        dV = acb_mat([[acb(0)] * 3] + [[I1 * V[r, k] * Dv[3 * (r - 1) + k, m] for k in range(3)] for r in (1, 2)])
        dC = dV.transpose()
        for r in (1, 2):
            for k in range(3):
                DQ[6 * r + 3 + k][m] = Dh[3 * (r - 1) + k, m]
                DQ[6 * (3 + k) + r][m] = Dv[3 * (r - 1) + k, m]
        dEh = conjT(dEs[m])
        dD = -(dC * Eh * Ginv * B + C * dEh * Ginv * B - C * Eh * Ginv * dGh[m] * Ginv * B + C * Eh * Ginv * dB)
        for j in range(3):
            for k in range(3):
                DQ[6 * (3 + j) + 3 + k][m] = (dD[j, k] / D[j, k]).imag
    return arb_mat(DQ)


def sides_at(sb, theta, step=0.004):
    th0 = sb.theta0; theta = np.asarray(theta, float); m = max(1, int(np.ceil(np.linalg.norm(theta - th0) / step)))
    ph, pv = sb.phih, sb.phiv
    for k in range(1, m + 1):
        from seedball import complete
        H, ph2, pv2 = complete(th0 + (theta - th0) * k / m, ph, pv)
        if H is None: return None
        ph, pv = ph2, pv2
    return ph, pv


def certified_n(sb, r, h=0.01, stats=None):
    """Certified bound on ||Q(theta) - P - U w|| over the seed ellipsoid {theta0 + V S^-1 w : ||w|| <= r}.
    The ellipsoid is covered by boxes in z = V^T (theta - theta0) of half-width <= h; on each box a parametric
    Krawczyk tube encloses both sides and DQ.  Returns (n, U) or (None, U)."""
    U, S, Vt = np.linalg.svd(sb.T, full_matrices=False)
    V = Vt.T; M = V / S[None, :]
    ax = r / S                                               # z semi-axes
    k = np.maximum(1, np.ceil(ax / h).astype(int)); hw = ax / k
    Amax = np.zeros((36, 4)); nbox = 0
    for idx in itertools.product(*[range(kk) for kk in k]):
        zc = np.array([-ax[i] + (2 * idx[i] + 1) * hw[i] for i in range(4)])
        # skip boxes outside the ellipsoid sum (S z)^2 <= r^2 (closest point of the box)
        zn = np.sign(zc) * np.maximum(np.abs(zc) - hw, 0)
        if np.sum((S * zn) ** 2) > r * r: continue
        thc = sb.theta0 + V @ zc
        sides = sides_at(sb, thc)
        if sides is None: return None, U
        zb = [arb(float(zc[i]), float(hw[i])) for i in range(4)]
        thb = [arb(float(sb.theta0[q])) + sum((arb(float(V[q, j])) * zb[j] for j in range(4)), arb(0)) for q in range(4)]
        DQ = enclose_box(sb, thc, sides[0], sides[1], thb)
        if DQ is None: return None, U
        Ab = np.array([[float(abs(DQ[e, m] - arb(float(sb.T[e, m]))).upper()) for m in range(4)] for e in range(36)])
        Amax = np.maximum(Amax, Ab); nbox += 1
    if stats is not None: stats['boxes'] = nbox
    n = np.linalg.norm(Amax @ np.abs(M), 2) * (1 + 1e-9) * r
    return n + centre_error(sb), U


def centre_error(sb):
    """Bound on ||Q(theta0) - P|| from point Krawczyk boxes for the sides (P = float phases of the numerical centre)."""
    th = [arb(float(t)) for t in sb.theta0]
    E = E_of(th); Eh = conjT(E)
    Gh = acb_mat([[acb(6) if i == j else acb(0) for j in range(3)] for i in range(3)]) - E * Eh
    Gv = acb_mat([[acb(6) if i == j else acb(0) for j in range(3)] for i in range(3)]) - E.transpose() * conjM(E)
    sides = []
    for phit, G in ((sb.phih, Gh), (sb.phiv, Gv)):
        res = krawczyk(phit, Y_of(phit), G, 1e-12)
        if res is None: return float('inf')
        sides.append(res[0])
    B = side_mat(sides[0]); C = side_mat(sides[1]).transpose()
    D = -(C * Eh * Gh.inv() * B)
    H = [[None] * 6 for _ in range(6)]
    err = 0.0
    P = sb.P
    for j in range(6):
        for k in range(6):
            if j < 3 and k < 3: z = E[j, k]
            elif j < 3: z = B[j, k - 3]
            elif k < 3: z = C[j - 3, k]
            else: z = D[j - 3, k - 3]
            dz = z * (I1 * arb(-float(P[j, k]))).exp()            # e^{i(Q - P)}
            err += float(abs(dz.imag).upper() + abs(dz.real - 1).upper()) ** 2
    return 2 * np.sqrt(err) + 1e-15
