"""Quantitative test of the MUB-triple conjecture across the atlas (exploratory, NUMERICAL).

Conjecture (Matolcsi-Matszangosz-Varga-Weiner; draft paper Conjecture 1): every MUB triple in C^6 is equivalent to the
isolated Fourier triple or to a triple of the continuous Zauner-Szollosi construction, whose transitions lie in the
two-circulant family X^(2), the transposed Fourier family (F6^(2))^T and the Fourier family F6^(2).

For each atlas Record centre H (a Hadamard, binary64 phases):
1. unbiased vectors of {I, H/sqrt6}: Stage C bins at radius 0 (stagec.bins), refined by Newton;
2. starts: up to NSTARTS 6-cliques of the graph |<x,y>|/6 <= delta3 + 0.2 on them, closest to orthonormal first;
3. Levenberg-Marquardt on the full triple equations in the dephased phase chart of draft/2C (25 phases of H, 30 of
   the third basis K): 96 residuals (orthogonality of H and K, |H^dag K|^2 = 6);
4. each converged triple (residual < 1e-11) is classified by its transitions T1 = H, T2 = K, T3 = H^dag K / sqrt6:
   - f6(T): distance of the Haagerup invariants T_ij T_kl conj(T_il T_kj) to the sixth roots of unity (0 iff the
     invariants are those of F6);
   - d3(T): least ||B B^dag - 3I||_F / 3 over 3x3 submatrices (0 iff T has a 3x3 Hadamard block: Fourier type);
   - x2(T): least residual of the X^(2) corner relation (theta1, theta2, theta1 - theta2, theta1) over all dephased
     ordered 3x3 corners of T, conj(T), T^T and conj(T^T);
   class: 'isolated_fourier' if f6 ~ 0 for all three; 'continuous' if at least two are Fourier type and the third
   is Fourier type or satisfies the X^(2) relation; otherwise 'unexplained' (a candidate counterexample).

Usage: python3 triples.py --validate   (checks the known triples).  The per-record mode, triples.py <out.jsonl> <idx> ...,
reads the earlier 12,021-record atlas, kept at the git tag v1-25dim-records.
"""
import argparse, gzip, itertools, json, math, os, sys, time, traceback

import numpy as np

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.abspath(os.path.join(HERE, '..', '..'))
sys.path.insert(0, os.path.join(ROOT, 'proof', 'atlas'))

TOL = 1e-6          # classification threshold for d3, f6 and x2
NSTARTS = 64        # starts per Record
WINDOW = 0.2        # starts: 6-cliques of |<x,y>|/6 <= delta3 + WINDOW
_ATLAS = None


def atlas():
    global _ATLAS
    if _ATLAS is None:
        _ATLAS = json.load(gzip.open(os.path.join(ROOT, 'proof/atlas/results/atlas_certificate.json.gz'), 'rt'))
    return _ATLAS


# ---------------------------------------------------------------- unbiased vectors of {I, H/sqrt6}
def flat(phi):
    """Rows (1, e(phi_1), ..., e(phi_5)) for phases phi in cycles."""
    return np.exp(2j * np.pi * np.concatenate([np.zeros((len(phi), 1)), phi], 1))


