"""Count complex solutions of the complexified unbiasedness system (conj x_k -> 1/x_k) in (C*)^5.
BKK bound: normalised volume of the A5 root polytope = 6 * Catalan(5) = 252.  Exploration only."""
import sys, numpy as np
from brlib import cert

def F(z, Hs):        # z: 5 complex unknowns (x_1..x_5), x_0 = 1; Hs = H^* (rows conj columns of H)
    x = np.concatenate([[1.0], z])
    a = Hs @ x                          # <h_i, x>
    b = Hs.conj() @ (1.0 / x)           # complexified conj<h_i, x>
    return (a * b - 6.0)[:5]

def J(z, Hs):
    x = np.concatenate([[1.0], z]); a = Hs @ x; b = Hs.conj() @ (1.0 / x)
    da = Hs[:, 1:]; db = -Hs.conj()[:, 1:] / x[1:] ** 2
    return (da * b[:, None] + a[:, None] * db)[:5]

def solve_all(Hs, starts, rng):
    sols = []
    for _ in range(starts):
        z = np.exp(rng.normal(0, 0.7, 5) + 1j * rng.uniform(0, 2*np.pi, 5))
        for _ in range(80):
            try: step = np.linalg.solve(J(z, Hs), -F(z, Hs))
            except np.linalg.LinAlgError: break
            z = z + step
            if np.linalg.norm(step) < 1e-13 * (1 + np.linalg.norm(z)): break
        if np.all(np.isfinite(z)) and np.max(abs(F(z, Hs))) < 1e-9 and np.min(abs(z)) > 1e-8 and np.max(abs(z)) < 1e8:
            if not any(np.max(abs(z - s) / (1 + abs(s))) < 1e-6 for s in sols): sols.append(z)
    return sols

rng = np.random.default_rng(int(sys.argv[1]))
for _ in range(int(sys.argv[2])):
    idx = int(rng.integers(len(cert.recs)))
    H = np.exp(1j * cert.recs[idx]['phi'].reshape(6, 6))
    sols = solve_all(H.conj().T, int(sys.argv[3]), rng)
    real = sum(1 for s in sols if np.max(abs(abs(s) - 1)) < 1e-8)
    print(idx, 'complex solutions', len(sols), 'on the torus', real, flush=True)
