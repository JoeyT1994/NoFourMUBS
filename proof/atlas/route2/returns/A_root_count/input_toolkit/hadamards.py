"""Sources of order-6 complex Hadamard matrices (floating point, numpy). Standalone.

  centres()          the 12,021 atlas Record centres (phases, 6x6 each): they cover the whole
                     non-Tao Hadamard quotient X at radius ~0.04-0.08 rad, so they are a good
                     'uniform' sample of X.
  matched(theta)     the matched completion H_+(theta) of the dephased corner E(theta),
                     theta in T^4 with R(theta) > 0 (model.py, explicit formulas, mpmath).
  fourier(a, b)      the transposed-Fourier family F6(a, b) (Hadamard for all real a, b).
  tao()              Tao's matrix S6.
"""
from pathlib import Path
import numpy as np

HERE = Path(__file__).resolve().parent


def centres():
    d = np.load(HERE / 'data/record_centres.npz')
    return np.exp(1j * d['phases']), d['R']


def matched(theta):
    import mpmath as mp
    from model import Model
    M = Model([mp.exp(1j * t) for t in theta], 1)       # raises ValueError if R(theta) <= 0
    for bh in range(3):
        for bv in range(3):
            H = np.array(M.hadamard(bh, bv).tolist(), dtype=complex)
            if np.max(abs(abs(H) - 1)) < 1e-9 and np.max(abs(H @ H.conj().T - 6 * np.eye(6))) < 1e-9:
                return H
    raise ValueError('no unimodular branch')


def fourier(a, b):
    """F6 with phases e^{ia} in columns 1, 4 and e^{ib} in columns 2, 5 of rows 1, 3, 5:
    the two-parameter affine Fourier family F6^(2)(a, b), up to equivalence."""
    w = np.exp(2j * np.pi / 6)
    H = np.array([[w ** (i * j) for j in range(6)] for i in range(6)])
    for i in (1, 3, 5):
        H[i, 1] *= np.exp(1j * a); H[i, 4] *= np.exp(1j * a)
        H[i, 2] *= np.exp(1j * b); H[i, 5] *= np.exp(1j * b)
    assert np.max(abs(H @ H.conj().T - 6 * np.eye(6))) < 1e-9
    return H


def tao():
    w = np.exp(2j * np.pi / 3)
    K = [[0, 0, 0, 0, 0, 0], [0, 0, 1, 1, 2, 2], [0, 1, 0, 2, 2, 1],
         [0, 1, 2, 0, 1, 2], [0, 2, 2, 1, 0, 1], [0, 2, 1, 2, 1, 0]]
    H = w ** np.array(K)
    assert np.max(abs(H @ H.conj().T - 6 * np.eye(6))) < 1e-9
    return H