def unbiased_vectors(H):
    """All flat x (x_0 = 1) with |sum_j conj(H_ji) x_j|^2 = 6, found from radius-0 Stage C bins plus Newton."""
    import stagec as SC
    P = np.angle(H) / (2 * np.pi)
    U, _ = SC.bins(P, 0.0)
    if not len(U):
        return np.zeros((0, 6), complex)
    Hc = H.conj()
    phi = np.array(U, float)
    for _ in range(40):
        x = flat(phi)
        S = x @ Hc                                                     # S[n, i] = sum_j conj(H_ji) x_j
        F = np.abs(S[:, 1:]) ** 2 - 6
        # J[n, i, m] = d|S_i|^2/d phi_m = 2 Re(conj(S_i) * conj(H_mi) * 2 pi i x_m)
        J = 2 * np.real(np.conj(S[:, 1:])[:, :, None] * Hc[1:, 1:].T[None, :, :] * (2j * np.pi) * x[:, None, 1:])
        try:
            step = np.linalg.solve(J, F[..., None])[..., 0]
        except np.linalg.LinAlgError:
            break
        phi = phi - np.clip(step, -0.05, 0.05)
    res = np.abs(np.abs(flat(phi) @ Hc) ** 2 - 6).max(1)
    phi = np.mod(phi[res < 1e-10], 1.0)
    roots = []
    for p in phi:
        if all(np.max(np.abs(((p - r + 0.5) % 1.0) - 0.5)) > 1e-7 for r in roots):
            roots.append(p)
    return flat(np.array(roots).reshape(-1, 5))


def candidate_sets(X, cap=200000):
    """(starts, delta3): delta3 = least t with a 6-clique in the graph |<x,y>|/6 <= t on the rows of X, and the
    NSTARTS 6-cliques of the graph at delta3 + WINDOW with the smallest largest overlap."""
    n = len(X)
    if n < 6:
        return [], None
    G = np.abs(X.conj() @ X.T) / 6
    np.fill_diagonal(G, 9.0)
    vals = np.unique(G[np.triu_indices(n, 1)])

    def cliques(t, limit):
        adj = [int(''.join('1' if G[i, j] <= t else '0' for j in reversed(range(n))), 2) for i in range(n)]
        out, steps = [], [0]

        def rec(pool, need, chosen):
            if len(out) >= limit or steps[0] > cap:
                return
            if need == 0:
                out.append(tuple(chosen)); return
            while pool and bin(pool).count('1') >= need:
                steps[0] += 1
                b = pool & -pool; i = b.bit_length() - 1; pool ^= b
                rec(pool & adj[i], need - 1, chosen + [i])
        rec((1 << n) - 1, 6, [])
        return out
    lo, hi = 0, len(vals) - 1
    if not cliques(vals[hi], 1):
        return [], None
    while lo < hi:
        mid = (lo + hi) // 2
        if cliques(vals[mid], 1):
            hi = mid
        else:
            lo = mid + 1
    delta3 = float(vals[lo])
    cs = cliques(delta3 + WINDOW, 4000)
    cs.sort(key=lambda c: max(G[a, b] for a, b in itertools.combinations(c, 2)))
    return cs[:NSTARTS], delta3


# ---------------------------------------------------------------- the triple equations (dephased chart)
def dephase(H):
    H = H * np.conj(H[0])[None, :]
    return H * np.conj(H[:, 0])[:, None]


def residuals(H, K):
    a, b = np.triu_indices(6, 1)
    GH = H.conj().T @ H
    GK = K.conj().T @ K
    M = np.abs(H.conj().T @ K) ** 2 - 6
    return np.concatenate([GH[a, b].real, GH[a, b].imag, GK[a, b].real, GK[a, b].imag, M.ravel()])


MASK_H = np.ones((6, 6), bool); MASK_H[0, :] = False; MASK_H[:, 0] = False       # 25 free phases
MASK_K = np.ones((6, 6), bool); MASK_K[0, :] = False                             # 30 free phases


def unpack(w, H0, K0):
    U = np.zeros((6, 6)); U[MASK_H] = w[:25]
    V = np.zeros((6, 6)); V[MASK_K] = w[25:]
    return H0 * np.exp(1j * U), K0 * np.exp(1j * V)


