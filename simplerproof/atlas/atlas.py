"""Atlas driver (exploration stage; produces candidate Records and boundary-transfer certificates).

Coverage criterion (COVERAGE.md): a nonempty finite family of ball Records such that every Hadamard on a Record boundary
has an equivalent representative in the interior of some Record.  We use the symmetry group
Gamma = {id, conj, transpose, conj-transpose} (all preserve the quartet-edge property and Hadamard equivalence classes
map to classes), so the family is the Gamma-closure of the stored Records.

Ball Record s: centre phases P_s (6x6, radians), radius R_s, tangent frame T_s (36x4), normal bound n_s: every Hadamard
e^{i(P_s+delta)}, delta horizontal, ||delta|| <= R_s, has delta = T_s eta + nu, ||nu|| <= n_s, ||eta|| <= rH_s.
Boundary transfer (COVERAGE.md lemma): for an isometry A = (g, row perm, col perm) and integer winding N, with
c = h(A P_s + 2 pi N - P_t), M = h(A T_s), a box of eta with sup ||c + M eta|| + n_s < R_t transfers into t.

This module does the search in floating point; certify.py re-checks every transfer in Arb.
"""
import itertools, json, math, os, pickle, sys, time
import numpy as np
from flint import arb, arb_mat
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from ballrecord import BallRecord
from record import opnorm_upper
from volume import corner_census, IDX_I, IDX_J
from conditioning import jacobian, HB

PHOR = HB @ HB.T                                                          # horizontal projector on R^36
GAMMA = ('id', 'conj', 'tr', 'conjtr')


def gmap(g, X):
    """Apply g to a 6x6 phase array (or a stack (..., 6, 6))."""
    if g in ('tr', 'conjtr'): X = np.swapaxes(X, -1, -2)
    if g in ('conj', 'conjtr'): X = -X
    return X


def hproj(X):
    return (PHOR @ X.reshape(-1, 36).T).T.reshape(X.shape)


def project(phi, iters=30, tol=1e-13):
    """Gauss-Newton (min-norm, horizontal) projection of phases onto the Hadamard set."""
    x = np.asarray(phi, float).reshape(36).copy()
    for _ in range(iters):
        H = np.exp(1j * x.reshape(6, 6)); G = H @ H.conj().T
        iu = np.triu_indices(6, 1); res = np.concatenate([G[iu].real, G[iu].imag])
        if abs(res).max() < tol: return x, True
        # truncated pseudo-inverse: off the Hadamard set the 4 tangent singular values are O(residual), not 0;
        # inverting them would drift along the tangent.  Keep only singular values >= 0.5 (normal ones are >= sqrt3).
        U, sv, Vt = np.linalg.svd(jacobian(H), full_matrices=False)
        keep = sv >= 0.5
        x = x - HB @ (Vt[keep].T @ ((U[:, keep].T @ res) / sv[keep]))
    return x, abs(res).max() < 1e-12


# ------------------------------------------------------------------ alignment
_P6 = list(itertools.permutations(range(3)))


def _full_perms(I, J, Iq, Jq):
    """All (rowperm, colperm) arrays r, c (length 6) with r[I_t[a]] = Iq[pa] etc: target index -> query index."""
    Ic = [k for k in range(6) if k not in I]; Jc = [k for k in range(6) if k not in J]
    Iqc = [k for k in range(6) if k not in Iq]; Jqc = [k for k in range(6) if k not in Jq]
    rows = []
    for a in _P6:
        for b in _P6:
            r = np.empty(6, int); r[list(I)] = [Iq[k] for k in a]; r[Ic] = [Iqc[k] for k in b]; rows.append(r)
    cols = []
    for a in _P6:
        for b in _P6:
            c = np.empty(6, int); c[list(J)] = [Jq[k] for k in a]; c[Jc] = [Jqc[k] for k in b]; cols.append(c)
    return np.array(rows), np.array(cols)


