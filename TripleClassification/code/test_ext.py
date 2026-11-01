#!/usr/bin/env python3
"""Tests of the extended whole-cell check (ext_cell_certificate.py, ext_replay.py, fast_search.py --projector).

  python test_ext.py PLANE_ROOT CELL_DIR

CELL_DIR: the saved proof of ball 491's level-4 cell (12, 5, 12, 12) (entry.json, frontier.input.json.gz, ...).
1. the extended replay certifies a pinned proposal by the pinned check itself (its receipt names the pinned files only);
2. ball 825's level-6 cell (3, 22, 27, 42), which no search budget certifies, is proposed with secant witnesses and
   certified by the extended replay;
3. the pinned replay refuses that proposal (the new witnesses are what certify it);
4. a changed number in a secant witness is refused by the extended replay;
5. a secant witness naming other columns of its pattern is refused;
6. an AntiGravity gamma proposal (ball 825, level-5 cell (10, 15, 16, 8): every pattern by a gamma witness) is
   certified by the extended replay with restricted (minimum-transition) scope, and refused by the pinned one;
7. a gamma witness with a changed alignment, or naming other columns, is refused;
8. fast_search.py --gamma-only proposes that cell from scratch, and the extended replay certifies it;
9. the leaf cache; 10. every gamma row is ORDERING_DISCHARGED (the Fourier-neighbourhood theorem is not used), and the
   cell's g_cell bound (exact centre score, gamma_exact.py; test_gamma_exact.py) includes the binary64 rounding of the
   centre phases.
"""
import gzip, json, os, shutil, subprocess, sys, tempfile

HERE = os.path.dirname(os.path.abspath(__file__))
MIN, MINR = 'CERTIFIED_MINIMUM_TRANSITION_DYADIC_CELL', 'CERTIFIED_MINIMUM_TRANSITION_RECORDED_H_CELL'
CERT = ('CERTIFIED_EMPTY_DYADIC_CELL', 'CERTIFIED_CLASSIFIED_DYADIC_CELL', MIN)


