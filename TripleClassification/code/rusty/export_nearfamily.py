#!/usr/bin/env python3
"""Data for the near-family witness handoff (no proof role): complete pattern data for the heaviest coarse cells.

  python export_nearfamily.py ROOT OUT WORKERS LEVEL PER_BALL BALL:CERT_DIR ...

For each ball, the LEVEL cells of its certificate tree (CERT_DIR/tree.json) with the most leaves below them (PER_BALL
of them). For each such cell, rebuilt with the pinned checker's own code: its H record; its normal form (Q0, U, H2, X,
r, tau as Arb strings); the complete K cover (every colour's centre v0 and phase radius, every pattern); for every
pattern a numerical probe (least unbiasedness defect of a K in the pattern with H at the cell centre: near zero means
a genuine triple passes through, so the pattern needs classification, not exclusion); and how many leaves, at which
levels, the certificate spends below the cell. Writes OUT/<ball>_<level>_<cell>.json(.gz) and OUT/summary.json.
"""
import collections, gzip, json, os, sys, time
from concurrent.futures import ProcessPoolExecutor
from pathlib import Path


def heavy(cert, level, k):
    t = json.load(open(os.path.join(cert, 'tree.json'))); count = collections.Counter(); depth = collections.defaultdict(collections.Counter)
    def walk(node, l, cell, anc):
        if l == level: anc = tuple(cell)
        if 'children' in node:
            for i, ch in enumerate(node['children']):
                walk(ch, l + 1, [2 * c + ((i >> (3 - j)) & 1) for j, c in enumerate(cell)], anc)
        elif anc is not None and ('leaf' in node or 'native' in node): count[anc] += 1; depth[anc][l] += 1
    walk(t['tree'], *t['root'], None)
    return [(list(c), n, dict(sorted(depth[c].items()))) for c, n in count.most_common(k)]


def one(job):
    root, out, ball, level, cell, n, depth = job
    sys.path.insert(0, str(Path(root) / 'TripleClassification/code'))
    import plane_frontier_certificate as F, plane_cell_certificate as Whole
    sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
    from extract_blockers import probe
    t0 = time.time(); name = '%d_%d_%s' % (ball, level, '_'.join(map(str, cell)))
    res = dict(ball=ball, level=level, cell=cell, certificate_leaves_below=n, certificate_leaves_by_level=depth)
    try:
        original = F.original_record(Path(root), ball); F.ctx.prec = 224
        record = F.build_record(original, level, cell, Path(root))
        inp = os.path.join(out, name + '.input.json.gz')
        data = dict(schema='tc-h-cell-input-v1', record=record, record_sha256=F.jsonsha(record), ball=ball, level=level,
                    cell=cell, subatlas='none', sub=0, legacy_record_sha256='none')
        Path(inp).write_bytes(gzip.compress(json.dumps(data).encode(), mtime=0))
        s, model, C, binding, columns, cliques = Whole.complete_cover(Path(inp))
        res['normal_form'] = {k: [str(x) for x in model[k].entries()] if hasattr(model[k], 'entries') else str(model[k])
                              for k in ('Q0', 'U', 'H2', 'X', 'r', 'tau') if k in model}
        items = columns.items() if isinstance(columns, dict) else enumerate(columns)
        res['colours'] = [dict(colour=i, v0=[str(x) for x in c['v0']], phase_radius=str(c['phase_radius'])) for i, c in items]
        res['patterns'] = []
        for p in cliques:
            try: pr = probe(model, [columns[c] for c in p], False); d = pr['defect']
            except Exception as e: d = None                      # noqa: BLE001
            res['patterns'].append(dict(colours=list(p), probe_defect_fixed_H=d))
    except Exception as e:                                     # noqa: BLE001  research data: record and move on
        res['error'] = '%s: %s' % (type(e).__name__, str(e)[:200])
    res['seconds'] = round(time.time() - t0)
    with gzip.open(os.path.join(out, name + '.json.gz'), 'wt') as g: json.dump(res, g)
    near = sum(1 for p in res.get('patterns', []) if p['probe_defect_fixed_H'] is not None and p['probe_defect_fixed_H'] < 1e-6)
    return dict(ball=ball, level=level, cell=cell, leaves_below=n, colours=len(res.get('colours', [])), patterns=len(res.get('patterns', [])),
                near_solution_patterns=near, error=res.get('error'), seconds=res['seconds'])


if __name__ == '__main__':
    root, out, W, level, k = sys.argv[1], sys.argv[2], int(sys.argv[3]), int(sys.argv[4]), int(sys.argv[5]); os.makedirs(out, exist_ok=True)
    jobs = []
    for x in sys.argv[6:]:
        b, cert = x.split(':', 1)
        for cell, n, depth in heavy(cert, level, k): jobs.append((root, out, int(b), level, cell, n, depth))
    with ProcessPoolExecutor(W) as pool: summ = list(pool.map(one, jobs))
    json.dump(summ, open(os.path.join(out, 'summary.json'), 'w'), indent=1); print(json.dumps(summ, indent=1))
