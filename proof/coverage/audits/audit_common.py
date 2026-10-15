"""Shared helpers for the 2026-10-15 independent audit (numerical, small)."""
import itertools
import numpy as np

W3 = np.exp(2j * np.pi / 3)


def perm3(A):
    return sum(A[0, p[0]] * A[1, p[1]] * A[2, p[2]] for p in itertools.permutations(range(3)))


def psi(A):
    """Psi(A) = perm(A) det(A)^2 / prod A_ij  (A a 3x3 phase matrix)."""
    return perm3(A) * np.linalg.det(A) ** 2 / np.prod(A)


def gram_invariants(G):
    s, t, r = G[1, 0], G[2, 0], G[2, 1]
    X, Y, Z = abs(s) ** 2, abs(t) ** 2, abs(r) ** 2
    p = X + Y + Z
    J = 2 * (s * r * np.conj(t)).real
    g = 27 - 3 * p + J
    eta = 9 - p + J
    W = X * Y + X * Z + Y * Z - X * Y * Z
    chi = W - (p - 9) * (p - 18) + (p - 15) * J
    R = 4 * g ** 2 * eta - chi ** 2
    return dict(s=s, t=t, r=r, X=X, Y=Y, Z=Z, p=p, J=J, g=g, eta=eta, W=W, chi=chi, R=R, K=X * Y * Z)


def rand_phase(shape, rng):
    return np.exp(2j * np.pi * rng.random(shape))


def corner_R(T, C):
    """R of the corner on columns C of a 3x6 strip T, via the complementary-side Gram."""
    Cc = [j for j in range(6) if j not in C]
    B = T[:, Cc]
    return gram_invariants(B @ B.conj().T)


def corner_p(T, C):
    E = T[:, list(C)]
    G = E @ E.conj().T
    return abs(G[1, 0]) ** 2 + abs(G[2, 0]) ** 2 + abs(G[2, 1]) ** 2


TRIPLES = list(itertools.combinations(range(6), 3))


def strip_from_angles(th):
    """Rows: ones, exp(i*(0,th[0:5])), exp(i*(0,th[5:10]))."""
    x = np.exp(1j * np.concatenate([[0.0], th[:5]]))
    y = np.exp(1j * np.concatenate([[0.0], th[5:10]]))
    return np.vstack([np.ones(6), x, y])


def orth_residual(T):
    x, y = T[1], T[2]
    v = [x.sum(), y.sum(), (y * x.conj()).sum()]
    return np.array([c for z in v for c in (z.real, z.imag)])
