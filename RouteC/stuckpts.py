"""Stuck depth-48 sub-boxes among open boxes (round-2 start states): side-constructor divisors over orderings."""
import json, gzip, glob, itertools, numpy as np
from fractions import Fraction as Q
from multiprocessing import Pool
R = '/mnt/ceph/users/jtindall/nofour_psd'
def dephase(M): M = M / M[:, :1]; return M / M[:1, :]
def Ps(M):
    G = 6*np.eye(3) - M @ M.conj().T; s, t, r = G[1, 0], G[2, 0], G[2, 1]; X, Y, Z = abs(s)**2, abs(t)**2, abs(r)**2
    return [abs(r*s*s + np.conj(r)*t*t + (3-Z)*s*t), abs(t*np.conj(s)**2 + r*r*np.conj(t) + (3-Y)*r*np.conj(s)),
            abs(s*np.conj(t)**2 + np.conj(r)**2*np.conj(s) + (3-X)*np.conj(r)*np.conj(t))]
def Rinv(M):
    G = 6*np.eye(3) - M @ M.conj().T; s, t, r = G[1, 0], G[2, 0], G[2, 1]; X, Y, Z = abs(s)**2, abs(t)**2, abs(r)**2
    p = X+Y+Z; J = 2*(s*r*np.conj(t)).real; g = 27-3*p+J; eta = 9-p+J; chi = X*Y+X*Z+Y*Z-X*Y*Z-(p-9)*(p-18)+(p-15)*J
    return 4*g*g*eta - chi*chi
def one(path):
    s = json.loads(gzip.decompress(open(path, 'rb').read())); res = []
    deep = [p for p in s['pending'] if len(p) >= 48][:1]
    for p in deep:
        row = s['input']; c = list(map(Q, row['centers'])); r = list(map(Q, row['radii']))
        for k, bit in enumerate(p):
            a = s['splits'][p[:k]]; r[a] /= 2; c[a] += (1 if bit == '1' else -1) * r[a]
        th = [float(x) for x in c]
        E = np.ones((3, 3), complex); E[1:, 1:] = np.exp(1j*np.array(th).reshape(2, 2))
        best = max(min(min(Ps(dephase(E[np.ix_(a, b)]))), min(Ps(dephase(E[np.ix_(a, b)]).T)))
                   for a in itertools.permutations(range(3)) for b in itertools.permutations(range(3)))
        res.append(dict(id=row['id'], theta=th, R=float(Rinv(E)), minP_default=float(min(min(Ps(E)), min(Ps(E.T)))), minP_best_order=float(best)))
    return res
if __name__ == '__main__':
    files = glob.glob(R + '/hybrid/hyb2-*/start/*.json.gz')
    out = []
    with Pool(120) as pool:
        for r in pool.imap_unordered(one, files, chunksize=4): out += r
    json.dump(out, open('stuck_points.json', 'w'))
    import numpy as np
    print('open boxes', len(files), 'with a depth-48 node', len(out))
    for k in ('R', 'minP_default', 'minP_best_order'):
        v = np.array([o[k] for o in out]); print(k, np.quantile(v, [0, .1, .5, .9, 1]).round(6))
