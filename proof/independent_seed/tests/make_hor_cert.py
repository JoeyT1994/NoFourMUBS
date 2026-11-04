"""Write tests/data/hor_test_certificate.json.gz: seed balls in the horizontal gauge (SPEC §11, "gauge": "hor"), built
with the float prototype (untrusted; it only makes test inputs).  Usage: .venv/bin/python make_hor_cert.py [out]

  seed 0: record 2003's centre at its best corner (I, J), horizontal gauge, r = 0.02, k = 3, n = 1.25 x the sampled
          residual ||hor(Q_g) - P - U w||.  Its sphere (the 256 level-2 boxes) is covered by T0 into seed 1, T1 into
          seed 2 (another corner, dephased gauge: transfers mix gauges) and T2 into record 0, in turn (a box goes to T0
          when its T1 landing is not well inside).  Windings at the centre, from the dephased representative.
  seed 1: H at (I, J), horizontal gauge, r = 0.05 (T0 target; no transfers).
  seed 2: H at another corner, dephased gauge, r = 0.08 (T1 target; no transfers).
  record 0: record 2003 of the current atlas with R = 0.1 (T2 target; no shell boxes)."""
import gzip, itertools, json, os, sys
import numpy as np
import seedgen as G
from seedball import dist_to_edge
from make_test_cert import (TRI, best_corner, order, ubox, level_boxes, meets_unit_sphere, corner, mth, landing, wind4,
                            wind36, record)

HERE = os.path.dirname(os.path.abspath(__file__))


def main(out):
    recs = G.atlas_records()
    H = G.record_H(recs[2003])
    Ib, Jb = best_corner(H)
    cands = sorted(((dist_to_edge(G.corner_split(H, I, J)[0]), I, J) for I in TRI for J in TRI
                    if (I, J) != (Ib, Jb) and set(I) != set(Ib)), reverse=True)
    _, Ic, Jc = cands[0]
    rA = 0.02
    A, sbA = G.ball_hor(H, Ib, Jb, r=rA, k=3)
    B, _ = G.ball_hor(H, Ib, Jb, r=0.05, k=3)
    C, _ = G.ball(H, Ic, Jc, r=0.08, k=3)
    A['gauge'] = B['gauge'] = 'hor'
    print('n:', [float.fromhex(b['n']) for b in (A, B, C)])
    PA = sbA.P.reshape(6, 6)                     # the dephased-gauge centre P_g = gauge(P)
    rowsA = order(Ib); colsA = order(Jb)
    posr = [rowsA.index(i) for i in range(6)]; posc = [colsA.index(j) for j in range(6)]
    T1rows = [posr[i] for i in Ic]; T1cols = [posc[j] for j in Jc]
    MthA = mth(A)
    N_T1 = wind4(corner(PA, T1rows, T1cols), C)
    rec0 = recs[2003]
    P0 = np.array([float.fromhex(x) for x in rec0['phi']]).reshape(6, 6)
    N_T2 = wind36(PA[np.ix_(posr, posc)] - P0)
    groups = {k: [] for k in ('T0', 'T1', 'T2')}; ws = []
    for i, b in enumerate(level_boxes(2, meets_unit_sphere)):
        lo, hi = ubox(b)
        choice = ('T0', 'T1', 'T2')[i % 3]
        if choice == 'T1':
            worst = 0.0
            for v in itertools.product((0, 1), repeat=4):
                out_ = sbA.Q(sbA.theta0 + MthA @ (rA * np.where(np.array(v) == 1, hi, lo)))
                worst = max(worst, landing(corner(out_[0].reshape(6, 6), T1rows, T1cols), C, N_T1))
            ws.append(worst)
            if worst > 0.8 * 0.08:
                choice = 'T0'
        groups[choice].append(b)
    A['transfers'] = [
        dict(kind='T0', target=1, wind=[0, 0, 0, 0], boxes=groups['T0']),
        dict(kind='T1', target=2, g='id', rows=T1rows, cols=T1cols, wind=N_T1.tolist(), boxes=groups['T1']),
        dict(kind='T2', target=0, g='id', rows=posr, cols=posc, wind=N_T2.reshape(36).tolist(), boxes=groups['T2'])]
    print('T1 landings', np.percentile(ws, [0, 25, 50, 100]))
    print('seed 0 sphere boxes:', {k: len(v) for k, v in groups.items()})
    cert = {'format': 'seed-atlas-v1', 'max_level': 2, 'seeds': [A, B, C], 'records': [record(rec0, 0.1, [], 0.11)],
            'tao': {'R': (0.08).hex(), 'label_radius': (0.03).hex()},
            'info': {'note': 'horizontal-gauge test certificate (proof/independent_seed/tests/make_hor_cert.py); not an atlas'}}
    with gzip.open(out, 'wt') as f:
        json.dump(cert, f)
    print('wrote', out)


if __name__ == '__main__':
    main(sys.argv[1] if len(sys.argv) > 1 else os.path.join(HERE, 'data', 'hor_test_certificate.json.gz'))
