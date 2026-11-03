#!/usr/bin/env python3
"""Run the curved normal-form witness on every pattern of one cell (or ball): rebuild C1, the normal form and the
complete cover with the frozen native code, then EXCLUDED / CLASSIFIED / OPEN per pattern. Writes one JSON line per pattern.

    python run_cell.py CELL.input.json.gz OUT.jsonl [--workers 8] [--patterns 0:20] [--certificate CERT.json.gz] [--check CERT.json.gz]
"""
import argparse
from collections import Counter
import gzip
import hashlib
import json
import os
import sys
import time
from concurrent.futures import ProcessPoolExecutor
from pathlib import Path

for v in ('OPENBLAS_NUM_THREADS', 'MKL_NUM_THREADS', 'VECLIB_MAXIMUM_THREADS', 'OMP_NUM_THREADS'):
    os.environ[v] = '1'
ROOT = Path(__file__).resolve().parents[2]
os.environ['TC_ROOT'] = str(ROOT)
for d in (
    'proof/seed_atlas/driver',
    'proof/seed_atlas/cert',
    'proof/theorems/TC_triple_classification/family_neighbourhoods',
):
    sys.path.insert(0, str(ROOT / d))
sys.path.insert(0, str(Path(__file__).resolve().parent))

import numpy as np
from flint import ctx
import fine_patterns as FP
import moving_symmetry as MS
import native_cover as NC
import patches as P
import seedcert as SC
import witness as W

STATE = {}


def record_hash(record):
    return hashlib.sha256(json.dumps(record, sort_keys=True).encode()).hexdigest()


def pattern_hash(cover, cliques):
    """Bind pattern indices to their rebuilt closed-bin colour domains."""
    data = dict(cliques=[list(map(int, c)) for c in cliques],
                bin_indices=cover.get('bin_indices', []))
    return hashlib.sha256(json.dumps(data, sort_keys=True).encode()).hexdigest()


def validate_certificate(cert, record, cover=None, cliques=None, requested=None):
    """Fail closed on the wrong input, malformed metadata, or missing patterns.

    Legacy certificates are accepted after checking their existing record hash;
    version 2 additionally binds the exact rebuilt pattern/bin assignment.
    """
    if not isinstance(cert, dict) or not isinstance(cert.get('patterns'), dict) or not isinstance(cert.get('completions'), dict):
        raise ValueError('malformed certificate')
    if cert.get('format_version', 1) not in (1, 2):
        raise ValueError('unsupported certificate format_version')
    if cert.get('format_version') == 2 and not {'pattern_count', 'pattern_sha256', 'setup_roots'} <= cert.keys():
        raise ValueError('version 2 certificate is missing coverage/proposal metadata')
    if cert.get('record_sha256') != record_hash(record):
        raise ValueError('certificate record_sha256 does not match this cell record')
    if cliques is None:
        return
    if 'pattern_count' in cert and cert['pattern_count'] != len(cliques):
        raise ValueError('certificate pattern_count does not match rebuilt cover')
    if 'pattern_sha256' in cert and cert['pattern_sha256'] != pattern_hash(cover, cliques):
        raise ValueError('certificate pattern/bin assignment does not match rebuilt cover')
    missing = [i for i in requested if str(i) not in cert['patterns']]
    if missing:
        raise ValueError('certificate omits requested patterns: ' + ','.join(map(str, missing[:20])))
    for i in requested:
        p = cert['patterns'][str(i)]
        if not isinstance(p, dict) or p.get('status') not in ('CLASSIFIED', 'EXCLUDED'):
            raise ValueError('invalid claimed verdict for pattern %d' % i)
        if 'colours' in p and p['colours'] != list(cliques[i]):
            raise ValueError('certificate colours disagree for pattern %d' % i)
        if p.get('route') == 'native fine bins':
            if p['status'] != 'EXCLUDED':
                raise ValueError('native fine-bin verdict must be EXCLUDED')
            continue
        if p.get('completion') not in cert['completions']:
            raise ValueError('missing completion for pattern %d' % i)
        perm = p.get('perm')
        if not isinstance(perm, list) or any(type(x) is not int for x in perm) or sorted(perm) != list(range(6)):
            raise ValueError('invalid column permutation for pattern %d' % i)
        if not isinstance(p.get('plan'), (dict, list)):
            raise ValueError('missing replay plan for pattern %d' % i)


