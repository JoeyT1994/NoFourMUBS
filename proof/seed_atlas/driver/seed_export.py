"""Write the seed atlas certificate (FORMAT.md) from the driver state, and read it back.
Usage: seed_export.py RUN_DIR/atlas_state.pkl OUT.json.gz
"""
import gzip, json, math, os, pickle, sys
import numpy as np
HERE = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, HERE)
import seedgeom as SG
from c1 import Ball

hx = lambda x: float(x).hex()
hxl = lambda a: [float(x).hex() for x in np.asarray(a, float).reshape(-1)]
fh = lambda s: float.fromhex(s) if isinstance(s, str) else float(s)


def group_json(gr):
    kind, t, g, rows, cols = gr['desc']
    d = dict(kind=kind, target=int(t))
    if kind != 'T0': d.update(g=g, rows=[int(x) for x in rows], cols=[int(x) for x in cols])
    d['wind'] = [int(x) for x in gr['wind']]
    if kind == 'T3':
        d.update(hcols=[int(x) for x in gr['hcols']], vrows=[int(x) for x in gr['vrows']],
                 wind_h=[int(x) for x in gr['wind_h']], wind_v=[int(x) for x in gr['wind_v']])
    d['boxes'] = np.asarray(gr['boxes']).astype(int).tolist()
    return d


def seed_json(b, groups):
    return dict(theta0=hxl(b.theta0), Mth=hxl(b.Mth), r=hx(b.r), o=int(b.o), k=int(b.k), P=hxl(b.Ph), U=hxl(b.Uh), gauge='hor',
                n=hx(b.n), label_radius=hx(b.label), transfers=[group_json(g) for g in (groups or [])],
                info=dict(edge=b.edge, R=b.R, S=[float(x) for x in b.S], **{k: v for k, v in b.info.items() if k in ('stagec', 't')}))


def record_json(rec):
    return dict(phi=hxl(rec['phi']), R=hx(rec['R']), label_radius=hx(rec['label_radius']),
                Tint=np.asarray(rec['Tint'], np.int64).reshape(-1).tolist(), eta_scale=hx(rec['eta_scale']),
                boundary=[group_json(g) for g in rec.get('boundary', [])], info=rec.get('info', {}))


def export(A, records, path, max_level, fourier_record=0, tao=(0.08, 0.03), info=None, allow_open=False):
    keep = [j for j, s in enumerate(A.status) if s == 'closed']
    assert allow_open or len(keep) == len(A.balls), 'atlas not closed: %d of %d balls closed' % (len(keep), len(A.balls))
    d = {'format': 'seed-atlas-v1', 'max_level': int(max_level),
         'seeds': [seed_json(A.balls[j], A.groups.get(j)) for j in range(len(A.balls))],
         'records': [record_json(r) for r in records], 'fourier_record': int(fourier_record),
         'tao': dict(R=hx(tao[0]), label_radius=hx(tao[1])), 'info': info or {}}
    with gzip.open(path, 'wt') as f: json.dump(d, f, separators=(',', ':'))
    return d


class SeedData:
    """A seed ball read back from the certificate (exact stored floats)."""

    def __init__(self, s):
        self.theta0 = np.array([fh(x) for x in s['theta0']]); self.Mth = np.array([fh(x) for x in s['Mth']]).reshape(4, 4)
        self.r = fh(s['r']); self.o = int(s['o']); self.k = int(s['k']); self.P = np.array([fh(x) for x in s['P']])
        self.U = np.array([fh(x) for x in s['U']]).reshape(36, 4); self.n = fh(s['n']); self.label = fh(s['label_radius'])
        self.Ph, self.Uh = self.P.copy(), self.U.copy()
        if s.get('gauge') == 'hor':                   # stored horizontal; the dephased gauge is recovered exactly by
            def gauge(X):                             # cross ratios: X_ab - X_a0 - X_0b + X_00
                Y = X.reshape(6, 6, -1); return (Y - Y[:, :1] - Y[:1, :] + Y[:1, :1]).reshape(X.shape)
            self.P = gauge(self.P); self.U = gauge(self.U)
        self.Minv = np.linalg.inv(self.Mth)
        Q = self.P.reshape(6, 6)
        self.phih0 = np.concatenate([Q[1, 3:], Q[2, 3:]]); self.phiv0 = np.concatenate([Q[3:, 1], Q[3:, 2]])
        self.transfers = s['transfers']

    def theta(self, w): return self.theta0 + np.asarray(w) @ self.Mth.T

    def Q_at(self, ws, step=0.004):
        ws = np.atleast_2d(ws)
        ref = (self.P[None, :] + ws @ self.U.T).reshape(-1, 6, 6)
        Q, ph, pv, ok = SG.continue_to(self.theta0, self.phih0, self.phiv0, self.theta(ws), step=step, ref=ref)
        return Q.reshape(-1, 36), ph, pv, ok


