"""Per-carrier-cell quartet certifier, organised by the quartet structure.

Input: a carrier H0 (cell centre) and an overlap tolerance eps (the carrier-cell
variation of every <z, h_j>).  Every common ray z_i(H) of (I,H), H in the cell, lies
within radius r_i of the exact ray z_i(H0), where r_i is obtained from the local
inverse Jacobian (first order; a rigorous version replaces this by a Krawczyk bound).

A quartet {I, H, V, W} needs
   V: six rays, pairwise orthogonal;        W: six rays, pairwise orthogonal;
   every column of W unbiased to every column of V.
Search: enumerate candidate V (6-cliques of the possibly-orthogonal graph); for each,
filter the rays possibly unbiased to ALL columns of V; look for a 6-clique among them.
If no V survives, the cell contains no quartet.  Output also the counts that set cost.
"""
import numpy as np, sys, itertools, time
sys.argv = [sys.argv[0], '7', '0'] + sys.argv[1:]
exec(open('margin.py').read().split('for n in range')[0])
sys.path.insert(0, str(__import__('pathlib').Path(__file__).resolve().parents[2] / 'MinimalConstruction' / 'Implementation'))
import mpmath as mp
from model import Model
src = open('sensitivity_estimate.py').read()
exec(src[src.index('def carrier_from'):src.index('def test(')])
exec(open('fixed_carrier_quartet.py').read()[open('fixed_carrier_quartet.py').read().index('def fourier_ab'):
                                              open('fixed_carrier_quartet.py').read().index('def carrier(')])

def radii(R, sens, eps):
    dphi = sens * 2 / np.sqrt(6) * eps * np.sqrt(5)      # |dphi|_2 per ray
    return dphi * np.sqrt(5) / 6                          # bound on |d<z,w>| from one ray

def cliques6(adj_bits, cand_bits, limit):
    """enumerate 6-cliques inside cand (bitmask) using adjacency bitmasks; yields tuples."""
    out = []
    def rec(cur, cand):
        if len(out) >= limit: return
        if len(cur) == 6: out.append(tuple(cur)); return
        c = cand
        while c:
            v = (c & -c).bit_length() - 1
            c &= c - 1
            rec(cur + [v], c & adj_bits[v])
    rec([], cand_bits)
    return out

def certify(U, eps, R=None, sens=None, limit=2_000_000):
    t0 = time.time()
    if R is None:
        R = rays(U, 2500)
        sens = np.array([jac_norm(U, z) for z in R])
    k = len(R); rad = radii(R, sens, eps)
    G = np.abs(np.array([[np.vdot(a, b) for b in R] for a in R]))
    tol = rad[:, None] + rad[None, :]
    orth = (G <= tol); np.fill_diagonal(orth, False)
    unb = np.abs(G - 1 / np.sqrt(6)) <= tol
    adj = [sum(1 << int(j) for j in np.nonzero(orth[i])[0]) for i in range(k)]
    unb_bits = [sum(1 << int(j) for j in np.nonzero(unb[i])[0]) for i in range(k)]
    Vs = cliques6(adj, (1 << k) - 1, limit)
    if len(Vs) >= limit:
        return dict(eps=eps, rays=k, bases=f'>={limit}', surviving=None, certified=None, sec=round(time.time() - t0, 1))
    surviving = 0
    for V in Vs:
        cand = (1 << k) - 1
        for v in V: cand &= unb_bits[v]
        if bin(cand).count('1') < 6: continue
        if cliques6(adj, cand, 1): surviving += 1
    return dict(eps=eps, rays=k, bases=len(Vs), surviving=surviving, certified=(surviving == 0),
                sec=round(time.time() - t0, 1))

if __name__ == '__main__':
    for spec in sys.argv[3:]:
        U = carrier_from(spec)
        R = rays(U, 2500); sens = np.array([jac_norm(U, z) for z in R])
        res = []
        for eps in (0.003, 0.01, 0.02, 0.03, 0.05, 0.08):
            r = certify(U, eps, R, sens); res.append(r)
            print(spec, r, flush=True)
            if not r['certified']: break