def align(Pq, Rq, Pt, Rt, dmax, tol, top=1):
    """Find (g, r, c, D, dist) with ||h(D)|| = dist <= dmax where D = wrap-dephased (g(Pq)[r][:, c] - Pt).
    Rq: dict g -> 400 corner R values of g(Pq); Rt: corner R values of Pt."""
    out = []
    Zt = np.exp(-1j * Pt)
    for g in GAMMA:
        X = gmap(g, Pq); Rg = Rq[g]
        order = np.argsort(-Rg)
        seen = set()
        for qi in order:
            if len(seen) >= top: break
            key = (tuple(IDX_I[qi]), tuple(IDX_J[qi]))
            if key in seen: continue
            seen.add(key)
            for ti in np.where(np.abs(Rt - Rg[qi]) <= tol)[0]:
                rows, cols = _full_perms(IDX_I[ti], IDX_J[ti], IDX_I[qi], IDX_J[qi])
                Zq = np.exp(1j * X)
                Z = Zq[rows[:, None, :, None], cols[None, :, None, :]] * Zt          # (36, 36, 6, 6)
                Z = Z / Z[..., :1, :] ; Z = Z / Z[..., :, :1]
                D = np.angle(Z)
                dist = np.linalg.norm(hproj(D.reshape(-1, 6, 6)), axis=(1, 2)).reshape(36, 36)
                for a, b in zip(*np.where(dist <= dmax)):
                    out.append((g, rows[a], cols[b], D[a, b], dist[a, b]))
    # deduplicate
    uniq = {}
    for o in out:
        k = (o[0], tuple(o[1]), tuple(o[2]))
        if k not in uniq or uniq[k][4] > o[4]: uniq[k] = o
    return list(uniq.values())


def to_sp(g, r, c):
    """Alignment (g, row perm, col perm) as a signed permutation of the 36 entries: (A X)_k = sign * X_{pi[k]}."""
    idx = np.arange(36).reshape(6, 6)
    Y = idx.T if g in ('tr', 'conjtr') else idx
    return (-1 if g in ('conj', 'conjtr') else 1, tuple(Y[r][:, c].reshape(36)))


ID = (1, tuple(range(36)))


def amap(A, X):
    sign, pi = A
    sh = X.shape
    return sign * X.reshape(sh[:-2] + (36,))[..., list(pi)].reshape(sh)


def compose(A2, A1):
    """A2 after A1."""
    return (A1[0] * A2[0], tuple(np.asarray(A1[1])[list(A2[1])]))


def inverse(A):
    return (A[0], tuple(np.argsort(A[1])))


def wrapD(A, Ps, Pt):
    """Dephased wrapped phases of A(P_s) - P_t; h(wrapD) = h(A P_s + 2 pi N - P_t) for an integer N."""
    Z = np.exp(1j * (amap(A, Ps) - Pt))
    Z = Z / Z[:1, :]; Z = Z / Z[:, :1]
    return np.angle(Z)


# ------------------------------------------------------------------ records
LADDER = ((0.08, 0.03), (0.08, 0.02), (0.063, 0.03), (0.063, 0.042), (0.05, 0.03), (0.04, 0.03), (0.03, 0.03), (0.02, 0.03))


def make_record(phi, ladder=LADDER):
    t0 = time.time()
    B = BallRecord(phi)
    for R, rad in ladder:
        o = B.stage_c(R, radius=rad)
        if o.get('ok'): break
    else:
        return None
    rH, n0 = B.normal_bound(R)
    dT = float(np.abs(np.array([[float(abs(B.rec.Tb[e, k] - arb(float(B.rec.Tbn[e, k]))).upper()) for k in range(4)] for e in range(36)])).sum())
    P = np.asarray(phi, float).reshape(6, 6)
    R400, _ = corner_census(np.exp(1j * P))
    return dict(phi=P, R=R, n=n0 + dT * rH, rH=rH, T=np.array(B.rec.Tbn, float), label_radius=rad,
                stagec=dict(labels=o.get('labels'), bins=o.get('bins'), steps=o.get('steps')), sigma=B.sigma,
                R400=R400, feat=np.sort(R400)[::-1][:12], t=time.time() - t0)


# ------------------------------------------------------------------ shell boxes
def shell_boxes(rec, w):
    """Centres (m, 4) of eta-boxes of side w meeting the shell R - n <= ||T eta|| <= R + n (within ||eta|| <= rH)."""
    T = rec['T']; R, n, rH = rec['R'], rec['n'], rec['rH']
    k = int(math.ceil(rH / w)) + 1
    g1 = (np.arange(-k, k) + 0.5) * w
    E = np.stack(np.meshgrid(g1, g1, g1, g1, indexing='ij'), -1).reshape(-1, 4)
    nT = np.linalg.norm(T, 2)
    r = np.linalg.norm(E @ T.T, axis=1); slack = nT * w                     # half-diagonal of a w-box is w in 4D
    keep = (r - slack <= R + n) & (r + slack >= R - n) & (np.linalg.norm(E, axis=1) - w <= rH)
    return E[keep]


