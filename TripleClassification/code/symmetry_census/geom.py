"""Pairwise geometry of seed balls under the 72 orientation-preserving corner symmetries.
For source ball j, target l, op g (theta -> L theta), winding N: the image g(E_j) + 2 pi N against E_l, in l's
normalised chart u = Mth_l^-1 (theta - theta0_l) / r_l:
  centre c = Mth_l^-1 (L theta0_j + 2 pi N - theta0_l) / r_l, linear part A = Mth_l^-1 L Mth_j r_j / r_l.
rho = max_{|x|<=1} |c + A x|   (containment g(E_j) in E_l iff rho < 1; the trust-region dual, rho_max below)
dc  = |c|                      (image centre's depth in l)
Writes pairs with dc < 1 + |A| (the images meet) to an npz."""
import gzip, json, sys, numpy as np
from ops import ops
seeds = json.loads(gzip.decompress(open(sys.argv[1], 'rb').read()))['seeds']
n = len(seeds); hx = float.fromhex
th = np.array([[hx(x) for x in s['theta0']] for s in seeds]); M = np.array([[hx(x) for x in s['Mth']] for s in seeds]).reshape(n, 4, 4)
r = np.array([hx(s['r']) for s in seeds]); o = np.array([s['o'] for s in seeds]); assert (o == 1).all()
Mi = np.linalg.inv(M)
O = [op for op in ops() if op['s'] == 1]
def rho_max(c, A):
    """max_{|x|<=1} |c + A x| by the trust-region dual (exact, S-lemma): rho^2 = inf_{lam > d0} |c|^2 + lam +
    b^T (lam - D)^-1 b, b = V^T A^T c, D = sing^2; any lam gives an upper bound. Convex in lam: golden section
    on log(lam - d0)."""
    U, s, Vt = np.linalg.svd(A); b = Vt @ (A.T @ c); d = s ** 2; cc = c @ c
    f = lambda t: cc + d[0] + t + np.sum(b ** 2 / (d[0] + t - d))
    lo, hi = -40.0, 5.0; g = (np.sqrt(5) - 1) / 2
    for _ in range(200):
        a1 = hi - g * (hi - lo); a2 = lo + g * (hi - lo)
        if f(np.exp(a1)) < f(np.exp(a2)): hi = a2
        else: lo = a1
    return np.sqrt(min(f(np.exp(lo)), f(np.exp(hi))))
rows = []
TW = 2 * np.pi
for k, op in enumerate(O):
    L = op['L'].astype(float)
    img = th @ L.T                                    # (n, 4) image centres
    for j in range(n):
        diff = th - img[j][None]                      # target - image
        N = np.rint(diff / TW)
        v = img[j][None] + TW * N - th                # (n,4)
        c = np.einsum('lij,lj->li', Mi, v) / r[:, None]
        dc = np.linalg.norm(c, axis=1)
        A = np.einsum('lij,jk->lik', Mi, L @ M[j]) * (r[j] / r)[:, None, None]
        An = np.linalg.norm(A, ord=2, axis=(1, 2))
        for l in np.nonzero(dc < 1 + An)[0]:
            if l == j and k == 0 and not N[l].any(): continue        # the identity on itself
            rows.append((j, l, k, *N[l].astype(int), dc[l], An[l], rho_max(c[l], A[l])))
R = np.array(rows)
np.savez_compressed(sys.argv[2], R=R, r=r, ops=np.array([[*op['rows'], *op['cols'], ['id', 'conj', 'T', 'conjT'].index(op['g'])] for op in O]))
print(len(R), 'meeting (source, target, op) triples;', int((R[:, -1] < 1).sum()), 'containments')
