#!/usr/bin/env python3
"""Witness census over the best one-tree certificates: which witness each pattern of each plane leaf uses, and where
the proof bytes go.

  python witness_census.py STATUS_DIR OUT.json [--workers 120] [--keep 3000]

STATUS_DIR is an onetree_status.py output; its balls.tsv names the best certificate of every closed ball. Every plane
leaf of every such certificate is read (leaves/<level>_<cell>.proposal.json.gz). A pattern's witness kind is

  col1         one column with no tube            pair       two columns never orthogonal
  joint        joint tube exclusion               joint-known  joint, the known family recognised
  secant       moving-frame secant                projector  common row functional
  gamma-F-K / gamma-F-L   Gamma_F of K / of L at most 19/50 (Fourier-neighbourhood theorem)
  gamma-ord-K / gamma-ord-L  above 19/50: ordering discharge (minimum-transition scope)

(the gamma split uses the proposal's own upper bound g_up_hex; the check recomputes it in Arb and compares the same
way). Bytes: the gzip sizes of each leaf's input and proposal files, and the zlib-6 sizes of the proposal's column
proof trees (columns.*.tree), of the rest of its column data, and of its witness list, compressed separately.
Reads only. Writes OUT.json.
"""
import argparse, collections, csv, gzip, json, os, time, zlib
from concurrent.futures import ProcessPoolExecutor

KINDS = ('col1', 'pair', 'joint', 'joint-known', 'secant', 'projector', 'gamma-F-K', 'gamma-F-L', 'gamma-ord-K', 'gamma-ord-L')
F_BOUND = 19 / 50


def kind(w):
    if 'gamma' in w:
        g = w['gamma']; return 'gamma-%s-%s' % ('F' if float.fromhex(g['g_up_hex']) <= F_BOUND else 'ord', g['mode'])
    if 'projector' in w: return 'projector'
    if 'secant' in w: return 'secant'
    if 'joint' in w: return 'joint-known' if (w['joint'] or {}).get('known') else 'joint'
    return 'col1' if len(w['columns']) == 1 else 'pair'


def zlen(x): return len(zlib.compress(json.dumps(x, separators=(',', ':')).encode(), 6))


def leaves_of(tree, acc):
    if 'children' in tree:
        for t in tree['children']: leaves_of(t, acc)
    elif 'leaf' in tree: acc[0].append(tree['leaf'])
    elif 'native' in tree: acc[1].append(tree['native'])
    return acc


def work(job):
    d, ball, names = job
    pat = collections.Counter(); leaf = collections.Counter(); combo = collections.Counter(); lvl = collections.defaultdict(collections.Counter)
    by = collections.Counter(); hits = collections.defaultdict(list); err = []
    for n in names:
        level = int(n.split('_')[0])
        pf = os.path.join(d, 'leaves', n + '.proposal.json.gz'); inf = os.path.join(d, 'leaves', n + '.input.json.gz')
        try:
            raw = open(pf, 'rb').read(); js = gzip.decompress(raw); p = json.loads(js)
            by['proposal_gz'] += len(raw); by['input_gz'] += os.path.getsize(inf)
        except (OSError, ValueError) as e: err.append([ball, n, str(e)[:80]]); continue
        ws = p.get('witnesses', []); ks = [kind(w) for w in ws]
        pat.update(ks); kset = sorted(set(ks)); leaf.update(kset); combo['+'.join(kset) or '(no pattern)'] += 1
        for k in kset: hits[k].append(n)
        cols = p.get('columns', {})
        by['tree_z'] += zlen({c: v.get('tree') for c, v in cols.items()})
        by['colrest_z'] += zlen({c: {a: b for a, b in v.items() if a != 'tree'} for c, v in cols.items()})
        by['witness_z'] += zlen(ws); by['raw_json'] += len(js)
        L = lvl[level]; L['leaves'] += 1; L['proposal_gz'] += len(raw); L['patterns'] += len(ws); L['columns'] += len(cols)
        for k in kset: L['leaf:' + k] += 1
    return ball, dict(pat=pat, leaf=leaf, combo=combo, lvl={k: dict(v) for k, v in lvl.items()}, bytes=by, hits=hits, err=err, leaves=len(names))


