"""Exploration (floating point): the exact set U(H) of vectors unbiased to I and H, and its O/U graphs."""
import sys, numpy as np, mpmath as mp, random, itertools
sys.path.insert(0, str(__import__('pathlib').Path(__file__).resolve().parents[4] / 'MinimalConstruction/Implementation'))
from model import Model
mp.mp.dps = 20

def hadamard(seed):
    rng = random.Random(seed)
    while True:
        th = [rng.uniform(0, 2*np.pi) for _ in range(4)]
        try: M = Model([mp.exp(1j*t) for t in th], 1)
        except ValueError: continue
        for bh in range(3):
            for bv in range(3):
                H = np.array(M.hadamard(bh, bv).tolist(), dtype=complex)
                if np.max(abs(abs(H)-1)) < 1e-9 and np.max(abs(H@H.conj().T-6*np.eye(6))) < 1e-9:
                    return H, th

def residual(phi, Hs):
    x = np.exp(1j*np.concatenate([[0.0], phi]))
    return np.abs(Hs @ x)**2 - 6.0          # |<h_i, x>|^2 = 6 for unbiased (unnormalised)

def jac(phi, Hs):
    x = np.exp(1j*np.concatenate([[0.0], phi]))
    v = Hs @ x
    # d|v_i|^2/dphi_j = 2 Re(conj(v_i) * Hs_ij * i x_j)
    J = 2*np.real(np.conj(v)[:, None] * Hs[:, 1:] * 1j * x[None, 1:])
    return J

def solve(Hs, starts=4000, seed=0):
    rng = np.random.default_rng(seed); sols = []
    for _ in range(starts):
        phi = rng.uniform(0, 2*np.pi, 5)
        for it in range(60):
            r = residual(phi, Hs); J = jac(phi, Hs)
            step, *_ = np.linalg.lstsq(J, -r, rcond=None)
            phi = phi + step
            if np.linalg.norm(step) < 1e-13: break
        if np.max(abs(residual(phi, Hs))) < 1e-9:
            phi = np.mod(phi, 2*np.pi)
            if not any(np.max(abs(np.angle(np.exp(1j*(phi - s))))) < 1e-6 for s in sols):
                sols.append(phi)
    return sols

if __name__ == '__main__':
  for seed in range(int(sys.argv[1]), int(sys.argv[2])):
      H, th = hadamard(seed)
      Hs = H.conj().T                 # rows = conj columns of H
      sols = solve(Hs, starts=3000, seed=seed)
      X = np.array([np.exp(1j*np.concatenate([[0.0], s])) for s in sols])
      G = X.conj() @ X.T              # unnormalised inner products
      n = len(X)
      O = [(a, b) for a in range(n) for b in range(a+1, n) if abs(G[a, b]) < 1e-7]
      U = [(a, b) for a in range(n) for b in range(a+1, n) if abs(abs(G[a, b])**2 - 6) < 1e-6]
      near = sorted(abs(G[a, b]) for a in range(n) for b in range(a+1, n))[:3]
      print(f'seed {seed}: |U(H)| = {n}, exact O pairs {len(O)}, exact U pairs {len(U)}, smallest |<x,y>| {[round(v,4) for v in near]}', flush=True)
