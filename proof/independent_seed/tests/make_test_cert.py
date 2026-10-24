"""Write the small test certificate tests/data/seed_test_certificate.json.gz (SPEC §8 layout), built with the float
prototype (untrusted; it only makes test inputs).  Usage: .venv/bin/python make_test_cert.py [out.json.gz]

Contents, all around the atlas centre of record 2003 (H) and one ball at record 2781:
  seed 0  A: H at its best corner, r = 0.03.  Its sphere is covered by a 4^4 grid of boxes, each with a transfer:
           T0 into seed 1, T1 into seed 2 (another corner of the same H) or T2 into record 0, in rotation
           (a box gets T0 when its other choice does not land with float margin).
  seed 1  B: H at the best corner, r = 0.07 (T0 target, and the T1' target of record 0's shell).
  seed 2  C: H at another corner, r = 0.07 (T1 target).
  seed 3  D: record 2781's centre at its best corner, r = 0.05.
  record 0: record 2003 of the current atlas with R = 0.045 (T2 target; no shell boxes).
  record 1: record 2003 with R = 0.015; its shell is covered by a grid of boxes, each T1' into seed 1.  (A seed ball is
           round in dephased phases, which here are up to ~3.7 times the horizontal distance, hence the small R.)
Seeds 1-3 and record 0 have no boundary transfers: their C2 is expected to fail (the test atlas is not closed).
The float n of each seed is the prototype's Taylor-model bound times 1.05."""
import gzip, itertools, json, os, sys
import numpy as np
import seedgen as G

HERE = os.path.dirname(os.path.abspath(__file__))
TRI = list(itertools.combinations(range(6), 3))
hx = lambda x: float(x).hex()


def best_corner(H):
    from seedball import dist_to_edge
    best = None
    for I in TRI:
        for J in TRI:
            th, _, _ = G.corner_split(H, I, J)
            sc = dist_to_edge(th)
            if best is None or sc > best[0]:
                best = (sc, I, J)
    return best[1], best[2]


def order(I):
    return list(I) + [k for k in range(6) if k not in I]


def grid_boxes(rad, m, keep):
    """Boxes of the m^4 grid of [-rad, rad]^4 (exact float edges: rad * (2i/m - 1)), those with keep(lo, hi)."""
    edges = [rad * (2 * i / m - 1) for i in range(m + 1)]
    edges[0] = -rad; edges[-1] = rad
    out = []
    for idx in itertools.product(range(m), repeat=4):
        lo = np.array([edges[i] for i in idx]); hi = np.array([edges[i + 1] for i in idx])
        if keep(lo, hi):
            out.append((lo, hi))
    return out


def meets_sphere_f(lo, hi, r, tol=1e-12):
    dmin = np.sqrt(np.sum(np.maximum(0, np.maximum(lo, -hi)) ** 2))
    dmax = np.sqrt(np.sum(np.maximum(lo ** 2, hi ** 2)))
    return dmin <= r * (1 + tol) and dmax >= r * (1 - tol)


def landing_T1(sbA, MthA, w, I, J, ballC, sbC):
    """Float: ||w_C|| of the seed of H_A(theta(w)) at the corner (I, J) (in A's frame)."""
    out = sbA.Q(sbA.theta0 + MthA @ w)
    Q = out[0].reshape(6, 6)
    d = lambda a, b: Q[I[a], J[b]] - Q[I[a], J[0]] - Q[I[0], J[b]] + Q[I[0], J[0]]
    th = np.array([d(1, 1), d(1, 2), d(2, 1), d(2, 2)])
    MthC = np.array([float.fromhex(x) for x in ballC['Mth']]).reshape(4, 4)
    v = th - sbC.theta0
    v -= 2 * np.pi * np.round(v / (2 * np.pi))
    return np.linalg.norm(np.linalg.solve(MthC, v))


def frame(rec):
    Tint = np.array(rec['Tint'], float).reshape(36, 4)
    T = np.zeros((36, 4))
    for k in range(4):
        X = Tint[:, k].reshape(6, 6)
        X = X - X.mean(1, keepdims=True) - X.mean(0, keepdims=True) + X.mean()
        T[:, k] = X.reshape(36) / 2 ** 30
    return T


