# Independent check of the component theorem's family: MUB triples, Fourier edges, and Jacobian rank 53 (51 at r=0).
import numpy as np, itertools
rng = np.random.default_rng(11); om = np.exp(2j*np.pi/3)
F3 = np.array([[om**(r*j) for j in range(3)] for r in range(3)])
def circ(a): return np.array([[a[(c-r) % 3] for c in range(3)] for r in range(3)])
phi = lambda x, y: x + y + 1/(x*y)
def unit_roots(r):
    t = np.roots([1, -r, np.conj(r), -1])                    # roots sum r, pairwise-sum conj(r), product 1
    return t if np.allclose(np.abs(t), 1, atol=1e-9) else None
def family_point(target_r=None):
    while True:
        r = target_r if target_r is not None else 1.0*np.sqrt(rng.uniform())*np.exp(1j*rng.uniform(0, 2*np.pi))
        t1, t2 = unit_roots(r), unit_roots(-r)
        if t1 is None or t2 is None: continue
        t1, t2 = t1/np.abs(t1), t2/np.abs(t2)
        return t1[0], t1[1], t2[0], t2[1]
def triple(x, y, u, v):
    A = circ([1, 1/x, 1/(x*y)]); B = circ([1, 1/u, 1/(u*v)])
    H = np.block([[A, B], [B.conj().T, -A.conj().T]])
    lam = np.array([sum(np.array([1, 1/x, 1/(x*y)]) * om**(j*np.arange(3))) for j in range(3)])
    mu  = np.array([sum(np.array([1, 1/u, 1/(u*v)]) * om**(j*np.arange(3))) for j in range(3)])
    # eigenvalue convention may be conjugate; try both and keep the one giving unimodular L
    for l, m in [(lam, mu), (lam.conj(), mu.conj()), (lam, mu.conj()), (lam.conj(), mu)]:
        tau = 1j*np.conj(l*m)/np.abs(l*m)
        K = np.block([[F3, F3], [F3 @ np.diag(tau), -F3 @ np.diag(tau)]])
        L = H.conj().T @ K / np.sqrt(6)
        if np.allclose(np.abs(L), 1, atol=1e-9): return H, K, L
    return H, None, None
def singular_minors(M): return sum(abs(np.linalg.det(M[np.ix_(r, c)])) < 1e-9 for r in itertools.combinations(range(6), 3) for c in itertools.combinations(range(6), 3))
def residual(p):
    a = np.zeros((6,6)); a[1:,1:] = p[:25].reshape(5,5); b = np.zeros((6,6)); b[1:,:] = p[25:].reshape(5,6)
    H, K = np.exp(1j*a), np.exp(1j*b); L = H.conj().T @ K / np.sqrt(6)
    iu = np.triu_indices(6, 1); GH = (H.conj().T @ H)[iu]; GK = (K.conj().T @ K)[iu]
    return np.concatenate([GH.real, GH.imag, GK.real, GK.imag, (np.abs(L)**2 - 1).ravel()])
def jac_rank(H, K):
    d1 = 1/H[:, 0]; H1 = d1[:, None]*H; d2 = 1/H1[0]; Hd = H1*d2[None, :]       # dephase H
    K1 = d1[:, None]*K; Kd = K1/K1[0][None, :]                                   # same row phases; dephase K's first row
    p = np.concatenate([np.angle(Hd[1:,1:]).ravel(), np.angle(Kd[1:,:]).ravel()])
    assert np.allclose(residual(p), 0, atol=1e-9)
    e = 1e-6; J = np.array([(residual(p + e*np.eye(55)[k]) - residual(p - e*np.eye(55)[k]))/(2*e) for k in range(55)]).T
    s = np.linalg.svd(J, compute_uv=False); return int((s > 1e-6*s[0]).sum()), s
ranks = []
for t in range(30):
    x, y, u, v = family_point(); H, K, L = triple(x, y, u, v)
    assert K is not None and np.allclose(H @ H.conj().T, 6*np.eye(6)) and np.allclose(K @ K.conj().T, 6*np.eye(6))
    rk, s = jac_rank(H, K); ranks.append(rk)
    if t < 3: print(f"r={phi(x,y):.3f}: singular 3x3 minors H/K/L = {singular_minors(H)}/{singular_minors(K)}/{singular_minors(L)}; Jacobian rank {rk}; sv[52]/sv[53] = {s[52]:.2e}/{s[53]:.2e}")
print("ranks at 30 random family points (r != 0):", sorted(set(ranks)))
x, y, u, v = family_point(target_r=0.0); H, K, L = triple(x, y, u, v); rk, s = jac_rank(H, K)
print(f"center r=0: singular minors H/K/L = {singular_minors(H)}/{singular_minors(K)}/{singular_minors(L)}; Jacobian rank {rk}; sv[50]/sv[51] = {s[50]:.2e}/{s[51]:.2e}")