def solve_triple(H0, K0, iters=60):
    """Levenberg-Marquardt from (H0, K0) with a forward-difference Jacobian; returns (H, K, residual norm)."""
    w = np.zeros(55)
    lam = 1e-3
    f = residuals(*unpack(w, H0, K0))
    for _ in range(iters):
        if np.linalg.norm(f) < 1e-13:
            break
        J = np.empty((96, 55))
        h = 1e-7
        for k in range(55):
            e = np.zeros(55); e[k] = h
            J[:, k] = (residuals(*unpack(w + e, H0, K0)) - f) / h
        A = J.T @ J
        g = J.T @ f
        while lam <= 1e8:
            step = np.linalg.solve(A + lam * np.diag(np.diag(A) + 1e-12), -g)
            f2 = residuals(*unpack(w + step, H0, K0))
            if np.linalg.norm(f2) < np.linalg.norm(f):
                w, f, lam = w + step, f2, max(lam / 5, 1e-12)
                break
            lam *= 5
        else:
            break                                                       # no descent step: stuck
    H, K = unpack(w, H0, K0)
    return H, K, float(np.linalg.norm(f))


# ---------------------------------------------------------------- invariants for the classification
ROOTS6 = np.exp(2j * np.pi * np.arange(6) / 6)


def f6_distance(T):
    T = T / np.abs(T)
    L = np.einsum('ij,kl,il,kj->ijkl', T, T, T.conj(), T.conj()).ravel()
    return float(np.max(np.min(np.abs(L[:, None] - ROOTS6[None, :]), 1)))


def d3(T):
    T = T / np.abs(T)
    return float(min(np.linalg.norm(T[np.ix_(R, C)] @ T[np.ix_(R, C)].conj().T - 3 * np.eye(3)) / 3
                     for R in itertools.combinations(range(6), 3) for C in itertools.combinations(range(6), 3)))


PERM3 = np.array(list(itertools.permutations(range(6), 3)))


def x2_residual(T):
    """Least |wrap(t3 - t1 + t2)| + |wrap(t4 - t1)| over dephased ordered 3x3 corners of T, conj(T) and T^T, where
    (t1, t2, t3, t4) are the phases of the dephased corner's 2x2 lower-right block."""
    wrap = lambda a: np.abs((a + np.pi) % (2 * np.pi) - np.pi)
    p0, p1, p2 = PERM3.T                                                # ordered row (and column) triples
    best = []
    for M in (T, T.conj(), T.T, T.T.conj()):
        A = np.angle(M)
        e = lambda r, c: A[np.ix_(r, c)] - A[np.ix_(p0, c)] - A[np.ix_(r, p0)] + A[np.ix_(p0, p0)]
        t1, t2, t3, t4 = e(p1, p1), e(p1, p2), e(p2, p1), e(p2, p2)
        best.append((wrap(t3 - t1 + t2) + wrap(t4 - t1)).min())
    return float(min(best))


def classify(H, K):
    T = [H, K, H.conj().T @ K / math.sqrt(6)]
    f6 = [f6_distance(t) for t in T]
    dd = [d3(t) for t in T]
    rest = [t for t, d in zip(T, dd) if d >= TOL]                      # transitions not of Fourier type
    out = {'f6': f6, 'd3': dd, 'class': 'unexplained'}
    if max(f6) < TOL:
        out['class'] = 'isolated_fourier'
    elif not rest:
        out['class'] = 'continuous'
    elif len(rest) == 1:
        out['x2'] = x2_residual(rest[0])
        if out['x2'] < TOL:
            out['class'] = 'continuous'
    return out


