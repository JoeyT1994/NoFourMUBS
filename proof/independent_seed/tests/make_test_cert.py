"""Write the small test certificate tests/data/seed_test_certificate.json.gz in the layout of
proof/seed_atlas/FORMAT.md, built with the float prototype (untrusted; it only makes test inputs).
Usage: .venv/bin/python make_test_cert.py [out.json.gz]

Contents, all around the atlas centre of record 2003 (H) and one ball at record 2781:
  seed 0  A: H at its best corner (I, J), r = 0.03.  Its sphere is covered by the 256 level-2 boxes, in four groups:
           T0 into seed 1, T1 into seed 2 (a general corner of the same H), T1 with g = T into seed 4 (the transposed
           chart: a corner-symmetry transfer) and T2 into record 0.  A box goes to T0 when its other choice does not
           land with float margin.
  seed 1  B: H at (I, J), r = 0.07 (T0 target, and the T1' target of record 1's shell).
  seed 2  C: H at another corner, r = 0.07 (T1 target).
  seed 3  D: record 2781's centre at its best corner, r = 0.05.
  seed 4  E: H^T at (J, I), r = 0.07 (orientation -o_A; target of the g = T corner transfer).
  record 0: record 2003 of the current atlas with R = 0.045 (T2 target; rec target; no shell boxes).
  record 1: record 2003 with R = 0.015; its shell is covered by level-3 boxes, alternately T1' into seed 1 and rec into
           record 0.  (A seed ball is round in dephased phases, which here are up to ~3.7 times the horizontal
           distance, hence the small R.)
Seeds 1-4 and record 0 have no boundary transfers: their C2 is expected to fail (the test atlas is not closed).
Tao's record (R = 0.08, label radius 0.03, as tao.py's default) is included.  Windings are stored as FORMAT.md §5 asks.  The float n of each seed is the prototype's Taylor-model bound x 1.05."""
import gzip, itertools, json, os, sys
import numpy as np
import seedgen as G
from seedball import dist_to_edge

HERE = os.path.dirname(os.path.abspath(__file__))
TRI = list(itertools.combinations(range(6), 3))
hx = lambda x: float(x).hex()
TWO_PI = 2 * np.pi


def best_corner(H):
    best = None
    for I in TRI:
        for J in TRI:
            sc = dist_to_edge(G.corner_split(H, I, J)[0])
            if best is None or sc > best[0]:
                best = (sc, I, J)
    return best[1], best[2]


def order(I):
    return list(I) + [k for k in range(6) if k not in I]


def ubox(b):
    m, i = b[0], np.array(b[1:])
    s = 2.0 ** (1 - m)
    return -1 + i * s, -1 + (i + 1) * s


def level_boxes(m, keep):
    return [[m] + list(idx) for idx in itertools.product(range(2 ** m), repeat=4) if keep(*ubox([m] + list(idx)))]


def meets_unit_sphere(lo, hi, tol=1e-12):
    dmin = np.sqrt(np.sum(np.maximum(0, np.maximum(lo, -hi)) ** 2))
    dmax = np.sqrt(np.sum(np.maximum(lo ** 2, hi ** 2)))
    return dmin <= 1 + tol and dmax >= 1 - tol


def corner(Q, I, J):
    d = lambda a, b: Q[I[a], J[b]] - Q[I[a], J[0]] - Q[I[0], J[b]] + Q[I[0], J[0]]
    return np.array([d(1, 1), d(1, 2), d(2, 1), d(2, 2)])


def mth(ball):
    return np.array([float.fromhex(x) for x in ball['Mth']]).reshape(4, 4)


def theta0(ball):
    return np.array([float.fromhex(x) for x in ball['theta0']])


def landing(theta_p, target, N):
    return np.linalg.norm(np.linalg.solve(mth(target), theta_p + TWO_PI * N - theta0(target)))


def wind4(theta_p, target):
    return np.round((theta0(target) - theta_p) / TWO_PI).astype(int)


def wind36(D):
    """Dephase D against row 0 and column 0 and round: N with hor(D + 2 pi N) small."""
    Dp = D - D[:, :1] - D[:1, :] + D[0, 0]
    return np.round(-Dp / TWO_PI).astype(int)


def frame(rec):
    Tint = np.array(rec['Tint'], float).reshape(36, 4)
    T = np.zeros((36, 4))
    for k in range(4):
        X = Tint[:, k].reshape(6, 6)
        T[:, k] = (X - X.mean(1, keepdims=True) - X.mean(0, keepdims=True) + X.mean()).reshape(36) / 2 ** 30
    return T


def record(rec, R, boundary, eta_scale):
    return dict(phi=rec['phi'], R=hx(R), label_radius=hx(rec['label_radius']), Tint=rec['Tint'],
                eta_scale=hx(eta_scale), boundary=boundary)


