import json, numpy as np, sys, itertools
from scipy.optimize import least_squares
sys.path.insert(0, '/Users/jtindall/Files/NoFourMUBS/ProvenResults/ActiveShoulderClosure_v2')
from discovery_numeric import inv
p = json.load(open('stuck_points.json'))[0]; th = np.array(p['theta'])
E = np.ones((3, 3), complex); E[1:, 1:] = np.exp(1j * th.reshape(2, 2))
free = [(i, j) for i in range(1, 6) for j in range(1, 6) if not (i < 3 and j < 3)]
def build(x):
    H = np.ones((6, 6), complex); H[:3, :3] = E
    for k, (i, j) in enumerate(free): H[i, j] = np.exp(1j * x[k])
    return H
def res(x):
    G = build(x) @ build(x).conj().T - 6 * np.eye(6); iu = np.triu_indices(6, 1)
    return np.concatenate([G[iu].real, G[iu].imag])
def dephase(M): M = M / M[:, :1]; return M / M[:1, :]
rng = np.random.default_rng(int(sys.argv[1])); sols = []
for _ in range(int(sys.argv[2])):
    r = least_squares(res, rng.uniform(-np.pi, np.pi, 21), xtol=1e-15, ftol=1e-15, gtol=1e-15, max_nfev=3000, method='lm')
    if np.abs(r.fun).max() < 1e-10:
        J = r.jac; sv = np.linalg.svd(J, compute_uv=False)
        H = build(r.x); Mc = max(inv(dephase(H[np.ix_(a, b)]))[-1] for a in itertools.combinations(range(6), 3) for b in itertools.combinations(range(6), 3))
        sols.append((r.x, sv[-4:], Mc))
print('R(E)=%.3e  completions found %d' % (inv(E)[-1], len(sols)))
for x, sv, Mc in sols[:8]:
    print('  smallest Jacobian singular values', np.round(sv, 8), ' max corner R %.4g' % Mc)
