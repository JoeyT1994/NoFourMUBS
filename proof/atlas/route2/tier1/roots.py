"""Complex roots of the unbiasedness system in log coordinates (floating point helpers; exploration only).

For a 6x6 matrix H (columns h_i) and u in C^5 (z_k = e^{u_k}, z_0 = 1):
    a_i(u) = sum_j conj(H_ji) z_j,  b_i(u) = sum_k H_ki / z_k,  F_i(u) = a_i b_i - 6   (i = 0..4).
On the torus (u = i beta) a_i b_i = |<h_i, x>|^2, so torus roots are the vectors unbiased to I and H.  F is holomorphic,
F(-conj u) = conj F(u) (for every H), the sixth equation is implied when H H^* = 6 I, and by Bernstein's theorem the
system has at most 252 isolated roots in (C^*)^5 (normalised volume of the A5 root polytope)."""
import os, subprocess, sys
from pathlib import Path
import numpy as np
HERE = Path(__file__).resolve().parent
ATLAS = HERE.parents[1]
sys.path.insert(0, str(ATLAS))
import atlas as AT
from geometry import jacobian, HB

def F(H, u):
    z = np.concatenate([[1.0], np.exp(u)]); a = H.conj().T @ z; b = H.T @ (1 / z)
    return (a * b - 6.0)[:5]

def JF(H, u):
    z = np.concatenate([[1.0], np.exp(u)]); a = H.conj().T @ z; b = H.T @ (1 / z)
    da = H.conj().T[:, 1:] * z[None, 1:]; db = -H.T[:, 1:] / z[None, 1:]
    return (da * b[:, None] + a[:, None] * db)[:5]

def newton(H, u, it=30, tol=1e-13):
    for _ in range(it):
        step = np.linalg.solve(JF(H, u), -F(H, u)); u = u + step
        if np.max(abs(step)) < tol: break
    return u, np.max(abs(F(H, u)))

def wrap(u):
    """imaginary parts to (-pi, pi]"""
    return u.real + 1j * np.angle(np.exp(1j * u.imag))

def frame(P):
    H = np.exp(1j * P); U, s, Vt = np.linalg.svd(jacobian(H))
    return HB @ Vt[-4:].T

def chart(P, T, eta):
    x, ok = AT.project(P.reshape(36) + T @ eta)
    return x.reshape(6, 6), ok

JENV = Path(os.environ.get('JENV', '/private/tmp/claude-503/-Users-jtindall-Files-NoFourMUBS/c71c0e42-2268-4e63-8463-bc12919f98b3/scratchpad/jenv'))
CACHE = HERE / 'hc_cache'

def hc_roots(Hs, tags, workdir=None):
    """All 252 complex roots (log coordinates) of each H via HomotopyContinuation.jl (polyhedral homotopy), cached."""
    CACHE.mkdir(exist_ok=True); out = {}; todo = []
    for H, t in zip(Hs, tags):
        f = CACHE / f'sols_{t}.txt'
        if f.exists(): out[t] = np.loadtxt(f).reshape(-1, 10)
        else: todo.append((H, t))
    if todo:
        inp = CACHE / 'in.txt'
        with open(inp, 'w') as f:
            for H, t in todo: f.write(str(t) + ' ' + ' '.join('%.17g %.17g' % (z.real, z.imag) for z in H.reshape(-1)) + '\n')
        env = dict(os.environ, JULIA_NUM_THREADS='1', OPENBLAS_NUM_THREADS='2')
        subprocess.run(['nice', '-n', '10', 'julia', '--startup-file=no', f'--project={JENV}', str(HERE / 'hc_count.jl'), str(inp), str(CACHE)],
                       env=env, check=True, capture_output=True)
        for H, t in todo: out[t] = np.loadtxt(CACHE / f'sols_{t}.txt').reshape(-1, 10)
    res = {}
    for H, t in zip(Hs, tags):
        z = out[t][:, 0::2] + 1j * out[t][:, 1::2]
        U = np.array([newton(H, np.log(zz))[0] for zz in z])
        res[t] = wrap(U)
    return res

def track_all(P, T, U0, eta, h0=0.25, minh=1e-4):
    """Continue every root along the segment t*eta, t in [0, 1], with an adaptive Euler predictor and Newton corrector
    (corrections must contract quickly; otherwise the step is halved).  Returns (U, H, ok)."""
    U = U0.copy(); t = 0.0; h = h0
    X, _ = chart(P, T, 0 * eta); H = np.exp(1j * X); ok = True
    while t < 1 - 1e-15:
        h = min(h, 1 - t)
        X1, ok1 = chart(P, T, eta * (t + h)); H1 = np.exp(1j * X1)
        good = ok1; Unew = U.copy()
        if good:
            for a in range(len(U)):
                J = JF(H, U[a]); dF = F(H1, U[a]) - F(H, U[a])
                v = U[a] - np.linalg.solve(J, dF)                       # Euler predictor
                c0 = None
                for it in range(8):
                    J1 = JF(H1, v); s = np.linalg.solve(J1, -F(H1, v)); ns = np.max(abs(s))
                    if it == 0: c0 = ns
                    if not np.isfinite(ns) or (it == 0 and ns > 0.02) or (it > 0 and ns > 1e-10 and ns > 0.3 * prev): good = False; break
                    v = v + s; prev = ns
                    if ns < 1e-11: break
                else:
                    good = False
                if not good: break
                Unew[a] = v
        if good:
            U = Unew; H = H1; t += h; h = min(2 * h, h0)
        else:
            h /= 2
            if h < minh: return U, H, False
    return U, H, ok

def spread(u):
    """Re-spread of a root: max - min of Re(u_k), k = 0..5 (u_0 = 0)."""
    r = np.concatenate([[0.0], u.real]); return r.max() - r.min()

def track_each(P, T, U0, eta, h0=0.25, minh=1e-5, esc=9.0, chartfn=None):
    """Like track_all, but per root, and roots whose Re-spread exceeds esc are marked escaped (NaN) and dropped."""
    chartfn = chartfn or (lambda e: np.exp(1j * chart(P, T, e)[0]))
    U = U0.copy(); alive = np.ones(len(U), bool); t = 0.0; h = h0
    H = chartfn(0 * eta); fail = np.zeros(len(U), bool)
    while t < 1 - 1e-15:
        h = min(h, 1 - t); H1 = chartfn(eta * (t + h)); good = True; Unew = U.copy()
        for a in np.where(alive)[0]:
            J = JF(H, U[a]); dF = F(H1, U[a]) - F(H, U[a])
            v = U[a] - np.linalg.solve(J, dF); prev = None; ok = False
            for it in range(8):
                s = np.linalg.solve(JF(H1, v), -F(H1, v)); ns = np.max(abs(s))
                if not np.isfinite(ns) or (it == 0 and ns > 0.02) or (it > 0 and ns > 1e-10 and ns > 0.3 * prev): break
                v = v + s; prev = ns
                if ns < 1e-11: ok = True; break
            if not ok:
                if spread(U[a]) > esc - 2: alive[a] = False; Unew[a] = np.nan; continue
                good = False; break
            Unew[a] = v
            if spread(v) > esc: alive[a] = False; Unew[a] = np.nan
        if good:
            U = Unew; H = H1; t += h; h = min(2 * h, h0)
        else:
            h /= 2
            if h < minh: return U, H, alive, False
    return U, H, alive, True