OFF_MARGIN = 1e-10


def mnorm(M):
    """Rigorous upper bound of ||M||_2 for a float matrix (Arb row-sum bound on M^T M), shared with certify.py."""
    return opnorm_upper(arb_mat([[arb(float(x)) for x in row] for row in np.asarray(M)])) * (1 + 1e-12)


def offshell(E, w, T, nT, R, n, rH, margin=OFF_MARGIN):
    """True where the eta-box (centre E, side w) provably misses {R - n <= ||T eta|| <= R + n, ||eta|| <= rH}.
    nT >= ||T||_2.  The box half-diagonal is w (4 dimensions); min ||eta|| over the box is exact for axis-aligned boxes."""
    r = np.linalg.norm(E @ T.T, axis=1); slack = nT * w + 1e-12
    emin = np.linalg.norm(np.maximum(np.abs(E) - w / 2, 0), axis=1)
    return (r - slack > R + n + margin) | (r + slack < R - n - margin) | (emin > rH + margin)


def box_status(rec, E, w):
    """True where the eta-box may meet the shell (else it can be discarded)."""
    T = rec['T']
    if 'nT' not in rec: rec['nT'] = mnorm(T)
    return ~offshell(E, w, T, rec['nT'], rec['R'], rec['n'], rec['rH'])


def children(E, w):
    off = np.array(list(itertools.product((-0.25, 0.25), repeat=4))) * w
    return (E[:, None, :] + off[None]).reshape(-1, 4), w / 2


