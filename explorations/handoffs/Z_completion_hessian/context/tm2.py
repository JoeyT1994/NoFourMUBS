"""Second-order Taylor models over a box z in prod_j [-h_j, h_j] (4 variables).

Entry = C + G.z + z^T Hq z + e,  |e| <= Rho,  Hq symmetric.  Products keep constant, linear and quadratic parts
exactly and push degree >= 3 into Rho.  Prototype: binary64 coefficients, Rho inflated by REL/ABS for rounding.
"""
import numpy as np

REL, ABS = 1e-9, 1e-15


def _sym(Hq): return 0.5 * (Hq + np.swapaxes(Hq, -1, -2))


class TM:
    def __init__(self, C, G, Hq, Rho, h):
        self.C = np.asarray(C, complex); self.G = np.asarray(G, complex); self.Hq = np.asarray(Hq, complex)
        self.Rho = np.asarray(Rho, float); self.h = np.asarray(h, float)

    def L1(self): return (np.abs(self.G) * self.h).sum(-1)
    def L2(self): return (np.abs(self.Hq) * np.outer(self.h, self.h)).sum((-1, -2))
    def var(self): return self.L1() + self.L2() + self.Rho          # bound on |entry - C|
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
    def T(self): return TM(self.C.T, np.swapaxes(self.G, 0, 1), np.swapaxes(self.Hq, 0, 1), self.Rho.T, self.h)
    def H(self): return self.conj().T()

    def __matmul__(self, o):
        if not isinstance(o, TM):
            o = np.asarray(o, complex)
            return self._new(self.C @ o, np.einsum('ijl,jk->ikl', self.G, o), np.einsum('ijlm,jk->iklm', self.Hq, o),
                             self.Rho @ np.abs(o))
        C = self.C @ o.C
        G = np.einsum('ij,jkl->ikl', self.C, o.G) + np.einsum('ijl,jk->ikl', self.G, o.C)
        Hq = (np.einsum('ij,jklm->iklm', self.C, o.Hq) + np.einsum('ijlm,jk->iklm', self.Hq, o.C)
              + _sym(np.einsum('ijl,jkm->iklm', self.G, o.G)))
        a1, a2, ar = self.L1(), self.L2(), self.Rho; b1, b2, br = o.L1(), o.L2(), o.Rho
        Rho = (np.abs(self.C) @ br + ar @ np.abs(o.C) + a1 @ b2 + a2 @ b1 + a2 @ b2
               + (a1 + a2) @ br + ar @ (b1 + b2) + ar @ br)
        return self._new(C, G, Hq, Rho)

    def lmul(self, A):
        A = np.asarray(A, complex)
        return self._new(A @ self.C, np.einsum('ij,jkl->ikl', A, self.G), np.einsum('ij,jklm->iklm', A, self.Hq),
                         np.abs(A) @ self.Rho)

    def mul(self, o):
        C = self.C * o.C
        G = self.C[..., None] * o.G + o.C[..., None] * self.G
        Hq = self.C[..., None, None] * o.Hq + o.C[..., None, None] * self.Hq + _sym(self.G[..., :, None] * o.G[..., None, :])
        a1, a2, ar = self.L1(), self.L2(), self.Rho; b1, b2, br = o.L1(), o.L2(), o.Rho
        Rho = (np.abs(self.C) * br + ar * np.abs(o.C) + a1 * b2 + a2 * b1 + a2 * b2
               + (a1 + a2) * br + ar * (b1 + b2) + ar * br)
        return self._new(C, G, Hq, Rho)

    def nocst(self): return TM(np.zeros_like(self.C), self.G, self.Hq, self.Rho, self.h)


def const(C, h):
    C = np.asarray(C, complex)
    return TM(C, np.zeros(C.shape + (4,), complex), np.zeros(C.shape + (4, 4), complex), np.zeros(C.shape), h)


def exp_i(phi):
    """e^{i phi}, phi real: e^{ic}(1 + i x - x_1^2/2 + R), x = g.z + z^T H z + e, x_1 = g.z;
    |R| <= rho + L1 (L2 + rho) + (L2 + rho)^2 / 2 + (L1 + L2 + rho)^3 / 6."""
    c = phi.C.real; e = np.exp(1j * c)
    G = 1j * e[..., None] * phi.G
    Hq = e[..., None, None] * (1j * phi.Hq - 0.5 * _sym(phi.G[..., :, None] * phi.G[..., None, :]))
    l1, l2, r = phi.L1(), phi.L2(), phi.Rho
    Rho = r + l1 * (l2 + r) + 0.5 * (l2 + r) ** 2 + (l1 + l2 + r) ** 3 / 6
    return TM(e, G, Hq, Rho * (1 + REL) + ABS, phi.h)


def inv3(Gm):
    """G^-1 = A - X A + X X A - tail,  X = A (G - C),  ||tail|| <= q^3 ||A|| / (1 - q),  q = ||X||_inf."""
    A = np.linalg.inv(Gm.C)
    X = Gm.nocst().lmul(A)
    q = X.var().sum(1).max()
    if q >= 1: return None
    nA = np.abs(A).sum(1).max()
    XA = X @ A; XXA = X @ XA
    R = const(A, Gm.h) - XA + XXA
    tail = q ** 3 * nA / (1 - q)
    return TM(R.C, R.G, R.Hq, (R.Rho + tail) * (1 + REL) + ABS, Gm.h)


def arg_near(D, P):
    """arg(c (1 + u)) = arg c + Im(u - u^2/2) + Im R,  |R| <= |u|^3 / (3 (1 - |u|))."""
    c = D.C; absc = np.abs(c)
    u = TM(np.zeros_like(c), D.G / c[..., None], D.Hq / c[..., None, None], D.Rho / absc, D.h)
    ub = u.var()
    if np.any(ub >= 0.5): return None
    u2 = u.mul(u)
    a = np.angle(c); a = a + 2 * np.pi * np.round((P - a) / (2 * np.pi))
    G = u.G.imag - 0.5 * u2.G.imag
    Hq = u.Hq.imag - 0.5 * u2.Hq.imag
    Rho = u.Rho + 0.5 * u2.Rho + ub ** 3 / (3 * (1 - ub))
    return TM(a, G, Hq, Rho * (1 + REL) + ABS, D.h)


def entry(t, idx): return TM(t.C[idx], t.G[idx], t.Hq[idx], t.Rho[idx], t.h)


def assemble(entries, shape, h):
    C = np.zeros(shape, complex); G = np.zeros(shape + (4,), complex); Hq = np.zeros(shape + (4, 4), complex)
    R = np.zeros(shape)
    for k, e in enumerate(entries):
        idx = np.unravel_index(k, shape)
        if isinstance(e, TM): C[idx], G[idx], Hq[idx], R[idx] = e.C, e.G, e.Hq, e.Rho
        else: C[idx] = e
    return TM(C, G, Hq, R, h)


def re(t): return TM(t.C.real, t.G.real, t.Hq.real, t.Rho, t.h)
def im(t): return TM(t.C.imag, t.G.imag, t.Hq.imag, t.Rho, t.h)
