"""Float helpers for the confinement problem (exploration only; not rigorous).

  M(H)        largest corner invariant over the 400 corners
  u_norm(H)   ||u||_F for the best F6-orbit alignment found (an upper bound on the true minimum)
  d_F(H)      max-column projector distance to the F6 orbit (numerical)
  near_F6(u)  project F o e^{iu} back onto the Hadamard set
  min_M_from(H, ...)  local descent of a smooth surrogate of M on the Hadamard set (finds candidate local minima)
"""
import numpy as np
import common as C

T1 = np.zeros((6, 6)); T2 = np.zeros((6, 6))
for _i in range(1, 6, 2):
    T1[_i, [1, 4]] = 1; T2[_i, [2, 5]] = 1
TANGENT = [C.gauge_ls(T1), C.gauge_ls(T2), C.gauge_ls(T1.T), C.gauge_ls(T2.T)]   # horizontal tangent basis at F6


def M(H):
    return C.R_all(H).max()


def u_norm(H):
    """min over dephased F6-orbit elements of the least-squares-gauged wrapped phase residual (= ||u||_F)."""
    d2, _, _ = C.dist_F6(H, top=1)
    return float(d2[0])


def d_F(H):
    return float(C.dF(H))


def hadamard_from_phi(phi):
    return C.Hmat(phi)


def near_F6(u):
    """Hadamard closest (Gauss-Newton) to F6 o e^{iu}; u is a 6x6 real matrix."""
    H = C.F6 * np.exp(1j * u)
    phi0 = C.phases_of(H)
    phi, ok = C.project(phi0)
    return C.Hmat(phi) if ok else None


def extremal_curve(a):
    """F6^(2)(a,-a) = F6 o exp(i a (t1 - t2)); there max_c R = 144 sin^2(3a), ||u|| = a*sqrt(6), d_F = sin(a/2)."""
    return C.F6 * np.exp(1j * a * (T1 - T2))


def min_M_from(phi, beta=40.0, steps=400, lr=2e-3, rng=None):
    """Heuristic local descent of softmax_beta(R_c) on the Hadamard set (dephased phases phi in R^25).
    Gradient by finite differences, retraction by Gauss-Newton projection.  Returns (phi, M) at the end."""
    def soft(p):
        R = C.R_all(C.Hmat(p)); m = R.max()
        return m + np.log(np.exp(beta * (R - m) / max(m, 1e-9)).sum()) * max(m, 1e-9) / beta
    for _ in range(steps):
        f0 = soft(phi); g = np.zeros(25); h = 1e-6
        for k in range(25):
            e = np.zeros(25); e[k] = h; g[k] = (soft(phi + e) - f0) / h
        phi2, ok = C.project(phi - lr * g)
        if not ok: break
        phi = phi2
    return phi, M(C.Hmat(phi))
