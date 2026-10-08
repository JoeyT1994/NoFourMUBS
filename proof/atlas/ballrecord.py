"""Ball Records (their Stage-B form, in our notation).  RIGOROUS normal bound; Stage C via stagec.py.

Let P be a real 6x6 phase matrix (radians; stored floats are exact rationals), H_P = e^{iP} (entrywise), and for a
horizontal 36-vector delta let Phi(delta) be the 30 real coordinates of the off-diagonal entries of
(H_P o e^{i delta})(H_P o e^{i delta})^*.  J = Phi'(0).  T (36 x 4) is a rational horizontal tangent frame, G = T^T T,
P_N the exact orthogonal projector onto N = (horizontal) minus span(T).

Lemma (ball record).  Let sigma > 0 satisfy ||J nu|| >= sigma ||nu|| for nu in N (certified by an Arb Cholesky factorisation
of N_b^T (J^T J - sigma^2) N_b for a rational basis N_b of N).  Put e0 >= ||Phi(0)||, j1 >= ||J T|| and L = 2 sqrt3
(||Phi''(x)[w, w']|| <= L ||w|| ||w'|| for horizontal w, w', at every base point).  If H ~ e^{i(P + delta)} is Hadamard with
delta horizontal and ||delta|| <= R < sigma / L, write delta = T eta + nu (eta = G^{-1} T^T delta, nu in N).  Then
     sigma ||nu|| - (L/2) ||nu||^2 <= b(eta) := e0 + j1 ||eta|| + (L/2) lam_max(G) ||eta||^2,
and since ||nu|| <= R < sigma/L,  ||nu|| <= (sigma - sqrt(sigma^2 - 2 L b)) / L <= 2 b / sigma.
Proof: 0 = Phi(delta) = Phi(0) + J delta + Rem with ||Rem|| <= (L/2) ||delta||^2 (Taylor, horizontal segment), so
sigma ||nu|| <= ||J nu|| <= e0 + j1 ||eta|| + (L/2)(lam_max(G) ||eta||^2 + ||nu||^2); the quadratic in ||nu|| has its
smaller root below sigma/L, and ||nu|| cannot lie between the roots.  ||eta|| <= ||G^{-1/2}|| ||delta|| =: rH.
"""
import itertools, json, math, sys, time
from fractions import Fraction as Fr
import numpy as np
from flint import arb, arb_mat, ctx
ctx.prec = 100
from record import Record, opnorm_upper, PAIRS
import stagec as SC

L_PHI = 2 * math.sqrt(3) * (1 + 1e-12)


def cholesky_pd(A):
    """True if the symmetric arb matrix A is certified positive definite (Cholesky with positive pivots)."""
    n = A.nrows(); Lm = [[arb(0)] * n for _ in range(n)]
    for j in range(n):
        s = A[j, j] - sum((Lm[j][k] * Lm[j][k] for k in range(j)), arb(0))
        if not s > 0: return False
        Lm[j][j] = s.sqrt()
        for i in range(j + 1, n):
            Lm[i][j] = (A[i, j] - sum((Lm[i][k] * Lm[j][k] for k in range(j)), arb(0))) / Lm[j][j]
    return True


