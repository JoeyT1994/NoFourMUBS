"""Float (numpy) port of MinimalConstruction/Implementation/model.py: corner seed -> H_+-(theta).  Exploration only."""
import numpy as np

OM3 = np.exp(2j * np.pi / 3)
F3 = OM3 ** np.outer(np.arange(3), np.arange(3))


def invariants(E):
    G = 6 * np.eye(3) - E @ E.conj().T
    s, t, r = G[1, 0], G[2, 0], G[2, 1]
    X, Y, Z = abs(s) ** 2, abs(t) ** 2, abs(r) ** 2
    p = X + Y + Z; J = 2 * (s * r * np.conj(t)).real; W = X * Y + X * Z + Y * Z - X * Y * Z
    g = 27 - 3 * p + J; eta = 9 - p + J; chi = W - (p - 9) * (p - 18) + (p - 15) * J
    return G, g, chi, 4 * g * g * eta - chi * chi


def R_seed(theta):
    """Vectorised R and g for seeds theta (..., 4)."""
    a, b, c, d = np.exp(1j * np.moveaxis(theta, -1, 0))
    o = np.ones_like(a)
    E = np.stack([np.stack([o, o, o], -1), np.stack([o, a, b], -1), np.stack([o, c, d], -1)], -2)
    G = 6 * np.eye(3) - E @ np.conj(np.swapaxes(E, -1, -2))
    s, t, r = G[..., 1, 0], G[..., 2, 0], G[..., 2, 1]
    X, Y, Z = abs(s) ** 2, abs(t) ** 2, abs(r) ** 2
    p = X + Y + Z; J = 2 * (s * r * np.conj(t)).real; W = X * Y + X * Z + Y * Z - X * Y * Z
    g = 27 - 3 * p + J; eta = 9 - p + J; chi = W - (p - 9) * (p - 18) + (p - 15) * J
    return 4 * g * g * eta - chi * chi, g


def side(G, z, g):
    s, t, r = G[1, 0], G[2, 0], G[2, 1]
    X, Y, Z = abs(s) ** 2, abs(t) ** 2, abs(r) ** 2
    P = [r * s * s + np.conj(r) * t * t + (3 - Z) * s * t,
         t * np.conj(s) ** 2 + r * r * np.conj(t) + (3 - Y) * r * np.conj(s),
         s * np.conj(t) ** 2 + np.conj(r) ** 2 * np.conj(s) + (3 - X) * np.conj(r) * np.conj(t)]
    cs = [9 - Z, 9 - Y, 9 - X]
    lam = [P[j] * (g + cs[j] * np.conj(z)) / abs(P[j]) ** 2 for j in range(3)]
    u = lam[0] * np.conj(lam[1]); mu = s / 3; nu = t / 3; n = 1 - abs(mu) ** 2
    k = r / 3 - nu * np.conj(mu); alpha = mu * mu - u * np.conj(mu)
    gamma = 2 * mu * nu - z * lam[0] / 3
    delta = np.sqrt(complex(g / 27 * lam[0] * np.conj(lam[1]) * np.conj(lam[2])))
    dF = 27 / g * (n * gamma - 2 * alpha * k) * np.conj(delta)
    if dF.real < 0: delta = -delta; dF = -dF
    rho = (n + dF.real) / 2; q = alpha / rho
    cp = (k - delta * np.conj(q)) / n; cm = (k * q + delta) / n
    sigma = u + mu * q; xi = sigma * sigma / rho
    M = np.array([[1, 0, 0], [mu, sigma, q * np.conj(sigma)], [nu, cp * sigma, cm * np.conj(sigma)]])
    return M, xi


def adj3(A):
    return np.array([[(-1) ** (i + j) * np.linalg.det(np.delete(np.delete(A, j, 0), i, 1)) for j in range(3)] for i in range(3)])


def hadamard(theta, sheet=1, bh=0, bv=0):
    a, b, c, d = np.exp(1j * np.asarray(theta, float))
    E = np.array([[1, 1, 1], [1, a, b], [1, c, d]])
    Gh, g, chi, R = invariants(E)
    if R <= 0: return None
    T = 6 * np.eye(3) - E.conj().T @ E
    z = (chi + sheet * 1j * np.sqrt(R)) / (2 * g)
    hM, hxi = side(Gh, z, g); vM, vxi = side(T.T, np.conj(z), g)
    wh = np.exp(1j * np.angle(hxi) / 3) * OM3 ** bh; wv = np.exp(1j * np.angle(vxi) / 3) * OM3 ** bv
    Ph = np.diag([1, np.conj(wh), wh]); Pv = np.diag([1, np.conj(wv), wv])
    B = hM @ Ph @ F3; Cm = F3 @ Pv @ vM.T
    D = -Cm @ E.conj().T @ adj3(Gh) @ B / g
    return np.block([[E, B], [Cm, D]])
