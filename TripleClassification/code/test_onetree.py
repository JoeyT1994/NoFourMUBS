#!/usr/bin/env python3
"""Tests of onetree.py (one tree per ball).

  python test_onetree.py PINNED_ROOT

On ball 491's level-4 cell (12, 5, 12, 12) (one leaf):
1. close, then check: certified;
2. a changed byte in the leaf's proposal: refused;
3. the leaf's record naming another cell: refused;
4. the leaf node renamed to another cell: refused (a leaf is named by its own position);
5. the leaf replaced by an outside node: refused (the cell meets the ball);
6. an open node: the cell is not closed;
7. a second close resumes from the journal (nothing searched again) and checks;
8. a journalled leaf whose files are gone is searched again;
8b. a leaf the check refused is set aside (leaves_refused/) by close --requeue-refused and searched again;
8c. pack puts the leaves into leaves.tar, and the packed certificate checks;
9. the cell closed as 16 parts (its children, as on 16 nodes), joined, checks; join refuses a missing part;
10. ball 2254 closes as one native leaf (the frozen whole-ball certifier on the original record) and checks;
11. a native leaf claimed for ball 491's whole ball, which that certifier does not close, is refused;
12. a native leaf below the root: ball 2254's level-1 cell (1,1,1,1) from its own record, then checked.
"""
import gzip, json, os, shutil, subprocess, sys, tempfile

HERE = os.path.dirname(os.path.abspath(__file__))


