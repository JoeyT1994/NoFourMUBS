#!/usr/bin/env python3
"""Tests of the extended whole-cell check (ext_cell_certificate.py, ext_replay.py, fast_search.py --projector).

  python test_ext.py PLANE_ROOT CELL_DIR

CELL_DIR: the saved proof of ball 491's level-4 cell (12, 5, 12, 12) (entry.json, frontier.input.json.gz, ...).
1. the extended replay certifies a pinned proposal (nothing changes for proofs without the new witnesses);
2. ball 825's level-6 cell (3, 22, 27, 42), which no search budget certifies, is proposed with secant witnesses and
   certified by the extended replay;
3. the pinned replay refuses that proposal (the new witnesses are what certify it);
4. a changed number in a secant witness is refused by the extended replay;
5. a secant witness naming other columns of its pattern is refused.
"""
import gzip, json, os, shutil, subprocess, sys, tempfile

HERE = os.path.dirname(os.path.abspath(__file__))
CERT = ('CERTIFIED_EMPTY_DYADIC_CELL', 'CERTIFIED_CLASSIFIED_DYADIC_CELL')


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
        report('a pinned proposal, extended replay', r['status'] in CERT and 'TripleClassification/code/ext_cell_certificate.py' in r['dependencies_sha256'], r)
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
    print('%d failure(s)' % failures); sys.exit(1 if failures else 0)


if __name__ == '__main__': main()
