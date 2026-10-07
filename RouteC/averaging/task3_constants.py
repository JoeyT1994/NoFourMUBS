"""Task 3 (rigorous-in-principle chain): constants of the Taylor argument at F6 in the
gauge-reduced 36-phase metric (u in Gamma^perp, Gamma = 11-dim row/column shift space).

Outputs (float; each quantity is either an exact global bound or a computed norm at F6 whose
rigorous version is noted):
  lam_min, lam_max   : extreme eigenvalues of L^T L on Gamma^perp            (L = d D / d phi at F6)
  sig_N              : smallest nonzero singular value of Df at F6           (Hadamard map f = offdiag HH^dag)
  A2, A2F            : sup_{|u|=1} |D^2 f(F6)[u,u]| (numerical max) and its Frobenius upper bound
  Q2, Q2F            : sup_{|u|=1} |D^2 D(F6)[u,u]| (numerical max) and Frobenius upper bound
  C3D                : global bound |D^3 D[u,u,u]|/6 <= C3D |u|^3      (Laurent coefficients of q)
  C3f                : global bound |D^3 f[u,u,u]|/6 <= C3f |u|^3
"""
import itertools, json, os
import numpy as np
import sympy as sp
from scipy.optimize import minimize
from common import F6, qval, blocks

here = os.path.dirname(os.path.abspath(__file__))
P0 = np.angle(F6).reshape(-1)


def Dvec(P): return 2 * qval(blocks(np.exp(1j * P.reshape(6, 6)))).imag


def fvec(P):
    H = np.exp(1j * P.reshape(6, 6)); G = H @ H.conj().T; iu = np.triu_indices(6, 1)
    return np.concatenate([G[iu].real, G[iu].imag])


E = np.eye(36); h = 1e-4
L = np.array([(Dvec(P0 + h * e) - Dvec(P0 - h * e)) / (2 * h) for e in E]).T
Jf = np.array([(fvec(P0 + h * e) - fvec(P0 - h * e)) / (2 * h) for e in E]).T
# exact second derivatives by polarisation of the closed forms (trig polynomials -> 4th order FD is accurate to ~1e-8)
def hess_tensor(F, n_out):
    Hs = np.zeros((n_out, 36, 36)); f0 = F(P0)
    for i in range(36):
        for j in range(i, 36):
            v = (F(P0 + h * E[i] + h * E[j]) - F(P0 + h * E[i] - h * E[j]) - F(P0 - h * E[i] + h * E[j]) + F(P0 - h * E[i] - h * E[j])) / (4 * h * h)
            Hs[:, i, j] = Hs[:, j, i] = v
    return Hs


HD = hess_tensor(Dvec, 400); Hf = hess_tensor(fvec, 30)
Gam = []
for i in range(6):
    M = np.zeros((6, 6)); M[i, :] = 1; Gam.append(M.reshape(-1))
    M = np.zeros((6, 6)); M[:, i] = 1; Gam.append(M.reshape(-1))
U, s, _ = np.linalg.svd(np.array(Gam).T); B = U[:, 11:]          # orthonormal basis of Gamma^perp (36x25)
LB = L @ B; ev = np.linalg.eigvalsh(LB.T @ LB)
sv = np.linalg.svd(Jf @ B, compute_uv=False)
HDB = np.einsum('cij,ia,jb->cab', HD, B, B); HfB = np.einsum('cij,ia,jb->cab', Hf, B, B)


def supnorm(Hs, trials=60, seed=0):
    rng = np.random.default_rng(seed); best = 0
    f = lambda y: -np.linalg.norm(np.einsum('cab,a,b->c', Hs, y, y)) / (y @ y)
    for _ in range(trials):
        r = minimize(f, rng.normal(size=Hs.shape[1]), method='BFGS'); best = max(best, -r.fun)
    return best


Q2 = supnorm(HDB); A2 = supnorm(HfB)
Q2F = np.sqrt((HDB ** 2).sum()); A2F = np.sqrt((HfB ** 2).sum())
# tangent space of the variety inside Gamma^perp and L restricted to it
u_, s_, vt_ = np.linalg.svd(Jf @ B); T = B @ vt_[21:].T; Nn = B @ vt_[:21].T
evT = np.linalg.eigvalsh((L @ T).T @ (L @ T))
# sup over unit u of |L P_N D_f^+ ...| is not needed; we use |L n| <= sqrt(lam_max)|n|
# global third-order bounds
x = sp.symbols('x0:9'); Bm = sp.Matrix(3, 3, x)
perm = sum(sp.prod(Bm[i, p[i]] for i in range(3)) for p in itertools.permutations(range(3)))
terms = sp.Poly(sp.expand(perm * Bm.det() ** 2), *x).terms()
s3 = sum(abs(int(c)) * np.linalg.norm(np.array(m) - 1) ** 3 for m, c in terms)
C3D = (2 * s3 / 6) * 10          # per corner (1/6)*2*sum|c||k|^3 |u_c|^3 ; sqrt(sum_c |u_c|^6) <= 10 |u|^3
C3f = 12 / 6                     # |D^3 f[u,u,u]| <= sum_{a<b,j} |u_aj-u_bj|^3 <= 12 |u|^3
out = dict(lam_min=ev.min(), lam_max=ev.max(), lam_T=list(evT), sig_N=sv[sv > 1e-6].min(),
           Q2=Q2, Q2F=Q2F, A2=A2, A2F=A2F, C3D=C3D, C3f=C3f, sum_c_k3=s3)