def main():
    root = os.path.abspath(sys.argv[1]); failures = 0
    with tempfile.TemporaryDirectory() as t:
        run = lambda cmd, *x: subprocess.run([sys.executable, '-W', 'ignore', os.path.join(HERE, 'onetree.py'), cmd, root, '491', t,
                                              '--workers', '2'] + list(x), capture_output=True, text=True)
        def check():
            run('check'); return json.load(open(os.path.join(t, 'b491', 'check.json')))
        def report(name, ok, r):
            nonlocal failures
            failures += not ok; print('%-4s %-58s %s %s' % ('PASS' if ok else 'FAIL', name, r.get('verdict'), str(r.get('failed', ''))[:90]))
        run('close', '--cell', '4:12,5,12,12', '--max-level', '4')
        r = check(); report('close, then check', r['verdict'] == 'CELL CLOSED', r)
        b = os.path.join(t, 'b491'); leaf = os.path.join(b, 'leaves', '4_12_5_12_12'); tree = os.path.join(b, 'tree.json')
        keep = {f: open(f, 'rb').read() for f in (leaf + '.proposal.json.gz', leaf + '.input.json.gz', tree)}
        def restore():
            for f, x in keep.items(): open(f, 'wb').write(x)
        p = json.load(gzip.open(leaf + '.proposal.json.gz')); p['record_sha256'] = '0' * 64
        with gzip.open(leaf + '.proposal.json.gz', 'wt') as g: json.dump(p, g)
        r = check(); report('a changed proposal', r['verdict'] == 'OPEN', r); restore()
        d = json.load(gzip.open(leaf + '.input.json.gz')); d['cell'] = [12, 5, 12, 13]
        with gzip.open(leaf + '.input.json.gz', 'wt') as g: json.dump(d, g)
        r = check(); report('the record naming another cell', r['verdict'] == 'OPEN', r); restore()
        for name, node in (('the leaf named as another cell', {'leaf': '4_12_5_12_13'}), ('the leaf replaced by an outside node', {'outside': True}),
                           ('an open node', {'open': True})):
            x = json.loads(keep[tree]); x['tree'] = node; json.dump(x, open(tree, 'w'))
            r = check(); report(name, r['verdict'] == 'OPEN', r); restore()
        summ = lambda: json.load(open(os.path.join(t, 'b491', 'summary.json')))
        run('close', '--cell', '4:12,5,12,12', '--max-level', '4'); x = summ(); r = check()
        report('a second close resumes from the journal', x['per_level']['4']['resumed'] == 1 and not x['search_seconds'] and
               r['verdict'] == 'CELL CLOSED', dict(verdict=x['per_level'], failed=r.get('failed')))
        for f in os.listdir(os.path.join(t, 'b491', 'leaves')): os.remove(os.path.join(t, 'b491', 'leaves', f))
        run('close', '--cell', '4:12,5,12,12', '--max-level', '4'); x = summ(); r = check()
        report('a journalled leaf without its files is searched again', x['per_level']['4']['resumed'] == 0 and
               '4' in x['search_seconds'] and r['verdict'] == 'CELL CLOSED', dict(verdict=x['per_level'], failed=r.get('failed')))
        p = json.load(gzip.open(leaf + '.proposal.json.gz')); p['record_sha256'] = '0' * 64
        with gzip.open(leaf + '.proposal.json.gz', 'wt') as g: json.dump(p, g)
        r = check(); refused = json.load(open(os.path.join(b, 'refused.json')))
        run('close', '--cell', '4:12,5,12,12', '--max-level', '4', '--requeue-refused'); x = summ(); r2 = check()
        report('a refused leaf is set aside and searched again', r['verdict'] == 'OPEN' and len(refused) == 1 and
               x['per_level']['4']['resumed'] == 0 and os.path.exists(os.path.join(b, 'leaves_refused', '4_12_5_12_12.proposal.json.gz')) and
               r2['verdict'] == 'CELL CLOSED', dict(verdict=r2['verdict'], failed=r2.get('failed')))
        pk = run('pack'); r3 = check()
        report('pack: leaves.tar replaces leaves/, and the packed certificate checks', r3['verdict'] == 'CELL CLOSED' and
               os.path.exists(os.path.join(b, 'leaves.tar')) and not os.path.exists(os.path.join(b, 'leaves')), dict(verdict=r3['verdict'], failed=pk.stderr[-200:]))
    with tempfile.TemporaryDirectory() as t:
        run = lambda cmd, *x: subprocess.run([sys.executable, '-W', 'ignore', os.path.join(HERE, 'onetree.py'), cmd, root, '491', t,
                                              '--workers', '2'] + list(x), capture_output=True, text=True)
        kids = [(5, [24 + ((i >> 3) & 1), 10 + ((i >> 2) & 1), 24 + ((i >> 1) & 1), 24 + (i & 1)]) for i in range(16)]
        for l, c in kids: run('close', '--part', '--cell', '%d:%s' % (l, ','.join(map(str, c))), '--max-level', '5')
        j = run('join', '--cell', '4:12,5,12,12'); run('check'); r = json.load(open(os.path.join(t, 'b491', 'check.json')))
        report('16 parts joined, then checked', r['verdict'] == 'CELL CLOSED' and sum(r['counts'].values()) >= 16, dict(r, failed=j.stderr[-200:]))
        os.remove(os.path.join(t, 'b491', 'tree.5_24_10_24_24.json')); j = run('join', '--cell', '4:12,5,12,12')
        report('join refuses a missing part', j.returncode != 0 and 'missing' in (j.stderr + j.stdout), dict(verdict=j.returncode))
    with tempfile.TemporaryDirectory() as t:
        run = lambda ball, cmd, *x: subprocess.run([sys.executable, '-W', 'ignore', os.path.join(HERE, 'onetree.py'), cmd, root, str(ball), t,
                                                    '--workers', '2'] + list(x), capture_output=True, text=True)
        chk = lambda ball: (run(ball, 'check'), json.load(open(os.path.join(t, 'b%d' % ball, 'check.json'))))[1]
        run(2254, 'close', '--max-level', '1'); r = chk(2254)
        report('2254: one native leaf, checked', r['verdict'] == 'CLOSED' and r['counts'] == {'NATIVE CERTIFIED EMPTY': 1}, r)
        b = os.path.join(t, 'b491'); os.makedirs(os.path.join(b, 'leaves'))
        json.dump(dict(schema='onetree-v1', ball=491, root=[0, [0, 0, 0, 0]], tree={'native': '0_0_0_0_0'}), open(os.path.join(b, 'tree.json'), 'w'))
        open(os.path.join(b, 'leaves', '0_0_0_0_0.native.json'), 'w').write('{}')
        r = chk(491); report('a native leaf on a ball the certifier does not close: refused', r['verdict'] == 'OPEN', r)
        SUB = '''import sys, json; sys.argv = ['onetree.py']; sys.path.insert(0, sys.argv0) if False else None
from pathlib import Path
import importlib.util; sp = importlib.util.spec_from_file_location('onetree', '%s'); O = importlib.util.module_from_spec(sp); sp.loader.exec_module(O)
O.setup('%s'); out = Path('%s') / 'b2254'; (out / 'leaves').mkdir(parents=True, exist_ok=True)
ok = O.native_search(2254, 1, [1, 1, 1, 1], out)
st = O.native_check(2254, 1, [1, 1, 1, 1], out / 'leaves' / '1_1_1_1_1.input.json.gz')[0] if ok else None
print(json.dumps(dict(ok=ok, status=st)))''' % (os.path.join(HERE, 'onetree.py'), root, t)
        q = subprocess.run([sys.executable, '-W', 'ignore', '-c', SUB], capture_output=True, text=True, cwd=root)
        try: x = json.loads(q.stdout.strip().splitlines()[-1])
        except (ValueError, IndexError): x = dict(verdict=q.stderr[-300:])
        report('a native leaf below the root, from the cell record', x.get('ok') is True and x.get('status') == 'NATIVE CERTIFIED EMPTY', x)
    print('%d failure(s)' % failures); sys.exit(1 if failures else 0)


if __name__ == '__main__': main()