class BallRecord:
    def __init__(self, phi, sigma_try=(1.70, 1.65, 1.6, 1.5, 1.4, 1.2, 1.0)):
        self.rec = rec = Record(phi)                     # centre, J (arb), rational tangent T, exact P_N
        assert rec.dimT == 4, 'tangent dimension %d' % rec.dimT
        J = rec.J
        # e0 = ||Phi(0)||
        Ph = rec.Phi_arb([arb(0)] * 36)
        self.e0 = math.sqrt(sum(float(abs(t).upper()) ** 2 for t in Ph)) * 1.000001
        self.j1 = opnorm_upper(J * rec.Tb)
        # Gershgorin bounds for the exact rational Gram matrix G = T^T T (G ~ I):
        # lam_max(G) <= max_i sum_j |G_ij|,  lam_min(G) >= min_i (G_ii - sum_{j != i} |G_ij|) > 0
        G = rec.GT; k = G.shape[0]
        gmax = max(sum(abs(G[i, j]) for j in range(k)) for i in range(k))
        gmin = min(G[i, i] - sum(abs(G[i, j]) for j in range(k) if j != i) for i in range(k))
        assert gmin > 0, 'Gram matrix not certified positive definite'
        self.lam_max = float(gmax) * (1 + 1e-15)
        self.ginv_half = 1 / math.sqrt(float(gmin) * (1 - 1e-15)) * (1 + 1e-15)
        # rational basis of N: columns of P_N with largest rank (greedy), then certify J^T J >= sigma^2 on N
        PNn = rec.PNn; Q, Rr, piv = np.linalg.qr(PNn, mode='reduced'), None, None
        u, sv, vt = np.linalg.svd(PNn)
        Nb_f = u[:, sv > 0.5]                                                  # 36 x 21 numeric orthonormal
        assert Nb_f.shape[1] == 21
        # project rounded basis exactly onto N (so it lies in N exactly)
        Nb = rec.PN * arb_mat([[arb(Fr(round(float(x) * 2 ** 30), 2 ** 30).numerator) / 2 ** 30 for x in row] for row in Nb_f])
        JN = J * Nb; GN = Nb.transpose() * Nb; JJ = JN.transpose() * JN
        self.sigma = None
        for sg in sigma_try:
            if cholesky_pd(JJ - GN * arb(sg) ** 2):
                self.sigma = sg; break
        assert self.sigma is not None, 'sigma certification failed'

    def normal_bound(self, R):
        """Returns (rH, n) for the ball ||delta|| <= R, or None if R >= sigma/L."""
        if R >= self.sigma / L_PHI: return None
        rH = self.ginv_half * R
        b = self.e0 + self.j1 * rH + 0.5 * L_PHI * self.lam_max * rH * rH
        disc = self.sigma ** 2 - 2 * L_PHI * b
        if disc <= 0: return None
        n = (self.sigma - math.sqrt(disc)) / L_PHI * (1 + 1e-12)
        return rH, min(n, R)

    def stage_c(self, R, radius=0.042):
        nb = self.normal_bound(R)
        if nb is None: return dict(ok=False, reason='normal bound')
        rH, n = nb
        # column bound: delta_{:,i} = T_i eta + nu_i, so ||delta_{:,i}|| <= ||T_i|| rH + n  (T_i = 6x4 column block of exact T)
        if not hasattr(self, 'tcol'):
            self.tcol = max(opnorm_upper(arb_mat([[self.rec.Tb[6 * j + i, k] for k in range(4)] for j in range(6)])) for i in range(6))
        rcol = min(R, (self.tcol * rH + n) * (1 + 1e-12))
        # Stage C uses the float rounding Tf of the exact rational frame T: T eta = Tf eta + (T - Tf) eta
        dT = float(np.abs(np.array([[float(abs(self.rec.Tb[e, k] - arb(float(self.rec.Tbn[e, k]))).upper()) for k in range(4)] for e in range(36)])).sum())
        n = n + dT * rH * (1 + 1e-12)
        P = self.rec.phi.reshape(6, 6) / SC.TWO_PI
        out = SC.stage_c(P, rcol / SC.TWO_PI, tang=(self.rec.Tbn, rH / SC.TWO_PI, n / SC.TWO_PI), radius=radius)
        out.update(R=R, rH=rH, n=n, rcol=rcol, sigma=self.sigma, e0=self.e0, j1=self.j1)
        return out


if __name__ == '__main__':
    centre = json.load(open(sys.argv[1]))
    t0 = time.time(); B = BallRecord(centre['phi'])
    print('sigma >= %.2f  e0 = %.2e  ||JT|| <= %.2e  lam_max(G) = %.6f  (%.1fs)' % (B.sigma, B.e0, B.j1, B.lam_max, time.time() - t0), flush=True)
    for Rc in (0.01, 0.02, 0.04, 0.063, 0.08, 0.1):
        R = Rc if Rc < 0.2 else Rc
        t0 = time.time(); out = B.stage_c(R)
        print('R = %.3f rad: ok %s  rH %.4f  n %.2e  bins %s labels %s  %.2fs' % (R, out.get('ok'), out.get('rH', 0), out.get('n', 0), out.get('bins'), out.get('labels'), time.time() - t0), flush=True)
