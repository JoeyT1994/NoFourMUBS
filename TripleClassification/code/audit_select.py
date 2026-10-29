#!/usr/bin/env python3
"""Fail-closed audit of a selective refinement chain of one original seed ball (generalising the collaborator's
audit_selective_mixed.py from one refinement layer to any number).

  python audit_select.py --root FROZEN_TREE --index I --layers b<I>_l2.json.gz b<I>_l3.json.gz ... \
         --scripts split.py split_mixed.py split_select.py ...   (a layer may list alternatives: a.py,b.py)

A single layer (level 2 alone) audits a plain level-2 split.
Layer 2 is the full level-2 cover of the original ball.  Each layer k >= 3 contains exactly the level-k cells that meet
the closed ball and whose level-(k-1) parent cell is unresolved in layer k-1 (its `targeted_parent_cells`), and names
the previous layer's files by hash.  Every cell's sub-ball provably covers it (Arb), keeps the original frame and
chart, and every row is bound to its layer's script and sources, the record's hash and radius.  A cell counts as closed
with a CERTIFIED or CERTIFIED EMPTY row whose patterns are all CERTIFIED (strict q < 1, the averaged moving equation)
or EXCLUDED.  The original ball is covered when every cell of every layer is closed or refined by the next layer, and
the last layer's unresolved cells are only tangent ones: a cell meeting the closed unit ball in exactly one point
(nearest-point squared distance exactly 1) that lies in some closed cell.  Exact rationals throughout the geometry."""
import argparse, gzip, hashlib, itertools, json, os, sys
from fractions import Fraction
from pathlib import Path

for name in ('OPENBLAS_NUM_THREADS','MKL_NUM_THREADS','OMP_NUM_THREADS','VECLIB_MAXIMUM_THREADS'):
    os.environ[name] = '1'
from flint import arb, arb_mat, ctx

HERE=Path(__file__).resolve().parent
PIN='33ad9798eb7a5585c486f2427a6b223867a43b308b7f184467b4cd5956bd8baf'

def need(condition, message):
    if not condition: raise ValueError(message)

def sha(path): return hashlib.sha256(Path(path).read_bytes()).hexdigest()
def jsonsha(x): return hashlib.sha256(json.dumps(x,sort_keys=True).encode()).hexdigest()
def load(path):
    with gzip.open(path,'rt') as f: return json.load(f)
def number(s): return float.fromhex(s) if isinstance(s,str) else float(s)
def rows(path):
    def bad(x): raise ValueError('nonfinite JSON constant '+x)
    result=[json.loads(s,parse_constant=bad) for s in Path(path).read_text().splitlines()]
    need(len(result)==len({x['index'] for x in result}),'duplicate rows')
    return {x['index']:x for x in result}
def hit(c,level):
    n=2**level
    # exact interval [-1+2c/n, -1+2(c+1)/n] on each axis
    d=[]
    for x in c:
        lo=Fraction(-n+2*x,n); hi=Fraction(-n+2*x+2,n)
        d.append(max(lo, Fraction(0), -hi))
    return sum(x*x for x in d) <= 1

def bound(source_paths, root, atlas, script, guard=None):
    sources={str(p.relative_to(root)):sha(p) for p in source_paths()}
    sources['split.py']=sha(script)
    if guard is not None: sources['stagec_guard.py']=sha(guard)
    v=dict(schema='tc-native-allk-v1+split',atlas_sha256=sha(atlas),sources=sources,precision=160)
    v['id']=jsonsha(v)
    return v

def geometry(doc,original,level,expected,index):
    info=doc['info']['split']; cover=info['cover']; seeds=doc['seeds']
    need(info['parent']==index and info['level']==level,'bad parent or level')
    need(info['atlas_sha256']==PIN and info['parent_sha256']==jsonsha(original),'bad original atlas binding')
    need(info['parent_r']==original['r'],'bad original radius')
    cs=[tuple(x['cell']) for x in cover]
    need(len(cs)==len(set(cs)) and set(cs)==expected,'incomplete or duplicate geometric cover')
    need(all('error' not in x for x in cover),'failed sub-ball construction')
    need(sorted(x['sub'] for x in cover)==list(range(len(seeds))),'sub-ball indices incomplete')
    m=arb_mat([[arb(number(original['Mth'][4*i+j])) for j in range(4)] for i in range(4)])
    inverse=m.inv(); tau=2*arb.pi(); r=arb(number(original['r']))
    for entry in cover:
        c=entry['cell']; sub=seeds[entry['sub']]
        need(sub['Mth']==original['Mth'] and sub['o']==original['o'] and sub['k']==original['k'], 'frame or chart changed')
        h=Fraction(1,2**level)
        u=[-1+Fraction(2*x+1,2**level) for x in c]
        diff=[]
        for i in range(4):
            raw=arb(number(original['theta0'][i]))-arb(number(sub['theta0'][i]))
            raw+=sum((m[i,j]*r*arb(u[j].numerator)/u[j].denominator for j in range(4)),arb(0))
            k=round(float((raw/tau).mid())); diff.append(raw-k*tau)
        delta=inverse*arb_mat([[x] for x in diff])
        dist2=sum((delta[i,0]*delta[i,0] for i in range(4)),arb(0))
        margin=arb(number(sub['r']))-2*arb(h.numerator)/h.denominator*r
        need(margin>0 and margin*margin>dist2,'sub-ball does not provably cover parent cube cell')
    return seeds


