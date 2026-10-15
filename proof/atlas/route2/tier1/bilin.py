"""The inverse-free bilinear system of returns/A_root_count (eq. (3)), in one affine chart per root, and Krawczyk bounds
that are uniform over a COEFFICIENT BOX (floating-point evaluation of exact bound formulas; the Arb version is the same
formulas with outward rounding).

Unknowns x, v in C^6 with x_p = 1, v_q = 1 (chart (p, q) per root); a = A x, y = A^T v, c = x_0 y_0.
    E_i = x_i y_i - c (i = 1..5),   G_j = a_j v_j - c (j = 0..4).
Every equation is TRILINEAR in (A, x, v):  F_k = sum T[k, (j, m), s, t] A_jm x_s v_t  with T in {0, +-1}.
For a Hadamard H, A = H^* / sqrt 6; a root with c != 0 corresponds to z = x / x_0 (unbiased vector when |z_i| = 1).
"""
import itertools, math
import numpy as np

def tensor():
    T = np.zeros((10, 6, 6, 6, 6))           # k, j, m (A_jm), s (x_s), t (v_t)
    for i in range(1, 6):                    # E_i = sum_j A_ji x_i v_j - sum_j A_j0 x_0 v_j
        k = i - 1
        for j in range(6): T[k, j, i, i, j] += 1; T[k, j, 0, 0, j] -= 1
    for j in range(5):                       # G_j = sum_m A_jm x_m v_j - sum_l A_l0 x_0 v_l
        k = 5 + j
        for m in range(6): T[k, j, m, m, j] += 1
        for l in range(6): T[k, l, 0, 0, l] -= 1
    return T.reshape(10, 36, 6, 6)
TT = tensor()

def F(A, x, v): return np.einsum('kast,a,s,t->k', TT, A.reshape(36), x, v)

class Root:
    """A root in its chart: x (x_p = 1), v (v_q = 1); free coordinates w = (x without p, v without q) in C^10."""
    def __init__(self, x, v):
        self.p = int(np.argmax(abs(x))); self.q = int(np.argmax(abs(v)))
        self.x = x / x[self.p]; self.v = v / v[self.q]
        self.fx = [s for s in range(6) if s != self.p]; self.fv = [t for t in range(6) if t != self.q]
    def J(self, A, x=None, v=None):
        x = self.x if x is None else x; v = self.v if v is None else v
        Jx = np.einsum('kast,a,t->ks', TT, A.reshape(36), v)[:, self.fx]
        Jv = np.einsum('kast,a,s->kt', TT, A.reshape(36), x)[:, self.fv]
        return np.hstack([Jx, Jv])
    def split(self, w):
        x = self.x.copy(); v = self.v.copy(); x[self.fx] = w[:5]; v[self.fv] = w[5:]; return x, v
    def w(self): return np.concatenate([self.x[self.fx], self.v[self.fv]])
    def newton(self, A, it=20):
        for _ in range(it):
            s = np.linalg.solve(self.J(A), -F(A, self.x, self.v))
            self.x[self.fx] += s[:5]; self.v[self.fv] += s[5:]
            if np.max(abs(s)) < 1e-15: break
        return np.max(abs(F(A, self.x, self.v)))

def roots_from_log(H, U):
    """252 log-chart roots u (z = (1, e^u)) -> Root objects for A = H^*/sqrt6."""
    A = H.conj().T / math.sqrt(6); out = []
    for u in U:
        x = np.concatenate([[1.0], np.exp(u)]); v = np.linalg.solve(A.T, 1 / x)
        r = Root(x, v); r.newton(A); out.append(r)
    return A, out

def basis_terms(r, A0):
    """Tensors needed for the bounds, for root r at coefficient matrix A0 (36 complex parameters alpha = A - A0):
       Fa[k, e]      = dF_k / d alpha_e                          (at x, v)
       Jw            = dF/dw                                      (10 x 10)
       JA[k, e, l]   = d^2 F_k / d alpha_e d w_l                  (Jacobian change per unit alpha_e)
       Jww[k, l, l'] = d^2 F_k / d w_l d w_l'                     (x-v cross terms; Jacobian change per unit w)
       JAww[k, e, l, l'] (third order, constant)"""
    a0 = A0.reshape(36); x, v = r.x, r.v
    Fa = np.einsum('kast,s,t->ka', TT, x, v)
    Jw = r.J(A0)
    JAx = np.einsum('kast,t->kas', TT, v)[:, :, r.fx]; JAv = np.einsum('kast,s->kat', TT, x)[:, :, r.fv]
    JA = np.concatenate([JAx, JAv], 2)
    Txv = np.einsum('kast,a->kst', TT, a0)[:, r.fx][:, :, r.fv]       # k, x-free, v-free
    Jww = np.zeros((10, 10, 10), complex); Jww[:, :5, 5:] = Txv; Jww[:, 5:, :5] = Txv.transpose(0, 2, 1)
    Taxv = TT[:, :, r.fx][:, :, :, r.fv]
    JAww = np.zeros((10, 36, 10, 10)); JAww[:, :, :5, 5:] = Taxv; JAww[:, :, 5:, :5] = Taxv.transpose(0, 1, 3, 2)
    return Fa, Jw, JA, Jww, JAww

