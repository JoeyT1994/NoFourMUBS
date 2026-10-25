"""Prototype: phase balls in the four seed phases instead of the 25 entry phases (untrusted floats).

A seed ball is B(theta0, rho) in T^4.  For theta in it, H(theta) = [[E, B], [C, D]] is the matched completion:
  * E: the dephased corner [[1,1,1],[1,a,b],[1,c,d]], theta = arg(a, b, c, d);
  * B: the horizontal side, first row 1, solving B B^* = 6I - E E^*      (6 angles, 6 real equations);
  * V = C^T: the vertical side, first row 1, solving V V^* = 6I - E^T conj(E);
  * D = -C E^* G_h^{-1} B (forced block).
Sides are continued from theta0 by Newton's method on the Gram equations; their Jacobian determinant is Im Psi / 4,
nonzero on R > 0, so the branch (hence the matching) is fixed by continuity.

The ball is turned into the enclosure Stage C needs: phases Q(theta) = P + T eta + nu with eta = theta - theta0,
T = DQ(theta0), ||eta|| <= rho and ||nu|| <= n.  Here n is ESTIMATED by sampling (x1.5); the rigorous version would
enclose DQ over the ball by interval Newton (Krawczyk) on the same side equations and use the mean value form.
"""
import itertools
import numpy as np

TRI = list(itertools.combinations(range(6), 3))


def seed_E(theta):
    a, b, c, d = np.exp(1j * np.asarray(theta, float))
    return np.array([[1, 1, 1], [1, a, b], [1, c, d]], complex)


def R_of(theta):
    E = seed_E(theta); G = 6 * np.eye(3) - E @ E.conj().T
    s, t, r = G[1, 0], G[2, 0], G[2, 1]
    X, Y, Z = abs(s) ** 2, abs(t) ** 2, abs(r) ** 2
    p = X + Y + Z; J = 2 * (s * r * np.conj(t)).real; W = X * Y + X * Z + Y * Z - X * Y * Z
    g = 27 - 3 * p + J; eta = 9 - p + J; chi = W - (p - 9) * (p - 18) + (p - 15) * J
    return 4 * g * g * eta - chi * chi


def side(phi):
    return np.vstack([np.ones(3), np.exp(1j * phi[:3]), np.exp(1j * phi[3:])])


def gram_res(phi, G):
    S = side(phi); M = S @ S.conj().T
    v = np.array([M[0, 1] - G[0, 1], M[0, 2] - G[0, 2], M[1, 2] - G[1, 2]])
    return np.concatenate([v.real, v.imag])


def gram_jac(phi):
    """d/dphi of gram_res (6 x 6), analytic."""
    b1, b2 = np.exp(1j * phi[:3]), np.exp(1j * phi[3:])
    Jc = np.zeros((3, 6), complex)
    Jc[0, :3] = -1j * np.conj(b1)                    # M01 = sum conj(b1)
    Jc[1, 3:] = -1j * np.conj(b2)                    # M02 = sum conj(b2)
    Jc[2, :3] = 1j * b1 * np.conj(b2); Jc[2, 3:] = -1j * b1 * np.conj(b2)   # M12 = sum b1 conj(b2)
    return np.vstack([Jc.real, Jc.imag])


def newton(phi, G, tol=1e-14, it=50):
    for _ in range(it):
        f = gram_res(phi, G)
        if np.abs(f).max() < tol: return phi, True
        phi = phi - np.linalg.solve(gram_jac(phi), f)
    return phi, np.abs(gram_res(phi, G)).max() < 1e-11


def complete(theta, phih, phiv):
    """Matched completion at theta, continuing the sides from (phih, phiv).  Returns (H, phih, phiv)."""
    E = seed_E(theta)
    Gh = 6 * np.eye(3) - E @ E.conj().T
    Gv = 6 * np.eye(3) - E.T @ E.conj()
    phih, okh = newton(phih.copy(), Gh); phiv, okv = newton(phiv.copy(), Gv)
    if not (okh and okv): return None, phih, phiv
    B = side(phih); C = side(phiv).T
    D = -C @ E.conj().T @ np.linalg.solve(Gh, B)
    return np.block([[E, B], [C, D]]), phih, phiv


def dist_to_edge(th, eps=1e-6):
    """First-order distance R / |grad R| from the seed to the edge of Omega (0 if R <= 0)."""
    R = R_of(th)
    if R <= 0: return 0.0
    g = np.array([(R_of(th + eps * e) - R_of(th - eps * e)) / (2 * eps) for e in np.eye(4)])
    return R / np.linalg.norm(g)


def best_corner_split(H, key='dist'):
    """Permute and dephase H so its best corner is the top-left block (key 'dist': furthest from the edge of Omega,
    'R': largest R).  Returns (theta0, phih, phiv, R, M)."""
    best = None
    for I in TRI:
        Ic = [k for k in range(6) if k not in I]
        for J in TRI:
            Jc = [k for k in range(6) if k not in J]
            for HH, (rI, rJ) in ((H, (list(I) + Ic, list(J) + Jc)),):
                M = HH[np.ix_(rI, rJ)]
                M = M / M[:, :1]; M = M / M[:1, :]
                th = np.angle([M[1, 1], M[1, 2], M[2, 1], M[2, 2]])
                R = R_of(th); sc = dist_to_edge(th) if key == 'dist' else R
                if best is None or sc > best[5]:
                    best = (th, np.angle(np.concatenate([M[1, 3:], M[2, 3:]])), np.angle(np.concatenate([M[3:, 1], M[3:, 2]])), R, M, sc)
    return best[:5]