def setup(path, cert=None):
    ctx.prec = 160
    rec = json.load(gzip.open(path))['record']
    if cert is not None:
        validate_certificate(cert, rec)
    ball = SC.Ball(rec)
    c1 = SC.certify_c1(ball, max_boxes=4096)
    if not c1['ok']:
        raise ArithmeticError('C1 failed')
    model = P.normal_form(ball, prec=160)
    if cert is not None and 'setup_roots' in cert:
        roots = W.unpack(cert['setup_roots'])
        if roots.ndim != 2 or roots.shape[1] != 6 or len(roots) == 0 or not np.isfinite(roots).all():
            raise ValueError('invalid stored native root proposals')
    else:
        roots = NC.propose_roots(np.exp(1j * MS.numeric(model['Q0']).reshape(6, 6)))
    cover = NC.complete_cover(ball, model, roots)
    prepared, bounds, cliques, _ = NC.contract_patterns(model, roots, cover)
    STATE.clear()
    STATE.update(record=rec, ball=ball, model=model, cover=cover, prepared=prepared, bounds=bounds, cliques=cliques, setup_roots=roots)
    return len(cliques)


def fingerprint(y):
    return hashlib.sha256(np.ascontiguousarray(y, dtype='<f8').tobytes()).hexdigest()[:16]


def one(args):
    """One pattern. Without a certificate: search, and return the new exact proposals it used (each once per worker).
    With one (`check`): replay its completion, permutation and plan. Native setup
    retains its reviewed binary64 enclosures and verified numerical proposals."""
    path, i, cert, proposal = args
    if not STATE:
        setup(path, cert)
    t = time.monotonic()
    model, clique = STATE['model'], STATE['cliques'][i]
    cache = STATE.setdefault('cache', {})
    rec = None
    try:
        refined, receipt = FP.refine(STATE['ball'], model, STATE['cover'], clique)
        stored = cert['patterns'][str(i)] if cert else None
        if refined is None:
            row = dict(
                status='EXCLUDED' if receipt['status'] == 'EXCLUDED' else 'OPEN',
                route='native fine bins',
                reason=receipt.get('reason'),
            )
        elif stored and stored.get('route') == 'native fine bins':
            row = dict(status='OPEN', reason='certificate says fine bins exclude, but they do not')
        else:
            columns = [refined['bin_indices'][c] for c in clique]
            if stored:
                fp, perm = stored['completion'], stored['perm']
                if fp not in cache:
                    cache[fp] = W.from_record(model, cert['completions'][fp])
            else:
                fp, perm, prop = proposal
                if fp not in cache:
                    cache[fp] = W.prepare(model, prop)
            order = sorted(range(6), key=lambda j: perm[j])
            row = W.pattern(
                cache[fp],
                [columns[j] for j in order],
                STATE['cover']['bin_radius'],
                stored['plan'] if stored else None,
                refined=refined,
                clique=clique,
                order=order,
            )
            row.update(completion=fp, perm=perm)
            if not cert:
                sent = STATE.setdefault('sent', {}).setdefault(fp, set())
                full = W.completion_record(cache[fp])
                rec = {k: v for k, v in full.items() if k != 'native' and 'base' not in sent}
                rec['native'] = {t_k: v for t_k, v in full['native'].items() if t_k not in sent}
                sent.update(['base'], rec['native'])
    except (ArithmeticError, ValueError, ZeroDivisionError, KeyError, TypeError, IndexError, OverflowError, np.linalg.LinAlgError) as exc:
        row = dict(status='OPEN', reason=repr(exc)[:300])
    if cert is not None:
        row['certificate_status'] = cert['patterns'][str(i)]['status']
        row['verdict_matches'] = row['status'] == row['certificate_status']
    return dict(pattern=i, colours=clique, seconds=round(time.monotonic() - t, 1), **row), rec


