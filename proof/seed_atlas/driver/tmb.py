"""Batched second-order Taylor models (untrusted binary64; after proof/seed_atlas/prototype/tm2.py).

A TM holds, for a batch of boxes b with variables u in prod_j [-h_bj, h_bj] (4 variables), an array of quantities
    x = C + G.u + u^T Hq u + e,   |e| <= Rho,   Hq symmetric.
Shapes: C (B, *S) complex, G (B, *S, 4), Hq (B, *S, 4, 4), Rho (B, *S) real, h (B, 4).
Products keep orders 0..2 exactly and push degree >= 3 into Rho.  Rho is inflated by REL/ABS for rounding; this is the
driver's float estimate only (the certifier redoes everything in Arb).
"""
import numpy as np

REL, ABS = 1e-9, 1e-15


def _sym(Hq): return 0.5 * (Hq + np.swapaxes(Hq, -1, -2))


class TM:
    __slots__ = ('C', 'G', 'Hq', 'Rho', 'h')

    def __init__(self, C, G, Hq, Rho, h):
        self.C = np.asarray(C, complex); self.G = np.asarray(G, complex); self.Hq = np.asarray(Hq, complex)
        self.Rho = np.asarray(Rho, float); self.h = np.asarray(h, float)

    @property
    def nd(self): return self.C.ndim - 1

    def _h1(self): return self.h.reshape((self.h.shape[0],) + (1,) * self.nd + (4,))

    def _h2(self):
        hh = self.h[:, :, None] * self.h[:, None, :]
        return hh.reshape((self.h.shape[0],) + (1,) * self.nd + (4, 4))

    def L1(self): return (np.abs(self.G) * self._h1()).sum(-1)
    def L2(self): return (np.abs(self.Hq) * self._h2()).sum((-1, -2))
    def var(self): return self.L1() + self.L2() + self.Rho
    def bound(self): return np.abs(self.C) + self.var()

    def _new(self, C, G, Hq, Rho): return TM(C, G, Hq, Rho * (1 + REL) + ABS, self.h)

    def __add__(self, o):
        if isinstance(o, TM): return self._new(self.C + o.C, self.G + o.G, self.Hq + o.Hq, self.Rho + o.Rho)
        return TM(self.C + o, self.G, self.Hq, self.Rho, self.h)

    def __neg__(self): return TM(-self.C, -self.G, -self.Hq, self.Rho, self.h)
    def __sub__(self, o): return self + (-o if isinstance(o, TM) else -np.asarray(o))

    def scale(self, a):
        return self._new(a * self.C, a * self.G, a * self.Hq, abs(a) * self.Rho)

    def conj(self): return TM(self.C.conj(), self.G.conj(), self.Hq.conj(), self.Rho, self.h)

    def T(self):
        """Transpose of a (B, n, m) matrix TM."""
        return TM(np.swapaxes(self.C, 1, 2), np.swapaxes(self.G, 1, 2), np.swapaxes(self.Hq, 1, 2),
                  np.swapaxes(self.Rho, 1, 2), self.h)

    def H(self): return self.conj().T()

    def __matmul__(self, o):
        """(B, n, k) @ (B, k, m)."""
        if not isinstance(o, TM):
            o = np.broadcast_to(np.asarray(o, complex), self.C.shape[:1] + np.shape(o)[-2:])
            return self._new(self.C @ o, np.einsum('bijl,bjk->bikl', self.G, o), np.einsum('bijlm,bjk->biklm', self.Hq, o),
                             self.Rho @ np.abs(o))
        C = self.C @ o.C
        G = np.einsum('bij,bjkl->bikl', self.C, o.G) + np.einsum('bijl,bjk->bikl', self.G, o.C)
        Hq = (np.einsum('bij,bjklm->biklm', self.C, o.Hq) + np.einsum('bijlm,bjk->biklm', self.Hq, o.C)
              + _sym(np.einsum('bijl,bjkm->biklm', self.G, o.G)))
        a1, a2, ar = self.L1(), self.L2(), self.Rho; b1, b2, br = o.L1(), o.L2(), o.Rho
        Rho = (np.abs(self.C) @ br + ar @ np.abs(o.C) + a1 @ b2 + a2 @ b1 + a2 @ b2
               + (a1 + a2) @ br + ar @ (b1 + b2) + ar @ br)
        return self._new(C, G, Hq, Rho)

    def lmul(self, A):
        """A @ self for a constant (B, n, k) or (n, k) matrix acting on the first shape axis."""
        A = np.asarray(A, complex)
        if A.ndim == 2: A = np.broadcast_to(A, self.C.shape[:1] + A.shape)
        return self._new(np.einsum('bij,bj...->bi...', A, self.C), np.einsum('bij,bj...->bi...', A, self.G),
                         np.einsum('bij,bj...->bi...', A, self.Hq), np.einsum('bij,bj...->bi...', np.abs(A), self.Rho))

    def mul(self, o):
        """Entrywise product."""
        C = self.C * o.C
        G = self.C[..., None] * o.G + o.C[..., None] * self.G
        Hq = (self.C[..., None, None] * o.Hq + o.C[..., None, None] * self.Hq
              + _sym(self.G[..., :, None] * o.G[..., None, :]))
        a1, a2, ar = self.L1(), self.L2(), self.Rho; b1, b2, br = o.L1(), o.L2(), o.Rho
        Rho = (np.abs(self.C) * br + ar * np.abs(o.C) + a1 * b2 + a2 * b1 + a2 * b2
               + (a1 + a2) * br + ar * (b1 + b2) + ar * br)
        return self._new(C, G, Hq, Rho)

    def nocst(self): return TM(np.zeros_like(self.C), self.G, self.Hq, self.Rho, self.h)

    def __getitem__(self, idx):
        """Entry/slice over the shape axes (the batch axis is kept)."""
        if not isinstance(idx, tuple): idx = (idx,)
        k = (slice(None),) + idx
        return TM(self.C[k], self.G[k], self.Hq[k], self.Rho[k], self.h)

    def take(self, mask):
        """Restrict to the boxes in a boolean or index mask."""
        return TM(self.C[mask], self.G[mask], self.Hq[mask], self.Rho[mask], self.h[mask])


