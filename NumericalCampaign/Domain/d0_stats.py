"""Rejection-sample D0 (canonical-corner domain) and record R0 = max corner R, g, and the gap to the
best *other* positional corner.  Small R0 on D0 would mean cells near the R=0 wall must be covered."""
import sys, numpy as np, itertools, mpmath as mp
exec(open('corner_domain.py').read().split('subsets =')[0])
subsets = list(itertools.combinations(range(6), 3))
rng = np.random.default_rng(int(sys.argv[1])); N = int(sys.argv[2])
out = []
for k in range(N):
    th = rng.uniform(-np.pi, np.pi, 4)
    try: H = np.array(Model([mp.exp(1j*mp.mpf(float(x))) for x in th]).hadamard().tolist(), dtype=complex)
    except ValueError: continue
    Rs = np.array([[R_of(H[np.ix_(r, c)])[0] for c in subsets] for r in subsets]).ravel()
    if Rs[0] >= Rs.max() - 1e-9:
        others = np.sort(Rs[1:])[::-1]
        out.append((Rs[0], R_of(H[:3, :3])[1], Rs[0] - others[0]))
np.save(f'd0_{sys.argv[1]}.npy', np.array(out))