def main():
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument('cell')
    ap.add_argument('out')
    ap.add_argument('--workers', type=int, default=1)
    ap.add_argument('--patterns', default=':')
    ap.add_argument('--certificate', help='write the certificate (exact proposals) here')
    ap.add_argument('--check', help='replay this certificate instead of searching')
    a = ap.parse_args()
    if a.workers < 1:
        ap.error('--workers must be positive')
    t = time.monotonic()
    cert = json.load(gzip.open(a.check)) if a.check else None
    n = setup(a.cell, cert)
    print(json.dumps(dict(cell=a.cell, patterns=n, setup_seconds=round(time.monotonic() - t, 1))), flush=True)
    lo, hi = (a.patterns.split(':') + [''])[:2]
    todo = list(range(n))[int(lo or 0):int(hi or n)]
    if cert is not None:
        validate_certificate(cert, STATE['record'], STATE['cover'], STATE['cliques'], todo)
    new = dict(
        format_version=2,
        cell=a.cell,
        record_sha256=record_hash(STATE['record']),
        pattern_count=n,
        pattern_sha256=pattern_hash(STATE['cover'], STATE['cliques']),
        setup_roots=W.pack(STATE['setup_roots']),
        completions={},
        patterns={},
    )
    proposals, refs = {}, {}
    if not cert:
        q = MS.numeric(STATE['model']['Q0'])[:, 0]
        U = MS.numeric(STATE['model']['U'])
        for i in todo:
            cl = STATE['cliques'][i]
            centres = [MS.numeric(STATE['prepared'][c]['v0'])[:, 0] for c in cl]
            y_init = np.array(centres).T.copy()
            y_init -= y_init.mean(axis=0)
            fp, perm = W.match(y_init.ravel(), refs, tol=0.35)
            if fp is None:
                prop = W.propose(q, U, centres)
                fp, perm = W.match(prop['y'], refs)
                if fp is None:
                    fp, perm = fingerprint(prop['y']), list(range(6))
                    refs[fp] = dict(prop=prop)
            proposals[i] = (fp, perm, refs[fp]['prop'])
    counts = Counter()
    mismatches = []
    with open(a.out, 'w') as out, ProcessPoolExecutor(a.workers) as pool:
        for row, rec in pool.map(one, [(a.cell, i, cert, proposals.get(i)) for i in todo], chunksize=max(1, len(todo) // a.workers)):
            out.write(json.dumps(row) + '\n')
            out.flush()
            counts[row['status']] += 1
            if cert is not None and not row['verdict_matches']:
                mismatches.append(row['pattern'])
            print(json.dumps({k: row.get(k) for k in ('pattern', 'status', 'step', 'plan', 'q', 'seconds')}), flush=True)
            if rec is not None:
                c = new['completions'].setdefault(row['completion'], dict(native={}))
                c.update({k: v for k, v in rec.items() if k != 'native'})
                c['native'].update(rec['native'])
            if row['status'] != 'OPEN':
                new['patterns'][str(row['pattern'])] = {k: row[k] for k in ('status', 'route', 'completion', 'perm', 'plan', 'colours') if k in row}
    if a.certificate and not cert:
        used = {p['completion'] for p in new['patterns'].values() if 'completion' in p}
        new['completions'] = {k: v for k, v in new['completions'].items() if k in used}
        with gzip.open(a.certificate, 'wt') as f:
            json.dump(new, f)
        print(json.dumps(dict(certificate=a.certificate, bytes=os.path.getsize(a.certificate), completions=len(used))), flush=True)
    passed = sum(counts.values()) == len(todo) and counts['OPEN'] == 0 and not mismatches
    summary = dict(cell=a.cell, patterns_total=n, requested=len(todo), processed=sum(counts.values()),
                   counts=dict(counts), verdict_mismatches=mismatches, passed=passed,
                   complete_cell=passed and todo == list(range(n)))
    Path(a.out + '.summary.json').write_text(json.dumps(summary, indent=2) + '\n')
    print(json.dumps(summary), flush=True)
    return 0 if passed else 1


if __name__ == '__main__':
    sys.exit(main())