# ---------------------------------------------------------------- one Record
def one_record(idx):
    rec = atlas()['records'][idx]
    P = np.array([float.fromhex(x) for x in rec['phi']]).reshape(6, 6)
    H = dephase(np.exp(1j * P))
    out = dict(idx=idx, R=rec['R'])
    X = unbiased_vectors(H)
    out['n_unbiased'] = len(X)
    cands, out['delta3'] = candidate_sets(X)
    out['n_candidates'] = len(cands)
    found, fails = [], []
    for c in cands:
        K0 = X[list(c)].T
        Hs, Ks, res = solve_triple(H, K0)
        if res > 1e-11:
            fails.append(res)
            continue
        cls = classify(Hs, Ks)
        found.append(dict(H=Hs, dist=float(np.linalg.norm(Hs - H)), distK=float(np.linalg.norm(Ks - K0)),
                          res=res, **cls))
    # distinct triples: a different H, or the same H with a different third basis (told apart by f6 of K)
    uniq = []
    for f in found:
        if not any(np.linalg.norm(f['H'] - g['H']) < 1e-6 and abs(f['f6'][1] - g['f6'][1]) < 1e-6 for g in uniq):
            uniq.append(f)
    out['n_converged'], out['n_failed'] = len(found), len(fails)
    out['min_fail_res'] = min(fails, default=None)
    out['triples'] = [{k: v for k, v in f.items() if k != 'H'} for f in uniq]
    out['classes'] = sorted({f['class'] for f in uniq})
    out['min_dist'] = min((f['dist'] for f in uniq), default=None)
    return out


# ---------------------------------------------------------------- validation on known triples
def known_triples():
    w = np.exp(2j * np.pi / 3)
    F2 = np.array([[1, 1], [1, -1]], complex)
    F3 = np.array([[w ** (p * q) for q in range(3)] for p in range(3)])
    prod = (np.kron(F2, F3), np.kron(np.diag([1, 1j]) @ F2, np.diag([1, w, w]) @ F3))
    # 2C, Section 6.1: (b, c, e, f) = (i, i, 1, -1)
    circ = lambda a, b, c: np.array([[a, b, c], [c, a, b], [b, c, a]], complex)
    A, B = circ(1, 1j, 1j), circ(1, 1, -1)
    Hb = np.block([[A, B], [B.conj().T, -A.conj().T]])
    lam = np.array([1 + 1j * w ** q + 1j * w ** (2 * q) for q in range(3)])
    mu = np.array([1 + w ** q - w ** (2 * q) for q in range(3)])
    z = 1j * np.conj(lam * mu) / np.abs(lam * mu)
    Kb = np.block([[F3, F3], [F3 @ np.diag(z), -F3 @ np.diag(z)]])
    return dict(product=prod, bicirculant=(Hb, Kb))


def validate():
    for name, (H, K) in known_triples().items():
        r = np.linalg.norm(residuals(H, K))
        print('%-12s residual %.1e  ->  %s' % (name, r, classify(H, K)))
    # perturb the bicirculant triple and re-solve
    H, K = known_triples()['bicirculant']
    rng = np.random.default_rng(0)
    Hp = dephase(H) * np.exp(1j * 0.02 * rng.standard_normal((6, 6)) * MASK_H)
    Kp = K * np.conj(K[0])[None, :] * np.exp(1j * 0.02 * rng.standard_normal((6, 6)) * MASK_K)
    Hs, Ks, res = solve_triple(Hp, Kp)
    print('perturbed bicirculant: re-solved residual %.1e, H moved %.3f -> %s'
          % (res, np.linalg.norm(Hs - Hp), classify(Hs, Ks)['class']))


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('out', nargs='?')
    ap.add_argument('idx', nargs='*', type=int)
    ap.add_argument('--validate', action='store_true')
    a = ap.parse_args()
    if a.validate:
        validate(); return
    done = set()
    if os.path.exists(a.out):
        done = {json.loads(l)['idx'] for l in open(a.out) if l.strip()}
    with open(a.out, 'a') as f:
        for idx in a.idx:
            if idx in done:
                continue
            t0 = time.time()
            try:
                row = one_record(idx)
            except Exception as e:                                      # noqa: BLE001
                row = dict(idx=idx, error=repr(e), trace=traceback.format_exc()[-1500:])
            row['wall_s'] = round(time.time() - t0, 1)
            f.write(json.dumps(row) + '\n'); f.flush()
            print(idx, row.get('classes', row.get('error')), row['wall_s'], flush=True)


if __name__ == '__main__':
    main()