def kraw_constant(r, A0, w):
    """Krawczyk with CONSTANT centre w0 and constant preconditioner C = J0^{-1}, uniform over the complex coefficient box
    |Re, Im (A - A0)_e| <= w (so |alpha_e| <= sqrt2 w).  Returns the smallest box radius r (max-norm on complex coords)
    with  eps_k + kappa_k(r) r < r  for all rows k, or None."""
    Fa, Jw, JA, Jww, JAww = basis_terms(r, A0)
    C = np.linalg.inv(Jw); aw = math.sqrt(2) * w
    eps = abs(C @ F(A0, r.x, r.v)) + aw * np.abs(np.einsum('kl,le->ke', C, Fa)).sum(1)
    k0 = np.abs(np.eye(10) - C @ Jw).sum(1)
    kA = aw * np.abs(np.einsum('kj,jel->kel', C, JA)).sum((1, 2))                 # per unit radius-independent
    kW = np.abs(np.einsum('kj,jlm->klm', C, Jww)).sum((1, 2))                      # times r (|y_l'| <= r)
    kAW = aw * np.abs(np.einsum('kj,jelm->kelm', C, JAww)).sum((1, 2, 3))         # times r
    # rows: eps + (k0 + kA) r + (kW + kAW) r^2 < r
    return _solve_r(eps, k0 + kA, kW + kAW)

def _solve_r(eps, lin, quad):
    best = None
    # the condition must hold for all rows simultaneously; scan r on a log grid, then refine
    for rr in np.geomspace(1e-14, 2.0, 400):
        if np.all(eps + lin * rr + quad * rr * rr < rr): best = rr; break
    return best

def kraw_affine(r, A0, w):
    """Krawczyk with AFFINE centre m(alpha) = w0 + D alpha (D = -J0^{-1} F_alpha) and constant C = J0^{-1}, uniform over
    the coefficient box.  F(A0 + alpha, m(alpha)) is a polynomial in alpha with zero linear part; its quadratic and cubic
    parts are bounded crudely by absolute values.  The Jacobian at m(alpha) + y differs from J0 by
    J_A alpha + J_ww (D alpha + y) + J_Aww (alpha, D alpha + y)."""
    Fa, Jw, JA, Jww, JAww = basis_terms(r, A0)
    C = np.linalg.inv(Jw); aw = math.sqrt(2) * w
    D = -C @ Fa                                                                     # 10 x 36
    s = aw * np.abs(D).sum(1)                                                       # sweep bound per free coordinate
    # eps: C F(A0 + alpha, w0 + D alpha) = C F0 + (exact cancel) + C [JA(alpha, D alpha) + 1/2 Jww(D alpha, D alpha)]
    #       + C [1/2 JAww(alpha, D alpha, D alpha)]
    CJA = np.abs(np.einsum('kj,jel->kel', C, JA)); CJww = np.abs(np.einsum('kj,jlm->klm', C, Jww))
    CJAww = np.abs(np.einsum('kj,jelm->kelm', C, JAww))
    eps = abs(C @ F(A0, r.x, r.v)) + aw * (np.abs(C @ Fa + C @ Jw @ D)).sum(1)
    eps = eps + aw * np.einsum('kel,l->k', CJA, s) + 0.5 * np.einsum('klm,l,m->k', CJww, s, s) \
          + 0.5 * aw * np.einsum('kelm,l,m->k', CJAww, s, s)
    k0 = np.abs(np.eye(10) - C @ Jw).sum(1)
    lin = k0 + aw * CJA.sum((1, 2)) + np.einsum('klm,l->k', CJww, s) + aw * np.einsum('kelm,l->k', CJAww, s)
    quad = CJww.sum((1, 2)) + aw * CJAww.sum((1, 2, 3))
    return _solve_r(eps, lin, quad), float(s.max())