for k, v in out.items(): print(k, v)


def radius(useF):
    """Largest r such that the chain gives sqrt(S) >= (1/sqrt2) sqrt(15552) r on V for all |u| <= r."""
    q2 = Q2F if useF else Q2; a2 = A2F if useF else A2
    lT = np.sqrt(min(evT)); lmax = np.sqrt(ev.max()); sN = out['sig_N']
    def lower(r):
        n = (0.5 * a2 * r * r + C3f * r ** 3) / sN          # |P_N u|
        v = r - n                                          # |P_T u| >= |u| - |n|
        return lT * v - lmax * n - 0.5 * q2 * r * r - C3D * r ** 3
    rs = np.linspace(1e-5, 0.2, 20000); ok = [r for r in rs if lower(r) >= lT * r / np.sqrt(2)]
    rp = [r for r in rs if lower(r) > 0]
    return (max(ok) if ok else 0.0), (max(rp) if rp else 0.0)


r_half_num, r_pos_num = radius(False); r_half_F, r_pos_F = radius(True)
print('radius (S >= 7776 |u|^2) using numerically-maximised quadratic norms: %.5f ; positivity radius %.5f' % (r_half_num, r_pos_num))
print('radius (S >= 7776 |u|^2) using Frobenius (rigorous) quadratic norms:   %.5f ; positivity radius %.5f' % (r_half_F, r_pos_F))
out.update(r_half_num=r_half_num, r_pos_num=r_pos_num, r_half_F=r_half_F, r_pos_F=r_pos_F)
json.dump({k: (float(v) if np.isscalar(v) else [float(x) for x in v]) for k, v in out.items()},
          open(os.path.join(here, 'results_task3_constants.json'), 'w'), indent=1)


# ---------------------------------------------------------------- sharper rigorous quadratic norms
# |Q[u,u]|^2 = sum_c (u^T Q_c u)^2 <= |u|^2 u^T (sum_c Q_c^2) u  =>  Q2 <= sqrt(lmax(sum_c Q_c^2))
Q2S = np.sqrt(np.linalg.eigvalsh(np.einsum('cab,cbd->ad', HDB, HDB)).max())
A2S = np.sqrt(np.linalg.eigvalsh(np.einsum('cab,cbd->ad', HfB, HfB)).max())
print('Q2 <= sqrt(lmax sum Q_c^2) =', Q2S, ';  A2 <= sqrt(lmax sum A_k^2) =', A2S)
# sharper (numerically maximised, not rigorous) global cubic constant for D:
#   |D^3 D_c[u,u,u]|/6 <= (1/3) sum_k |c_k| |k.u_c|^3 ; maximise sqrt(sum_c (.)^2) over unit u in Gamma^perp
Kmat = np.array([np.array(m) - 1 for m, c in terms], float); Cabs = np.array([abs(int(c)) for m, c in terms], float)
from common import RI, CI
idx = (RI[:, :, None] * 6 + CI[:, None, :]).reshape(400, 9)
def cubic(u):
    uc = u[idx]                                   # 400 x 9
    s = (np.abs(uc @ Kmat.T) ** 3) @ Cabs / 3     # 400
    return np.linalg.norm(s)
best = 0; rng = np.random.default_rng(1)
for _ in range(40):
    r = minimize(lambda y: -cubic(B @ y) / np.linalg.norm(y) ** 3, rng.normal(size=25), method='Nelder-Mead', options=dict(maxiter=6000))
    best = max(best, -r.fun)
print('numerically maximised cubic constant C3D* =', best, '(global bound used above:', C3D, ')')


def radius2(q2, a2, c3):
    lT = np.sqrt(min(evT)); lmax = np.sqrt(ev.max()); sN = out['sig_N']
    def lower(r):
        n = (0.5 * a2 * r * r + C3f * r ** 3) / sN
        return lT * (r - n) - lmax * n - 0.5 * q2 * r * r - c3 * r ** 3
    rs = np.linspace(1e-5, 0.3, 30000)
    ok = [r for r in rs if lower(r) >= lT * r / np.sqrt(2)]; rp = [r for r in rs if lower(r) > 0]
    return (max(ok) if ok else 0.0), (max(rp) if rp else 0.0), lower


r1, r1p, lowS = radius2(Q2S, A2S, C3D)
r2, r2p, lowN = radius2(Q2S, A2S, best)
print('rigorous (Q2S,A2S,C3D):     r_half = %.5f  r_pos = %.5f' % (r1, r1p))
print('semi-rig (Q2S,A2S,C3D*):    r_half = %.5f  r_pos = %.5f' % (r2, r2p))
rt = np.sqrt(6) / 30
print('at tube boundary |u| = sqrt6/30 = %.4f: rigorous lower bound sqrt(S) >= %.4f ; semi %.4f' % (rt, lowS(rt), lowN(rt)))
out.update(Q2S=Q2S, A2S=A2S, C3D_numeric=best, r_half_rig=r1, r_pos_rig=r1p, r_half_semi=r2, r_pos_semi=r2p)
json.dump({k: (float(v) if np.isscalar(v) else [float(x) for x in v]) for k, v in out.items()},
          open(os.path.join(here, 'results_task3_constants.json'), 'w'), indent=1)
