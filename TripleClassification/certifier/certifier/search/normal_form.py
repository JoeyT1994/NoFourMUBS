"""Proposing a normal-form leaf for a cell: the witness's search (run_cell's main, one cell, in this process), with two
limits. No proof role: `verify` replays the certificate (normal_form_leaf.check).

- Each pattern is searched for at most CAP seconds. On 1016 a pattern the witness resolved took under 60 s in all but
  10 of 30,000 cases, while 1,569 of the 1,777 left open took longer.
- The first pattern left open ends the attempt: the cell is then split, and its children are searched instead.
- A pattern is first tried with a completion already proposed for a nearby pattern of the cell (as run_cell.main
  does); if that leaves it open, it is tried once more with a completion proposed for it alone. On a few balls the
  nearby completion lies too far along the weak direction for the localisation to close.
"""
import tempfile
from pathlib import Path
import numpy as np
from .. import pinned
from ..certificate import leaf

RC = pinned.normal_form
CAP = 60.0


def propose_cell(data, capped, cap=CAP, timecap=()):
    """The leaf file (bytes) for the cell record `data` (certificate.leaf's keys), or raises ArithmeticError with the
    first pattern left open. `capped(seconds, f, *args)` runs f under a time cap, raising `timecap` when it expires
    (search/close.py)."""
    with tempfile.TemporaryDirectory(prefix='certifier.nf.') as td:
        path = str(Path(td) / 'cell.json.gz'); Path(path).write_bytes(leaf(data))
        n = RC.setup(path)
        S = RC.STATE; q = RC.MS.numeric(S['model']['Q0'])[:, 0]; U = RC.MS.numeric(S['model']['U'])
        cert = dict(format_version=2, cell=Path(path).name, record_sha256=RC.record_hash(S['record']), pattern_count=n,
                    pattern_sha256=RC.pattern_hash(S['cover'], S['cliques']), setup_roots=RC.W.pack(S['setup_roots']),
                    completions={}, patterns={})
        refs = {}

        def fresh(centres):
            """A completion proposed for this pattern itself (or an equal one already proposed)."""
            prop = RC.W.propose(q, U, centres); fp, perm = RC.W.match(prop['y'], refs)
            if fp is None: fp, perm = RC.fingerprint(prop['y']), list(range(6)); refs[fp] = dict(prop=prop)
            return fp, perm

        for i, clique in enumerate(S['cliques']):
            centres = [RC.MS.numeric(S['prepared'][c]['v0'])[:, 0] for c in clique]
            y = np.array(centres).T.copy(); y -= y.mean(axis=0)
            fp, perm = RC.W.match(y.ravel(), refs, tol=0.35)            # as run_cell.main: reuse a nearby completion
            reused = fp is not None
            if not reused: fp, perm = fresh(centres)
            try: row, rec = capped(cap, RC.one, (path, i, None, (fp, perm, refs[fp]['prop'])))
            except timecap: row = dict(status='OPEN', reason='over %.0f s' % cap)
            if row['status'] == 'OPEN' and reused:                   # a reused completion can lie too far away
                fp2, perm2 = fresh(centres)
                if fp2 != fp:
                    try: row, rec = capped(cap, RC.one, (path, i, None, (fp2, perm2, refs[fp2]['prop'])))
                    except timecap: row = dict(status='OPEN', reason='over %.0f s' % cap)
            if row['status'] == 'OPEN': raise ArithmeticError('pattern %d of %d remains: %s' % (i, n, str(row.get('reason'))[:60]))
            if rec is not None:
                c = cert['completions'].setdefault(row['completion'], dict(native={}))
                c.update({k: v for k, v in rec.items() if k != 'native'}); c['native'].update(rec['native'])
            cert['patterns'][str(i)] = {k: row[k] for k in ('status', 'route', 'completion', 'perm', 'plan', 'colours') if k in row}
    used = {p['completion'] for p in cert['patterns'].values() if 'completion' in p}
    cert['completions'] = {k: v for k, v in cert['completions'].items() if k in used}
    return leaf(dict(data, normal_form=cert))
