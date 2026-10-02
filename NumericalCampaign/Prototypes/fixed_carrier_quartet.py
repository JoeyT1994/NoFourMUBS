"""Pilot of a Jaming-style exhaustive certificate at ONE fixed carrier H.

Claim certified (modulo floating-point rounding, which is dominated by an explicit
safety margin SAFE): there are no bases V, W such that {I, H/sqrt6, V, W} is a
quartet of mutually unbiased bases in C^6.

Method (cf. Jaming-Matolcsi-Mora-Szollosi-Weiner, arXiv:0902.0882, Sec. 3):
1. Every vector unbiased to I is u(phi) = (1, e^{i phi_1..5})/sqrt6.  Branch and
   bound on the torus T^5: a cell of half-width th in every angle, with centre c,
   contains a vector unbiased to H only if for every column h_j
        | |<u(c),h_j>| - 1/sqrt6 | <= 5*th/6 + SAFE,
   because |u_k(phi)-u_k(c)| <= th/sqrt6 and |h_jk| = 1/sqrt6.
   Surviving cells are split 3^5 ways until th <= TH_MIN.
2. Surviving cells are grouped into clusters (connected components of
   overlapping/adjacent cells).  Every true common ray lies in some cluster.
3. Two rays in clusters A, B can be orthogonal only if the lower bound of
   |<u,v>| over the clusters is 0, i.e. min |<c_a,c_b>| <= r_A + r_B, where r is the
   cluster radius bound |u - c| <= 5*th/6*... (computed below).  Similarly they
   can be unbiased only if | |<c_a,c_b>| - 1/sqrt6 | <= r_A + r_B.
4. A quartet needs two 6-cliques in the "possibly orthogonal" graph such that
   every cross pair is "possibly unbiased".  Exhaustive search.
"""
import numpy as np, sys, itertools, time, json
sys.path.insert(0, str(__import__('pathlib').Path(__file__).resolve().parents[2] / 'MinimalConstruction' / 'Implementation'))
import mpmath as mp
from model import Model

SAFE = 1e-9
TH_MIN = float(sys.argv[2]) if len(sys.argv) > 2 else 2e-3
# EXTRA: additional tolerance on every |overlap| test, standing in for carrier
# variation over a carrier cell (|delta <u,h_j>| <= EXTRA).  EXTRA=0 at a point.
EXTRA = float(sys.argv[3]) if len(sys.argv) > 3 else 0.0

def fourier_ab(a,b):
    w=np.exp(2j*np.pi/3); x=np.exp(2j*np.pi*a); y=np.exp(2j*np.pi*b)
    H=np.array([[1,1,1,1,1,1],[1,-w*w*x,w,-x,w*w,-w*x],[1,w*y,w*w,y,w,w*w*y],
                [1,-1,1,-1,1,-1],[1,w*w*x,w,x,w*w,w*x],[1,-w*y,w*w,-y,w,-w*w*y]])
    return H/np.sqrt(6)
def x6(alpha):
    r=np.roots([1,-alpha,np.conj(alpha),-1]); q=np.roots([1,alpha,-np.conj(alpha),-1])
    x,y=r[0],r[1]; u,v=q[0],q[1]
    H=np.array([[1,1,1,1,1,1],[1,x*x*y,x*y*y,x*y/(u*v),u*x*y,v*x*y],[1,x/y,x*x*y,x/u,x/v,u*v*x],
                [1,u*v*x,u*x*y,-1,-u*x*y,-u*v*x],[1,x/u,v*x*y,-x/u,-1,-v*x*y],[1,x/v,x*y/(u*v),-x*y/(u*v),-x/v,-1]])
    return H/np.sqrt(6)
def carrier(seed_args):
    mp.mp.dps = 40
    seeds = [mp.exp(1j * mp.mpf(a)) for a in seed_args]
    H = Model(seeds).hadamard()
    H = np.array(H.tolist(), dtype=complex)
    err = np.abs(H.conj().T @ H - 6 * np.eye(6)).max()
    assert err < 1e-12 and np.abs(np.abs(H) - 1).max() < 1e-12
    return H / np.sqrt(6)

def vec(phis):                      # phis: (n,5)
    z = np.concatenate([np.ones((len(phis), 1)), np.exp(1j * phis)], 1)
    return z / np.sqrt(6)

