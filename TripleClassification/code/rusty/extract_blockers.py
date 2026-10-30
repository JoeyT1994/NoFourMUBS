#!/usr/bin/env python3
"""Data for the joint (K, w) handoff (no proof role): what blocks the whole-cell checker on a cell.

  python extract_blockers.py ROOT OUT WORKERS CELL_DIR...
  python extract_blockers.py ROOT OUT WORKERS --select N SCAN_DIR...   (pick up to N representative failed cells)

A failed cell directory holds entry.json and frontier.json (or failed.json) whose reason is
'complete-cover pattern remains: [c1, ..., c6]'. For each cell this rebuilds, with the pinned checker's own code:
- the cell's H record and normal form (Q0, U, H2, X, r, tau: Arb strings), and the centre phases of H;
- the complete K cover: number of colours and patterns, and each blocking colour's centre v0 and phase radius;
- each blocking column's proof: prove_column then verify_tree (success, number of tubes and their radii, or the reason);
- the joint step on the proved columns (Joint.exclude): its exception, if any;
- a numerical probe: the least unbiasedness defect of a K in the pattern, with H at the cell centre, and with H moving
  over the cell (w in the chart ball of radius r, X-part ignored): near zero means a genuine triple passes through
  (classification is needed), clearly positive means a phantom (exclusion is possible in principle).
Writes OUT/<ball>_<level>_<cell>.json per cell and OUT/summary.json.
"""
import collections, gzip, json, os, re, sys, time
from concurrent.futures import ProcessPoolExecutor
from pathlib import Path

ROOT = OUT = None
PAT = re.compile(r'pattern remains: \[([0-9, ]+)\]')


def reason(d):
    for f in ('failed.json', 'frontier.json'):
        try:
            m = PAT.search(str(json.load(open(os.path.join(d, f))).get('reason')))
            if m: return [int(x) for x in m.group(1).split(',')]
        except (OSError, ValueError): pass
    return None


def probe(model, colours, moving):
    """Least defect of a K whose column j starts at colours[j]['v0'] (numerical, not a proof)."""
    import numpy as np
    from scipy.optimize import least_squares
    A = __import__('plane_column_certificate').A
    Q0 = A.numeric(model['Q0']).reshape(36); U = A.numeric(model['U']).reshape(36, 4)
    H2 = A.numeric(model['H2']).reshape(36, 16); r = float(model['r'].mid())
    v0 = np.array([[float(x.mid()) for x in c['v0']] for c in colours]).T          # 6 x 6, column j = colour j
    def H(w): return np.exp(1j * (Q0 + U @ w + 0.5 * H2 @ np.kron(w, w)).reshape(6, 6))
    def res(x):
        phi = v0 + x[:36].reshape(6, 6); w = x[36:] if moving else np.zeros(4)
        if moving and np.linalg.norm(w) > r: w = w * r / np.linalg.norm(w)
        K = np.exp(1j * phi); G = K.conj().T @ K; L = H(w).conj().T @ K
        off = [G[j, k] for j in range(6) for k in range(j + 1, 6)]
        return np.r_[np.real(off), np.imag(off), (np.abs(L) ** 2 - 6).ravel()]
    x0 = np.zeros(40 if moving else 36)
    fit = least_squares(res, x0, max_nfev=4000, xtol=1e-14, ftol=1e-14, gtol=1e-14)
    move = fit.x[:36].reshape(6, 6); move = move - move.mean(axis=0)            # mean-zero gauge per column
    w = fit.x[36:] if moving else np.zeros(4)
    if moving and np.linalg.norm(w) > r: w = w * r / np.linalg.norm(w)
    return dict(defect=float(np.linalg.norm(fit.fun)), max_entry=float(np.max(np.abs(fit.fun))),
                column_moves=[float(np.linalg.norm(move[:, j])) for j in range(6)],
                phase_radii=[float(c['phase_radius']) for c in colours], w_over_r=float(np.linalg.norm(w) / r) if moving else None,
                start_defect=float(np.linalg.norm(res(x0))))


