"""Numerical estimate (NOT rigorous) of the 4-volume of the quotient X in the horizontal phase metric.

The class map theta -> [H_+(theta)] (theta in S = {R>0}) is a local diffeomorphism onto A, and X = A u conj(A) u {[F6]}.
At H = H_+(theta) let T (36x4) be an orthonormal basis of the horizontal tangent space and L (4x36) the corner-phase
map theta_k = phase(H_ij) - phase(H_i0) - phase(H_0j) + phase(H_00).  Then dvol_X = dtheta / |det(L T)|, and a generic
class has exactly 36 * N_+(H) preimages, N_+ = number of strict corner positions whose sheet label sign Im Theta(B) is +.
So vol(A) = (2 pi)^4 E_theta[ 1_{R>0} / (|det L T| 36 N_+) ].
Usage: python3 volume.py N SEED
"""
import itertools, os, sys
import numpy as np
sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), '..', 'confine'))
from chart_np import hadamard, R_seed
from conditioning import jacobian, HB

TRI = list(itertools.combinations(range(6), 3))
CORN = [(I, J) for I in TRI for J in TRI]
IDX_I = np.array([I for I, J in CORN]); IDX_J = np.array([J for I, J in CORN])
IDX_JC = np.array([[k for k in range(6) if k not in J] for I, J in CORN])
L = np.zeros((4, 36))
for k, (i, j) in enumerate([(1, 1), (1, 2), (2, 1), (2, 2)]):
    L[k, 6 * i + j] += 1; L[k, 6 * i] -= 1; L[k, j] -= 1; L[k, 0] += 1


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


def tangent(H):
    J = jacobian(H); u, s, vt = np.linalg.svd(J)
    return HB @ vt[21:].T, s


if __name__ == '__main__':
    n, seed = int(sys.argv[1]), int(sys.argv[2]); rng = np.random.default_rng(seed)
    acc = []; bad = 0; nS = 0; selflab = []
    for _ in range(n):
        th = rng.uniform(-np.pi, np.pi, 4)
        if R_seed(th)[0] <= 0: acc.append(0.0); continue
        nS += 1
        H = hadamard(th, 1)
        if H is None or abs(H @ H.conj().T - 6 * np.eye(6)).max() > 1e-8: bad += 1; acc.append(0.0); continue
        T, s = tangent(H)
        R, lab = corner_census(H)
        selflab.append(lab[0])
        Np = int(((R > 1e-9) & (lab > 0)).sum())
        acc.append(1.0 / (abs(np.linalg.det(L @ T)) * 36 * Np))
    a = np.array(acc) * (2 * np.pi) ** 4
    print('samples %d  strict %d  bad %d  own-corner label + : %d/%d' % (n, nS, bad, sum(1 for x in selflab if x > 0), len(selflab)))
    print('vol(A) ~ %.4g +- %.2g' % (a.mean(), a.std() / np.sqrt(n)))