def const(C, h):
    C = np.asarray(C, complex); B = h.shape[0]
    if C.shape[:1] != (B,): C = np.broadcast_to(C, (B,) + C.shape).copy()
    return TM(C, np.zeros(C.shape + (4,), complex), np.zeros(C.shape + (4, 4), complex), np.zeros(C.shape), h)


def exp_i(phi):
    """e^{i phi}, phi real: e^{ic}(1 + i x - x_1^2/2 + R), x = g.u + u^T H u + e, x_1 = g.u;
    |R| <= rho + L1 (L2 + rho) + (L2 + rho)^2 / 2 + (L1 + L2 + rho)^3 / 6."""
    c = phi.C.real; e = np.exp(1j * c)
    G = 1j * e[..., None] * phi.G
    Hq = e[..., None, None] * (1j * phi.Hq - 0.5 * _sym(phi.G[..., :, None] * phi.G[..., None, :]))
    l1, l2, r = phi.L1(), phi.L2(), phi.Rho
    Rho = r + l1 * (l2 + r) + 0.5 * (l2 + r) ** 2 + (l1 + l2 + r) ** 3 / 6
    return TM(e, G, Hq, Rho * (1 + REL) + ABS, phi.h)


def arg_near(D, Pref):
    """arg(c (1 + u)) = arg c + Im(u - u^2/2) + Im R, |R| <= |u|^3 / (3 (1 - |u|)), on the branch nearest Pref.
    Returns (TM, ok mask)."""
    c = D.C; absc = np.abs(c)
    u = TM(np.zeros_like(c), D.G / c[..., None], D.Hq / c[..., None, None], D.Rho / absc, D.h)
    ub = u.var()
    ok = np.all((ub < 0.5).reshape(len(c), -1), axis=1)
    ub = np.minimum(ub, 0.5)
    u2 = u.mul(u)
    a = np.angle(c); a = a + 2 * np.pi * np.round((Pref - a) / (2 * np.pi))
    G = u.G.imag - 0.5 * u2.G.imag
    Hq = u.Hq.imag - 0.5 * u2.Hq.imag
    Rho = u.Rho + 0.5 * u2.Rho + ub ** 3 / (3 * (1 - ub))
    return TM(a, G, Hq, Rho * (1 + REL) + ABS, D.h), ok


def assemble(entries, shape, h):
    """entries: list (row-major over shape) of TMs with scalar shape, or Python numbers (constants)."""
    B = h.shape[0]
    C = np.zeros((B,) + shape, complex); G = np.zeros((B,) + shape + (4,), complex)
    Hq = np.zeros((B,) + shape + (4, 4), complex); R = np.zeros((B,) + shape)
    for k, e in enumerate(entries):
        idx = (slice(None),) + np.unravel_index(k, shape)
        if isinstance(e, TM): C[idx], G[idx], Hq[idx], R[idx] = e.C, e.G, e.Hq, e.Rho
        else: C[idx] = e
    return TM(C, G, Hq, R, h)


def re(t): return TM(t.C.real, t.G.real, t.Hq.real, t.Rho, t.h)
def im(t): return TM(t.C.imag, t.G.imag, t.Hq.imag, t.Rho, t.h)


def sup_norm(a, b, Hq, rho, h):
    """Upper bound of sup_u ||a + b u + u^T Hq u + e|| over the box |u_j| <= h_j, |e_i| <= rho_i (real vectors).
    a (B, n), b (B, n, 4), Hq (B, n, 4, 4), rho (B, n), h (B, 4).  ||a + b u|| is convex: max over the 16 vertices."""
    sg = np.array(np.meshgrid(*[[-1.0, 1.0]] * 4, indexing='ij')).reshape(4, -1).T          # 16 x 4
    V = sg[None, :, :] * h[:, None, :]                                                     # B x 16 x 4
    lin = np.linalg.norm(a[:, None, :] + np.einsum('bnj,bvj->bvn', b, V), axis=2).max(1)
    hh = h[:, :, None] * h[:, None, :]
    quad = (np.linalg.norm(Hq, axis=1) * hh).sum((1, 2))
    return lin + quad + np.linalg.norm(rho, axis=1)