def main():
    ap = argparse.ArgumentParser(); ap.add_argument('status'); ap.add_argument('out')
    ap.add_argument('--workers', type=int, default=120); ap.add_argument('--keep', type=int, default=3000)
    ap.add_argument('--chunk', type=int, default=300)
    a = ap.parse_args(); t0 = time.time()
    rows = [r for r in csv.DictReader(open(os.path.join(a.status, 'balls.tsv')), delimiter='\t') if r['verdict'] == 'CLOSED']
    base = json.load(open(os.path.join(a.status, 'summary.json')))['cert_base']
    jobs = []; native = collections.Counter(); native_bytes = 0
    for r in rows:
        d = os.path.join(base, '' if r['source'] == '.' else r['source'], 'b' + r['ball'])
        plane, nat = leaves_of(json.load(open(os.path.join(d, 'tree.json')))['tree'], ([], []))
        native['root' if nat == ['0_0_0_0_0'] else 'below'] += len(nat)
        native_bytes += sum(os.path.getsize(os.path.join(d, 'leaves', n + '.native.json')) for n in nat if os.path.exists(os.path.join(d, 'leaves', n + '.native.json')))
        for i in range(0, len(plane), a.chunk): jobs.append((d, int(r['ball']), plane[i:i + a.chunk]))
    print('%d balls, %d jobs, %d native leaves; listing %.0fs' % (len(rows), len(jobs), sum(native.values()), time.time() - t0), flush=True)
    pat = collections.Counter(); leaf = collections.Counter(); combo = collections.Counter(); by = collections.Counter()
    lvl = collections.defaultdict(collections.Counter); balls_with = collections.defaultdict(set); per_ball = collections.defaultdict(collections.Counter)
    hits = collections.defaultdict(list); err = []; nleaves = 0
    with ProcessPoolExecutor(a.workers) as pool:
        for i, (ball, x) in enumerate(pool.map(work, jobs, chunksize=1)):
            pat.update(x['pat']); leaf.update(x['leaf']); combo.update(x['combo']); by.update(x['bytes']); err += x['err']
            nleaves += x['leaves']; per_ball[ball].update(x['bytes']); per_ball[ball]['leaves'] += x['leaves']
            for k, v in x['lvl'].items(): lvl[k].update(v)
            for k, ns in x['hits'].items():
                balls_with[k].add(ball); per_ball[ball]['leaf:' + k] += len(ns)
                if len(hits[k]) < a.keep: hits[k] += [[ball, n] for n in ns[:a.keep - len(hits[k])]]
            if i % 500 == 0: print('%d/%d %.0fs' % (i, len(jobs), time.time() - t0), flush=True)
    src = {int(r['ball']): r['source'] for r in rows}
    big = sorted(per_ball, key=lambda b: -per_ball[b]['proposal_gz'])[:15]
    res = dict(schema='tc-witness-census-v1', generated=time.strftime('%Y-%m-%d %H:%M'), status=a.status, balls=len(rows),
               plane_leaves=nleaves, native_leaves=dict(native), native_bytes=native_bytes,
               patterns=dict(pat), leaves_using=dict(leaf), balls_using={k: len(v) for k, v in balls_with.items()},
               balls_using_list={k: sorted(v) for k, v in balls_with.items() if len(v) <= 300},
               leaf_kind_sets=dict(combo.most_common()), bytes=dict(by),
               per_level={str(k): dict(v) for k, v in sorted(lvl.items())},
               largest=[dict(ball=b, source=src[b], **per_ball[b]) for b in big],
               per_ball_kinds={str(b): {k[5:]: v for k, v in c.items() if k.startswith('leaf:')} for b, c in sorted(per_ball.items())},
               examples={k: v for k, v in hits.items()}, errors=err[:200], n_errors=len(err), seconds=round(time.time() - t0))
    json.dump(res, open(a.out, 'w'), indent=1)
    print(json.dumps({k: res[k] for k in ('plane_leaves', 'native_leaves', 'patterns', 'leaves_using', 'balls_using', 'bytes', 'n_errors', 'seconds')}))


if __name__ == '__main__': main()
