"""Float helpers for the atlas driver (untrusted): the corner census and the Jacobian on horizontal phases.

Nothing here decides acceptance; certify.py recomputes every certified quantity in Arb or exact arithmetic.
  * R_seed(theta): the corner invariant R (and g) of seeds theta, vectorised;
  * corner_census(H): R and the sheet label sign Im Theta(B) at all 400 corner positions (3 rows x 3 columns);
  * HB: an orthonormal basis of the 25-dimensional horizontal space (row and column sums zero);
  * jacobian(H): J = Phi'(0) on horizontal phases, Phi = off-diagonal entries of (H o e^{iu})(H o e^{iu})^*.
"""
import itertools
import numpy as np


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


TRI = list(itertools.combinations(range(6), 3))
CORN = [(I, J) for I in TRI for J in TRI]
IDX_I = np.array([I for I, J in CORN]); IDX_J = np.array([J for I, J in CORN])
IDX_JC = np.array([[k for k in range(6) if k not in J] for I, J in CORN])


def perm3(B):
    return (B[..., 0, 0] * (B[..., 1, 1] * B[..., 2, 2] + B[..., 1, 2] * B[..., 2, 1])
            + B[..., 0, 1] * (B[..., 1, 0] * B[..., 2, 2] + B[..., 1, 2] * B[..., 2, 0])
            + B[..., 0, 2] * (B[..., 1, 0] * B[..., 2, 1] + B[..., 1, 1] * B[..., 2, 0]))


def corner_census(H):
    """(R, label) for all 400 corner positions; label = sign Im Theta(upper-right block)."""
    E = H[IDX_I[:, :, None], IDX_J[:, None, :]]
    E = E / E[:, :1, :] ; E = E / E[:, :, :1]
    th = np.angle(np.stack([E[:, 1, 1], E[:, 1, 2], E[:, 2, 1], E[:, 2, 2]], -1))
    R, _ = R_seed(th)
    B = H[IDX_I[:, :, None], IDX_JC[:, None, :]]
    d = np.linalg.det(B)
    Th = -perm3(B) * d * d / (abs(d) ** 2 * np.prod(B.reshape(-1, 9), -1))
    return R, np.sign(Th.imag)


def _horizontal(M):
    """Horizontal part of a 6x6 phase matrix: M minus its row and column means plus the total mean."""
    return M - M.mean(1, keepdims=True) - M.mean(0, keepdims=True) + M.mean()


IU = np.triu_indices(6, 1)
_B = []
for i in range(1, 6):
    for j in range(1, 6):
        M = np.zeros((6, 6)); M[i, j] = 1; _B.append(_horizontal(M).reshape(-1))
HB = np.linalg.qr(np.array(_B).T)[0][:, :25]          # orthonormal basis of the horizontal space


def jacobian(H):
    rows = []
    for a, b in zip(*IU):
        row = np.zeros(36, complex)
        for j in range(6):
            z = 1j * H[a, j] * np.conj(H[b, j]); row[a * 6 + j] += z; row[b * 6 + j] -= z
        rows.append(row)
    Jc = np.array(rows) @ HB
    return np.vstack([Jc.real, Jc.imag])