def branch_and_bound(U):
    Hc = U.conj()                     # <u,h_j> = sum conj(u_k) h_jk ; use |u^dag h|
    n0 = 6
    th = np.pi / n0                   # half width
    g = (np.arange(n0) + 0.5) * 2 * np.pi / n0
    cells = np.array(list(itertools.product(g, repeat=5)))
    level = 0
    def prune(cells, th):
        out = []
        for i in range(0, len(cells), 400000):
            c = cells[i:i + 400000]
            ov = np.abs(vec(c).conj() @ U)
            out.append(c[np.all(np.abs(ov - 1 / np.sqrt(6)) <= 5 * th / 6 + EXTRA + SAFE, 1)])
        return np.concatenate(out) if out else cells[:0]
    cells = prune(cells, th)
    level = 0
    while True:
        print(f"  level {level}: half-width {th:.2e}, surviving cells {len(cells)}", flush=True)
        if th <= max(TH_MIN, 1.5 * EXTRA) or len(cells) == 0:   # below the EXTRA floor refinement cannot prune
            return cells, th
        th /= 3
        off = np.array(list(itertools.product([-2 * th, 0, 2 * th], repeat=5)))
        kept = []
        for i in range(0, len(cells), 1500):          # 1500*243 children per chunk
            ch = (cells[i:i + 1500, None, :] + off[None, :, :]).reshape(-1, 5)
            kept.append(prune(ch, th))
        cells = np.concatenate(kept)
        level += 1

def clusters(cells, th):
    """Connected components of cells whose centres are lattice neighbours
    (differ by at most one step 2*th in every angle, on the torus)."""
    step = 2 * th; M = int(round(2 * np.pi / step))
    idx = np.round(cells / step - 0.5).astype(np.int64) % M
    key = {tuple(k): n for n, k in enumerate(idx)}
    parent = np.arange(len(cells))
    def find(i):
        while parent[i] != i:
            parent[i] = parent[parent[i]]; i = parent[i]
        return i
    offs = [o for o in itertools.product((-1, 0, 1), repeat=5) if any(o)]
    for n, k in enumerate(idx):
        for o in offs:
            m = key.get(tuple((k + o) % M))
            if m is not None:
                a, b = find(n), find(m)
                if a != b: parent[a] = b
    groups = {}
    for n in range(len(cells)): groups.setdefault(find(n), []).append(n)
    return [cells[g] for g in groups.values()]

def main():
    t0 = time.time()
    spec = sys.argv[1]
    if spec.startswith('F:'):
        a, b = map(float, spec[2:].split(',')); U = fourier_ab(a, b); seed_args = spec
    elif spec.startswith('X:'):
        re_, im_ = map(float, spec[2:].split(',')); U = x6(complex(re_, im_)); seed_args = spec
    else:
        seed_args = [float(x) for x in spec.split(',')]; U = carrier(seed_args)
    assert np.abs(U.conj().T @ U - np.eye(6)).max() < 1e-10 and np.abs(np.abs(U) - 1/np.sqrt(6)).max() < 1e-10, 'not Hadamard'
    cells, th = branch_and_bound(U)
    cl = clusters(cells, th)
    # representative centre and radius bound for each cluster: every vector in the
    # cluster is within  R = max_centre_dist + 5*th/sqrt6... use entrywise bound:
    reps, rad = [], []
    for c in cl:
        z = vec(c); m = vec(c[:1])[0]
        # |<u,v>-<m,v>| <= ||u-m||_1 * max|v_k| ; ||u-m||_1 <= max over cells (||c-m||_1) + 5*th/sqrt6
        l1 = np.abs(z - m).sum(1).max() + 5 * th / np.sqrt(6)
        reps.append(m); rad.append(l1 / np.sqrt(6))   # |v_k| = 1/sqrt6
    reps = np.array(reps); rad = np.array(rad)
    k = len(reps)
    G = np.abs(reps.conj() @ reps.T)
    tol = rad[:, None] + rad[None, :] + SAFE
    orth = (G <= tol); np.fill_diagonal(orth, False)
    unb = np.abs(G - 1 / np.sqrt(6)) <= tol
    print(f"  clusters (candidate rays): {k}, max radius {rad.max():.2e}", flush=True)
    # 6-cliques of the possibly-orthogonal graph
    adj = [set(np.nonzero(orth[i])[0]) for i in range(k)]
    cliques = []
    def extend(cur, cand):
        if len(cur) == 6: cliques.append(tuple(cur)); return
        for v in sorted(cand):
            if v > (cur[-1] if cur else -1):
                extend(cur + [v], cand & adj[v])
    extend([], set(range(k)))
    print(f"  possible orthonormal bases (6-cliques): {len(cliques)}", flush=True)
    pairs = 0
    for A, B in itertools.combinations(cliques, 2):
        if all(unb[a, b] for a in A for b in B): pairs += 1
    elapsed = time.time() - t0
    res = dict(seed_args=seed_args, th_min=th, extra=EXTRA, clusters=k, bases=len(cliques),
               unbiased_basis_pairs=pairs, certified_no_quartet=(pairs == 0),
               seconds=round(elapsed, 1))
    print(json.dumps(res), flush=True)
    return 0 if pairs == 0 else 2

if __name__ == '__main__':
    raise SystemExit(main())