class SeedBall:
    def __init__(self, theta0, phih0, phiv0):
        H0, self.phih, self.phiv = complete(theta0, phih0, phiv0)
        assert H0 is not None
        self.theta0 = np.asarray(theta0, float)
        self.flat0 = np.abs(np.abs(H0) - 1).max()
        self.P = np.angle(H0)                         # float phases (radians); exact as stored floats
        self.T = self._dQ()                           # 36 x 4

    def Q(self, theta, step=0.004):
        """Continue the sides from theta0 to theta along the segment, in steps (fixes the branch by continuity)."""
        theta = np.asarray(theta, float); dist = np.linalg.norm(theta - self.theta0)
        m = max(1, int(np.ceil(dist / step)))
        ph, pv = self.phih, self.phiv; Hp = None
        for k in range(1, m + 1):
            H, ph2, pv2 = complete(self.theta0 + (theta - self.theta0) * k / m, ph, pv)
            if H is None or np.abs(ph2 - ph).max() > 0.5 or np.abs(pv2 - pv).max() > 0.5: return None
            ph, pv, Hp = ph2, pv2, H
        H = Hp if m >= 1 else None
        return (self.P + np.angle(H * np.exp(-1j * self.P))).reshape(36), np.abs(np.abs(H) - 1).max()

    def _dQ(self, h=1e-6):
        T = np.zeros((36, 4))
        for k in range(4):
            e = np.zeros(4); e[k] = h
            T[:, k] = (self.Q(self.theta0 + e)[0] - self.Q(self.theta0 - e)[0]) / (2 * h)
        return T

    def remainder(self, rho, nsamp=400, seed=0):
        """Sampled max of ||Q(theta) - P - T eta|| over ||eta|| = rho and rho/2 (x1.5), plus max flatness defect."""
        rng = np.random.default_rng(seed)
        dirs = rng.normal(size=(nsamp, 4)); dirs /= np.linalg.norm(dirs, axis=1)[:, None]
        dirs = np.vstack([dirs, np.eye(4), -np.eye(4)])
        worst, flat = 0.0, 0.0
        for s in (rho, rho / 2):
            for u in dirs:
                out = self.Q(self.theta0 + s * u)
                if out is None: return None, None
                q, f = out
                worst = max(worst, np.linalg.norm(q - self.P.reshape(36) - self.T @ (s * u))); flat = max(flat, f)
        return 1.5 * worst, flat


def stage_c_seed(sb, rho, label_radius=0.03, triple=False, nsamp=200):
    """Run the atlas Stage C on the enclosure Q = P + T eta + nu, ||eta|| <= rho, ||nu|| <= n (n sampled)."""
    import sys, math
    sys.path.insert(0, __file__.rsplit('/', 3)[0] + '/proof/atlas')
    import stagec as SC
    n, flat = sb.remainder(rho, nsamp=nsamp)
    if n is None: return dict(ok=False, reason='left Omega')
    T = sb.T
    tcol = max(np.linalg.norm(T.reshape(6, 6, 4)[:, i, :], 2) for i in range(6))     # column block i: rows j
    rcol = tcol * rho + n
    rF = np.linalg.norm(T, 2) * rho + n
    P = sb.P / SC.TWO_PI
    fn = SC.stage_c_triple if triple else SC.stage_c
    out = fn(P, rcol / SC.TWO_PI, tang=(T, rho / SC.TWO_PI, n / SC.TWO_PI), radius=label_radius, rF=rF / SC.TWO_PI)
    out.update(rho=rho, n=n, rcol=rcol, rF=rF)
    return out


def remainder_metric(sb, r, nsamp=200, seed=0):
    """Seed ellipsoid {theta0 + V S^-1 w : ||w|| <= r} (T = U S V^T): its image is ~ a round 4-disk of radius r.
    Returns (n, U) with Q = P + U w + nu, ||nu|| <= n (sampled, x1.5)."""
    U, S, Vt = np.linalg.svd(sb.T, full_matrices=False)
    M = Vt.T / S[None, :]
    rng = np.random.default_rng(seed)
    dirs = rng.normal(size=(nsamp, 4)); dirs /= np.linalg.norm(dirs, axis=1)[:, None]
    dirs = np.vstack([dirs, np.eye(4), -np.eye(4)])
    worst = 0.0
    for s in (r, r / 2):
        for w in dirs:
            out = sb.Q(sb.theta0 + M @ (s * w))
            if out is None: return None, U
            q, f = out
            worst = max(worst, np.linalg.norm(q - sb.P.reshape(36) - U @ (s * w)))
    return 1.5 * worst, U


def stage_c_metric(sb, r, label_radius=0.03, triple=False, nsamp=200):
    import sys
    sys.path.insert(0, __file__.rsplit('/', 3)[0] + '/proof/atlas')
    import stagec as SC
    n, U = remainder_metric(sb, r, nsamp=nsamp)
    if n is None: return dict(ok=False, reason='left Omega')
    tcol = max(np.linalg.norm(U.reshape(6, 6, 4)[:, i, :], 2) for i in range(6))
    rcol = min(tcol * r + n, r + n); rF = r + n
    fn = SC.stage_c_triple if triple else SC.stage_c
    out = fn(sb.P / SC.TWO_PI, rcol / SC.TWO_PI, tang=(U, r / SC.TWO_PI, n / SC.TWO_PI), radius=label_radius, rF=rF / SC.TWO_PI)
    out.update(r=r, n=n, rcol=rcol, rF=rF)
    return out
