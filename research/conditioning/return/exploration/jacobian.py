"""Exploration toolkit (floating point, NOT a proof): the Hadamard Jacobian on the horizontal space.

For an order-6 complex Hadamard H (|H_ij| = 1, H H* = 6 I) and a real 6x6 phase matrix u, let
    Phi_H(u) = the 15 off-diagonal entries (a < b) of (H o e^{iu})(H o e^{iu})^*, as 30 real numbers,
    J_H = dPhi_H(0) restricted to the 25-dimensional HORIZONTAL space {u : all row and column sums zero}.
Explicitly (J_H u)_{ab} = i * sum_c H_ac conj(H_bc) (u_ac - u_bc).

Conjecture (uniform conditioning): for every H not equivalent to Tao's S6, rank J_H = 21 and every nonzero singular
value of J_H is >= sqrt(3) (equality on the affine Fourier family).  At S6: rank 25, sigma_min = 3/sqrt(2).

Usage:  python3 jacobian.py            # survey: random Hadamards, Fourier family, S6, 2000 atlas centres
"""
import os, sys
import numpy as np
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import common as C

IU = np.triu_indices(6, 1)
# orthonormal basis of the horizontal space (36 x 25)
Ph = np.eye(36) - np.kron(np.eye(6), np.ones((6, 6)) / 6) - np.kron(np.ones((6, 6)) / 6, np.eye(6)) + np.ones((36, 36)) / 36
w, V = np.linalg.eigh(Ph); HB = V[:, w > 0.5]


def jacobian(H):
    """30 x 25 real matrix of J_H in the orthonormal horizontal basis HB."""
    rows = []
    for a, b in zip(*IU):
        row = np.zeros(36, complex)
        for c in range(6):
            z = 1j * H[a, c] * np.conj(H[b, c]); row[6 * a + c] += z; row[6 * b + c] -= z
        rows.append(row)
    Jc = np.array(rows) @ HB
    return np.vstack([Jc.real, Jc.imag])


def spectrum(H):
    return np.linalg.svd(jacobian(H), compute_uv=False)


def fourier_family(a, b):
    w = np.exp(2j * np.pi / 3); F3 = w ** np.outer(np.arange(3), np.arange(3)); D = np.diag([1, a, b])
    return np.block([[F3, F3], [F3 @ D, -F3 @ D]])


S6 = np.exp(2j * np.pi / 3 * np.array([[0, 0, 0, 0, 0, 0], [0, 0, 1, 1, 2, 2], [0, 1, 0, 2, 2, 1],
                                          [0, 1, 2, 0, 1, 2], [0, 2, 2, 1, 0, 1], [0, 2, 1, 2, 1, 0]]))


def report(name, Hs):
    out = []
    for H in Hs:
        s = spectrum(H); nz = s[s > 1e-6]; out.append((len(nz), nz.min()))
    o = np.array(out)
    for rk in sorted(set(o[:, 0].astype(int))):
        sel = o[o[:, 0] == rk]
        print('%-22s rank %d: %5d matrices, sigma_min %.5f .. %.5f' % (name, rk, len(sel), sel[:, 1].min(), sel[:, 1].max()))


if __name__ == '__main__':
    rng = np.random.default_rng(1)
    rand = []
    while len(rand) < 300:
        x = C.random_hadamard(rng)
        if x is not None: rand.append(C.Hmat(x))
    report('random (incl. Tao hits)', rand)
    report('affine Fourier family', [fourier_family(np.exp(1j * t1), np.exp(1j * t2)) for t1, t2 in rng.uniform(0, 2 * np.pi, (200, 2))])
    report('Tao S6', [S6])
    cen = np.load(os.path.join(os.path.dirname(os.path.abspath(__file__)), 'atlas_centres_2000.npy'))
    report('atlas centres', [np.exp(1j * P) for P in cen])
