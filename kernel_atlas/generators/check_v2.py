"""Compare the kernel bin tree with tangent test v1 (y = c) and v2 (least squares, full remainder, scalar test) on
one Record: survivors, labels, and whether the label graph passes with direct / support / joint edge tests (floats,
as in explorations/atlas_survey/survey.py).

Usage: python3 kernel_atlas/generators/check_v2.py <idx> [--v1]
       python3 kernel_atlas/generators/check_v2.py --out rows.jsonl <idx> ...   (v2 only, one JSON line per Record)
"""
import json, os, sys, time, traceback

import numpy as np

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.abspath(os.path.join(HERE, '..', '..'))
sys.path[:0] = [HERE, os.path.join(ROOT, 'proof', 'atlas'), os.path.join(ROOT, 'explorations', 'atlas_survey')]
import kbins as KB                                                      # noqa: E402
import klabels as KL                                                    # noqa: E402
import ktangent as KT                                                   # noqa: E402
import ktangent2 as KT2                                                 # noqa: E402
import stagec as SC                                                     # noqa: E402
from export_tangent import record_data                                  # noqa: E402


def graph_outcome(idx, labs, par, tp):
    import survey as SV
    rec = SV.atlas()['records'][idx]
    P = np.array([float.fromhex(x) for x in rec['phi']]).reshape(6, 6)
    C = np.array([w for w, _, _ in labs]) / 192.0
    s = np.array([float(sr) for _, sr, _ in labs])
    n = len(labs)
    E = SC.cis_table(np.concatenate([np.zeros((n, 1), int), SC._toint(C)], axis=1))
    aS = np.abs((E[:, None, :] * E.conj()[None, :, :]).sum(-1))
    lim = SC.TWO_PI * SC.SQ6 * (s[:, None] + s[None, :]) + 1e-7
    O, U = aS <= lim, np.abs(aS - SC.SQ6) <= lim
    np.fill_diagonal(O, False); np.fill_diagonal(U, False)
    O2, U2 = SC.edges(C, s)
    Pc = P / SC.TWO_PI
    O3, U3 = SC.joint_filter(C, s, O & O2, U & U2, Pc, float(par.rbar), SC.opnorm_bound(Pc), SC.cis_centre(Pc),
                             float(par.rFbar), SV.atlas_frame(idx), float(tp.rHbar), float(tp.nbar))
    out = {}
    for name, Og, Ug in (('direct', O, U), ('support', O & O2, U & U2), ('joint', O3, U3)):
        try:
            out[name] = bool(SC.two_cliques(Og, Ug, cap=50_000_000)[0])
        except RuntimeError:
            out[name] = None
    return out


def one(idx):
    """v2 on one Record: a JSON-able summary."""
    import survey as SV
    par, tc, tp, W0, R5, info = record_data(idx)
    t0 = time.time()
    S = []
    t2 = KT2.TPar2(par, tc, tp.rHbar, tp.nbar, tp.tcol, KB)
    ok, st = KT2.run(par, tc, t2, W0, R5, leaf_cb=lambda acc, ts: S.append(tuple(t[0] for t in ts)) or True)
    labs = KL.cluster(S, SV.atlas()['records'][idx]['label_radius'])
    g = graph_outcome(idx, labs, par, tp)
    need = next((k for k in ('direct', 'support', 'joint') if g[k]), 'fail')
    return dict(idx=idx, survivors=len(S), labels=len(labs),
                tangent_tests=sum(st.get(('tangent', d), 0) for d in range(4)),
                direct_tests=sum(st.get(('tested', d), 0) for d in range(4)),
                rej={k: st.get(k, 0) for k in ('scalar', 'ls', 'yc')}, graph=g, need=need,
                tree_s=round(time.time() - t0, 1))


def main():
    if sys.argv[1] == '--out':
        out, idxs = sys.argv[2], [int(x) for x in sys.argv[3:]]
        done = {json.loads(l)['idx'] for l in open(out)} if os.path.exists(out) else set()
        with open(out, 'a') as f:
            for idx in idxs:
                if idx in done:
                    continue
                try:
                    row = one(idx)
                except Exception as e:                                  # noqa: BLE001
                    row = dict(idx=idx, error=repr(e), trace=traceback.format_exc()[-1500:])
                f.write(json.dumps(row) + '\n'); f.flush()
                print(idx, row.get('need', row.get('error')), flush=True)
        return
    idx = int(sys.argv[1])
    rec_radius = None
    par, tc, tp, W0, R5, info = record_data(idx)
    import survey as SV
    rec_radius = SV.atlas()['records'][idx]['label_radius']
    versions = ['v1', 'v2'] if '--v1' in sys.argv else ['v2']
    for v in versions:
        t0 = time.time()
        S = []
        cb = lambda acc, ts: S.append(tuple(t[0] for t in ts)) or True
        if v == 'v1':
            ok, st = KT.run(par, tc, tp, W0, R5, use_tangent=True, leaf_cb=cb)
        else:
            t2 = KT2.TPar2(par, tc, tp.rHbar, tp.nbar, tp.tcol, KB)
            ok, st = KT2.run(par, tc, t2, W0, R5, leaf_cb=cb)
        tt = time.time() - t0
        labs = KL.cluster(S, rec_radius)
        g = graph_outcome(idx, labs, par, tp)
        tests = {d: st.get(('tangent', d), 0) for d in range(4)}
        extra = {k: st[k] for k in ('scalar', 'ls', 'yc') if k in st}
        print('%d %s: survivors %d  labels %d  tangent tests %s %s  tree %.0fs  graph %s'
              % (idx, v, len(S), len(labs), sum(tests.values()), extra, tt, g), flush=True)


if __name__ == '__main__':
    main()