def main(out):
    recs = G.atlas_records()
    H = G.record_H(recs[2003])
    Ib, Jb = best_corner(H)
    cands = sorted(((dist_to_edge(G.corner_split(H, I, J)[0]), I, J) for I in TRI for J in TRI
                    if (I, J) != (Ib, Jb) and set(I) != set(Ib)), reverse=True)
    _, Ic, Jc = cands[0]
    print('best corner', Ib, Jb, 'other corner', Ic, Jc)
    A, sbA = G.ball(H, Ib, Jb, r=0.03, k=3)
    B, _ = G.ball(H, Ib, Jb, r=0.07, k=3)
    C, _ = G.ball(H, Ic, Jc, r=0.07, k=3)
    H2 = G.record_H(recs[2781])
    D, _ = G.ball(H2, *best_corner(H2), r=0.05, k=3)
    E, _ = G.ball(H.T.copy(), Jb, Ib, r=0.07, k=3)
    assert E['o'] == -A['o']
    print('n:', [float.fromhex(b['n']) for b in (A, B, C, D, E)])
    PA = sbA.P.reshape(6, 6)
    rowsA = order(Ib); colsA = order(Jb)
    posr = [rowsA.index(i) for i in range(6)]; posc = [colsA.index(j) for j in range(6)]
    T1rows = [posr[i] for i in Ic]; T1cols = [posc[j] for j in Jc]
    rA = 0.03
    MthA = mth(A)
    # windings (one per group; computed at the centre)
    N_T1 = wind4(corner(PA, T1rows, T1cols), C)
    N_T1T = wind4(corner(PA.T, [0, 1, 2], [0, 1, 2]), E)
    rec0 = recs[2003]
    P0 = np.array([float.fromhex(x) for x in rec0['phi']]).reshape(6, 6)
    N_T2 = wind36(PA[np.ix_(posr, posc)] - P0)
    groups = {k: [] for k in ('T0', 'T1', 'T1T', 'T2')}
    for i, b in enumerate(level_boxes(2, meets_unit_sphere)):
        lo, hi = ubox(b)
        choice = ('T0', 'T1', 'T1T', 'T2')[i % 4]
        if choice == 'T1':
            worst = 0.0
            for v in itertools.product((0, 1), repeat=4):
                out_ = sbA.Q(sbA.theta0 + MthA @ (rA * np.where(np.array(v) == 1, hi, lo)))
                worst = max(worst, landing(corner(out_[0].reshape(6, 6), T1rows, T1cols), C, N_T1))
            if worst > 0.8 * 0.07:
                choice = 'T0'
        groups[choice].append(b)
    A['transfers'] = [
        dict(kind='T0', target=1, wind=[0, 0, 0, 0], boxes=groups['T0']),
        dict(kind='T1', target=2, g='id', rows=T1rows, cols=T1cols, wind=N_T1.tolist(), boxes=groups['T1']),
        dict(kind='T1', target=4, g='T', rows=[0, 1, 2], cols=[0, 1, 2], wind=N_T1T.tolist(), boxes=groups['T1T']),
        dict(kind='T2', target=0, g='id', rows=posr, cols=posc, wind=N_T2.reshape(36).tolist(), boxes=groups['T2'])]
    print('seed 0 sphere boxes:', {k: len(v) for k, v in groups.items()})
    # record 1: R = 0.015, shell boxes at level 3 in units of eta_scale
    R1 = 0.015
    T = frame(rec0)
    eta_scale = 1.01 * R1 / np.sqrt(np.linalg.eigvalsh(T.T @ T).min())

    def meets_shell(lo, hi):
        lo = eta_scale * lo; hi = eta_scale * hi
        up = max(np.linalg.norm(T @ np.where(np.array(v) == 1, hi, lo)) for v in itertools.product((0, 1), repeat=4))
        zc = (lo + hi) / 2; h = (hi - lo) / 2
        low = np.linalg.norm(np.maximum(0, np.abs(T @ zc) - np.abs(T) @ h))
        return low <= R1 * 1.0001 and up >= 0.9 * R1
    shell = level_boxes(3, meets_shell)
    N_T1p = wind4(corner(P0, list(Ib), list(Jb)), B)
    rec1 = record(rec0, R1, [
        dict(kind='T1prime', target=1, g='id', rows=list(Ib), cols=list(Jb), wind=N_T1p.tolist(), boxes=shell[0::2]),
        dict(kind='rec', target=0, g='id', rows=list(range(6)), cols=list(range(6)), wind=[0] * 36, boxes=shell[1::2])],
        eta_scale)
    print('record 1 shell boxes:', len(shell))
    cert = {'format': 'seed-atlas-v1', 'max_level': 3, 'seeds': [A, B, C, D, E],
            'records': [record(rec0, 0.045, [], 0.05), rec1], 'fourier_record': -1,
            'tao': {'R': hx(0.08), 'label_radius': hx(0.03)},
            'info': {'note': 'test certificate (proof/independent_seed/tests/make_test_cert.py); not an atlas'}}
    os.makedirs(os.path.dirname(out), exist_ok=True)
    with gzip.open(out, 'wt') as f:
        json.dump(cert, f)
    print('wrote', out)


if __name__ == '__main__':
    main(sys.argv[1] if len(sys.argv) > 1 else os.path.join(HERE, 'data', 'seed_test_certificate.json.gz'))
