"""Prototype (floats, untrusted): the edge chart through F6 from return U, as an atlas ball.

Parameters p = (u1, u2, u3, y).  Horizontal side: solve the augmented system (return U, eq. 20)
    gamma(phi) = Gamma_h(theta),  S(phi)/24 + y/48 = 0,  theta = theta0 + (u1, u2, u3, t)
for the seven unknowns (t, phi).  Vertical side: the same system for E^T, i.e. parameters (u1, u3, u2, -y).
Then D = -C E^* (B^*)^-1 and Q(p) = the 36 phases.  Near p = 0 this is F6's own corner (rows, cols 0,1,2).
"""
import numpy as np, itertools

TH0 = np.array([1, 2, 2, 4]) * np.pi / 3
PH0 = np.array([3, 4, 5, 0, 2, 4]) * np.pi / 3


def seed_E(th):
    a, b, c, d = np.exp(1j * th)
    return np.array([[1, 1, 1], [1, a, b], [1, c, d]], complex)


def side(phi):
    return np.vstack([np.ones(3), np.exp(1j * phi[:3]), np.exp(1j * phi[3:])])


def psi(X):
    p = sum(np.prod([X[i, s[i]] for i in range(3)]) for s in itertools.permutations(range(3)))
    d = np.linalg.det(X)
    return p * d * d / np.prod(X)


def gamma(phi):
    x, y = np.exp(1j * phi[:3]), np.exp(1j * phi[3:])
    s, t, r = x.sum(), y.sum(), (np.conj(x) * y).sum()
    return np.array([s.real, s.imag, t.real, t.imag, r.real, r.imag])


def Gamma(th):
    E = seed_E(th); G = 6 * np.eye(3) - E @ E.conj().T
    s, t, r = G[1, 0], G[2, 0], G[2, 1]
    return np.array([s.real, s.imag, t.real, t.imag, r.real, r.imag])


def Hsys(p, x):
    u1, u2, u3, y = p
    th = TH0 + np.array([u1, u2, u3, x[0]]); phi = PH0 + x[1:]
    return np.concatenate([gamma(phi) - Gamma(th), [psi(side(phi)).imag / 24 + y / 48]])


def jac(f, x, h=1e-7):
    f0 = f(x); J = np.zeros((len(f0), len(x)))
    for k in range(len(x)):
        e = np.zeros(len(x)); e[k] = h; J[:, k] = (f(x + e) - f(x - e)) / (2 * h)
    return J


def solve(p, x0=None, tol=1e-13):
    x = np.zeros(7) if x0 is None else x0.copy()
    for _ in range(40):
        F = Hsys(p, x)
        if np.abs(F).max() < tol: return x, True
        x = x - np.linalg.solve(jac(lambda z: Hsys(p, z), x), F)
    return x, np.abs(Hsys(p, x)).max() < 1e-10


def complete(p, xh0=None, xv0=None, steps=1):
    """Q(p) by continuation from 0 in `steps` steps.  Returns (Q 6x6 phases, ok, xh, xv)."""
    p = np.asarray(p, float); xh = np.zeros(7) if xh0 is None else xh0; xv = np.zeros(7) if xv0 is None else xv0
    for k in range(1, steps + 1):
        q = p * k / steps
        xh, okh = solve(q, xh)
        xv, okv = solve(np.array([q[0], q[2], q[1], -q[3]]), xv)
        if not (okh and okv): return None, False, xh, xv
    th = TH0 + np.array([p[0], p[1], p[2], xh[0]])
    E = seed_E(th); B = side(PH0 + xh[1:]); C = side(PH0 + xv[1:]).T
    D = -C @ E.conj().T @ np.linalg.inv(B.conj().T)
    H = np.block([[E, B], [C, D]])
    return H, abs(xh[0] - xv[0]) < 1e-9 and np.allclose(np.abs(H), 1, atol=1e-9), xh, xv
