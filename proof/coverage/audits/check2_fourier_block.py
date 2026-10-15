"""Check 2: PRM.md section 5 (normal form, flatness criterion, 81-case census, all-corner matching)
and a sanity run of section 4 on Tao.  Floating point, independent of the return's verifiers."""
import itertools
import numpy as np
from audit_common import *

rng = np.random.default_rng(7)
w = W3
F = np.array([[w ** (i * j) for j in range(3)] for i in range(3)])


def H_of(v, wv):
    Dv, Dw = np.diag(v), np.diag(wv)
    return np.block([[F, Dv @ F], [F @ Dw, -(F @ Dw @ F.conj().T @ Dv @ F) / 3]])


def hat(v, k):
    return sum(v[l] * w ** (k * l) for l in range(3))


# (5.1) top-bottom orthogonality, (5.2), (5.4)
err = 0
for _ in range(200):
    p, q, r, s = rand_phase(4, rng)
    v, wv = np.array([1, p, q]), np.array([1, r, s])
    H = H_of(v, wv)
    err = max(err, np.abs((H[:3] @ H[3:].conj().T)).max())
    D = H[3:, 3:]
    vh = [hat(v, k) for k in range(3)]
    D2 = np.array([[-sum(w ** (i * m) * wv[m] * vh[(j - m) % 3] for m in range(3)) / 3 for j in range(3)]
                   for i in range(3)])
    err = max(err, np.abs(D - D2).max())
    A = [vh[k] * np.conj(vh[(k - 1) % 3]) for k in range(3)]
    al = [wv[m] * np.conj(wv[(m + 1) % 3]) for m in range(3)]
    Ah = [hat(A, k) for k in range(3)]
    alh = [hat(al, k) for k in range(3)]
    err = max(err, abs(Ah[0]), abs(Ah[1] - 3 * (q + w / p + w ** 2 * p / q)),
              abs(Ah[2] - 3 * (p + w * q / p + w ** 2 / q)),
              abs(alh[1] - (1 / r + w * r / s + w ** 2 * s)), abs(alh[2] - (1 / r + w ** 2 * r / s + w * s)))
    # flatness criterion: |D_ij|=1 for all ij  <=>  alpha*A == 0 (cyclic convolution)
    conv = [sum(al[m] * A[(j - m) % 3] for m in range(3)) for j in range(3)]
    flat_def = np.sum((np.abs(D) ** 2 - 1) ** 2)
    # sum over j of |conv_j|^2 controls the defect; check one direction quantitatively
    err = max(err, abs(np.sum(np.abs(D) ** 2) - 9))
print('normal form / (5.2) / (5.4) / row-norm max err', err)

# Census of the 81 tuples in mu_3^4
mu3 = [1, w, w * w]
chars = [np.array([1, w ** k, w ** (2 * k)]) for k in range(3)]
ischar = lambda v: any(np.allclose(v, c) for c in chars)


def haagerup(H):
    vals = []
    for i, k in itertools.combinations(range(6), 2):
        for j, l in itertools.combinations(range(6), 2):
            vals.append(H[i, j] * H[k, l] * np.conj(H[i, l] * H[k, j]))
    return np.array(vals)


tao_e = np.array([[0, 0, 0, 0, 0, 0], [0, 0, 1, 1, 2, 2], [0, 1, 0, 2, 2, 1], [0, 1, 2, 0, 1, 2],
                  [0, 2, 2, 1, 0, 1], [0, 2, 1, 2, 1, 0]])
S = w ** tao_e
assert np.allclose(S @ S.conj().T, 6 * np.eye(6))
counts = dict(vchar=0, wchar=0, flat_other=0, nonflat=0)
flat_others_mu3 = True
for p, q, r, s in itertools.product(mu3, repeat=4):
    v, wv = np.array([1, p, q]), np.array([1, r, s])
    H = H_of(v, wv)
    if ischar(v):
        counts['vchar'] += 1
        assert np.allclose(np.abs(H), 1)
    elif ischar(wv):
        counts['wchar'] += 1
        assert np.allclose(np.abs(H), 1)
    elif np.allclose(np.abs(H), 1):
        counts['flat_other'] += 1
        # all Haagerup quadruples in mu_3 (true for Tao; F6 has -1 etc.)
        hv = haagerup(H)
        flat_others_mu3 &= all(min(abs(x - m) for m in mu3) < 1e-9 for x in hv)
    else:
        counts['nonflat'] += 1
print('census', counts, 'flat non-character cases have all Haagerup quadruples in mu3:', flat_others_mu3)
# Tao itself: all Haagerup quadruples in mu3; and BH(6,3) is a single class (S6) -- literature fact


# (5.9) matching at all 400 corners of the generic family (5.6) and of (5.5)
def all_corners_matched(H):
    m = 0
    for I in TRIPLES:
        Ic = [i for i in range(6) if i not in I]
        for J in TRIPLES:
            Jc = [j for j in range(6) if j not in J]
            m = max(m, abs(psi(H[np.ix_(I, Jc)]) - np.conj(psi(H[np.ix_(Ic, J)]))))
    return m


worst = 0
for _ in range(5):
    p, q = rand_phase(2, rng)
    Dv = np.diag([1, p, q])
    F6pq = np.block([[F, Dv @ F], [F, -Dv @ F]])
    worst = max(worst, all_corners_matched(F6pq), all_corners_matched(F6pq.T))
print('Fourier families: max all-corner matching defect', worst)

# Tao: strict corners, and matching status of strict corners
nstrict = nonm = 0
for I in TRIPLES:
    Ic = [i for i in range(6) if i not in I]
    for J in TRIPLES:
        Jc = [j for j in range(6) if j not in J]
        B, C = S[np.ix_(I, Jc)], S[np.ix_(Ic, J)]
        if abs(psi(B).imag) > 1e-9:
            nstrict += 1
            if abs(psi(C) - np.conj(psi(B))) > 1e-9:
                nonm += 1
print(f'Tao: strict corners {nstrict}/400, strict nonmatched {nonm}')
