"""Boundary overhead of covering D0 by cells: fraction of cells (centre theta, half-width rho) that meet D0,
estimated by testing the centre and the 16 cube vertices, divided by vol(D0)."""
import sys, numpy as np, itertools, mpmath as mp
sys.path.insert(0, str(__import__('pathlib').Path(__file__).resolve().parents[2] / 'MinimalConstruction' / 'Implementation'))
from model import Model
mp.mp.dps = 20
exec(open('corner_domain.py').read().split('def R_of')[1].split('subsets =')[0].join(['def R_of', '']))
subsets = list(itertools.combinations(range(6), 3))
def in_D0(th):
    try: H = np.array(Model([mp.exp(1j*mp.mpf(float(x))) for x in th]).hadamard().tolist(), dtype=complex)
    except ValueError: return False
    R0 = R_of(H[:3, :3])[0]
    return all(R_of(H[np.ix_(r, c)])[0] <= R0 + 1e-9 for r in subsets for c in subsets)
rho = float(sys.argv[2]); rng = np.random.default_rng(int(sys.argv[1])); N = int(sys.argv[3])
verts = [np.zeros(4)] + [np.array(v) for v in itertools.product((-1, 1), repeat=4)]
nc = nm = 0
for _ in range(N):
    th = rng.uniform(-np.pi, np.pi, 4)
    hits = [in_D0(th + rho*v) for v in verts]
    nc += hits[0]; nm += any(hits)
print(rho, N, nc, nm)
