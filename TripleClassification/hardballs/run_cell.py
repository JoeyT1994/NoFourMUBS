#!/usr/bin/env python3
"""Run the two-step witness on every pattern of one cell (or ball): rebuild C1, the normal form and the complete
cover with the frozen native code, then EXCLUDED / CLASSIFIED / OPEN per pattern. Writes one JSON line per pattern.

    python run_cell.py CELL.input.json.gz OUT.jsonl [--workers 8] [--patterns 0:20]
"""
import argparse, gzip, hashlib, json, os, sys, time
from concurrent.futures import ProcessPoolExecutor
from pathlib import Path

for v in ('OPENBLAS_NUM_THREADS', 'MKL_NUM_THREADS', 'VECLIB_MAXIMUM_THREADS', 'OMP_NUM_THREADS'): os.environ[v] = '1'
ROOT = Path(__file__).resolve().parents[2]
os.environ['TC_ROOT'] = str(ROOT)
for d in ('proof/seed_atlas/driver', 'proof/seed_atlas/cert', 'proof/theorems/TC_triple_classification/family_neighbourhoods'):
    sys.path.insert(0, str(ROOT / d))
sys.path.insert(0, str(Path(__file__).resolve().parent))
import numpy as np
from flint import ctx
import native_cover as NC, moving_symmetry as MS, fine_patterns as FP, patches as P, seedcert as SC
import witness as W

STATE = {}


def setup(path):
    ctx.prec = 160
    rec = json.load(gzip.open(path))['record']
    ball = SC.Ball(rec)
    c1 = SC.certify_c1(ball, max_boxes=4096)
    if not c1['ok']: raise ArithmeticError('C1 failed')
    model = P.normal_form(ball, prec=160)
    roots = NC.propose_roots(np.exp(1j * MS.numeric(model['Q0']).reshape(6, 6)))
    cover = NC.complete_cover(ball, model, roots)
    prepared, bounds, cliques, _ = NC.contract_patterns(model, roots, cover)
    STATE.update(record=rec, ball=ball, model=model, cover=cover, prepared=prepared, bounds=bounds, cliques=cliques)
    return len(cliques)


def fingerprint(y): return hashlib.sha256(np.ascontiguousarray(y, dtype='<f8').tobytes()).hexdigest()[:16]


def one(args):
    """One pattern. Without a certificate: search, and return the new exact proposals it used (each once per worker).
    With one (`check`): replay its completion, permutation and plan; no floating-point decision is made."""
    path, i, cert, proposal = args
    if not STATE: setup(path)
    t = time.monotonic(); model, clique = STATE['model'], STATE['cliques'][i]
    cache = STATE.setdefault('cache', {}); rec = None
    try:
        refined, receipt = FP.refine(STATE['ball'], model, STATE['cover'], clique)
        stored = cert['patterns'][str(i)] if cert else None
        if refined is None:
            row = dict(status='EXCLUDED' if receipt['status'] == 'EXCLUDED' else 'OPEN', route='native fine bins', reason=receipt.get('reason'))
        elif stored and stored.get('route') == 'native fine bins':
            row = dict(status='OPEN', reason='certificate says fine bins exclude, but they do not')
        else:
            columns = [refined['bin_indices'][c] for c in clique]
            if stored:
                fp, perm = stored['completion'], stored['perm']
                if fp not in cache: cache[fp] = W.from_record(model, cert['completions'][fp])
            else:
                fp, perm, prop = proposal                      # chosen by the parent, shared by every worker
                if fp not in cache: cache[fp] = W.prepare(model, prop)
            order = sorted(range(6), key=lambda j: perm[j])
            row = W.pattern(cache[fp], [columns[j] for j in order], STATE['cover']['bin_radius'], stored['plan'] if stored else None)
            row.update(completion=fp, perm=perm)
            if not cert:                                     # new proposals since this worker last sent this completion
                sent = STATE.setdefault('sent', {}).setdefault(fp, set()); full = W.completion_record(cache[fp])
                rec = {k: v for k, v in full.items() if k != 'native' and 'base' not in sent}
                rec['native'] = {t: v for t, v in full['native'].items() if t not in sent}
                sent.update(['base'], rec['native'])
    except (ArithmeticError, ValueError, ZeroDivisionError, np.linalg.LinAlgError) as exc:
        row = dict(status='OPEN', reason=repr(exc)[:300])
    return dict(pattern=i, colours=clique, seconds=round(time.monotonic() - t, 1), **row), rec


def main():
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument('cell'); ap.add_argument('out')
    ap.add_argument('--workers', type=int, default=1); ap.add_argument('--patterns', default=':')
    ap.add_argument('--certificate', help='write the certificate (exact proposals) here')
    ap.add_argument('--check', help='replay this certificate instead of searching')
    a = ap.parse_args()
    t = time.monotonic(); n = setup(a.cell)
    cert = json.load(gzip.open(a.check)) if a.check else None
    print(json.dumps(dict(cell=a.cell, patterns=n, setup_seconds=round(time.monotonic() - t, 1))), flush=True)
    lo, hi = (a.patterns.split(':') + [''])[:2]
    todo = list(range(n))[int(lo or 0):int(hi or n)]
    if cert: todo = [i for i in todo if str(i) in cert['patterns']]
    new = dict(cell=a.cell, record_sha256=hashlib.sha256(json.dumps(STATE['record'], sort_keys=True).encode()).hexdigest(),
               completions={}, patterns={})
    proposals, refs = {}, {}
    if not cert:                                             # one reference per completion, for all workers
        for i in todo:
            q, cl = MS.numeric(STATE['model']['Q0'])[:, 0], STATE['cliques'][i]
            prop = W.propose(q, [MS.numeric(STATE['prepared'][c]['v0'])[:, 0] for c in cl])
            fp, perm = W.match(prop['y'], refs)
            if fp is None: fp, perm = fingerprint(prop['y']), list(range(6)); refs[fp] = dict(prop=prop)
            proposals[i] = (fp, perm, refs[fp]['prop'])
    with open(a.out, 'a') as out, ProcessPoolExecutor(a.workers) as pool:
        for row, rec in pool.map(one, [(a.cell, i, cert, proposals.get(i)) for i in todo], chunksize=max(1, len(todo) // a.workers)):
            out.write(json.dumps(row) + '\n'); out.flush()
            print(json.dumps({k: row.get(k) for k in ('pattern', 'status', 'step', 'plan', 'q', 'seconds')}), flush=True)
            if rec is not None:
                c = new['completions'].setdefault(row['completion'], dict(native={}))
                c.update({k: v for k, v in rec.items() if k != 'native'}); c['native'].update(rec['native'])
            if row['status'] != 'OPEN':
                new['patterns'][str(row['pattern'])] = {k: row[k] for k in ('status', 'route', 'completion', 'perm', 'plan') if k in row}
    if a.certificate and not cert:
        used = {p['completion'] for p in new['patterns'].values() if 'completion' in p}
        new['completions'] = {k: v for k, v in new['completions'].items() if k in used}
        with gzip.open(a.certificate, 'wt') as f: json.dump(new, f)
        print(json.dumps(dict(certificate=a.certificate, bytes=os.path.getsize(a.certificate), completions=len(used))), flush=True)


if __name__ == '__main__': main()
