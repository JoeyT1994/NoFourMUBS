"""Local averaging lemma around F6 at the wide-tube radius.

CLAIM.  Let H be an order-6 Hadamard equivalent to F o e^{iu} with u horizontal and ||u||_F <= RHO_L.
Then either ||u||_F <= RHO_T (the wide tube, no quartet edge: PROOF.md) or M(H) = max_c R_c(H) >= C0.

PROOF.  Same normal-form cells as cells.py on the ellipsoid y^T G y <= RHO_L^2 (fundamental domain of the 288
symmetries, which preserve M as well).  For a cell, every Hadamard with tangent coordinate in it has
u in v + n with n in the ball B(nh, e) (cells.cell); hence every entry phase lies in x_c + Delta v + [-e, e].
 * If ||x_c|| + r_v + e <= RHO_T the whole cell lies in the tube.
 * Otherwise some corner A has |2 Im q(B)| >= sqrt(C0) on the whole entry enclosure (B = same rows, complementary
   columns; R(A) = (2 Im q(B))^2 for Hadamards), so M(H) >= C0.
 * Cells that do neither are split (16 children), up to a depth limit.
Usage: python3 lemma_cells.py run RHO_L C0 H0 WORKER NWORKERS OUTDIR
"""
import itertools, json, math, os, sys, time
import numpy as np
from flint import arb, acb
import cells as C

T3 = list(itertools.combinations(range(6), 3))
RHO_T = C.RHO(0.075)

def twoImq(B):
    """2 Im q(B), q = perm(B) det(B)^2 / prod B_ij, for a 3x3 block of acb balls."""
    perm = sum((B[0][p[0]] * B[1][p[1]] * B[2][p[2]] for p in itertools.permutations(range(3))), acb(0))
    det = sum(((-1) ** sum(p[i] > p[j] for i in range(3) for j in range(i + 1, 3)) * B[0][p[0]] * B[1][p[1]] * B[2][p[2]]
               for p in itertools.permutations(range(3))), acb(0))
    prod = acb(1)
    for i in range(3):
        for j in range(3):
            prod *= B[i][j]
    return 2 * (perm * det * det / prod).imag

def enclosure(yc, h, rho_big):
    """(x_c, e, r_v) or None: the normal part of every Hadamard in the cell lies within e of nh."""
    out = C.cell(yc, h, rho_big, None, run_ref=False)
    if 'e' not in out:
        return None
    vc = C.Tbn @ yc; xc = vc + C.fixed_point(vc)
    return xc, out['e'], C.SQRT_LMAX_GT * 2 * h, out

def _perm2(M, i, j):   # permanent / determinant cofactor pieces of the 2x2 minor without row i, column j
    r = [a for a in range(3) if a != i]; c = [b for b in range(3) if b != j]
    p = M[r[0]][c[0]] * M[r[1]][c[1]] + M[r[0]][c[1]] * M[r[1]][c[0]]
    d = M[r[0]][c[0]] * M[r[1]][c[1]] - M[r[0]][c[1]] * M[r[1]][c[0]]
    return p, d * (1 if (i + j) % 2 == 0 else -1)

def grad_twoImq(B):
    """d/dphi_ij of 2 Im q(B) for B_ij = e^{i phi_ij}: 2 Im(i B_ij dq/dB_ij)."""
    perm = sum((B[0][p[0]] * B[1][p[1]] * B[2][p[2]] for p in itertools.permutations(range(3))), acb(0))
    det = sum(((-1) ** sum(p[i] > p[j] for i in range(3) for j in range(i + 1, 3)) * B[0][p[0]] * B[1][p[1]] * B[2][p[2]]
               for p in itertools.permutations(range(3))), acb(0))
    prod = acb(1)
    for i in range(3):
        for j in range(3):
            prod *= B[i][j]
    q = perm * det * det / prod
    g = []
    for i in range(3):
        for j in range(3):
            dp, dd = _perm2(B, i, j)
            dq = (dp * det * det + perm * 2 * det * dd) / prod - q / B[i][j]
            g.append(2 * (acb(0, 1) * B[i][j] * dq).imag)
    return g

