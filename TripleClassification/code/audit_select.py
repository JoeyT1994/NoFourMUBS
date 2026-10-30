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
(nearest-point squared distance exactly 1) that lies in some closed cell.  Exact rationals throughout the geometry.

Optional rules (--gamma-rules) also close a certifier-open cell when every pattern the certifier left open is
discharged: by the labelled Fourier score (gamma_test.py receipts, 'fourier' and 'ordering'; GAMMA_PROOF.md), or by an
anchored-column exclusion of that single pattern ('anchored': anchored_run.py receipts of the pinned
anchored_column_certificate.py, bound to the row's record, pattern count and pattern colours; ANCHORED_PROOF.md), or by
a whole-cell graph exclusion of that pattern ('graph': graph_run.py receipts of the collaborator's pinned
hardball/certify_graph.py; GRAPH_PROOF.md).

--plane MANIFEST closes an exact needed cell the rules above leave open by replaying, during this audit, its
complete all-K cell proof (PR #4's plane_audit_manifest.PlaneManifest). Its checker loads the native certifier from
its own tree, so a plane audit runs with --root set to that tree (the native binding check still applies).
The proof rebuilds H for the whole closed cell, re-proves C1 and Stage C and every K pattern, so it needs no row,
receipt or sidecar of ours; a saved verdict is never used (PLANE_PROOF.md)."""
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
def rows(path, accepted=None):
    def bad(x): raise ValueError('nonfinite JSON constant '+x)
    lines=Path(path).read_text().splitlines(); result=[]
    for n,s in enumerate(lines):
        try:
            result.append(json.loads(s,parse_constant=bad))
        except json.JSONDecodeError:
            # only an interrupted final write is tolerated; its sub-ball then needs another row or the audit fails
            need(n==len(lines)-1,'unparsable receipt line')
    # A sub-ball may carry more than one receipt (a resumed run under another accepted runner); each is a full receipt
    # of the same record, so the closed one is kept when there is one, and otherwise one listing all its patterns (a
    # rerun after a timeout). The row kept is checked in full below.
    def rank(x):
        if x.get('status')!='NOT ESTABLISHED': return 2
        return 1 if len(x.get('patterns',[]))==x.get('patterns_after_column_filter',-1) else 0
    # Only receipts bound to an accepted builder count (accepted: the set of accepted binding ids). A sub-ball whose
    # receipts are all bound to unidentified code keeps a placeholder: it is open, closes by no rule that reads a
    # row, and can only be refined or closed by a whole-cell proof, which needs no row.
    out={}
    for x in result:
        i=x['index']
        if accepted is not None and x.get('binding') not in accepted:
            out.setdefault(i,dict(index=i,status='NOT ESTABLISHED',unbound=True)); continue
        if i not in out or out[i].get('unbound') or rank(x)>rank(out[i]): out[i]=x
    return out
def hit(c,level):
    n=2**level
    # exact interval [-1+2c/n, -1+2(c+1)/n] on each axis
    d=[]
    for x in c:
        lo=Fraction(-n+2*x,n); hi=Fraction(-n+2*x+2,n)
        d.append(max(lo, Fraction(0), -hi))
    return sum(x*x for x in d) <= 1

def bound(source_paths, root, atlas, script, guard=None, gamma=None):
    sources={str(p.relative_to(root)):sha(p) for p in source_paths()}
    sources['split.py']=sha(script)
    if guard is not None: sources['stagec_guard.py']=sha(guard)
    if gamma is not None: sources['gamma_test.py']=sha(gamma)
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
    ap.add_argument('--gamma-sha', help='the pinned SHA-256 of gamma_test.py')
    ap.add_argument('--gamma-lower', type=Path, help="the certified lower bounds of Gamma_F(H) per ball (JSON)")
    ap.add_argument('--gamma-lower-sha', help='its pinned SHA-256'); ap.add_argument('--gamma-rules', default='',
                    help="comma-separated: 'fourier' (Gamma_F <= 19/50), 'ordering' (below the ball's Gamma_F(H) bound), "
                         "'anchored' (anchored-column exclusion of single patterns)")
    ap.add_argument('--anchored', type=Path, nargs='*', default=[], help='anchored_run.py receipts')
    ap.add_argument('--anchored-sha', help='the pinned SHA-256 of anchored_column_certificate.py')
    ap.add_argument('--anchored-runner-sha', help='the pinned SHA-256 of anchored_run.py')
    ap.add_argument('--graph', type=Path, nargs='*', default=[], help='graph_run.py receipts')
    ap.add_argument('--graph-dir', type=Path, help='the pinned hardball checker directory (certify_graph.py and its modules)')
    ap.add_argument('--graph-sha', help='the pinned SHA-256 of certify_graph.py')
    ap.add_argument('--graph-runner-sha', help='the pinned SHA-256 of graph_run.py')
    ap.add_argument('--plane', type=Path, help='hash-bound all-K cell proofs, replayed during this audit')
    ap.add_argument('--plane-cache', type=Path, help='skip a replay whose cell, tree, leaf files and checker sources are '
                    'byte-identical to an earlier certified replay (the live loop only; verify_ball.py never passes it)')
    ap.add_argument('--report-open', action='store_true',
                    help='instead of failing on the first unresolved last-level cell, list them all (status OPEN_CELLS)')
    args = ap.parse_args(); root = args.root.resolve(); ctx.prec = 224
    need(len(args.layers) == len(args.scripts) >= 1, 'one script per layer')
    sys.path.insert(0, str(root / 'proof/theorems/TC_triple_classification/family_neighbourhoods'))
    import run as R
    need(R.ROOT == root, 'wrong native root')
    atlas = root / 'proof/seed_atlas/results/seed_atlas_certificate.json.gz'; need(sha(atlas) == PIN, 'wrong original atlas')
    need(R.binding(atlas)['id'] == 'aaab342ca5aca367c5ae9c13500d7dfcf3a6fe13233cfdda1f8c7fec6bf7ecc7', 'wrong native source binding')
    original = load(atlas)['seeds'][args.index]
    paths = [p.absolute() for p in args.layers]          # not resolve(): a cleaned receipt copy sits beside a symlinked sub-atlas
    docs = list(map(load, paths))
    plane = None
    if args.plane:
        sys.path.insert(0, str(root / 'TripleClassification/code'))
        from plane_audit_manifest import PlaneManifest      # requires root to be the plane checker's tree
        # Per cell, not all or nothing: entries whose entry or tree file no longer has the recorded hash are dropped
        # (their cells simply stay open; dropping proofs can only close less). The rest load from a filtered copy
        # beside the manifest, so their relative paths still resolve; the copy is removed when the audit ends.
        doc = json.load(open(args.plane)); keep = []
        for it in doc.get('cells', []):
            fs = [args.plane.parent / it[k]['path'] for k in ('entry', 'tree')]
            if all(f.is_file() and sha(f) == it[k]['sha256'] for f, k in zip(fs, ('entry', 'tree'))): keep.append(it)
        plane_dropped = len(doc.get('cells', [])) - len(keep)
        filtered = args.plane.parent / ('manifest.audit.%d.json' % os.getpid())
        filtered.write_text(json.dumps(dict(doc, cells=keep)))
        import atexit; atexit.register(lambda: filtered.exists() and filtered.unlink())
        try:
            plane = PlaneManifest(filtered, args.index, root)
        except ValueError as e:                     # an unusable manifest closes nothing; the cells stay open
            print('plane manifest not used: %s' % e, file=sys.stderr); plane = None
    pcache = {}
    if plane and args.plane_cache:
        import plane_cache                           # shared with plane_prereplay.py, so the keys are identical
        pcache = plane_cache.load(args.plane_cache)
    plane_cached = []; plane_failed = []

    def plane_key(level, cell):
        entry, tree_path, item = plane.entries[(level, tuple(cell))]
        return plane_cache.key(item, tree_path, json.load(open(args.plane))['checker_sources_sha256'], level, cell)

    def plane_close(level, cell):
        if (level, tuple(cell)) not in plane.entries: return False
        k = plane_key(level, cell) if args.plane_cache else None
        if k and pcache.get(k) == 'certified':
            plane_cached.append([level, list(cell)]); return True
        try:
            ok = plane.close(level, cell)
        except ValueError as e:                     # its files changed or its replay failed: the cell is simply not closed
            plane_failed.append([level, list(cell), str(e)[:80]]); return False
        if ok and k: pcache[k] = 'certified'
        return ok
    bindings = []                                 # a layer may name alternative scripts 'a.py,b.py'; each row must carry
    for p, alts in zip(paths, args.scripts):      # the binding of one of them
        ids = set()
        for s in str(alts).split(','):
            s = Path(s).resolve()
            ids.add(bound(R.source_paths, root, p, s)['id'])
            if (s.parent / 'stagec_guard.py').exists():   # later split.py versions also bind their Stage C guard
                ids.add(bound(R.source_paths, root, p, s, guard=s.parent / 'stagec_guard.py')['id'])
            if (s.parent / 'gamma_test.py').exists():     # score_first_run.py also binds the score it uses
                ids.add(bound(R.source_paths, root, p, s, gamma=s.parent / 'gamma_test.py')['id'])
        bindings.append(ids)
    rowsets = [rows(str(p)[:-len('.json.gz')] + '.jsonl', bid) for p, bid in zip(paths, bindings)]
    rules = {x for x in args.gamma_rules.split(',') if x}
    need(rules <= {'fourier', 'ordering', 'anchored', 'graph'}, 'unknown gamma rule')
    need('graph' not in rules or (args.graph_dir and args.graph_sha and args.graph_runner_sha), 'graph needs the pinned checker, its directory and the runner')
    need(not rules & {'fourier', 'ordering'} or args.gamma_sha, 'gamma rules need --gamma-sha')
    need('anchored' not in rules or (args.anchored_sha and args.anchored_runner_sha), 'anchored needs the pinned checker and runner')
    glow = None
    if 'ordering' in rules:
        need(args.gamma_lower is not None and sha(args.gamma_lower) == args.gamma_lower_sha, 'ordering needs the pinned Gamma_F(H) bounds')
        glow = Fraction(json.load(open(args.gamma_lower))[str(args.index)])
    lsha = {p: sha(p) for p in paths}             # each layer's sub-atlas hash, computed once
    gamma = {}
    for gp in args.gamma:
        for l in open(gp):
            if not any(h in l for h in lsha.values()): continue   # names none of these layers: unused (skip the parse)
            try:
                g = json.loads(l)
            except ValueError:
                continue
            if 'error' in g or g.get('gamma_sha256') != args.gamma_sha: continue
            gamma.setdefault((g['subatlas_sha256'], g['sub']), []).append(g)

    anchored = {}                                 # (sub-atlas sha, sub) -> {pattern: receipt}
    for ap_ in (args.anchored if 'anchored' in rules else []):
        for l in open(ap_):
            if '"EXCLUDED_GIVEN_INPUT_ENCLOSURES"' not in l: continue   # cannot pass the status test below
            try:
                x = json.loads(l)
            except ValueError:
                continue
            if x.get('schema') != 'tc-anchored-column-receipt-v1' or x.get('status') != 'EXCLUDED_GIVEN_INPUT_ENCLOSURES': continue
            if x.get('checker_sha256') != args.anchored_sha or x.get('runner_sha256') != args.anchored_runner_sha: continue
            if x.get('H_model_rebuilt_from_record') is not True: continue
            anchored.setdefault((x['subatlas_sha256'], x['sub']), {}).setdefault(x['pattern'], []).append(x)
    frozen = {}
    graphs = {}                                   # (sub-atlas sha, sub) -> {pattern: [receipts]}
    for gp_ in (args.graph if 'graph' in rules else []):
        for l in open(gp_):
            if '"PROVED_PATTERN_EXCLUSION"' not in l: continue        # cannot pass the status test below
            try:
                x = json.loads(l)
            except ValueError:
                continue
            if x.get('schema') != 'tc-hardballs-graph-certificate-v1' or x.get('status') != 'PROVED_PATTERN_EXCLUSION': continue
            if x.get('runner_sha256') != args.graph_runner_sha or (x.get('dependencies_sha256') or {}).get('certify_graph.py') != args.graph_sha: continue
            graphs.setdefault((x['subatlas_sha256'], x['sub']), {}).setdefault(x['pattern'], []).append(x)
    gdeps = {}

    def graph_ok(x, row, sub, n):
        """A graph receipt excludes pattern n of this row: same record, pattern count and colours, the pinned
        checker's own modules, and its minimum normalized overlap read back positive."""
        pats = row.get('patterns', [])
        if not (n < len(pats) and pats[n].get('number') == n and len(pats) == row.get('patterns_after_column_filter')): return False
        if x.get('record_sha256') != jsonsha(sub) or x.get('patterns_total') != len(pats) or x.get('pattern_colours') != pats[n].get('colors'): return False
        for k, v in x['dependencies_sha256'].items():
            if k not in gdeps: gdeps[k] = sha(args.graph_dir / k) if (args.graph_dir / k).is_file() else None
            if gdeps[k] != v: return False
        return x.get('minimum_normalized_overlap_lower') is not None and arb(x['minimum_normalized_overlap_lower']) > 0

    def anchored_ok(x, row, sub, n):
        """An anchored receipt excludes pattern n of this row: same record, pattern count and pattern colours, the
        frozen tree's own column and normal-form code, and the receipt's Arb inequalities read back as stated."""
        pats = row.get('patterns', [])
        if not (n < len(pats) and pats[n].get('number') == n and len(pats) == row.get('patterns_after_column_filter')): return False
        cols = x.get('pattern_colours')
        if x.get('record_sha256') != jsonsha(sub) or x.get('patterns_total') != len(pats) or cols != pats[n].get('colors'): return False
        c, an = x['column'], x['anchors']
        if not (len(an) == 2 and len({c, *an}) == 3 and all(0 <= j < 6 for j in (c, *an))): return False
        if x['colour'] != cols[c] or x['anchor_colours'] != [cols[j] for j in an]: return False
        for k, v in x['dependencies_sha256'].items():
            if k not in frozen: frozen[k] = sha(root / k) if (root / k).is_file() else None
            if frozen[k] != v: return False
        steps = x.get('steps') or []
        return (bool(steps) and all(arb(t['lower']) > 0 and arb(t['capture_bound']) < arb(t['accepted_radius']) for t in steps)
                and arb(x['transverse_margin']) > 0)

    def pattern_ok(x):
        if x['status'] == 'CERTIFIED':
            need(x.get('kind') == 'balanced order-three symmetry' and x.get('method') == 'averaged moving equation', 'unknown classification method')
            need(arb(x['q']) < 1, 'symmetry bound not strict')

    def discharged(row, sub, layer_sha, i):
        """The rule by which every pattern the certifier left open is discharged, or None: 'fourier' or 'ordering' (the
        score alone), or 'anchored' (some patterns by anchored receipts, any others by the score rules in force)."""
        if not (row.get('c1', {}).get('ok') is True and row.get('normal_form', {}).get('status') == 'CERTIFIED'): return None
        certified = {x['number'] for x in row.get('patterns', []) if x['status'] in ('CERTIFIED', 'EXCLUDED')}
        for x in row.get('patterns', []):
            if x['status'] in ('CERTIFIED', 'EXCLUDED'): pattern_ok(x)
        anc = {n for n, xs in anchored.get((layer_sha, i), {}).items() if any(anchored_ok(x, row, sub, n) for x in xs)}
        grf = {n for n, xs in graphs.get((layer_sha, i), {}).items() if any(graph_ok(x, row, sub, n) for x in xs)}

        def rule(openp, low, below):
            """low: patterns with a score upper bound <= 19/50; below: those under the ordering threshold."""
            score = (low if rules & {'fourier', 'ordering'} else set()) | (below if 'ordering' in rules else set())
            if 'fourier' in rules and openp <= low: return 'fourier'
            if 'ordering' in rules and openp <= low | below: return 'ordering'
            if 'anchored' in rules and openp <= score | anc: return 'anchored'
            if 'graph' in rules and openp <= score | anc | grf: return 'graph'
            return None
        if (anc or grf) and 'patterns_after_column_filter' in row:
            r = rule(set(range(row['patterns_after_column_filter'])) - certified, set(), set())
            if r: return r
        for g in gamma.get((layer_sha, i), []):
            if g.get('seed_sha256') != jsonsha(sub) or g.get('receipt_binding') != row['binding']: continue
            if set(g['closed_by_certifier']) != certified: continue
            if 'patterns_after_column_filter' in row and row['patterns_after_column_filter'] != g['patterns_total']: continue
            openp = set(range(g['patterns_total'])) - certified
            got = {x['pattern']: x for x in g['patterns']}
            if not set(got) <= openp: continue          # a pattern it does not list has no score bound
            # re-derive each discharge exactly from the receipt's binary64 upper bounds (the flags are not used)
            best = {}
            for n in openp & set(got):                  # patterns the receipt does not list have no score bound
                ups = [Fraction(float.fromhex(got[n][k])) for k in ('g_up_L_hex', 'g_up_K_hex') if k in got[n]]
                if ups: best[n] = min(ups)
            # the threshold is the original ball's pinned bound or, if larger, the receipt's bound for this cell
            thr = glow if glow is not None else None
            if thr is not None and 'g_lo_H_cell_hex' in g: thr = max(thr, Fraction(float.fromhex(g['g_lo_H_cell_hex'])))
            low = {n for n, b in best.items() if b <= Fraction(19, 50)}
            below = {n for n, b in best.items() if thr is not None and b < thr}
            r = rule(openp, low, below)
            if r: return r
        return None

    closed = []                                   # (level, cell) of every accepted cell
    target = None; counts = []; live = None; used = {'fourier': 0, 'ordering': 0, 'anchored': 0, 'graph': 0, 'plane': 0}
    disch = []                                    # (level, sub) of cells closed by a rule: they use the certifier's
                                                  # cover too, so they need the Stage C preconditions like closed rows
    for k, (doc, rr, bid, path) in enumerate(zip(docs, rowsets, bindings, paths)):
        level = 2 + k
        info = doc['info']['split']
        if k == 0:
            expected = {c for c in itertools.product(range(4), repeat=4) if hit(c, 2)}
        else:
            # the children of the open cells that meet the closed ball (the same set as filtering every level-L cell
            # by its parent, without enumerating all (2^L)^4 of them)
            # A layer refines the previous layer's certifier-open cells, or (tree_build.py) only those a gamma receipt
            # does not close: its mask must lie between the cells this audit still needs and the certifier-open ones.
            # Soundness needs only live <= trec: every cell still needed is refined. A mask may also hold cells closed
            # since the layer was built (refining a closed cell is harmless), but only cells of the previous layer.
            trec = {tuple(x) for x in info['targeted_parent_cells']}
            need(live <= trec <= prev_cells, 'incorrect target mask at level %d' % level)
            expected = {c for t in trec for c in itertools.product(*[(2 * x, 2 * x + 1) for x in t]) if hit(c, level)}
            if 'parent_subatlas_sha256' in info:      # the previous layer's sub-atlas is immutable; its receipt file is
                need(info['parent_subatlas_sha256'] == sha(paths[k - 1]),   # append-only, so only the mask is checked
                     'layer %d names a different previous layer' % level)
        seeds = geometry(doc, original, level, expected, args.index)
        need(set(rr) == set(range(len(seeds))), 'missing or unexpected rows at level %d' % level)
        layer_sha = lsha[path]
        unresolved = set()                        # the certifier's open cells: the next layer refines all of them
        still = set()                             # those that are also needed and not discharged by a gamma receipt
        for entry in info['cover']:
            i = entry['sub']; row = rr[i]; sub = seeds[i]; cell = tuple(entry['cell'])
            if not row.get('unbound'):
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
                        used[rule] += 1; closed.append((level, cell)); disch.append([level, i])
                    elif plane and plane_close(level, cell):    # its own C1, H, Stage C and K cover: no sidecar needed
                        used['plane'] += 1; closed.append((level, cell))
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
        target = unresolved; live = still; prev_cells = {tuple(e['cell']) for e in info['cover']}
    if plane and args.plane_cache:
        plane_cache.save(args.plane_cache, pcache)
    preport = (dict(plane.report(), cached_cells=plane_cached, failed_cells=plane_failed, dropped_entries=plane_dropped)
               if plane else None)
    last = 2 + len(docs) - 1
    unresolved = []
    for c in sorted(live):
        p = tangent_point(c, last)
        if not (p is not None and any(contains(cc, lv, p) for lv, cc in closed)):
            if not args.report_open: need(False, 'unresolved cell at the last level: %s' % (c,))
            unresolved.append(list(c))
    if unresolved:
        print(json.dumps(dict(status='OPEN_CELLS', ball=args.index, level=last, unresolved_cells=unresolved,
                              layers=counts, gamma=used, discharged=disch, plane=preport)))
        return
    print(json.dumps(dict(status='GEOMETRY_AND_RECEIPTS_VERIFIED', ball=args.index, original_radius=original['r'],
                          layers=counts, tangent_cells=len(live), gamma=used, discharged=disch,
                          plane=preport,
                          bindings=[sorted(b) for b in bindings])))


if __name__ == '__main__': main()
