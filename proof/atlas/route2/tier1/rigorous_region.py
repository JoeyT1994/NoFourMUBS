"""RIGOROUS (outward-error binary64 + Arb inputs) tier-1 certificate for one region.  MILESTONE1.md section 6.

Region: every Hadamard e^{i(P + delta)}, delta horizontal, ||delta|| <= R, around Record i's centre (the same sets as
ballrecord.py).  Steps:
 1. Lemma 4.1 (Arb, ballrecord.py): eta = G^{-1} T^T delta has ||eta|| <= r_H; delta = T eta + nu', ||nu'|| <= n.
 2. Lemma 4.1' (second-order normal bound, chart2.py with rounding errors): delta = delta0(eta) + nu with
    delta0(eta) = g0 + T_f eta + q(eta, eta)/2 (float coefficients, used as exact) and ||nu|| <= n3.
 3. region.certify_region with rig=True: Taylor models whose radii include binary64 rounding (tm.py), 252 Krawczyk
    certificates, pairwise separation, off-torus inequalities, involution witnesses for the 48 torus boxes, and the
    no-5-clique orthogonality graph; every comparison with margin 1e-9.
Usage: rigorous_region.py id R
"""
import sys, math, json, numpy as np
from centres import load, ATLAS
sys.path.insert(0, str(ATLAS))
from ballrecord import BallRecord
from record import opnorm_upper
from flint import arb
import region as RG

i = int(sys.argv[1]); R = float(sys.argv[2])
phi, _, Tint = load()
B = BallRecord(phi[i], Tint=Tint[i])
rH, n = B.normal_bound(R)
k = B.rec.dimT
dT = float(np.abs(np.array([[float(abs(B.rec.Tb[e, j] - arb(float(B.rec.Tbn[e, j]))).upper()) for j in range(k)] for e in range(36)])).sum())
ch = RG.Chart(phi[i].reshape(6, 6), T=np.array(B.rec.Tbn, float))
sigma = B.sigma
qF = float(np.sqrt((ch.q ** 2).sum())) * (1 + 1e-12)
g0n = float(np.linalg.norm(ch.g0)) * (1 + 1e-12)
TtQ = np.einsum('ek,eij->kij', ch.T, ch.q)
leak = 0.5 * float(np.sqrt((TtQ ** 2).sum())) * B.ginv_half ** 2 * math.sqrt(B.lam_max) * rH ** 2 * (1 + 1e-9)
leak += dT * rH + float(np.linalg.norm(ch.T.T @ ch.g0)) * B.ginv_half ** 2 * math.sqrt(B.lam_max)
prior = n + 0.5 * qF * rH ** 2 + g0n + leak                                    # from Lemma 4.1
# Lemma 4.1' with a left inverse L of J_N (MILESTONE1.md 5.2): ||L|| and ||I - L J_N|| bounded in Arb
from flint import arb_mat
JN = RG.J36(ch.P, ch.g0) @ ch.Nb; Lf = np.linalg.pinv(JN)
La = arb_mat([[arb(float(x)) for x in row] for row in Lf]); Ln = opnorm_upper(La) * (1 + 1e-9)
E = Lf @ JN - np.eye(21); epsL = float(np.abs(E).sum(1).max()) + 21 * 30 * 1e-14 * float(np.abs(Lf).max()) * 10
# nu = nu_N + nu_T (nu_N in the exact N), Phi(delta0 + nu) = 0:
#   (1 - epsL - 2 sqrt3 d0 ||L||) ||nu_N|| <= ||L Phi(delta0)|| + ||L|| [(||J0|| + 2 sqrt3 d0) leak + sqrt3 (||nu_N|| + leak)^2]
from chart2 import phi_tm
Sx, vec, rad = phi_tm(ch, rH, rig=True)
Lv = np.einsum('ij,jm->im', Lf, vec)
eL = float(Sx.bombvec(Lv, axis=0) * (1 + 1e-9) + np.abs(Lf).sum(1).max() * float(rad.max()) * math.sqrt(21) + 1e-13)
d0 = math.sqrt(B.lam_max) * rH + 0.5 * qF * rH ** 2 + g0n
Jn = float(np.linalg.norm(RG.J36(ch.P, np.zeros(36)), 2)) * 1.01 + 1e-9
c3 = Ln * math.sqrt(3)
a = (1 - epsL) - Ln * 2 * math.sqrt(3) * d0 - 2 * c3 * leak
b = eL + Ln * (Jn + 2 * math.sqrt(3) * d0) * leak + c3 * leak ** 2
disc = a * a - 4 * c3 * b
assert a > 0 and disc > 0, 'second-order normal bound fails'
t_small = 2 * b / (a + math.sqrt(disc)) * (1 + 1e-12); t_large = (a + math.sqrt(disc)) / (2 * c3) * (1 - 1e-12)
assert prior < t_large, 'a-priori bound does not separate the roots'
n3 = (t_small + leak) * (1 + 1e-12); e3 = eL
print(json.dumps(dict(rec=i, R=R, rH=rH, n_lemma41=n, sigma=sigma, e3=e3, n3=n3, n3_over_rho3=n3 / rH ** 3, leak=leak, d0=d0)), flush=True)
RG.LOCAL_CHARTS = False                 # sub-cubes would need the local Lemma 4.1' in rigorous form
out = RG.certify_region(i, rH, D=int(sys.argv[4]) if len(sys.argv) > 4 else 3, maxd=int(sys.argv[3]) if len(sys.argv) > 3 else 0, ch=ch, n3abs=n3, rig=True, margin=1e-9)
