"""Which of the 144 linear seed maps (corner row perm x column perm x transpose x conj) preserve
extendability of H_+ ?  L is a symmetry if H_+(L theta) is equivalent to H_+(theta) or to its
conjugate (transposition is free: the Haagerup set is transpose invariant).  Equivalence is tested by
the Haagerup invariant multiset (a necessary condition; generic points separate classes)."""
import sys, numpy as np, itertools, mpmath as mp
sys.path.insert(0, str(__import__('pathlib').Path(__file__).resolve().parents[2] / 'MinimalConstruction' / 'Implementation'))
from model import Model
mp.mp.dps = 25
def Hp(th):
    return np.array(Model([mp.exp(1j*mp.mpf(float(x))) for x in th]).hadamard().tolist(), dtype=complex)
def haag(H):
    v = np.einsum('ij,kl,il,kj->ijkl', H, H, H.conj(), H.conj()).ravel()
    return np.array([np.sum(v**k) for k in range(1, 13)]) / v.size
def seeds_of(E):
    E = E * E[0, 0] / np.outer(E[:, 0], E[0, :])
    return np.angle([E[1, 1], E[1, 2], E[2, 1], E[2, 2]])
rng = np.random.default_rng(3)
maps = list(itertools.product(itertools.permutations(range(3)), itertools.permutations(range(3)), (0, 1), (0, 1)))
tally = {}
for trial in range(10):
    while True:
        th = rng.uniform(-np.pi, np.pi, 4)
        try: H = Hp(th); break
        except ValueError: pass
    a, b, c, d = np.exp(1j*th); E = np.array([[1, 1, 1], [1, a, b], [1, c, d]])
    h0, h0c = haag(H), haag(H.conj())
    for (pr, pc, tr, cj) in maps:
        E2 = E[np.ix_(pr, pc)]
        if tr: E2 = E2.T
        if cj: E2 = E2.conj()
        th2 = seeds_of(E2)
        try: H2 = Hp(th2)
        except ValueError: tally.setdefault((pr, pc, tr, cj), []).append('R<=0'); continue
        h2 = haag(H2)
        res = 'H' if np.allclose(h2, h0, atol=1e-7) else ('conjH' if np.allclose(h2, h0c, atol=1e-7) else 'other')
        tally.setdefault((pr, pc, tr, cj), []).append(res)
good = [k for k, v in tally.items() if all(x in ('H', 'conjH') for x in v)]
print(f"{len(good)} of {len(maps)} linear maps are symmetries on all trials")
from collections import Counter
print(Counter(tuple(v) for v in tally.values()).most_common(8))

for k in good: print(k, tally[k])