class Atlas:
    def __init__(self, Lip=150.0, margin=1e-8, topk=8):
        self.recs = []; self.Lip = Lip; self.margin = margin; self.topk = topk
        self.closed = set(); self.transfers = {}; self.links = {}

    def add(self, rec):
        rec['id'] = len(self.recs); self.recs.append(rec); self.links[rec['id']] = {}; return rec['id']

    def link(self, s, t, A):
        for (u, v, B) in ((s, t, A), (t, s, inverse(A))):
            L = self.links[u].setdefault(v, [])
            if B not in L: L.append(B)

    def neighbours(self, s, depth=3, slack=0.1):
        """Alignments of s into records t with ||h(A P_s - P_t)|| <= R_s + R_t, found by composing known links."""
        rs = self.recs[s]; Ps = rs['phi']
        seen = {(s, ID)}; front = [(s, ID)]; out = []
        for _ in range(depth):
            nxt = []
            for (u, A) in front:
                for t, Bs in self.links[u].items():
                    for B in Bs:
                        C = compose(B, A)
                        if (t, C) in seen: continue
                        seen.add((t, C))
                        rt = self.recs[t]; D = wrapD(C, Ps, rt['phi']); dist = np.linalg.norm(hproj(D))
                        if dist <= rs['R'] + rt['R'] + slack: nxt.append((t, C))
                        if dist <= rs['R'] + rt['R'] and not (t == s and dist < 1e-12): out.append((t, C, D, dist))
            front = nxt
        return out

    def global_find(self, x, R400, exclude):
        """Records containing the point x (phases in some frame), by signature ranking + corner alignment."""
        F = np.array([np.sort(r['R400']) for r in self.recs]); f = np.sort(R400)
        order = np.argsort(np.linalg.norm(F - f, axis=1))
        Rq = {g: corner_census(np.exp(1j * gmap(g, x)))[0] for g in GAMMA}
        hits = []
        for t in order[:self.topk]:
            if t in exclude: continue
            rt = self.recs[t]
            for (g, r, c, D, dist) in align(x, Rq, rt['phi'], rt['R400'], rt['R'], self.Lip * rt['R'], top=1):
                hits.append((t, to_sp(g, r, c), dist))
        return hits

    def assign_level(self, s, nbrs, E, w):
        """Index of the first neighbour transferring each box (or -1), and whether some neighbour nearly does
        (its test passes at the box centre, so a subdivision may succeed)."""
        rs = self.recs[s]; T6 = rs['T'].T.reshape(4, 6, 6)
        who = -np.ones(len(E), int); near = np.zeros(len(E), bool)
        for j, (t, A, D, dist) in enumerate(nbrs):
            rt = self.recs[t]
            cvec = hproj(D).reshape(36)                                     # = h(A P_s + 2 pi N - P_t)
            M = hproj(amap(A, T6)).reshape(4, 36).T                         # 36 x 4
            ctr = np.linalg.norm(cvec[None, :] + E @ M.T, axis=1) + rs['n'] + 1e-12
            good = (who < 0) & (ctr + mnorm(M) * w < rt['R'] - self.margin)
            who[good] = j; near |= ctr < rt['R'] - self.margin
        return who, near

    def assign(self, s, nbrs, wmin_frac=1 / 32):
        """Adaptive cover of the eta-cube by boxes: each leaf is off-shell or transferred.  Returns (leaves, failed)."""
        rs = self.recs[s]; rH = rs['rH']
        w = rH / 2; g1 = np.array([-0.75, -0.25, 0.25, 0.75]) * rH
        E = np.array(list(itertools.product(g1, repeat=4)))                 # 256 boxes of side rH/2 covering [-rH, rH]^4
        leaves = []; failed = []
        while len(E):
            on = box_status(rs, E, w)
            E = E[on]
            who, near = self.assign_level(s, nbrs, E, w)
            for i in np.where(who >= 0)[0]: leaves.append((E[i], w, who[i]))
            bad = (who < 0) & ~near
            if bad.any() or (w / 2 < wmin_frac * rs['R'] and (who < 0).any()):
                failed = E[(who < 0) & (bad | (w / 2 < wmin_frac * rs['R']))]; break
            E = E[who < 0]
            if len(E): E, w = children(E, w)
        return leaves, failed, w

    def process(self, s, verbose=False):
        rs = self.recs[s]; self._t = time.time()
        nbrs = self.neighbours(s)
        spawned = []; last = None; nglob = 0
        while True:
            leaves, failed, wf = self.assign(s, nbrs)
            if len(failed) == 0: break
            key = tuple(np.round(failed[0] / wf, 3))
            if key == last: raise RuntimeError('record %d: spawn did not cover box %s' % (s, failed[0]))
            last = key
            d = rs['T'] @ failed[0]; d = d / np.linalg.norm(d)
            x, conv = project(rs['phi'].reshape(36) + 1.3 * rs['R'] * d)
            if not conv: raise RuntimeError('projection failed at record %d' % s)
            x = x.reshape(6, 6)
            # loop closure: is x already inside a record we have not linked to?
            hits = self.global_find(x, corner_census(np.exp(1j * x))[0], set(n[0] for n in nbrs) | {s})
            if hits:
                for (t, A, dist) in hits: self.link(s, t, A)
                nglob += len(hits); nbrs = self.neighbours(s); last = None
                continue
            rec = make_record(x)
            if rec is None: raise RuntimeError('Stage C ladder failed near record %d' % s)
            t = self.add(rec); spawned.append(t)
            self.link(s, t, ID)                                             # spawned in s's frame
            nbrs.append((t, ID, wrapD(ID, rs['phi'], rec['phi']), np.linalg.norm(hproj(rs['phi'] - rec['phi']))))
        self.closed.add(s)
        used = sorted(set(int(l[2]) for l in leaves))
        self.transfers[s] = dict(leaves=[(l[0], l[1], used.index(int(l[2]))) for l in leaves],
                                 targets=[(nbrs[j][0], nbrs[j][1][0], list(nbrs[j][1][1])) for j in used])
        if verbose:
            print('record %d: R %.3f leaves %d nbrs %d used %d spawned %d global %d (total %d)  %.1fs' % (s, rs['R'], len(leaves), len(set(n[0] for n in nbrs)), len(used), len(spawned), nglob, len(self.recs), time.time() - self._t), flush=True)
        return spawned

    def save(self, path):
        with open(path, 'wb') as f: pickle.dump(self.__dict__, f)


if __name__ == '__main__':
    start = json.load(open(sys.argv[1]))['phi']; nmax = int(sys.argv[2]); out = sys.argv[3]
    A = Atlas()
    x, _ = project(start)
    A.add(make_record(x))
    queue = [0]; t0 = time.time()
    while queue and len(A.closed) < nmax:
        s = queue.pop(0)
        queue += A.process(s, verbose=True)
        if len(A.closed) % 10 == 0:
            A.save(out); print('closed %d records %d  %.0fs' % (len(A.closed), len(A.recs), time.time() - t0), flush=True)
    A.save(out)
    print('done: closed %d, records %d, %.0fs' % (len(A.closed), len(A.recs), time.time() - t0))
