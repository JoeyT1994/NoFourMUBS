"""Non-rigorous estimate of the admissible carrier-cell tolerance for a
SHARPER per-cell quartet test (Krawczyk-style ray enclosures instead of the
crude cluster radii of fixed_carrier_quartet.py).

At an exact carrier U, each common ray z_i (phases phi_i in T^5) solves
f_j(phi) = |<z,h_j>|^2 - 1/6 = 0, j=1..5.  If every overlap <z,h_j> is perturbed
by at most eps (carrier cell), first order: |dphi| <= ||J_i^{-1}|| * 2*(1/sqrt6)*eps*sqrt5,
so every entry of z_i moves by <= r_i/.. ; we bound |d<z_a,z_b>| <= (|dphi_a|_1+|dphi_b|_1)/6.
For a given eps we then run the same clique/pair test as the pilot and report
the largest eps (on a grid) at which the quartet is still excluded.
"""
import numpy as np, sys, itertools
sys.argv = [sys.argv[0], '7', '0'] + sys.argv[1:]
exec(open('margin.py').read().split('for n in range')[0])
src = open('fixed_carrier_quartet.py').read()
exec(src[src.index('def fourier_ab'):src.index('def carrier(')])
sys.path.insert(0, str(__import__('pathlib').Path(__file__).resolve().parents[2] / 'MinimalConstruction' / 'Implementation'))
import mpmath as mp
from model import Model

def carrier_from(spec):
    if spec.startswith('F:'):
        a, b = map(float, spec[2:].split(',')); return fourier_ab(a, b)
    if spec.startswith('X:'):
        r, i = map(float, spec[2:].split(',')); return x6(complex(r, i))
    th = [float(x) for x in spec.split(',')]
    return np.array(Model([mp.exp(1j * mp.mpf(t)) for t in th]).hadamard().tolist(), dtype=complex) / np.sqrt(6)

def jac_norm(U, z):
    phi = np.angle(z[1:] / z[0])
    def f(p):
        v = np.concatenate([[1], np.exp(1j * p)]) / np.sqrt(6)
        return abs(U.conj().T @ v)[:5] ** 2 - 1 / 6
    h = 1e-7
    J = np.array([(f(phi + h * e) - f(phi - h * e)) / (2 * h) for e in np.eye(5)]).T
    return np.linalg.norm(np.linalg.inv(J), 2)

def test(R, sens, eps):
    k = len(R)
    dphi = sens * 2 / np.sqrt(6) * eps * np.sqrt(5)          # |dphi|_2 bound
    rad = dphi * np.sqrt(5) / 6                               # |d<z,w>| contribution per ray
    G = np.abs(np.array([[np.vdot(a, b) for b in R] for a in R]))
    tol = rad[:, None] + rad[None, :]
    orth = G <= tol; np.fill_diagonal(orth, False)
    unb = np.abs(G - 1 / np.sqrt(6)) <= tol
    adj = [set(np.nonzero(orth[i])[0]) for i in range(k)]
    cl = []
    def ext(cur, cand):
        if len(cl) > 200000: return
        if len(cur) == 6: cl.append(tuple(cur)); return
        for v in sorted(cand):
            if v > (cur[-1] if cur else -1): ext(cur + [v], cand & adj[v])
    ext([], set(range(k)))
    if len(cl) > 200000: return len(cl), None
    pairs = sum(all(unb[a, b] for a in A for b in B) for A, B in itertools.combinations(cl, 2))
    return len(cl), pairs

for spec in sys.argv[3:]:
    U = carrier_from(spec)
    R = rays(U, 2500)
    sens = np.array([jac_norm(U, z) for z in R])
    out = []
    for eps in (0.001, 0.003, 0.01, 0.02, 0.03, 0.05, 0.08):
        nb, pr = test(R, sens, eps)
        out.append((eps, nb, pr))
        if pr is None or pr > 0: break
    ok = [e for e, nb, pr in out if pr == 0]
    print(f"{spec}: rays {len(R)}, median ||J^-1|| {np.median(sens):.2f}, max {sens.max():.1f}; "
          f"scan (eps,bases,pairs) {out}; largest certified eps {max(ok) if ok else None}", flush=True)
