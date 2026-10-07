"""Controls for close36.py.
 1. Lemma-A bounds on actual completions: numerical completions of E(theta), theta within t <= T, t' <= TP of theta*,
    must satisfy the entry-error bounds of close36 (eps_pf for rows 0,1,2,k; DF for the full phase difference).
 2. Non-vacuity: with the corner threshold raised by 50% or the tube radius shrunk to 0.15, the cover must fail."""
import math, itertools, numpy as np
from scipy.optimize import least_squares
src = open('close36.py').read().split("if __name__ == '__main__':")[0]
exec(src)
w = np.exp(2j * np.pi / 3); P = np.array([1, w, w * w])
rng = np.random.default_rng(11); worst_pf = 0.0; worst_DF = 0.0; nsol = 0
for trial in range(12):
    # completions exist only where R >= 0: the cusp around the cone q = 0 (seed_quartic.py); take a cone direction
    while True:
        x_, y_, z_ = rng.normal(size=3); A_ = -2; B_ = -x_ + 2 * y_ + 2 * z_; C_ = 2 * x_ * z_ - y_ * z_ - 2 * z_ * z_
        if B_ * B_ - 4 * A_ * C_ > 0: break
    w_ = (-B_ + np.sqrt(B_ * B_ - 4 * A_ * C_)) / (2 * A_); v = np.array([x_, y_, z_, w_])
    v = v / max(abs(v[0]) / float(T.mid()), abs(v[1]) / float(T.mid()), abs(v[2]) / float(TP.mid()), abs(v[3]) / float(TP.mid()))
    th = np.array([0, 0, 2 * np.pi / 3, -2 * np.pi / 3]) + v
    a, b, c, d = np.exp(1j * th); E = np.array([[1, 1, 1], [1, a, b], [1, c, d]])
    def build(p):
        H = np.ones((6, 6), complex); H[:3, :3] = E
        H[1:3, 3:] = np.exp(1j * p[:6]).reshape(2, 3); H[3:, 1:3] = np.exp(1j * p[6:12]).reshape(3, 2); H[3:, 3:] = np.exp(1j * p[12:]).reshape(3, 3); return H
    def res(p):
        H = build(p); G = H @ H.conj().T - 6 * np.eye(6); iu = np.triu_indices(6, 1); return np.concatenate([G[iu].real, G[iu].imag])
    for k in range(60):
        # start near a random point of the seed continuum S (and perturb), or uniformly at random
        if k % 3:
            sp = Kspec(int(rng.integers(2))); al, be = rng.uniform(-np.pi, np.pi, 2)
            K0 = np.array([[np.exp(1j * (math.pi * e / 3 + ca * al + cb * be)) for (e, ca, cb) in row] for row in sp])
            x0 = np.r_[np.angle(K0[1:3, 3:]).ravel(), np.angle(K0[3:, 1:3]).ravel(), np.angle(K0[3:, 3:]).ravel()] + rng.normal(0, 0.05, 21)
        else:
            x0 = rng.uniform(-np.pi, np.pi, 21)
        r = least_squares(res, x0, xtol=1e-15, ftol=1e-15, gtol=1e-15, max_nfev=20000)
        if np.linalg.norm(r.fun) > 1e-10: continue
        H = build(r.x); nsol += 1
        o = [1 if abs(H[i, 1] - w) < 0.1 else -1 for i in range(6)]        # first-half orientation of each row (+1: P)
        Prow = [i for i in (3, 4, 5) if o[i] == 1]; Qrow = [i for i in (3, 4, 5) if o[i] == -1]
        assert len(Prow) == 1 and len(Qrow) == 2
        sig = H[2, 3:] / H[2, 3]; mu = H[2, 3]; k = Qrow[0]; nu = H[k, 3]
        Kc = np.zeros((6, 6), complex); Kc[0] = 1; Kc[1] = [1, 1, 1, -1, -1, -1]
        sP = P if abs(sig[1] - w) < 0.1 else np.conj(P)
        Kc[2] = np.r_[P, mu * sP]; Kc[Prow[0]] = np.r_[P, -mu * sP]; Kc[k] = np.r_[np.conj(P), nu * np.conj(sP)]; Kc[Qrow[1]] = np.r_[np.conj(P), -nu * np.conj(sP)]
        assert np.allclose(Kc @ Kc.conj().T, 6 * np.eye(6))
        worst_pf = max(worst_pf, np.abs(H[[0, 1, 2, k]] - Kc[[0, 1, 2, k]]).max())
        worst_DF = max(worst_DF, np.linalg.norm(np.angle(H / Kc)))
print('completions %d: max entry error rows {0,1,2,k} %.5f (bound %.5f); Frobenius phase error %.5f (bound %.5f)'
      % (nsol, worst_pf, float(eps_pf.mid()), worst_DF, float(DF.mid())))
assert worst_pf <= float(eps_pf.mid()) and worst_DF <= float(DF.mid())
import sys
if '--lemma-only' in sys.argv: sys.exit()
# non-vacuity
import copy
for name, nb, na in (('corner threshold x1.5', NEED_B * arb('1.5'), NEED_A), ('tube radius 0.15', NEED_B, arb('0.15') - DF)):
    NEED_B, NEED_A = nb, na
    try:
        cover(0, maxdepth=6); print(name, ': cover PASSED (control FAILED)')
    except AssertionError:
        print(name, ': cover fails as required')
