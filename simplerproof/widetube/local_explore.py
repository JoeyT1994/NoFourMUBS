"""Numerical exploration of the near-F6 normal-form contraction (not a proof).
u = v + n, v in the tangent space T (4-dim), n in N = horizontal space minus T (21-dim).
Phi(u) = the 15 complex row overlaps of F o e^{iu} (30 reals); J = Phi'(0); K = (J|_N)^+ ;  n = -K (Phi(v+n) - J(v+n)).
Checks convergence and the Hadamard residual for ||v|| up to rho, and the empirical contraction constant."""
import numpy as np, itertools
F = np.array([[np.exp(2j * np.pi * j * k / 6) for k in range(6)] for j in range(6)])
pairs = list(itertools.combinations(range(6), 2))
def Phi(u):
    H = F * np.exp(1j * u.reshape(6, 6)); G = H @ H.conj().T
    return np.concatenate([[G[i, j].real for i, j in pairs], [G[i, j].imag for i, j in pairs]])
def jac(u, h=1e-7):
    f0 = Phi(u); return np.stack([(Phi(u + h * e) - Phi(u - h * e)) / (2 * h) for e in np.eye(36)], 1)
C = np.eye(6) - np.ones((6, 6)) / 6; Pi = np.kron(C, C)                       # horizontal projector on vec(u)
t1 = np.zeros((6, 6)); t2 = np.zeros((6, 6))
for j in (1, 3, 5): t1[j, 1] = t1[j, 4] = 1; t2[j, 2] = t2[j, 5] = 1
Tb = np.stack([Pi @ t.ravel() for t in (t1, t2, t1.T, t2.T)], 1); Q_, _ = np.linalg.qr(Tb); PT = Q_ @ Q_.T
PN = Pi - PT
J = jac(np.zeros(36)); JN = J @ PN
K = np.linalg.pinv(JN, rcond=1e-9)          # maps R^30 -> N
print('rank J|horizontal =', np.linalg.matrix_rank(J @ Pi, 1e-8), ' ||K|| =', np.linalg.norm(K, 2), ' 1/sqrt3 =', 1/np.sqrt(3))
print('K J = P_N ?', np.abs(K @ J @ Pi - PN).max())
def normal_part(v, iters=200):
    n = np.zeros(36)
    for k in range(iters):
        n_new = -K @ (Phi(v + n) - J @ (v + n))
        if np.linalg.norm(n_new - n) < 1e-15: break
        n = n_new
    return n, k
rng = np.random.default_rng(0)
for rho in (0.3, 0.4, 0.46, 0.55):
    worst_res = 0; worst_q = 0; worst_n = 0
    for trial in range(60):
        v = Q_ @ rng.normal(size=4); v *= rho * rng.uniform(0.3, 1) / np.linalg.norm(v)
        n, k = normal_part(v)
        res = np.abs(Phi(v + n)).max()
        # empirical contraction: ||K (J(v+n) - J(0)) P_N||
        qn = np.linalg.norm(K @ (jac(v + n) - J) @ PN, 2)
        worst_res = max(worst_res, res); worst_q = max(worst_q, qn); worst_n = max(worst_n, np.linalg.norm(n) / np.linalg.norm(v) ** 2)
    print('rho %.2f: max Hadamard residual %.1e, empirical contraction %.3f (bound 2*0.8167*rho = %.3f), max |n|/|v|^2 %.3f'
          % (rho, worst_res, worst_q, 2 * 0.8167 * rho, worst_n))
