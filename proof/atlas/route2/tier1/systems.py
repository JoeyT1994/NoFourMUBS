"""Charts of the toric compactification X_Q for the unbiasedness system (floating point; exploration/prototype).

Roots are points of (C^*)^6 / C^* (z up to scale).  Equations (i = 0..4): f_i = a_i b_i - 6 with a_i = sum_j conj(H_ji) z_j,
b_i = sum_k H_ki / z_k (scale invariant).  Two kinds of chart:

  * log chart  v = u in C^5:  z = (1, e^{u_1}, ..., e^{u_5});  G = f.
  * tau chart for a partition {0..5} = S u T (s* in S, t* in T):  v = (tau, w) with w in C^4 the logs of
    zeta_j = z_j / z_{s*} (j in S - s*) and pi_k = z_k / z_{t*} (k in T - t*), tau = z_{t*} / z_{s*}.  Then
        G_i = tau (A^S_i B^S_i + A^T_i B^T_i - 6) + A^S_i B^T_i + tau^2 A^T_i B^S_i   ( = tau f_i ),
    A^S_i = sum_{j in S} conj(H_ji) zeta_j,  B^T_i = sum_{k in T} H_ki / pi_k, etc.  It covers the open orbit of the toric
    divisor D_S (tau = 0) and the roots escaping to it, which happens on the 'rectangle' hypersurfaces of Hadamard space
    (a vanishing 2x2 minor forces the complementary 4x4 minor to vanish, so the facial system of w = 1_S has a root).
"""
import numpy as np

class LogChart:
    kind = 'log'
    def __init__(self): self.key = ('log',)
    def G(self, H, v):
        z = np.concatenate([[1.0], np.exp(v)]); a = H.conj().T @ z; b = H.T @ (1 / z)
        return (a * b - 6.0)[:5]
    def J(self, H, v):
        z = np.concatenate([[1.0], np.exp(v)]); a = H.conj().T @ z; b = H.T @ (1 / z)
        da = H.conj().T[:, 1:] * z[None, 1:]; db = -H.T[:, 1:] / z[None, 1:]
        return (da * b[:, None] + a[:, None] * db)[:5]
    def to_z(self, v): return np.concatenate([[1.0 + 0j], np.exp(v)])
    def from_z(self, z, ref=None):
        v = np.log(z[1:] / z[0])
        if ref is not None: v = v.real + 1j * (ref.imag + np.angle(np.exp(1j * (v.imag - ref.imag))))
        return v
    def torus_dist(self, v): return np.max(abs(v.real))

class TauChart:
    kind = 'tau'
    def __init__(self, S):
        S = sorted(S); T = [k for k in range(6) if k not in S]
        self.S, self.T, self.ss, self.ts = S, T, S[0], T[0]
        self.Sf = S[1:]; self.Tf = T[1:]                       # free log coordinates
        self.key = ('tau', tuple(S))
    def _parts(self, H, v):
        tau = v[0]; w = v[1:]; nS = len(self.Sf)
        zeta = np.ones(6, complex); pi = np.ones(6, complex)
        zeta[self.Sf] = np.exp(w[:nS]); pi[self.Tf] = np.exp(w[nS:])
        S, T = self.S, self.T
        AS = H.conj().T[:, S] @ zeta[S]; BS = H.T[:, S] @ (1 / zeta[S])
        AT = H.conj().T[:, T] @ pi[T]; BT = H.T[:, T] @ (1 / pi[T])
        return tau, zeta, pi, AS, BS, AT, BT
    def G(self, H, v):
        tau, zeta, pi, AS, BS, AT, BT = self._parts(H, v)
        return (tau * (AS * BS + AT * BT - 6) + AS * BT + tau ** 2 * AT * BS)[:5]
    def J(self, H, v):
        tau, zeta, pi, AS, BS, AT, BT = self._parts(H, v)
        cols = [(AS * BS + AT * BT - 6) + 2 * tau * AT * BS]
        for j in self.Sf:
            dA = H.conj().T[:, j] * zeta[j]; dB = -H.T[:, j] / zeta[j]
            cols.append(tau * (dA * BS + AS * dB) + dA * BT + tau ** 2 * AT * dB)
        for k in self.Tf:
            dA = H.conj().T[:, k] * pi[k]; dB = -H.T[:, k] / pi[k]
            cols.append(tau * (dA * BT + AT * dB) + AS * dB + tau ** 2 * dA * BS)
        return np.array(cols).T[:5]
    def to_z(self, v):
        """z up to scale (only for tau != 0)"""
        tau, w = v[0], v[1:]; nS = len(self.Sf); z = np.ones(6, complex)
        z[self.Sf] = np.exp(w[:nS]); z[self.T] = tau; z[self.Tf] = tau * np.exp(w[nS:])
        return z / z[0]
    def from_z(self, z, ref=None):
        tau = z[self.ts] / z[self.ss]
        w = np.concatenate([np.log(z[self.Sf] / z[self.ss]), np.log(z[self.Tf] / z[self.ts])])
        if ref is not None: w = w.real + 1j * (ref[1:].imag + np.angle(np.exp(1j * (w.imag - ref[1:].imag))))
        return np.concatenate([[tau], w])
    def torus_dist(self, v):
        z = self.to_z(v) if abs(v[0]) > 0 else None
        return np.inf if z is None else np.max(abs(np.log(abs(z))))

def escape_pattern(z):
    """S = indices above the largest gap of log|z| (the high group), for a root far from the torus."""
    l = np.log(abs(z)); o = np.argsort(l); g = np.diff(l[o]); k = int(np.argmax(g))
    return sorted(o[k + 1:].tolist()), float(g[k])

def newton(ch, H, v, it=12, tol=1e-12):
    for _ in range(it):
        s = np.linalg.solve(ch.J(H, v), -ch.G(H, v)); v = v + s
        if np.max(abs(s)) < tol: break
    return v, np.max(abs(ch.G(H, v)))

def track(ch, Hfun, v0, eta, h0=0.25, minh=1e-5, switch=4.5, maxsteps=4000):
    """Continue one root from H(0) to H(eta) (segment), in chart ch, switching a log-chart root to the tau chart of its
    escape pattern when its log|z| spread exceeds `switch`.  Returns (chart, v, ok)."""
    t = 0.0; h = h0; H = Hfun(0 * eta); v = v0.copy(); steps = 0
    while t < 1 - 1e-15 and steps < maxsteps:
        steps += 1
        if ch.kind == 'log':
            r = np.concatenate([[0.0], v.real])
            if r.max() - r.min() > switch:
                z = ch.to_z(v); S, gap = escape_pattern(z); ch2 = TauChart(S); v = ch2.from_z(z); ch = ch2
        h = min(h, 1 - t); H1 = Hfun(eta * (t + h))
        try:
            J = ch.J(H, v); w = v - np.linalg.solve(J, ch.G(H1, v) - ch.G(H, v))
            ok = False; prev = None
            for it in range(8):
                s = np.linalg.solve(ch.J(H1, w), -ch.G(H1, w)); ns = np.max(abs(s))
                if not np.isfinite(ns) or (it == 0 and ns > 0.02 * (1 + np.max(abs(w)))) or (it > 0 and ns > 1e-10 and ns > 0.3 * prev): break
                w = w + s; prev = ns
                if ns < 1e-11: ok = True; break
        except np.linalg.LinAlgError:
            ok = False
        if ok:
            v = w; H = H1; t += h; h = min(2 * h, h0)
        else:
            h /= 2
            if h < minh: return ch, v, False
    return ch, v, t >= 1 - 1e-15
