#!/usr/bin/env python3
"""Run the one-tree checker it replaces (TripleClassification/code/onetree.py check) and this package on the same
full-format certificates, genuine and tampered, and compare what each accepts: the package converts each one to its
own format (python -m certifier convert, which verifies the result). For maintainers: needs the repository.

  python tools/equivalence.py ONETREE_PY PINNED_TREE CERT_DIR... [--workers N] [--tamper] [--out REPORT.json]

PINNED_TREE is a checkout of commit 914919b. Each CERT_DIR is a certificate directory b<BALL>/ (tree.json with leaves/
or leaves.tar). It is copied, and with --tamper each copy is also altered in the ways below; both checkers run on every
copy, and the verdict, scope, counts and refused nodes are compared. The two must agree everywhere, except that this
package refuses the projector and one-column witnesses (no certificate uses them).
"""
import argparse, copy, gzip, io, json, os, subprocess, sys, tarfile, tempfile, time

HERE = os.path.dirname(os.path.abspath(__file__))


def leaves_of(d):
    """{file name: bytes} of a certificate's leaves (leaves/ or leaves.tar)."""
    if os.path.isdir(os.path.join(d, 'leaves')):
        return {f: open(os.path.join(d, 'leaves', f), 'rb').read() for f in os.listdir(os.path.join(d, 'leaves'))}
    out = {}
    if os.path.exists(os.path.join(d, 'leaves.tar')):
        with tarfile.open(os.path.join(d, 'leaves.tar')) as t:
            for m in t:
                if m.isfile(): out[m.name[len('leaves/'):]] = t.extractfile(m).read()
    return out


def write_cert(d, tree, leaves, packed):
    os.makedirs(d); json.dump(tree, open(os.path.join(d, 'tree.json'), 'w'))
    if packed:
        with tarfile.open(os.path.join(d, 'leaves.tar'), 'w', format=tarfile.PAX_FORMAT) as t:
            for n in sorted(leaves):
                i = tarfile.TarInfo('leaves/' + n); i.size = len(leaves[n]); t.addfile(i, io.BytesIO(leaves[n]))
    elif leaves:
        os.makedirs(os.path.join(d, 'leaves'))
        for n, b in leaves.items(): open(os.path.join(d, 'leaves', n), 'wb').write(b)


def gz_json(b): return json.loads(gzip.decompress(b))
def to_gz(x): return gzip.compress(json.dumps(x).encode(), mtime=0)


def plane_leaves(tree):
    out = []
    def walk(n):
        if 'children' in n: [walk(c) for c in n['children']]
        elif 'leaf' in n: out.append(n['leaf'])
    walk(tree['tree']); return out


def tampered(tree, leaves):
    """(name, tree, leaves) variants, each a change some checker must refuse."""
    out = []; plane = plane_leaves(tree)
    def first_with(kind):
        for n in plane:
            p = gz_json(leaves[n + '.proposal.json.gz'])
            i = next((i for i, w in enumerate(p['witnesses']) if (w.get('joint', {}).get('known') if kind == 'known' else
                                                                  len(w) == 2 and len(w['columns']) == 2 if kind == 'pair' else kind in w)), None)
            if i is not None: return n, p, i
        return None
    if plane:
        n = plane[0]; p = gz_json(leaves[n + '.proposal.json.gz']); p['record_sha256'] = '0' * 64
        out.append(('proposal bound to another record', tree, dict(leaves, **{n + '.proposal.json.gz': to_gz(p)})))
        d = gz_json(leaves[n + '.input.json.gz']); d['cell'] = d['cell'][:3] + [d['cell'][3] ^ 1]
        out.append(('record naming another cell', tree, dict(leaves, **{n + '.input.json.gz': to_gz(d)})))
        t = copy.deepcopy(tree)
        def rename(node):
            if 'children' in node: [rename(c) for c in node['children']]
            elif node.get('leaf') == n: node['leaf'] = n[:-1] + str(int(n[-1]) ^ 1)
        rename(t['tree']); out.append(('leaf named as another cell', t, leaves))
        t = copy.deepcopy(tree)
        def outside(node):
            if 'children' in node: [outside(c) for c in node['children']]
            elif node.get('leaf') == n: node.clear(); node['outside'] = True
        outside(t['tree']); out.append(('leaf replaced by an outside node', t, leaves))
        out.append(('leaf files missing', tree, {k: v for k, v in leaves.items() if not k.startswith(n + '.')}))
    for kind, edit, what in (
            ('gamma', lambda w: w['gamma'].update(a=[0] + w['gamma']['a'][:0:-1]), 'gamma witness with another alignment'),
            ('gamma', lambda w: w['columns'].reverse(), 'gamma witness naming its columns in another order'),
            ('secant', lambda w: w['secant'].update(lam=[float.hex(-float.fromhex(x)) for x in w['secant']['lam']]), 'secant witness with its transverse row negated'),
            ('secant', lambda w: w['secant'].update(anchors=w['secant']['anchors'][::-1]), 'secant witness with its anchors exchanged'),
            ('joint', lambda w: [x.update(direction=['0x0.0p+0'] * len(x['direction'])) for x in w['joint']['scalars']], 'joint witness with its scalar directions zeroed'),
            ('known', lambda w: w['joint']['known'][0]['action'].update(labels=w['joint']['known'][0]['action']['labels'][1:] + w['joint']['known'][0]['action']['labels'][:1]), 'joint witness with another known-family action'),
            ('pair', lambda w: w['columns'].__setitem__(1, next(c for c in w['colours'] if c not in w['columns'])), 'pair witness naming another column'),
            ('pair', lambda w: w['columns'].pop(), 'pair witness cut to one column')):
        f = first_with(kind)
        if f is None: continue
        n, p, i = f; p = copy.deepcopy(p); edit(p['witnesses'][i])
        out.append((what, tree, dict(leaves, **{n + '.proposal.json.gz': to_gz(p)})))
    t = copy.deepcopy(tree); t['tree'] = {'open': True}; out.append(('open root', t, leaves))
    if tree['root'] == [0, [0, 0, 0, 0]] and 'children' in tree['tree']:
        t = copy.deepcopy(tree); t['tree']['children'] = t['tree']['children'][:15]; out.append(('incomplete partition', t, leaves))
        t = copy.deepcopy(tree); t['tree'] = {'native': '0_0_0_0_0'}; out.append(('a native leaf claimed for the whole ball', t, {}))
    return out