def tangent_point(c, level):
    n = 2 ** level; p = []; d2 = Fraction(0)
    for x in c:
        lo = Fraction(-n + 2 * x, n); hi = Fraction(-n + 2 * x + 2, n)
        y = lo if lo > 0 else hi if hi < 0 else Fraction(0)
        p.append(y); d2 += y * y
    return p if d2 == 1 else None


def contains(c, level, p):
    n = 2 ** level
    return all(Fraction(-n + 2 * x, n) <= y <= Fraction(-n + 2 * x + 2, n) for x, y in zip(c, p))


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--root', required=True, type=Path); ap.add_argument('--index', type=int, required=True)
    ap.add_argument('--layers', type=Path, nargs='+', required=True); ap.add_argument('--scripts', nargs='+', required=True)
    ap.add_argument('--gamma', type=Path, nargs='*', default=[], help='gamma_test.py receipts for cells the certifier left open')
    ap.add_argument('--gamma-sha', help='the pinned SHA-256 of gamma_test.py'); ap.add_argument('--gamma-rules', default='',
                    help="comma-separated: 'fourier' (Gamma_F <= 19/50) and/or 'ordering' (below the ball's Gamma_F(H) bound)")
    args = ap.parse_args(); root = args.root.resolve(); ctx.prec = 224
    need(len(args.layers) == len(args.scripts) >= 1, 'one script per layer')
    sys.path.insert(0, str(root / 'proof/theorems/TC_triple_classification/family_neighbourhoods'))
    import run as R
    need(R.ROOT == root, 'wrong native root')
    atlas = root / 'proof/seed_atlas/results/seed_atlas_certificate.json.gz'; need(sha(atlas) == PIN, 'wrong original atlas')
    need(R.binding(atlas)['id'] == 'aaab342ca5aca367c5ae9c13500d7dfcf3a6fe13233cfdda1f8c7fec6bf7ecc7', 'wrong native source binding')
    original = load(atlas)['seeds'][args.index]
    paths = [p.absolute() for p in args.layers]          # not resolve(): a cleaned receipt copy sits beside a symlinked sub-atlas
    docs = list(map(load, paths)); rowsets = [rows(str(p)[:-len('.json.gz')] + '.jsonl') for p in paths]
    bindings = []                                 # a layer may name alternative scripts 'a.py,b.py'; each row must carry
    for p, alts in zip(paths, args.scripts):      # the binding of one of them
        ids = set()
        for s in str(alts).split(','):
            s = Path(s).resolve()
            ids.add(bound(R.source_paths, root, p, s)['id'])
            if (s.parent / 'stagec_guard.py').exists():   # later split.py versions also bind their Stage C guard
                ids.add(bound(R.source_paths, root, p, s, guard=s.parent / 'stagec_guard.py')['id'])
        bindings.append(ids)
    rules = {x for x in args.gamma_rules.split(',') if x}
    need(rules <= {'fourier', 'ordering'}, 'unknown gamma rule'); need(not rules or args.gamma_sha, 'gamma rules need --gamma-sha')
    gamma = {}
    for gp in args.gamma:
        for l in open(gp):
            try:
                g = json.loads(l)
            except ValueError:
                continue
            if 'error' in g or g.get('gamma_sha256') != args.gamma_sha: continue
            gamma.setdefault((g['subatlas_sha256'], g['sub']), []).append(g)

    def pattern_ok(x):
        if x['status'] == 'CERTIFIED':
            need(x.get('kind') == 'balanced order-three symmetry' and x.get('method') == 'averaged moving equation', 'unknown classification method')
            need(arb(x['q']) < 1, 'symmetry bound not strict')

    def discharged(row, sub, layer_sha, i):
        """The rule ('fourier' or 'ordering') by which every pattern the certifier left open is discharged, or None."""
        if not (row.get('c1', {}).get('ok') is True and row.get('normal_form', {}).get('status') == 'CERTIFIED'): return None
        certified = {x['number'] for x in row.get('patterns', []) if x['status'] in ('CERTIFIED', 'EXCLUDED')}
        for x in row.get('patterns', []):
            if x['status'] in ('CERTIFIED', 'EXCLUDED'): pattern_ok(x)
        for g in gamma.get((layer_sha, i), []):
            if g.get('seed_sha256') != jsonsha(sub) or g.get('receipt_binding') != row['binding']: continue
            if set(g['closed_by_certifier']) != certified: continue
            if 'patterns_after_column_filter' in row and row['patterns_after_column_filter'] != g['patterns_total']: continue
            openp = set(range(g['patterns_total'])) - certified
            got = {x['pattern']: x for x in g['patterns']}
            if set(got) != openp: continue
            if 'fourier' in rules and all(got[n]['fourier'] for n in openp): return 'fourier'
            if 'ordering' in rules and all(got[n]['fourier'] or got[n]['ordering'] for n in openp): return 'ordering'
        return None

    closed = []                                   # (level, cell) of every accepted cell
    target = None; counts = []; live = None; used = {'fourier': 0, 'ordering': 0}
    for k, (doc, rr, bid, path) in enumerate(zip(docs, rowsets, bindings, paths)):
        level = 2 + k
        info = doc['info']['split']
        if k == 0:
            expected = {c for c in itertools.product(range(4), repeat=4) if hit(c, 2)}
        else:
            expected = {c for c in itertools.product(range(2 ** level), repeat=4)
                        if tuple(x // 2 for x in c) in target and hit(c, level)}
            need({tuple(x) for x in info['targeted_parent_cells']} == target, 'incorrect target mask at level %d' % level)
            if 'parent_subatlas_sha256' in info:      # provenance; the target mask above is checked against the layer given
                need(info['parent_subatlas_sha256'] == sha(paths[k - 1]) and
                     info.get('parent_receipts_sha256') == sha(str(paths[k - 1])[:-len('.json.gz')] + '.jsonl'),
                     'layer %d names a different previous layer' % level)
        seeds = geometry(doc, original, level, expected, args.index)
        need(set(rr) == set(range(len(seeds))), 'missing or unexpected rows at level %d' % level)
        layer_sha = sha(path)
        unresolved = set()                        # the certifier's open cells: the next layer refines all of them
        still = set()                             # those that are also needed and not discharged by a gamma receipt
        for entry in info['cover']:
            i = entry['sub']; row = rr[i]; sub = seeds[i]; cell = tuple(entry['cell'])
            need(row['binding'] in bid, 'source binding mismatch at level %d' % level)
            need(row.get('seed_sha256') == jsonsha(sub), 'seed binding mismatch')
            need(row.get('radius_hex') == number(sub['r']).hex(), 'radius mismatch')
            needed = k == 0 or tuple(x // 2 for x in cell) in live
            status = row['status']
            if status == 'NOT ESTABLISHED':
                unresolved.add(cell)
                if needed:
                    rule = discharged(row, sub, layer_sha, i) if rules else None
                    if rule:
                        used[rule] += 1; closed.append((level, cell))
                    else:
                        still.add(cell)
                continue
            need(status in ('CERTIFIED', 'CERTIFIED EMPTY'), 'unknown verdict')
            need(row.get('c1', {}).get('ok') is True and row.get('normal_form', {}).get('status') == 'CERTIFIED', 'missing native assumptions')
            patterns = row['patterns']
            need(len(patterns) == row['patterns_after_column_filter'] and all(x['status'] in ('CERTIFIED', 'EXCLUDED') for x in patterns), 'incomplete pattern proof')
            for x in patterns: pattern_ok(x)
            need((status == 'CERTIFIED') == any(x['status'] == 'CERTIFIED' for x in patterns), 'inconsistent verdict')
            if needed: closed.append((level, cell))
        counts.append(dict(level=level, cells=len(expected), closed=len(expected) - len(unresolved), open=len(unresolved),
                           still_open=len(still)))
        target = unresolved; live = still
    last = 2 + len(docs) - 1
    for c in live:
        p = tangent_point(c, last)
        need(p is not None and any(contains(cc, lv, p) for lv, cc in closed), 'unresolved cell at the last level: %s' % (c,))
    print(json.dumps(dict(status='GEOMETRY_AND_RECEIPTS_VERIFIED', ball=args.index, original_radius=original['r'],
                          layers=counts, tangent_cells=len(live), gamma=used, bindings=[sorted(b) for b in bindings])))


if __name__ == '__main__': main()