def load(path):
    return json.load(gzip.open(path, 'rt'))


def main(state_path, out, allow_open=False):
    import pickle, time
    import driver as DRV
    import record_boundary as RB
    import cover as CV
    A = pickle.load(open(state_path, 'rb'))
    rec = RB.F6Record(DRV.F6R)
    groups = A.record['groups'] if A.record else []
    rj = dict(phi=rec.phi, R=rec.R, label_radius=rec.label_radius, Tint=rec.Tint, eta_scale=rec.eta_scale, boundary=groups,
              info=dict(rH=rec.rH, n=rec.n, centre='F6 (phases 2 pi jk/6)', boundary_closed=A.record is not None))
    nb = [len(g['boxes']) for j in A.groups for g in A.groups[j]]
    info = dict(driver='proof/seed_atlas/driver', built=time.strftime('%Y-%m-%d'), seeds=len(A.balls),
                seed_boxes=int(sum(nb)), record_boxes=int(sum(len(g['boxes']) for g in groups)), stats=A.stats)
    d = export(A, [rj], out, max_level=max(CV.MAX_LEVEL, 7), info=info, allow_open=allow_open)
    print('wrote %s: %d seeds, %d seed boxes, record boundary %s (%d boxes)' % (out, len(d['seeds']), info['seed_boxes'],
          'closed' if A.record else 'OPEN', info['record_boxes']))


def merge_groups(gl):
    """One group per (desc, windings): concatenate their boxes."""
    out = {}
    for g in gl:
        key = (g['desc'], tuple(g['wind']), tuple(g.get('hcols', ())), tuple(g.get('vrows', ())),
               tuple(g.get('wind_h', ())), tuple(g.get('wind_v', ())))
        if key in out: out[key]['boxes'] = list(out[key]['boxes']) + list(np.asarray(g['boxes']).tolist())
        else: out[key] = dict(g, boxes=list(np.asarray(g['boxes']).tolist()))
    return list(out.values())


def main_edge(state_path, out, allow_open=False):
    """Format v2 (FORMAT §8): edge ball instead of the F6 record."""
    import pickle, time
    import cover as CV
    A = pickle.load(open(state_path, 'rb'))
    E = A.edges if getattr(A, 'edges', None) else [A.edge]
    keep = [j for j, s in enumerate(A.status) if s == 'closed']
    assert allow_open or len(keep) == len(A.balls), 'atlas not closed'
    assert allow_open or not any(x['failed'] for x in E), 'edge spheres have uncovered boxes'
    assert not np.any(E[0]['ball'].p0 if hasattr(E[0]['ball'], 'p0') else 0), 'edge ball 0 must be centred at F6'
    edges = []
    for x in E:
        eb = x['ball']
        edges.append(dict(chart='F6-012', q0=hxl(getattr(eb, 'p0', np.zeros(4))), Mth=hxl(eb.Mth), r=hx(eb.r),
                          k=[int(v) for v in eb.k], P=hxl(eb.P), U=hxl(eb.U), n=hx(eb.n), label_radius=hx(eb.label),
                          graph=dict(R=hx(0.45), sigma=hx(1.7)),
                          transfers=[group_json(g) for g in merge_groups(x['groups'])], info=dict(S=[float(v) for v in eb.S])))
    edge = edges[0]
    seeds = [seed_json(A.balls[j], merge_groups(A.groups.get(j) or [])) for j in range(len(A.balls))]
    nb = sum(len(g['boxes']) for s_ in seeds for g in s_['transfers'])
    info = dict(driver='proof/seed_atlas/driver (coordinator)', built=time.strftime('%Y-%m-%d'), seeds=len(A.balls),
                seed_boxes=int(nb), edge_balls=len(edges),
                edge_boxes=int(sum(len(g['boxes']) for e_ in edges for g in e_['transfers'])), stats=A.stats)
    d = {'format': 'seed-atlas-v1', 'max_level': int(max(CV.MAX_LEVEL, 9)), 'seeds': seeds, 'records': [],
         'edge': edges, 'tao': dict(R=hx(0.08), label_radius=hx(0.03)), 'info': info}
    with gzip.open(out, 'wt') as f: json.dump(d, f, separators=(',', ':'))
    print('wrote %s: %d seeds, %d seed boxes, %d edge balls with %d boxes' % (out, len(seeds), nb, len(edges), info['edge_boxes']))


if __name__ == '__main__':
    if '--edge' in sys.argv: main_edge(sys.argv[1], sys.argv[2], allow_open='--allow-open' in sys.argv)
    else: main(sys.argv[1], sys.argv[2], allow_open='--allow-open' in sys.argv)
