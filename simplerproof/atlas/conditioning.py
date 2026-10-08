"""Numerical survey (NOT rigorous): conditioning of the Hadamard constraints in intrinsic coordinates.

For H a Hadamard and u a horizontal phase matrix, Phi(u) = off-diagonal entries of (H o e^{iu})(H o e^{iu})^*.
J = Phi'(0) maps the 25-dim horizontal space to R^30.  We record rank J and the smallest NONZERO singular value.
Usage: python3 conditioning.py N SEED
"""
import os, sys
import numpy as np
sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), '..', '..', 'RouteC', 'averaging'))
import common as C

IU = np.triu_indices(6, 1)
_B = []
for i in range(1, 6):
    for j in range(1, 6):
        M = np.zeros((6, 6)); M[i, j] = 1; _B.append(C.gauge_ls(M).reshape(-1))
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


def sigma_min(H, tol=1e-6):
    s = np.linalg.svd(jacobian(H), compute_uv=False); nz = s[s > tol]
    return nz.min(), len(nz)


if __name__ == '__main__':
    n, seed = int(sys.argv[1]), int(sys.argv[2]); rng = np.random.default_rng(seed); res = []
    for _ in range(n):
        phi = C.random_hadamard(rng)
        if phi is None: continue
        H = C.Hmat(phi); s, r = sigma_min(H); res.append((s, r, C.R_all(H).max()))
    o = np.array(res)
    for r in sorted(set(o[:, 1].astype(int))):
        sel = o[o[:, 1] == r]
        print('rank %d  count %d  sigma_min %.4f..%.4f  M %.1f..%.1f' % (r, len(sel), sel[:, 0].min(), sel[:, 0].max(), sel[:, 2].min(), sel[:, 2].max()))
