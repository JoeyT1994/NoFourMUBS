"""Write tests/data/edge_test_certificate.json.gz: an edge ball at F6 (SPEC §10) with T3 and T1 transfers, built with the
float prototypes (untrusted; they only make test inputs).  Usage: .venv/bin/python make_edge_cert.py [out.json.gz]

  edge ball 0: the chart through F6 (explorations/seed_balls/edgeball.py), r = 0.05, k = 4; its frame U and Mth from the
               SVD of DQ at p = 0 (central differences); n = 4 x the sampled residual.  A few of its level-3 sphere
               boxes near w_B carry T1 transfers into seed 1 (not a cover: its C2 coverage fails by design).
  seed 0  A: the completion H(p_A), p_A = Mth w_A with ||w_A|| = 0.4 r and y != 0, at its best corner, r = 0.004; its
             whole sphere (the 256 level-2 boxes) transfers by T3 into the edge ball at F6's corner (rows and columns
             0, 1, 2 of H(p_A), given as full orderings in A's frame).
  seed 1  B: H(p_B), ||w_B|| = r (on the edge ball's sphere), at its best corner, r = 0.02 (T1 target; no transfers).
  records: Tao's record only, as a record without a frame (R = 0.08, label radius 0.03)."""
import gzip, itertools, json, os, subprocess, sys, tempfile
import numpy as np
import seedgen as G
from make_test_cert import best_corner, order, ubox, level_boxes, meets_unit_sphere, corner, wind4

HERE = os.path.dirname(os.path.abspath(__file__))
hx = lambda x: float(x).hex()


def load_edgeball():
    p = os.path.join(G.ROOT, 'explorations', 'seed_balls')
    if not os.path.exists(os.path.join(p, 'edgeball.py')):
        p = tempfile.mkdtemp()
        src = subprocess.run(['git', '-C', G.ROOT, 'show', 'main:explorations/seed_balls/edgeball.py'], capture_output=True,
                             text=True, check=True).stdout
        open(os.path.join(p, 'edgeball.py'), 'w').write(src)
    sys.path.insert(0, p)
    import edgeball
    return edgeball


def main(out):
    EB = load_edgeball()
    H0, ok, _, _ = EB.complete(np.zeros(4))
    assert ok
    P = np.angle(H0)

    def Hp(p):
        H, ok, _, _ = EB.complete(np.asarray(p, float), steps=max(1, int(np.ceil(np.linalg.norm(p) / 0.05))))
        assert ok
        return H

    def Q(p):
        return (P + np.angle(Hp(p) * np.exp(-1j * P))).reshape(36)
    h = 1e-5
    T = np.array([(Q(h * e) - Q(-h * e)) / (2 * h) for e in np.eye(4)]).T
    U, S, Vt = np.linalg.svd(T, full_matrices=False)
    M = Vt.T / S[None, :]
    Uf = T @ M
    r = 0.05
    rng = np.random.default_rng(0)
    worst = max(np.linalg.norm(Q(M @ (r * v / np.linalg.norm(v))) - P.reshape(36) - Uf @ (r * v / np.linalg.norm(v)))
                for v in rng.normal(size=(200, 4)))
    print('edge ball: singular values', S, 'sampled residual at r', worst)
    eb = dict(Mth=[hx(x) for x in M.reshape(16)], r=hx(r), P=[hx(x) for x in P.reshape(36)], U=[hx(x) for x in Uf.reshape(144)],
              n=hx(4 * worst), label_radius=hx(0.03), k=4, transfers=[])
    # seed A inside: w_A with a large y component (y != 0, so H(p_A) is strict at F6's corner)
    wA = 0.4 * r * np.array([0.3, -0.2, 0.25, 0.9]) / np.linalg.norm([0.3, -0.2, 0.25, 0.9])
    HA = Hp(M @ wA)
    Ia, Ja = best_corner(HA)
    A, _ = G.ball(HA, Ia, Ja, r=0.004, k=3, n=0.002)          # the prototype's tm2_n fails this close to F6
    rowsA = order(Ia); colsA = order(Ja)
    rows = [rowsA.index(i) for i in range(6)]; cols = [colsA.index(j) for j in range(6)]
    A['transfers'] = [dict(kind='T3', target=0, g='id', rows=rows, cols=cols,
                           boxes=level_boxes(2, meets_unit_sphere))]
    print('seed A: p_A =', M @ wA, 'corner', Ia, Ja, 'n', float.fromhex(A['n']))
    # seed B on the edge ball's sphere
    wB = r * np.array([-0.4, 0.3, 0.2, 0.85]) / np.linalg.norm([-0.4, 0.3, 0.2, 0.85])
    HB = Hp(M @ wB)
    Ib, Jb = best_corner(HB)
    B, _ = G.ball(HB, Ib, Jb, r=0.02, k=3, n=0.015)
    print('seed B: p_B =', M @ wB, 'corner', Ib, Jb, 'n', float.fromhex(B['n']))
    # edge sphere boxes near w_B / r (level 3), T1 into seed B at H's corner (Ib, Jb)
    uB = wB / r
    near = [b for b in level_boxes(3, meets_unit_sphere)
            if np.linalg.norm((ubox(b)[0] + ubox(b)[1]) / 2 - uB) < 0.12]
    Qc = Q(M @ wB).reshape(6, 6)
    eb['transfers'] = [dict(kind='T1', target=1, g='id', rows=list(Ib), cols=list(Jb),
                            wind=wind4(corner(Qc, list(Ib), list(Jb)), B).tolist(), boxes=near)]
    print('edge ball: %d sphere boxes into seed B' % len(near))
    tao = dict(phi=[hx(2 * np.pi * k / 3) for k in G.np.array([[0, 0, 0, 0, 0, 0], [0, 0, 1, 1, 2, 2], [0, 1, 0, 2, 2, 1],
                                                                [0, 1, 2, 0, 1, 2], [0, 2, 2, 1, 0, 1], [0, 2, 1, 2, 1, 0]]).reshape(36)],
               R=hx(0.08), label_radius=hx(0.03))
    cert = {'format': 'seed-atlas-v1', 'max_level': 3, 'seeds': [A, B], 'edge': [eb], 'records': [tao],
            'info': {'note': 'edge-ball test certificate (proof/independent_seed/tests/make_edge_cert.py); not an atlas'}}
    with gzip.open(out, 'wt') as f:
        json.dump(cert, f)
    print('wrote', out)


if __name__ == '__main__':
    main(sys.argv[1] if len(sys.argv) > 1 else os.path.join(HERE, 'data', 'edge_test_certificate.json.gz'))