def corner_lower(xc, h, e, yc):
    """max over corners of a rigorous lower bound of |2 Im q(B)| over the cell (mean-value form):
    |D(phi)| >= |D(phi_c)| - sup_box ||grad D||_2 * (||(Tb Delta y)_B||_2 + e)."""
    rowabs = np.abs(C.Tbn).sum(1) * h * 1.000001
    Hn = C.Fn * np.exp(1j * xc.reshape(6, 6))
    scores = []
    for rw in T3:
        for cl in T3:
            comp = [j for j in range(6) if j not in cl]
            B = Hn[np.ix_(rw, comp)]
            perm = sum(B[0, p[0]] * B[1, p[1]] * B[2, p[2]] for p in itertools.permutations(range(3)))
            v = 2 * (perm * np.linalg.det(B) ** 2 / np.prod(B)).imag
            scores.append((abs(v), rw, comp))
    scores.sort(reverse=True)
    best = 0.0
    for _, rw, comp in scores[:4]:
        idx = [6 * i + j for i in rw for j in comp]
        cen = [[acb(0, arb.pi() * ((i * j) % 6) / 3 + arb(float(xc[6 * i + j]))).exp() for j in comp] for i in rw]
        D0 = float(abs(twoImq(cen)).lower())
        box = [[acb(0, arb.pi() * ((i * j) % 6) / 3 + arb(float(xc[6 * i + j]), float(rowabs[6 * i + j] + e))).exp()
                for j in comp] for i in rw]
        g = grad_twoImq(box)
        gnorm = math.sqrt(sum(float(abs(x).upper()) ** 2 for x in g))
        TbB = math.sqrt(sum(float(C.Tbn[k, a]) ** 2 for k in idx for a in range(4))) * 1.000001
        dphi = TbB * 2 * h + e
        best = max(best, D0 - gnorm * dphi)
    return best, scores[0][0]

def run_cell(yc, h, rho_big, c0, depth=0, maxdepth=4):
    if not C.meets_ellipsoid(yc, h, rho_big) or not C.meets_domain(yc, h):
        return True, [dict(ok=True, why='outside', depth=depth)]
    enc = enclosure(yc, h, rho_big)
    if enc is not None:
        xc, e, r_v, out = enc
        if np.linalg.norm(xc) * 1.000001 + r_v + e <= RHO_T:
            return True, [dict(ok=True, why='tube', depth=depth)]
        lo, mid = corner_lower(xc, h, e, yc)
        if lo * lo >= c0:
            return True, [dict(ok=True, why='corner', depth=depth, lower=lo, mid=mid)]
    if depth >= maxdepth:
        return False, [dict(ok=False, yc=list(map(float, yc)), h=h, depth=depth,
                            normx=float(np.linalg.norm(enc[0])) if enc else None, lower=None if enc is None else lo)]
    recs = []
    for sg in itertools.product((-1, 1), repeat=4):
        ok, r = run_cell(yc + np.array(sg, float) * h / 2, h / 2, rho_big, c0, depth + 1, maxdepth)
        recs += r
        if not ok: return False, recs
    return True, recs

if __name__ == '__main__' and sys.argv[1] == 'run':
    rho_L, c0, h0, W_, NW = float(sys.argv[2]), float(sys.argv[3]), float(sys.argv[4]), int(sys.argv[5]), int(sys.argv[6])
    outdir = sys.argv[7]; os.makedirs(outdir, exist_ok=True)
    cubes = C.cubes(rho_L, h0)
    if W_ == 0: print('cubes', len(cubes), 'RHO_T', RHO_T, flush=True)
    outp = os.path.join(outdir, 'lemma_w%d.jsonl' % W_)
    done = set()
    if os.path.exists(outp):
        for l in open(outp): done.add(json.loads(l)['root'])
    with open(outp, 'a') as f:
        for k, yc in enumerate(cubes):
            if k % NW != W_ or k in done: continue
            t0 = time.time(); ok, recs = run_cell(yc, h0, rho_L, c0)
            whys = {}
            for r in recs: whys[r.get('why', 'fail')] = whys.get(r.get('why', 'fail'), 0) + 1
            f.write(json.dumps(dict(root=k, ok=ok, leaves=len(recs), whys=whys,
                                    minlower=min((r['lower'] for r in recs if r.get('why') == 'corner'), default=None),
                                    fail=None if ok else recs[-1], t=round(time.time() - t0, 1))) + '\n'); f.flush()