def main():
    root, cdir = os.path.abspath(sys.argv[1]), os.path.abspath(sys.argv[2]); failures = 0
    env = dict(os.environ, OMP_NUM_THREADS='1')
    def replay(d, proposal, ext=True):
        cmd = ([sys.executable, '-W', 'ignore', os.path.join(HERE, 'ext_replay.py'), root] if ext else
               [sys.executable, '-W', 'ignore', os.path.join(root, 'TripleClassification/code/plane_frontier_certificate.py')])
        subprocess.run(cmd + [os.path.join(d, 'entry.json'), '--input', os.path.join(d, 'frontier.input.json.gz'), '--proposal', proposal,
                              '--out', os.path.join(d, 'replay.json')], cwd=root, env=env, capture_output=True)
        return json.load(open(os.path.join(d, 'replay.json')))
    def report(name, ok, r):
        nonlocal failures
        failures += not ok; print('%-4s %-62s %s %s' % ('PASS' if ok else 'FAIL', name, r.get('status'), str(r.get('reason', ''))[:70]))
    with tempfile.TemporaryDirectory() as t:
        c491 = os.path.join(t, '491'); shutil.copytree(cdir, c491); r = replay(c491, os.path.join(c491, 'frontier.proposal.json.gz'))
        report('a pinned proposal, extended replay: the pinned check, pinned files only',
               r['status'] in CERT and not any('ext_cell_certificate' in k or 'gamma_test' in k for k in r['dependencies_sha256']), r)
        d = os.path.join(t, '825'); os.makedirs(d)
        json.dump(dict(ball=825, level=6, cell=[3, 22, 27, 42], subatlas='none', sub=0, record_sha256='none'), open(os.path.join(d, 'entry.json'), 'w'))
        subprocess.run([sys.executable, '-W', 'ignore', os.path.join(HERE, 'fast_search.py'), root, os.path.join(d, 'entry.json'), '--out',
                        os.path.join(d, 'frontier.json'), '--projector'], cwd=root, env=env, capture_output=True)
        prop = os.path.join(d, 'frontier.proposal.json.gz')
        p = json.load(gzip.open(prop)) if os.path.exists(prop) else dict(witnesses=[])
        secants = [w for w in p['witnesses'] if 'secant' in w]
        r = replay(d, prop) if os.path.exists(prop) else json.load(open(os.path.join(d, 'frontier.json')))
        report('825 (3,22,27,42): secant witnesses, extended replay (%d secants)' % len(secants), r['status'] in CERT and secants, r)
        r = replay(d, prop, ext=False)
        report('the same proposal, pinned replay', r['status'] not in CERT, r)
        def changed(edit, name):
            q = json.loads(json.dumps(p)); edit(next(w for w in q['witnesses'] if 'secant' in w)); f = os.path.join(d, name)
            with gzip.open(f, 'wt') as g: json.dump(q, g)
            return replay(d, f)
        def scale(w): w['secant']['lam'] = [float.hex(-float.fromhex(x)) for x in w['secant']['lam']]
        r = changed(scale, 'sign.json.gz'); report('a secant witness with its transverse row negated', r['status'] not in CERT, r)
        def other(w): w['columns'] = list(reversed(w['columns']))
        r = changed(other, 'other.json.gz'); report('a secant witness naming other columns', r['status'] not in CERT, r)
        ag = os.path.join(HERE, '..', '..', 'AntiGravityClosureAttempt', 'ball_closure_receipts', 'b825', '825_5_10_15_16_8')
        d = os.path.join(t, 'g825'); os.makedirs(d)
        shutil.copy(ag + '.input.json.gz', os.path.join(d, 'frontier.input.json.gz')); gp = os.path.join(d, 'frontier.proposal.json.gz')
        shutil.copy(ag + '.proposal.json.gz', gp)
        i = json.load(gzip.open(gp.replace('proposal', 'input')))
        json.dump(dict({k: i[k] for k in ('ball', 'level', 'cell', 'subatlas', 'sub')}, record_sha256=i['legacy_record_sha256']),
                  open(os.path.join(d, 'entry.json'), 'w'))
        r = replay(d, gp); report('825 (5;10,15,16,8): AG gamma proposal: restricted (ordering-only rows)', r['status'] == MIN and
                                  'Restricted' in r.get('scope', ''), r)
        r = replay(d, gp, ext=False); report('the same proposal, pinned replay', r['status'] not in CERT, r)
        q0 = json.load(gzip.open(gp))
        def gchanged(edit, name):
            q = json.loads(json.dumps(q0)); edit(q['witnesses'][0]); f = os.path.join(d, name)
            with gzip.open(f, 'wt') as g: json.dump(q, g)
            return replay(d, f)
        def align(w): w['gamma']['a'] = [0] + list(reversed(w['gamma']['a'][1:]))
        r = gchanged(align, 'galign.json.gz'); report('a gamma witness with a reversed alignment', r['status'] not in CERT, r)
        def gcols(w): w['columns'] = list(reversed(w['columns']))
        r = gchanged(gcols, 'gcols.json.gz'); report('a gamma witness naming its columns in another order', r['status'] not in CERT, r)
        d = os.path.join(t, 'gs825'); os.makedirs(d)
        json.dump(dict(ball=825, level=5, cell=[10, 15, 16, 8], subatlas='none', sub=0, record_sha256='none'), open(os.path.join(d, 'entry.json'), 'w'))
        subprocess.run([sys.executable, '-W', 'ignore', os.path.join(HERE, 'fast_search.py'), root, os.path.join(d, 'entry.json'), '--out',
                        os.path.join(d, 'frontier.json'), '--gamma-only'], cwd=root, env=env, capture_output=True)
        r = replay(d, os.path.join(d, 'frontier.proposal.json.gz'))
        report('fast_search --gamma-only on that cell, extended replay', r['status'] == MIN, r)
        LEAF = '''import json, os, sys; from pathlib import Path
os.environ['TC_ROOT'] = sys.argv[1]; import importlib.util, gzip
sp = importlib.util.spec_from_file_location('ext_cell_certificate', sys.argv[2]); E = importlib.util.module_from_spec(sp); sp.loader.exec_module(E)
from flint import ctx; ctx.prec = 224
r = E.check(Path(sys.argv[3]), json.load(gzip.open(sys.argv[4]))); print(json.dumps(dict(status=r['status'], cached=r.get('leaf_cache', False))))'''
        lc = os.path.join(t, 'leafcache'); os.makedirs(lc)
        def leaf_check(cache=True):
            q = subprocess.run([sys.executable, '-W', 'ignore', '-c', LEAF, root, os.path.join(HERE, 'ext_cell_certificate.py'),
                                os.path.join(d, 'frontier.input.json.gz'), os.path.join(d, 'frontier.proposal.json.gz')], capture_output=True, text=True,
                               env=dict(env, **({'TC_LEAF_CACHE': lc} if cache else {})), cwd=root)
            try: return json.loads(q.stdout.strip().splitlines()[-1])
            except (ValueError, IndexError): return dict(status=None, reason=q.stderr[-300:])
        r = leaf_check(); report('leaf cache: first check computes and records', r['status'] == MINR and not r['cached'], r)
        r = leaf_check(); report('leaf cache: second check is served from the cache', r['status'] == MINR and r['cached'], r)
        f = os.path.join(lc, 'leaf_cache.b825.jsonl'); lines = open(f).read().splitlines(); x = json.loads(lines[-1])
        x['dependencies_sha256']['TripleClassification/code/gamma_test.py'] = '0' * 64; open(f, 'w').write(json.dumps(x) + '\n')
        r = leaf_check(); report('leaf cache: an entry whose dependency changed is not used', r['status'] == MINR and not r['cached'], r)
        r = leaf_check(cache=False); report('leaf cache: off without TC_LEAF_CACHE', r['status'] == MINR and not r['cached'], r)
        SCOPE = '''import json, os, sys, gzip; from pathlib import Path
os.environ['TC_ROOT'] = sys.argv[1]; import importlib.util
sp = importlib.util.spec_from_file_location('ext_cell_certificate', sys.argv[2]); E = importlib.util.module_from_spec(sp); sp.loader.exec_module(E)
from flint import ctx; ctx.prec = 224
inp, prop = Path(sys.argv[3]), json.load(gzip.open(sys.argv[4]))
r = E._ext_check(inp, prop)
g = {x['number']: x for x in r['projector_patterns'] if 'gamma_mode' in x}
labels_ok = bool(g) and all(row['status'] == 'ORDERING_DISCHARGED' for row in r['patterns'] if row['number'] in g)
_, model, *_ = E.Whole.complete_cover(inp)
old, new = E.GT.prep(model, E.Fraction(0))['g_cell'], E.gamma_context(model)['g_cell']
print(json.dumps(dict(status=r['status'], labels_ok=labels_ok, ordering_rows=sum(row['status'] == 'ORDERING_DISCHARGED' for row in r['patterns']),
                      fourier_rows=sum(row['status'] == 'CLASSIFIED' and row['number'] in g for row in r['patterns']), restricted_scope='Restricted' in r['scope'],
                      g_old=float(old), g_new=float(new))))'''
        q = subprocess.run([sys.executable, '-W', 'ignore', '-c', SCOPE, root, os.path.join(HERE, 'ext_cell_certificate.py'),
                            os.path.join(d, 'frontier.input.json.gz'), os.path.join(d, 'frontier.proposal.json.gz')],
                           capture_output=True, text=True, env=env, cwd=root)
        try: x = json.loads(q.stdout.strip().splitlines()[-1])
        except (ValueError, IndexError): x = dict(reason=q.stderr[-300:])
        report('gamma rows: every one ORDERING_DISCHARGED, none classified by Fourier (%s/%s)' % (x.get('fourier_rows'), x.get('ordering_rows')),
               x.get('labels_ok') is True and x.get('fourier_rows') == 0 and x.get('ordering_rows', 0) > 0 and x.get('status') == MINR and x.get('restricted_scope'), x)
        report('g_cell: the exact centre bound less the motion and rounding, within 1e-8 of the float one',
               'g_new' in x and abs(x['g_old'] - x['g_new']) < 1e-8, dict(status='g %r -> %r' % (x.get('g_old'), x.get('g_new'))))
    print('%d failure(s)' % failures); sys.exit(1 if failures else 0)


if __name__ == '__main__': main()