def one(job):
    global ROOT, OUT
    d, ROOT, OUT = job
    sys.path.insert(0, str(Path(ROOT) / 'TripleClassification/code'))
    import plane_frontier_certificate as F, plane_cell_certificate as Whole, plane_column_certificate as P
    import plane_joint_certificate as Joint
    t0 = time.time(); e = json.load(open(os.path.join(d, 'entry.json'))); clique = reason(d)
    out = dict(cell_dir=d, ball=e['ball'], level=e['level'], cell=e['cell'], blocking_colours=clique)
    try:
        inp = os.path.join(OUT, '%d_%d_%s.input.json.gz' % (e['ball'], e['level'], '_'.join(map(str, e['cell']))))
        original = F.original_record(Path(ROOT), e['ball']); F.ctx.prec = 224
        record = F.build_record(original, e['level'], e['cell'], Path(ROOT))
        data = dict(schema='tc-h-cell-input-v1', record=record, record_sha256=F.jsonsha(record), ball=e['ball'], level=e['level'],
                    cell=e['cell'], subatlas=e['subatlas'], sub=e['sub'], legacy_record_sha256=e['record_sha256'])
        Path(inp).write_bytes(gzip.compress(json.dumps(data).encode(), mtime=0))
        s, model, C, binding, columns, cliques = Whole.complete_cover(Path(inp))
        out['normal_form'] = {k: [str(x) for x in model[k].entries()] if hasattr(model[k], 'entries') else str(model[k])
                              for k in ('Q0', 'U', 'H2', 'X', 'r', 'tau') if k in model}
        out['cover'] = dict(colours=len(columns), patterns=len(cliques), blocking_is_a_pattern=clique in cliques)
        if clique is None or clique not in cliques:
            out['note'] = 'blocking pattern not reproduced'; return out
        cols = [columns[c] for c in clique]
        out['blocking'] = [dict(colour=c, v0=[str(x) for x in columns[c]['v0']], phase_radius=str(columns[c]['phase_radius'])) for c in clique]
        proved = {}; out['columns'] = []
        for c in clique:
            try:
                prop = P.prove_column(model, columns[c], C, depth=6)
                col = P.Column(model, columns[c], P.hex_array(prop['weak'], (2, 5)))
                stats, tubes = P.verify_tree(col, prop['tree'], prop['roots'], C, root_modes=prop.get('root_modes'))
                proved[c] = tubes
                out['columns'].append(dict(colour=c, proved=True, leaves=stats, tubes=len(tubes),
                                           tube_radii=[str(eps) for _, eps in tubes.values()]))
            except (ArithmeticError, ValueError, ZeroDivisionError) as x:
                out['columns'].append(dict(colour=c, proved=False, reason=str(x)[:160]))
        avail = sorted(proved, key=lambda c: (len(proved[c]), c))
        try:
            Joint.exclude(model, {c: proved[c] for c in avail}, avail, pair_cache={}, scalar_cache={}, allow_known=True)
            out['joint'] = 'excluded (the search failed earlier for another reason)'
        except (ValueError, ArithmeticError) as x:
            out['joint'] = str(x)[:200]
        out['probe_fixed_H'] = probe(model, cols, False)
        out['probe_moving_H'] = probe(model, cols, True)
    except Exception as x:                                    # research data: record and move on
        out['error'] = '%s: %s' % (type(x).__name__, str(x)[:200])
    out['seconds'] = round(time.time() - t0)
    json.dump(out, open(os.path.join(OUT, '%d_%d_%s.json' % (e['ball'], e['level'], '_'.join(map(str, e['cell'])))), 'w'), indent=1)
    return out


def select(dirs, n):
    groups = collections.defaultdict(list)
    for top in dirs:
        for r, _, fs in os.walk(top):
            if 'entry.json' not in fs: continue
            cl = reason(r)
            if cl is None: continue
            e = json.load(open(os.path.join(r, 'entry.json'))); groups[(e['ball'], e['level'], tuple(cl))].append(r)
    order = sorted(groups.items(), key=lambda kv: (kv[0][1], -len(kv[1])))                # coarse first, then frequent
    picked, seen = [], collections.Counter()
    for (b, lv, cl), ds in order:
        if seen[(b, lv)] >= 3: continue
        picked.append((ds[0], len(ds))); seen[(b, lv)] += 1
        if len(picked) >= n: break
    return picked, {'%d L%d %s' % k: len(v) for k, v in sorted(groups.items(), key=lambda kv: -len(kv[1]))[:40]}


if __name__ == '__main__':
    ROOT, OUT, W = sys.argv[1], sys.argv[2], int(sys.argv[3]); os.makedirs(OUT, exist_ok=True); rest = sys.argv[4:]
    groups = None
    if rest and rest[0] == '--select':
        picked, groups = select(rest[2:], int(rest[1])); cells = [d for d, _ in picked]; freq = dict(picked)
    else:
        cells = rest; freq = {}
    with ProcessPoolExecutor(W) as pool: res = list(pool.map(one, [(d, ROOT, OUT) for d in cells]))
    summ = [dict(ball=r['ball'], level=r['level'], cell=r['cell'], blocking=r['blocking_colours'], similar_failed_cells=freq.get(r['cell_dir']),
                 colours=(r.get('cover') or {}).get('colours'), patterns=(r.get('cover') or {}).get('patterns'),
                 columns_proved=sum(c['proved'] for c in r.get('columns', [])), joint=r.get('joint'),
                 defect_fixed_H=(r.get('probe_fixed_H') or {}).get('defect'), defect_moving_H=(r.get('probe_moving_H') or {}).get('defect'),
                 error=r.get('error'), note=r.get('note')) for r in res]
    json.dump(dict(cells=summ, blocking_groups=groups), open(os.path.join(OUT, 'summary.json'), 'w'), indent=1)
    print(json.dumps(summ, indent=1)[:4000])
