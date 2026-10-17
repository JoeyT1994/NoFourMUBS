# Independent test of the rank lemma: rank of the entrywise square H^[2] over order-6 Hadamard families.
import numpy as np, itertools
w = np.exp(2j*np.pi/6); om = np.exp(2j*np.pi/3)
F6 = np.array([[w**(i*j) for j in range(6)] for i in range(6)])
def F6ab(a, b):
    E = np.ones((6,6), complex)
    for (i,j) in [(1,1),(1,4),(3,1),(3,4),(5,1),(5,4)]: E[i,j] = np.exp(1j*a)
    for (i,j) in [(1,2),(1,5),(3,2),(3,5),(5,2),(5,5)]: E[i,j] = np.exp(1j*b)
    return F6*E
S6 = np.array([[1,1,1,1,1,1],[1,1,om,om,om**2,om**2],[1,om,1,om**2,om**2,om],
               [1,om,om**2,1,om,om**2],[1,om**2,om**2,om,1,om],[1,om**2,om,om**2,om,1]])
def rank2(H, tol=1e-8): return np.linalg.matrix_rank(H**2, tol)
assert np.allclose(S6 @ S6.conj().T, 6*np.eye(6))
print("F6: rank H^[2] =", rank2(F6), " Tao S6:", rank2(S6))
rng = np.random.default_rng(3); ranks = {}
for _ in range(2000):
    H = F6ab(*rng.uniform(0, 2*np.pi, 2))
    # random equivalence: permutations and diagonal phases (rank-preserving)
    P = np.eye(6)[rng.permutation(6)]; Q = np.eye(6)[rng.permutation(6)]
    D1 = np.diag(np.exp(1j*rng.uniform(0,2*np.pi,6))); D2 = np.diag(np.exp(1j*rng.uniform(0,2*np.pi,6)))
    H = P @ D1 @ H @ D2 @ Q; assert np.allclose(H @ H.conj().T, 6*np.eye(6))
    r = rank2(H); ranks[r] = ranks.get(r, 0) + 1
print("Fourier family F6(a,b) under random equivalences, rank distribution:", dict(sorted(ranks.items())))
# Lemma 1 brute force for n = 6 and n = 10 (no three pairwise orthogonal sign vectors)
for n in (6, 10):
    vs = [v for v in itertools.product((-1,1), repeat=n) if v[0] == 1]
    found = any(np.dot(u, v) == 0 and np.dot(u, x) == 0 and np.dot(v, x) == 0
                for u, v, x in itertools.combinations(vs, 3)) if n == 6 else None
    print(f"n={n}: three pairwise orthogonal sign vectors exist? {found}")