def run_onetree(onetree, root, d, workers):
    parent, b = os.path.split(d.rstrip('/')); ball = int(b[1:]); t = time.time()
    q = subprocess.run([sys.executable, '-W', 'ignore', onetree, 'check', root, str(ball), parent, '--workers', str(workers)], capture_output=True, text=True)
    try: r = json.load(open(os.path.join(d, 'check.json')))
    except (OSError, ValueError): r = dict(verdict='CRASH', counts={}, failed=[[None, None, q.stderr[-200:]]])
    if q.returncode not in (0, 1): r = dict(verdict='CRASH', counts={}, failed=[[None, None, q.stderr[-200:]]])
    r['seconds'] = time.time() - t
    refused = json.load(open(os.path.join(d, 'refused.json'))) if os.path.exists(os.path.join(d, 'refused.json')) and r['verdict'] != 'CRASH' else r['failed']
    for f in ('check.json', 'refused.json'):
        if os.path.exists(os.path.join(d, f)): os.remove(os.path.join(d, f))
    return r, refused


def run_package(d, workers):
    t = time.time(); out = d + '.verify.json'
    q = subprocess.run([sys.executable, '-W', 'ignore', '-m', 'certifier', 'convert', d, d + '.v2', '--workers', str(workers), '--json', out],
                       capture_output=True, text=True, cwd=os.path.dirname(HERE))
    try: r = json.load(open(out))
    except (OSError, ValueError): r = dict(verdict='CRASH', counts={}, failed=[[None, None, q.stderr[-300:]]])
    r['seconds'] = time.time() - t
    return r, r['failed']


def compare(a, b):
    """Same verdict (a crash refuses, as OPEN does), same scope when accepted, same counts, same refused nodes."""
    va = 'OPEN' if a[0]['verdict'] == 'CRASH' else a[0]['verdict']; vb = 'OPEN' if b[0]['verdict'] == 'CRASH' else b[0]['verdict']
    if va != vb: return False
    if va == 'OPEN': return {(x[0], tuple(x[1] or ())) for x in a[1] if x[0] is not None} == {(x[0], tuple(x[1] or ())) for x in b[1] if x[0] is not None}
    return a[0]['scope'] == b[0]['scope'] and a[0]['counts'] == b[0]['counts']


def main():
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument('onetree'); ap.add_argument('root'); ap.add_argument('certs', nargs='+')
    ap.add_argument('--workers', type=int, default=8); ap.add_argument('--tamper', action='store_true'); ap.add_argument('--out')
    a = ap.parse_args(); rows = []
    with tempfile.TemporaryDirectory(prefix='equivalence.') as tmp:
        for k, src in enumerate(a.certs):
            tree = json.load(open(os.path.join(src, 'tree.json'))); leaves = leaves_of(src); ball = tree['ball']
            cases = [('genuine', tree, leaves)] + (tampered(tree, leaves) if a.tamper else [])
            for j, (what, t, lv) in enumerate(cases):
                for packed in ((False, True) if j == 0 else (True,)):
                    d = os.path.join(tmp, '%d_%d_%d' % (k, j, packed), 'b%d' % ball); write_cert(d, t, lv, packed)
                    one, mine = run_onetree(a.onetree, a.root, d, a.workers), run_package(d, a.workers)
                    row = dict(certificate=src, ball=ball, root=tree['root'], case=what, packed=packed, agree=compare(one, mine),
                               onetree=dict(verdict=one[0]['verdict'], scope=one[0].get('scope'), counts=one[0]['counts'], refused=one[1][:5], seconds=round(one[0]['seconds'], 1)),
                               package=dict(verdict=mine[0]['verdict'], scope=mine[0].get('scope'), counts=mine[0]['counts'], refused=mine[1][:5], seconds=round(mine[0]['seconds'], 1)))
                    rows.append(row)
                    print('%-5s b%-5d %-14s %-50s %-6s onetree %-11s %6.1f s | package %-11s %6.1f s' % (
                        'AGREE' if row['agree'] else 'DIFF', ball, '%d:%s' % (tree['root'][0], ','.join(map(str, tree['root'][1]))), what,
                        'packed' if packed else 'dir', one[0]['verdict'], one[0]['seconds'], mine[0]['verdict'], mine[0]['seconds']), flush=True)
    if a.out: json.dump(rows, open(a.out, 'w'), indent=1)
    print('%d of %d cases agree' % (sum(r['agree'] for r in rows), len(rows)))
    return 0 if all(r['agree'] for r in rows) else 1


if __name__ == '__main__': sys.exit(main())
