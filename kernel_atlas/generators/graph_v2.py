"""Label graphs of the v2 survivors under clustering variants, with and without the support edge test (floats).

For each Record: the v2 depth-0 survivors (ktangent2.run, the exact mirror), then for each clustering variant
(survivor order x label radius) the labels (klabels.cluster), and whether the graph has no two cliques with
  dj: direct + joint edge tests (the tests now in the kernel),
  dsj: direct + support + joint (as certify.py).
The first variant is the exported one (traversal order, the Record's label radius).

Usage: python3 kernel_atlas/generators/graph_v2.py --out rows.jsonl <idx> ...
"""
import json, os, random, sys, time, traceback

import numpy as np

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.abspath(os.path.join(HERE, '..', '..'))
sys.path[:0] = [HERE, os.path.join(ROOT, 'proof', 'atlas'), os.path.join(ROOT, 'explorations', 'atlas_survey')]
import kbins as KB                                                      # noqa: E402
import klabels as KL                                                    # noqa: E402
import ktangent2 as KT2                                                 # noqa: E402
import stagec as SC                                                     # noqa: E402
from export_tangent import record_data                                  # noqa: E402


def graphs(idx, labs, par, tp, P, frame):
    C = np.array([w for w, _, _ in labs]) / 192.0
    s = np.array([float(x) for _, x, _ in labs])
    n = len(labs)
    E = SC.cis_table(np.concatenate([np.zeros((n, 1), int), SC._toint(C)], axis=1))
    aS = np.abs(E @ E.conj().T)
    lim = SC.TWO_PI * SC.SQ6 * (s[:, None] + s[None, :]) + 1e-7
    O, U = aS <= lim, np.abs(aS - SC.SQ6) <= lim
    np.fill_diagonal(O, False); np.fill_diagonal(U, False)
    args = (P, float(par.rbar), SC.opnorm_bound(P), SC.cis_centre(P), float(par.rFbar), frame, float(tp.rHbar),
            float(tp.nbar))
    O2, U2 = SC.edges(C, s)
    out = {}
    for name, (Og, Ug) in (('dj', (O, U)), ('dsj', (O & O2, U & U2))):
        Oj, Uj = SC.joint_filter(C, s, Og, Ug, *args)
        try:
            out[name] = bool(SC.two_cliques(Oj, Uj, cap=20_000_000)[0])
        except RuntimeError:
            out[name] = None
    return out


def one(idx, nshuffle=4):
    import survey as SV
    rec = SV.atlas()['records'][idx]
    par, tc, tp, W0, R5, info = record_data(idx)
    t2 = KT2.TPar2(par, tc, tp.rHbar, tp.nbar, tp.tcol, KB)
    S = []
    KT2.run(par, tc, t2, W0, R5, leaf_cb=lambda acc, ts: S.append(tuple(t[0] for t in ts)) or True)
    P = np.array([float.fromhex(x) for x in rec['phi']]).reshape(6, 6) / SC.TWO_PI
    frame = SV.atlas_frame(idx)
    R0 = rec['label_radius']
    orders = [('trav', S), ('rev', S[::-1]), ('sort', sorted(S))]
    rng = random.Random(idx)
    for k in range(nshuffle):
        T = list(S); rng.shuffle(T); orders.append(('shuf%d' % k, T))
    res = []
    for oname, SS in orders:
        for rad in (R0, R0 * 0.8, R0 * 1.2):
            labs = KL.cluster(list(SS), rad)
            g = graphs(idx, labs, par, tp, P, frame)
            res.append(dict(order=oname, radius=rad, labels=len(labs), **g))
            if oname == 'trav' and rad == R0 and g['dj']:
                return dict(idx=idx, survivors=len(S), variants=res)        # exported variant already passes dj
    return dict(idx=idx, survivors=len(S), variants=res)


def main():
    out, idxs = sys.argv[2], [int(x) for x in sys.argv[3:]]
    done = {json.loads(l)['idx'] for l in open(out)} if os.path.exists(out) else set()
    with open(out, 'a') as f:
        for idx in idxs:
            if idx in done:
                continue
            t0 = time.time()
            try:
                row = one(idx)
            except Exception as e:                                      # noqa: BLE001
                row = dict(idx=idx, error=repr(e), trace=traceback.format_exc()[-1500:])
            row['wall_s'] = round(time.time() - t0, 1)
            f.write(json.dumps(row) + '\n'); f.flush()
            ok = [v for v in row.get('variants', []) if v.get('dj')]
            print(idx, 'dj-passing variants:', len(ok), row['wall_s'], flush=True)


if __name__ == '__main__':
    main()
