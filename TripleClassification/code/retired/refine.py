"""Refinement of nothird.py's failed cells: subdivide them and test the children.

For each ball, sample K failed level-3 cells (from its nothird.py row), test all their level-4 children (the same
cell_test as nothird.py), then sample K failed level-4 children and test their level-5 children.  K larger than any
count refines every failed cell (the refinement in results/ used K = 100000).  Rows are written per level, once the
whole level of a ball is done.

  python refine.py REPO HEADERS NOTHIRD_ROWS OUT K BALL...   (one process per core, multiprocessing)
"""
import gzip, itertools, json, math, os, random, sys, time
from multiprocessing import Pool
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from nothird import expansion_point, misses_ball, sqrt_up

G = {}


def init(repo, cert):
    sys.path[:0] = [os.path.join(repo, 'proof/seed_atlas/cert'), os.path.join(repo, 'proof/atlas')]
    import seedcert as S, stagec as SC, patches as ZTP
    G.update(S=S, SC=SC, ZTP=ZTP, seeds=json.load(gzip.open(cert, 'rt'))['seeds'], cache={})


def ball(j):
    if j not in G['cache']:
        from flint import ctx
        S, ZTP = G['S'], G['ZTP']
        b = S.Ball(G['seeds'][j]); model = ZTP.model_for(b)
        ctx.prec = 224
        curv = ZTP.matrix_norm(model['H2']) + ZTP.matrix_norm(model['X']) * model['Z2']
        G['cache'] = {j: (b, model, curv)}
    return G['cache'][j]


def cell_test(j, m, c):
    """nothird.cell_test on cell c of level m of ball j (the same enclosure and Stage C call)."""
    import numpy as np
    from flint import arb, arb_mat, ctx
    S, SC, ZTP = G['S'], G['SC'], G['ZTP']
    b, model, curv = ball(j)
    h = 1.0 / 2 ** m
    uc = [-1 + (2 * ci + 1) * h for ci in c]
    if misses_ball(uc, h): return None
    ctx.prec = 224
    cp, rr = expansion_point(b.r, uc, h)
    qc, dc, _ = ZTP.centre_jet(model, arb_mat([[arb(float(x))] for x in cp]))
    q = np.array([float(qc[i, 0].mid()) for i in range(36)])
    D = np.array([[float(dc[i, k].mid()) for k in range(4)] for i in range(36)])
    e0 = sqrt_up(sum(((qc[i, 0] - arb(q[i])) * (qc[i, 0] - arb(q[i])) for i in range(36)), arb(0)))
    e1 = sqrt_up(sum(((dc[i, k] - arb(D[i, k])) * (dc[i, k] - arb(D[i, k])) for i in range(36) for k in range(4)), arb(0)))
    n1 = e0 + e1 * rr + curv * rr * rr / 2
    tcol = max(S.opnorm_up(D.reshape(6, 6, 4)[:, i, :]) for i in range(6)); tF = S.opnorm_up(D)
    TP = S.TWO_PI_ARB
    Pc = q / (2 * math.pi)
    d = sum(((arb(float(x)) - TP * arb(float(cc))) * (arb(float(x)) - TP * arb(float(cc))) for x, cc in zip(q, Pc)), arb(0))
    n1 = n1 + sqrt_up(d)
    ctx.prec = 120
    out = SC.stage_c_triple(Pc.reshape(6, 6), S.up((arb(tcol) * rr + n1) / TP), tang=(D, S.up(rr / TP), S.up(n1 / TP)),
                            radius=b.label_radius, rF=S.up((arb(tF) * rr + n1) / TP))
    return bool(out.get('ok'))


def task(t):
    j, m, c = t
    t0 = time.time()
    try:
        ok = cell_test(j, m, c)
    except Exception as e:  # noqa: BLE001
        return dict(idx=j, m=m, c=list(c), error=repr(e))
    return dict(idx=j, m=m, c=list(c), ok=ok, s=round(time.time() - t0, 2))


def kids(c):
    return [tuple(2 * ci + k for ci, k in zip(c, kk)) for kk in itertools.product(range(2), repeat=4)]


def main():
    repo, cert, rows, outp, K = sys.argv[1:6]
    K, balls = int(K), [int(x) for x in sys.argv[6:]]
    fail3 = {}
    for l in open(rows):
        r = json.loads(l)
        if r['idx'] in balls: fail3[r['idx']] = [tuple(c[1:]) for c in r['failed_cells'] if c[0] == 3]
    rng = random.Random(1)
    with Pool(os.cpu_count(), initializer=init, initargs=(repo, cert)) as pool, open(outp, 'w') as f:
        for j in balls:
            todo = [(j, 4, k) for c in rng.sample(fail3[j], min(K, len(fail3[j]))) for k in kids(c)]
            for m in (4, 5):
                res = [x for x in pool.map(task, todo, chunksize=1) if x.get('ok') is not None or 'error' in x]
                for x in res: f.write(json.dumps(x) + '\n')
                f.flush()
                fails = [tuple(x['c']) for x in res if x.get('ok') is False]
                print(j, m, 'tested', len(res), 'certified', sum(1 for x in res if x.get('ok')), flush=True)
                if m == 5 or not fails: break
                todo = [(j, 5, k) for c in rng.sample(fails, min(K, len(fails))) for k in kids(c)]


if __name__ == '__main__':
    main()