def main(out):
    recs = G.atlas_records()
    H = G.record_H(recs[2003])
    Ib, Jb = best_corner(H)
    # another corner whose seed is well inside Omega
    from seedball import dist_to_edge
    cands = sorted(((dist_to_edge(G.corner_split(H, I, J)[0]), I, J) for I in TRI for J in TRI
                    if (I, J) != (Ib, Jb) and set(I) != set(Ib)), reverse=True)
    _, Ic, Jc = cands[0]
    print('best corner', Ib, Jb, 'other corner', Ic, Jc)
    A, sbA = G.ball(H, Ib, Jb, r=0.03, k=3)
    B, sbB = G.ball(H, Ib, Jb, r=0.07, k=3)
    C, sbC = G.ball(H, Ic, Jc, r=0.07, k=3)
    H2 = G.record_H(recs[2781])
    I2, J2 = best_corner(H2)
    D, _ = G.ball(H2, I2, J2, r=0.05, k=3)
    print('n:', [float.fromhex(b['n']) for b in (A, B, C, D)])
    # record 0: record 2003 with R = 0.045
    rec0 = dict(recs[2003]); rec0['R'] = 0.045; rec0['closed'] = True; rec0['targets'] = []
    # positions in A's frame of the original rows / columns
    rowsA = order(Ib); colsA = order(Jb)
    posr = {i: rowsA.index(i) for i in range(6)}; posc = {j: colsA.index(j) for j in range(6)}
    T1rows = [posr[i] for i in Ic]; T1cols = [posc[j] for j in Jc]
    MthA = np.array([float.fromhex(x) for x in A['Mth']]).reshape(4, 4)
    rA = float.fromhex(A['r'])
    boxes = grid_boxes(rA, 4, lambda lo, hi: meets_sphere_f(lo, hi, rA))
    kinds = {'T0': 0, 'T1': 0, 'T2': 0}
    for i, (lo, hi) in enumerate(boxes):
        t = dict(box=dict(lo=[hx(x) for x in lo], hi=[hx(x) for x in hi]))
        choice = ('T0', 'T1', 'T2')[i % 3]
        if choice == 'T1':
            worst = max(landing_T1(sbA, MthA, np.where(np.array(v) == 1, hi, lo), T1rows, T1cols, C, sbC)
                        for v in itertools.product((0, 1), repeat=4))
            if worst > 0.8 * float.fromhex(C['r']):
                choice = 'T0'
        if choice == 'T0':
            t.update(kind='T0', target=1)
        elif choice == 'T1':
            t.update(kind='T1', target=2, g='id', rows=T1rows, cols=T1cols)
        else:
            # A(Q_A)[i, j] = Q_A[posr[i], posc[j]] puts A's frame back in H's order
            t.update(kind='T2', target=0, g='id', perm=[[posr[i] for i in range(6)], [posc[j] for j in range(6)]])
        kinds[choice] += 1
        A['transfers'].append(t)
    print('seed 0 sphere boxes:', len(boxes), kinds)
    # record 1's shell: R^2 - n^2 <= ||T eta||^2 <= R^2, eta in [-rho, rho]^4, rho >= r_H
    rec1 = dict(recs[2003]); rec1['R'] = 0.015; rec1['closed'] = True; rec1['targets'] = []
    T = frame(rec1)
    Gm = T.T @ T
    rH = rec1['R'] / np.sqrt(np.linalg.eigvalsh(Gm).min())
    rho = rH * 1.02
    R = rec1['R']

    def meets_shell(lo, hi):
        vs = [np.where(np.array(v) == 1, hi, lo) for v in itertools.product((0, 1), repeat=4)]
        up = max(np.linalg.norm(T @ v) for v in vs)
        zc = (lo + hi) / 2; h = (hi - lo) / 2
        low = np.linalg.norm(np.maximum(0, np.abs(T @ zc) - np.abs(T) @ h))
        return low <= R * 1.0001 and up >= 0.9 * R
    rb = grid_boxes(rho, 6, meets_shell)
    rec1['boundary'] = [dict(box=dict(lo=[hx(x) for x in lo], hi=[hx(x) for x in hi]), kind='T1prime', target=1,
                             g='id', rows=list(Ib), cols=list(Jb)) for lo, hi in rb]
    print('record 1 shell boxes:', len(rb), 'rH', rH)
    cert = {'format': 'seed-atlas-v1', 'seeds': [A, B, C, D], 'records': [rec0, rec1], 'fourier_record': -1,
            'note': 'test certificate (proof/independent_seed/tests/make_test_cert.py); not an atlas'}
    os.makedirs(os.path.dirname(out), exist_ok=True)
    with gzip.open(out, 'wt') as f:
        json.dump(cert, f)
    print('wrote', out)


if __name__ == '__main__':
    main(sys.argv[1] if len(sys.argv) > 1 else os.path.join(HERE, 'data', 'seed_test_certificate.json.gz'))
