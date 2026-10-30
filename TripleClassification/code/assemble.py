"""Assemble the triple results from the raw run rows into results/.

Usage: python assemble.py RAW_DIR OUT_DIR --tc-tree T --atlas A --split-version SPLIT_PY... [--sidecar S...]
Every certifier and split row is validated by receipts.Validator before it counts (audit findings F1-F3): expected
binding, record hash, radius and pattern accounting per row; only a split file's current binding; a re-validated
cover per split; and, for each closed split sub-ball, a Stage C precondition pass (in the row, or in a stagec_guard.py
sidecar).  The cell test is reported but no longer counts towards the final status (its rows are not bound).
RAW_DIR holds the rows of the three runs: nothird_*.jsonl (nothird.py, one row per seed ball), refine25.jsonl
(refine.py: level-4 and level-5 children of the failed level-3 cells of the refined balls) and census_*.jsonl
(census.py, one row per seed ball); optionally tc_*.jsonl (the whole-ball certifier's run.py rows, one per seed ball)
and split_*.jsonl with split_*.json.gz (split.py: the certifier on the sub-balls of a split ball, and the sub-atlas
holding the cover; a sub-ball may itself be split, its sub-atlas naming the parent sub-atlas by hash), and
fixed_*.jsonl (nothird.py rows from the code with exact cell geometry; only these count as cell-test exclusions in the
final status, the earlier rows being kept as the cell-test columns).  Writes
  balls.tsv              one line per seed ball: its final status, the certifier's and the cell test's results, the
                         split if any, and the census at its centre;
  certifier.jsonl.gz     one compact row per ball from the whole-ball certifier (status, reason, pattern counts);
  census.jsonl.gz        the census rows, sorted by ball;
  summary.json           the counts in README.md, and the CPU time of the runs.
A row of refine.py is written only when its whole level is done, so a ball with level-5 rows finished level 5, and a
ball with failed level-4 cells but no level-5 rows was stopped before level 5 (its failed level-4 cells remain).
"""
import time, collections, glob, gzip, hashlib, json, os, sys

N_SEEDS = 2775
ORIGINAL_ATLAS = '33ad9798eb7a5585c486f2427a6b223867a43b308b7f184467b4cd5956bd8baf'


def med(v):
    v = sorted(v)
    return round(v[len(v) // 2], 3) if v else None


def rows(pattern):
    out = []
    for f in sorted(glob.glob(pattern)):
        for line in open(f):
            try:
                out.append(json.loads(line))
            except ValueError:                      # the last line of a cancelled run may be cut
                pass
    return out


def tree_col(x):
    if not x: return ''
    if x['status'] == 'closed':
        return 'closed depth %d (%s; %s leaves)' % (x['depth'], x['route'], x['leaves'])
    return x['status'][:80]


def clean_l2(src, work):
    """The raw level-2 receipts with unparsable (truncated) lines dropped and, for a sub-ball run twice, its closed row
    kept (each row is a separate receipt of the same pinned run on the same seed; the auditor checks every one)."""
    import json as J
    best = {}
    for line in open(src):
        try:
            x = J.loads(line)
        except ValueError:
            continue
        i = x.get('index')
        if i not in best or (best[i]['status'] == 'NOT ESTABLISHED' and x['status'] != 'NOT ESTABLISHED'): best[i] = x
    raw = src[:-len('.jsonl')] + '.json.gz'
    clean = sum(1 for _ in open(src)) == len(best)          # every line parsed, one row per sub-ball: use as is
    if clean: return raw
    base = os.path.join(work, os.path.basename(src)[:-len('.jsonl')])
    if not os.path.exists(base + '.json.gz'): os.symlink(os.path.abspath(raw), base + '.json.gz')
    with open(base + '.jsonl', 'w') as f:
        for i in sorted(best): f.write(J.dumps(best[i]) + '\n')
    return base + '.json.gz'


PIN_ATLAS = '33ad9798eb7a5585c486f2427a6b223867a43b308b7f184467b4cd5956bd8baf'


def trees(a, V, side, RC, side_guard=None, out=None):
    """Every dyadic tree we hold for each ball, tried cheapest first; the first that the pinned auditor verifies, with
    the Stage C preconditions on every closed sub-ball, closes the ball.  Candidates: the level-2 split alone (open
    cells only tangent); the level-2 split plus a reviewed level-3 layer; a selective chain l2..lK."""
    import subprocess, concurrent.futures
    if RC.sha_file(a.tree_auditor) != a.tree_auditor_sha: raise ValueError('tree auditor changed')
    os.makedirs(a.work, exist_ok=True)
    l2s = ','.join(a.split_version)
    cands = collections.defaultdict(list)
    for p in sorted(glob.glob(os.path.join(a.split_dir, 'b*_l2.jsonl'))):
        name = os.path.basename(p)
        if '_s' in name: continue                            # nested splits in their own frames: not part of the tree
        i = int(name[1:].split('_')[0])
        raw = p[:-len('.jsonl')] + '.json.gz'
        cands[i].append(('level 2', [clean_l2(p, a.work)], [l2s]))
        for d in a.l3_dir:
            q = os.path.join(d, 'b%d_l3.json.gz' % i)
            if os.path.exists(q) and os.path.exists(q[:-len('.json.gz')] + '.jsonl'):
                cands[i].append(('level 2 + collaborator level 3', [raw, q], [l2s, a.l3_script]))
    for d in a.chain_dir:
        for p in sorted(glob.glob(os.path.join(d, 'parents', 'b*_l2.json.gz'))):
            i = int(os.path.basename(p)[1:].split('_')[0])
            layers = [p]
            while True:
                k = len(layers) + 2
                q = os.path.join(d, 'children' if k == 3 else 'l%d' % k, 'b%d_l%d.json.gz' % (i, k))
                if not (os.path.exists(q) and os.path.exists(q[:-len('.json.gz')] + '.jsonl')): break
                layers.append(q)
            if len(layers) > 1:
                cands[i].append(('selective chain', layers, [l2s, a.l3_script + ',' + a.deep_script] + [a.deep_script] * (len(layers) - 2)))

    import hashlib as _hl
    cache = {}
    if a.cache and os.path.exists(a.cache):
        try:
            cache = json.load(open(a.cache))
        except ValueError:
            cache = {}
    auditor_sha = RC.sha_file(a.tree_auditor)

    def stamp(paths):
        # change detection only (the auditor itself verifies every hash): path, size and modification time
        out = []
        for p in paths:
            for q in (p, p[:-len('.json.gz')] + '.jsonl') if p.endswith('.json.gz') else (p,):
                st = os.stat(q); out.append([os.path.realpath(q), st.st_size, int(st.st_mtime)])
        return out
    gamma_stamp = stamp(a.gamma) if a.gamma_rules and not a.gamma_dir else []
    per_ball = {}
    plane_ball = {}                                          # PR #4 cell proofs: plane_dir/b<ball>/manifest.json
    if a.plane_dir and a.plane_root:
        for p in glob.glob(os.path.join(a.plane_dir, 'b*', 'manifest.json')):
            plane_ball[int(os.path.basename(os.path.dirname(p))[1:])] = p
    graph_ball = {}                                          # graph_run.py receipts, b<ball>[.part].jsonl
    if 'graph' in a.gamma_rules.split(',') and a.graph_receipts:
        for p in glob.glob(os.path.join(a.graph_receipts, 'b*.jsonl')):
            graph_ball.setdefault(int(os.path.basename(p)[1:].split('.')[0]), []).append(p)
    anc_ball = {}                                            # anchored_run.py receipts, one file per ball
    if 'anchored' in a.gamma_rules.split(',') and a.anchored_dir:
        for p in glob.glob(os.path.join(a.anchored_dir, 'b*.jsonl')):
            anc_ball.setdefault(int(os.path.basename(p)[1:].split('.')[0]), []).append(p)
    if a.gamma_rules and a.gamma_dir:
        # per-ball receipt files already split (rusty/gamma_by_ball.py) plus each chain's own new receipts: hand each
        # auditor its ball's files without reading every receipt again
        for p in glob.glob(os.path.join(a.gamma_dir, 'b*.jsonl')):
            b = int(os.path.basename(p)[1:].split('.')[0])
            per_ball.setdefault(b, []).append(p)
    elif a.gamma_rules:
        # read the (large) gamma receipts once and give each auditor only its ball's records, with only the fields
        # the auditor checks; the receipts themselves stay as they are
        keep = ('subatlas_sha256', 'sub', 'seed_sha256', 'receipt_binding', 'gamma_sha256', 'closed_by_certifier',
                'patterns_total', 'g_lo_H_cell_hex')
        groups = collections.defaultdict(list)
        for gp in a.gamma:
            with open(gp) as f:
                for line in f:
                    try:
                        g = json.loads(line)
                    except ValueError:
                        continue
                    if 'error' in g or g.get('gamma_sha256') != a.gamma_sha: continue
                    c = {k: g[k] for k in keep if k in g}
                    c['patterns'] = [{k: x[k] for k in ('pattern', 'fourier', 'ordering', 'g_up_L_hex', 'g_up_K_hex') if k in x}
                                     for x in g['patterns']]
                    groups[g['ball']].append(c)
        for b, rr in groups.items():
            p = os.path.join(a.work, 'gamma_b%d.jsonl' % b)
            with open(p, 'w') as f:
                for c in rr: f.write(json.dumps(c, separators=(',', ':')) + '\n')
            per_ball[b] = [p]

    def audit(i, route, layers, scripts):
        base = _hl.sha256(json.dumps([auditor_sha, i, route, stamp(layers), scripts]).encode()).hexdigest()
        full = _hl.sha256(json.dumps([base, a.gamma_rules, a.gamma_sha, gamma_stamp, stamp(per_ball.get(i, [])),
                                      a.anchored_sha, a.anchored_runner_sha, stamp(anc_ball.get(i, [])),
                                      a.graph_sha, a.graph_runner_sha, stamp(graph_ball.get(i, [])),
                                      stamp([plane_ball[i]] if i in plane_ball else [])]).encode()).hexdigest()
        hit = cache.get(base)
        if hit and hit.get('status') == 'closed' and hit.get('rule', 'certifier') == 'certifier': return hit
        if full in cache: return cache[full]
        x = audit_fresh(i, route, layers, scripts)
        cache[base if x.get('status') == 'closed' and x.get('rule') == 'certifier' else full] = x
        return x

    def audit_fresh(i, route, layers, scripts):
        extra = (['--gamma'] + per_ball.get(i, []) + ['--gamma-sha', a.gamma_sha, '--gamma-rules', a.gamma_rules,
                  '--gamma-lower', a.gamma_lower, '--gamma-lower-sha', RC.sha_file(a.gamma_lower)]) if a.gamma_rules else []
        if 'anchored' in a.gamma_rules.split(','):
            extra += ['--anchored'] + anc_ball.get(i, []) + ['--anchored-sha', a.anchored_sha,
                                                             '--anchored-runner-sha', a.anchored_runner_sha]
        if i in plane_ball:                                  # replayed during the audit, never trusted as a verdict
            extra += ['--plane', plane_ball[i]]
        if 'graph' in a.gamma_rules.split(','):
            extra += ['--graph'] + graph_ball.get(i, []) + ['--graph-dir', a.graph_dir, '--graph-sha', a.graph_sha,
                                                            '--graph-runner-sha', a.graph_runner_sha]
        root = a.plane_root if i in plane_ball else a.tc_tree  # the plane checker's tree: same native sources and binding
        cp = subprocess.run([sys.executable, a.tree_auditor, '--root', root, '--index', str(i), '--layers'] + layers
                            + ['--scripts'] + scripts + extra + ['--report-open'], capture_output=True, text=True)
        try:
            v = json.loads((cp.stdout.strip().splitlines() or ['{}'])[-1])
        except ValueError:
            v = {}
        if cp.returncode == 0 and v.get('status') == 'OPEN_CELLS':  # every unresolved last-level cell, for open_cells.json
            return dict(status='open below level %d' % (len(layers) + 1), route=route, open_level=v['level'],
                        open_cells=v['unresolved_cells'], layer_files=layers)
        if cp.returncode != 0 or v.get('status') != 'GEOMETRY_AND_RECEIPTS_VERIFIED':
            err = (cp.stderr.strip().splitlines() or [''])[-1]
            return dict(status=('open below level %d' % (len(layers) + 1) if 'unresolved cell at the last level' in err
                                else 'audit failed: ' + err[:100]), route=route)
        missing = 0                                          # Stage C preconditions (audit F2), for closed rows and
        disch = {tuple(x) for x in v.get('discharged', [])}  # for the cells a score or anchored rule closed
        for k, f in enumerate(layers):
            seeds_f, _, sha_f = RC.load_split(f)
            for r in RC.read_jsonl(f[:-len('.json.gz')] + '.jsonl'):
                if (r.get('status') in RC.CLOSED or (2 + k, r['index']) in disch) \
                        and side.get((sha_f, r['index'])) != RC.record_sha(seeds_f[r['index']]) \
                        and (r.get('stage_c_preconditions') or {}).get('guard_sha256') not in V.guards:
                    missing += 1
        if missing: return dict(status='%d closed sub-balls without Stage C preconditions' % missing, route=route)
        g = v.get('gamma') or {}
        rule = ('plane' if g.get('plane') else 'graph' if g.get('graph') else 'anchored' if g.get('anchored') else 'ordering' if g.get('ordering')
                else ('fourier' if g.get('fourier') else 'certifier'))
        x = dict(status='closed', route=route, depth=len(layers) + 1, layers=v['layers'], rule=rule, gamma=g,
                 leaves=sum(x['closed'] for x in v['layers']), tangent_cells=v['tangent_cells'])
        if out: x['certificate'] = certificate(i, route, layers, scripts, rule, disch)
        return x

    def certificate(i, route, layers, scripts, rule, disch=()):
        """One self-contained record per closed ball: every input file by SHA-256, the Stage C rows its closed
        sub-balls use, and (when a score rule closed it) its gamma records; verify_ball.py checks it from this alone."""
        d = os.path.join(out, 'certificates'); os.makedirs(d, exist_ok=True)
        stage = []
        for k, f in enumerate(layers):
            seeds_f, _, sha_f = RC.load_split(f)
            for r in RC.read_jsonl(f[:-len('.json.gz')] + '.jsonl'):
                if (r.get('status') in RC.CLOSED or (2 + k, r['index']) in disch) \
                        and (r.get('stage_c_preconditions') or {}).get('guard_sha256') not in V.guards:
                    stage.append(dict(atlas_sha256=sha_f, index=r['index'], seed_sha256=side[(sha_f, r['index'])],
                                      guard_sha256=side_guard[(sha_f, r['index'])], status='PASS'))
        with open(os.path.join(d, 'b%d.stagec.jsonl' % i), 'w') as f:
            for r in stage: f.write(json.dumps(r, separators=(',', ':')) + '\n')
        gam = None
        if rule != 'certifier' and i in per_ball:
            gam = os.path.join(d, 'b%d.gamma.jsonl' % i)
            with open(gam, 'w') as dst:
                for src in per_ball[i]: dst.write(open(src).read())
        grf = None
        if rule == 'graph':                                  # only the proved graph receipts of this ball
            grf = os.path.join(d, 'b%d.graph.jsonl' % i)
            with open(grf, 'w') as dst:
                for src in graph_ball.get(i, []):
                    for line in open(src):
                        if '"PROVED_PATTERN_EXCLUSION"' in line: dst.write(line)
        anc = None
        if rule in ('anchored', 'graph'):                    # only the established receipts of this ball
            anc = os.path.join(d, 'b%d.anchored.jsonl' % i)
            with open(anc, 'w') as dst:
                for src in anc_ball.get(i, []):
                    for line in open(src):
                        if '"EXCLUDED_GIVEN_INPUT_ENCLOSURES"' in line: dst.write(line)
        files = lambda p: dict(path=os.path.realpath(p), sha256=RC.sha_file(p))
        man = dict(schema='tc-tree-certificate-v1', ball=i, route=route, rule=rule, original_atlas_sha256=PIN_ATLAS,
                   auditor=files(a.tree_auditor),
                   layers=[dict(level=2 + k, subatlas=files(p), receipts=files(p[:-len('.json.gz')] + '.jsonl'),
                                scripts=[files(s) for s in sc.split(',')]) for k, (p, sc) in enumerate(zip(layers, scripts))],
                   stage_c=files(os.path.join(d, 'b%d.stagec.jsonl' % i)), stage_c_guards=sorted(V.guards),
                   gamma=dict(rules=a.gamma_rules, gamma_test_sha256=a.gamma_sha, records=files(gam),
                              lower_bounds=files(a.gamma_lower)) if gam else None,
                   anchored=dict(checker_sha256=a.anchored_sha, runner_sha256=a.anchored_runner_sha,
                                 records=files(anc)) if anc else None,
                   plane=dict(manifest=files(plane_ball[i]), root=os.path.realpath(a.plane_root),
                              cell_files=[files(os.path.join(os.path.dirname(plane_ball[i]), x[k]['path']))
                                          for x in json.load(open(plane_ball[i]))['cells'] for k in ('entry', 'tree')])
                   if rule == 'plane' and i in plane_ball else None,
                   graph=dict(checker_sha256=a.graph_sha, runner_sha256=a.graph_runner_sha, checker_dir=os.path.realpath(a.graph_dir),
                              checker_files=[files(p) for p in sorted(glob.glob(os.path.join(a.graph_dir, '*.py')))],
                              records=files(grf)) if grf else None)
        with open(os.path.join(d, 'b%d.json' % i), 'w') as f: json.dump(man, f, indent=1)
        return os.path.join(d, 'b%d.json' % i)

    rank = {'certifier': 0, 'fourier': 1, 'ordering': 2, 'anchored': 3, 'graph': 4, 'plane': 5}

    def first(i):
        """The tree that closes the ball with the fewest added ingredients: the certifier alone, then the Fourier rule,
        then the ordering rule, then anchored-column exclusions, then graph exclusions; cheapest tree first."""
        seen = best = None
        for route, layers, scripts in cands[i]:
            x = audit(i, route, layers, scripts)
            # a chain whose deepest layer was stopped part-way is audited down to its last complete layer
            while route == 'selective chain' and len(layers) > 2 and \
                    'missing or unexpected rows at level %d' % (len(layers) + 1) in x['status']:
                layers, scripts = layers[:-1], scripts[:-1]
                x = audit(i, route, layers, scripts)
            if x['status'] == 'closed':
                if x['rule'] == 'certifier': return i, x
                if best is None or rank[x['rule']] < rank[best['rule']]: best = x
                continue
            if seen is None or route == 'selective chain': seen = x
        return i, best or seen
    with concurrent.futures.ThreadPoolExecutor(max_workers=a.workers) as pool:
        result = dict(pool.map(first, sorted(cands)))
    if a.cache:
        with open(a.cache + '.new', 'w') as f: json.dump(cache, f)
        os.replace(a.cache + '.new', a.cache)
    return result


def open_cells(tree):
    """The exact open cells of every open ball, from this pass's audits, and the tree verdicts for summary.json, which
    keep only the count of open cells."""
    opened = {str(j): dict(level=tree[j]['open_level'], cells=tree[j]['open_cells'], layers=tree[j]['layer_files'],
                           route=tree[j].get('route')) for j in sorted(tree) if 'open_cells' in tree[j]}
    slim = {}
    for j in sorted(tree):
        v = {k: x for k, x in tree[j].items() if k not in ('open_cells', 'layer_files')}
        if 'open_cells' in tree[j]: v['open_cells'] = len(tree[j]['open_cells'])
        slim[str(j)] = v
    return opened, slim


def main():
    import argparse
    ap = argparse.ArgumentParser()
    ap.add_argument('raw'); ap.add_argument('out')
    ap.add_argument('--tc-tree', required=True); ap.add_argument('--atlas', required=True)
    ap.add_argument('--split-version', nargs='+', required=True); ap.add_argument('--sidecar', nargs='*', default=[])
    ap.add_argument('--tree-auditor', required=True); ap.add_argument('--tree-auditor-sha', required=True)
    ap.add_argument('--l3-script', required=True, help='the reviewed level-3 builder (split_mixed.py)')
    ap.add_argument('--deep-script', required=True, help='the level >= 4 builder (split_select.py)')
    ap.add_argument('--chain-dir', nargs='*', default=[], help='selective chains: parents/b<i>_l2, children/b<i>_l3, l<k>/b<i>_l<k>')
    ap.add_argument('--l3-dir', nargs='*', default=[], help="the collaborator's level-3 layers b<i>_l3 over the raw level-2 splits")
    ap.add_argument('--split-dir', required=True, help='the raw level-2 splits b<i>_l2')
    ap.add_argument('--work', required=True, help='scratch directory for cleaned level-2 receipts')
    ap.add_argument('--workers', type=int, default=4)
    ap.add_argument('--legacy-split', action='store_true', help='also rebuild the old split bookkeeping column (slow)')
    ap.add_argument('--cache', help='JSON file of earlier tree verdicts, reused while every input file is unchanged')
    ap.add_argument('--gamma', nargs='*', default=[], help='gamma_test.py receipts (labelled Fourier score discharges)')
    ap.add_argument('--gamma-dir', help='directory of per-ball gamma receipt files b<ball>.jsonl')
    ap.add_argument('--gamma-sha'); ap.add_argument('--gamma-lower', help='pinned Gamma_F(H) lower bounds (JSON)')
    ap.add_argument('--gamma-rules', default='', help="comma-separated: 'fourier', 'ordering', 'anchored'")
    ap.add_argument('--anchored-dir', help='directory of per-ball anchored_run.py receipt files b<ball>.jsonl')
    ap.add_argument('--anchored-sha', help='pinned SHA-256 of anchored_column_certificate.py')
    ap.add_argument('--anchored-runner-sha', help='pinned SHA-256 of anchored_run.py')
    ap.add_argument('--plane-dir', help="directory of per-ball PR #4 cell proofs, b<ball>/manifest.json")
    ap.add_argument('--plane-root', help='the pinned tree holding the plane checker (PR #4)')
    ap.add_argument('--graph-receipts', help='directory of per-ball graph_run.py receipt files b<ball>[.part].jsonl')
    ap.add_argument('--graph-dir', help='the pinned hardball checker directory')
    ap.add_argument('--graph-sha', help='pinned SHA-256 of hardball/certify_graph.py')
    ap.add_argument('--graph-runner-sha', help='pinned SHA-256 of graph_run.py')
    a = ap.parse_args()
    raw, out = a.raw, a.out
    sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
    import receipts as RC
    V = RC.Validator(a.tc_tree, a.atlas, a.split_version)
    side = {}; side_guard = {}
    for x in (r for p in a.sidecar for r in RC.read_jsonl(p)):
        if x.get('status') == 'PASS' and x.get('guard_sha256') in V.guards:
            side[(x['atlas_sha256'], x['index'])] = x['seed_sha256']; side_guard[(x['atlas_sha256'], x['index'])] = x['guard_sha256']
    os.makedirs(out, exist_ok=True)
    nt = {r['idx']: r for r in rows(os.path.join(raw, 'nothird_*.jsonl'))}
    cen = {r['idx']: r for r in rows(os.path.join(raw, 'census_*.jsonl'))}
    ref = collections.defaultdict(lambda: {4: [], 5: []})
    ref_s = 0.0
    for x in rows(os.path.join(raw, 'refine25.jsonl')):
        ref[x['idx']][x['m']].append(x); ref_s += x.get('s', 0)
    tc = V.native_rows(rows(os.path.join(raw, 'tc_*.jsonl')))
    tree = trees(a, V, side, RC, side_guard, out)                             # ball -> dict(status, depth, layers, route) or failure
    split = {}
    files = {}
    split_s = 0.0
    seeds_of = {}
    # the old split bookkeeping (the reference `split` column): every split sub-atlas on ceph; off by default
    for p in (sorted(glob.glob(os.path.join(raw, 'split_*.json.gz'))) if a.legacy_split else []):
        sub_seeds, info, sha = RC.load_split(p)
        if info is None: continue                            # not a split sub-atlas: no cover to account
        sel, _ = V.select(RC.read_jsonl(p[:-len('.json.gz')] + '.jsonl'), sub_seeds, V.split_bindings(sha))
        res = {}
        for i, x in sel.items():
            split_s += x.get('seconds', 0)
            st = x['status']
            if st in RC.CLOSED:
                pre = x.get('stage_c_preconditions')
                passed = (pre is not None and pre.get('guard_sha256') in V.guards) or \
                    side.get((sha, i)) == RC.record_sha(sub_seeds[i])
                if not passed: st = 'NO STAGE C PRECONDITION'
            res[i] = st
        files[sha] = (p, info, res); seeds_of[sha] = sub_seeds
    children = collections.defaultdict(dict)                 # (sub-atlas sha, sub-ball) -> its own split
    for sha, (p, info, res) in files.items():
        children[info['atlas_sha256']][info['parent']] = sha

    def closed(sha, depth=1):
        """(closed, counts, depth) for one split: every cell built, and every sub-ball certified by the run or closed
        by its own split (a sub-atlas whose atlas_sha256 is this file's hash)."""
        p, info, res = files[sha]
        sts, deepest = collections.Counter(), depth
        parent = (V.seeds[info['parent']] if info['atlas_sha256'] == V.atlas_sha else
                  seeds_of[info['atlas_sha256']][info['parent']] if info['atlas_sha256'] in seeds_of else None)
        why = 'no parent record' if parent is None else V.cover_ok(info, parent, seeds_of[sha])
        if why is not None:
            return False, collections.Counter({'COVER INVALID: ' + why: 1}), deepest
        closed_cells = [tuple(c['cell']) for c in info['cover'] if 'sub' in c and res.get(c['sub']) in RC.CLOSED]
        for c in info['cover']:
            t = RC.tangent_point(c['cell'], info['level'])
            if t is not None and (('sub' not in c) or res.get(c['sub']) not in RC.CLOSED) and \
                    any(RC.cell_contains(o, info['level'], t) for o in closed_cells if o != tuple(c['cell'])):
                sts['TANGENT COVERED'] += 1; continue          # touches the ball at one point, inside a closed cell
            if 'sub' not in c: sts['BUILD FAILED'] += 1; continue
            st = res.get(c['sub'], 'MISSING')
            if st not in ('CERTIFIED', 'CERTIFIED EMPTY') and c['sub'] in children[sha]:
                ok, _, d = closed(children[sha][c['sub']], depth + 1)
                deepest = max(deepest, d)
                if ok: st = 'SPLIT CLOSED'
            sts[st] += 1
        ok = set(sts) <= {'CERTIFIED', 'CERTIFIED EMPTY', 'SPLIT CLOSED', 'TANGENT COVERED'}
        return ok, sts, deepest

    for sha, (p, info, res) in files.items():
        if info['atlas_sha256'] != V.atlas_sha: continue
        ok, sts, d = closed(sha)
        split[info['parent']] = dict(level=info['level'], depth=d, closed=ok, counts=dict(sts))
    status, remaining = {}, {}
    for j in range(N_SEEDS):
        r = nt.get(j)
        if r is None:
            status[j] = ('not_finished', None, 0); continue
        if r['ok']:
            status[j] = ('whole_ball' if r['whole'] else 'cells', None, 0); continue
        lv = {c[0] for c in r['failed_cells']}
        assert len(lv) == 1
        m = lv.pop()
        cells = [c[1:] for c in r['failed_cells']]
        if j in ref:
            f4 = [x['c'] for x in ref[j][4] if x.get('ok') is False]
            f5 = [x['c'] for x in ref[j][5] if x.get('ok') is False]
            assert not any('error' in x for x in ref[j][4] + ref[j][5])
            if not f4:
                status[j] = ('refined_4', None, 0); continue
            if ref[j][5]:
                if not f5:
                    status[j] = ('refined_5', None, 0); continue
                m, cells = 5, f5
            else:
                m, cells = 4, f4
        kind = 'remaining_fine' if m >= 4 else 'remaining_coarse'
        status[j] = (kind, m, len(cells))
        remaining[j] = dict(idx=j, level=m, cells=cells)

    def cen_cols(j):
        c = cen.get(j)
        if c is None: return ['', '', '', '', '', '']
        k = collections.Counter(t['class'] for t in c['triples'])
        return [c['n_unbiased'], len(c['triples']), k['continuous'], k['isolated_fourier'], k['unexplained'],
                '' if c['min_dist'] is None else '%.4f' % c['min_dist']]

    def tcs(j): return tc[j]['status'] if j in tc else ''

    def tcp(j):
        if j not in tc or 'patterns' not in tc[j]: return ''
        k = collections.Counter(p['status'] for p in tc[j]['patterns'])
        return '%d/%d/%d' % (k['CERTIFIED'], k['EXCLUDED'], sum(v for x, v in k.items() if x not in ('CERTIFIED', 'EXCLUDED')))

    def spl(j):
        if j not in split: return ''
        x = split[j]
        return 'L%d depth %d %s %s' % (x['level'], x['depth'], 'closed' if x['closed'] else 'open',
                              ','.join('%s:%d' % (k.replace(' ', '_'), v) for k, v in sorted(x['counts'].items())))

    fixed = {}                                               # the cell test rerun with the fixed code (exact cells)
    for x in rows(os.path.join(raw, 'fixed_*.jsonl')):
        fixed[x['idx']] = fixed.get(x['idx'], False) or bool(x.get('ok'))
    final = {}
    for j in range(N_SEEDS):
        t = tc.get(j, {}).get('status')
        if t == 'CERTIFIED': final[j] = 'classified'
        elif t == 'CERTIFIED EMPTY': final[j] = 'empty'
        elif tree.get(j, {}).get('status') == 'closed':
            final[j] = {'certifier': 'tree', 'fourier': 'tree_fourier', 'ordering': 'tree_ordering', 'anchored': 'tree_anchored',
                        'graph': 'tree_graph', 'plane': 'tree_plane'}[tree[j]['rule']]
        else: final[j] = 'open'

    with open(os.path.join(out, 'balls.tsv'), 'w') as f:
        f.write('\t'.join(['ball', 'r', 'final', 'certifier', 'certifier_patterns', 'split', 'status', 'level',
                           'cells_remaining', 'level3_failed_fraction', 'tree',
                           'census_unbiased', 'census_triples', 'continuous', 'isolated_fourier', 'unexplained',
                           'nearest_triple_dist']) + '\n')
        for j in range(N_SEEDS):
            s, m, k = status[j]
            r = nt.get(j)
            frac = ''
            if r is not None and r['failed_cells'] and r['failed_cells'][0][0] == 3:
                f3 = len(r['failed_cells']); frac = '%.3f' % (f3 / (f3 + r['certified_cells'].get('3', 0)))
            rr = '' if r is None else r['r']
            f.write('\t'.join(map(str, [j, rr, final[j], tcs(j), tcp(j), spl(j), s, '' if m is None else m, k, frac, tree_col(tree.get(j))]
                                   + cen_cols(j))) + '\n')
    with gzip.open(os.path.join(out, 'certifier.jsonl.gz'), 'wt') as f:   # one compact row per ball
        for j in sorted(tc):
            x = tc[j]
            k = collections.Counter(p['status'] for p in x.get('patterns', []))
            f.write(json.dumps(dict(index=j, status=x['status'], reason=x.get('reason', ''), binding=x.get('binding'),
                                    radius_hex=x.get('radius_hex'), seed_sha256=x.get('seed_sha256'),
                                    patterns=dict(k), seconds=round(x.get('seconds', 0), 1)),
                               separators=(',', ':')) + '\n')
    with gzip.open(os.path.join(out, 'census.jsonl.gz'), 'wt') as f:
        for j in sorted(cen): f.write(json.dumps(cen[j], separators=(',', ':')) + '\n')
    cnt = collections.Counter(s for s, _, _ in status.values())
    cls = collections.Counter(t['class'] for c in cen.values() for t in c['triples'])
    summary = dict(
        seed_balls=N_SEEDS, final=dict(collections.Counter(final.values())),
        nearest_triple_median={k: med([cen[j]['min_dist'] for j in final if final[j] == k
                                       and j in cen and cen[j]['min_dist'] is not None])
                               for k in set(final.values())},
        certifier=dict(collections.Counter(x['status'] for x in tc.values())),
        split={str(j): split[j] for j in sorted(split)}, cell_test=dict(cnt),
        tree={str(j): tree[j] for j in sorted(tree)},
        census=dict(balls=len(cen), triples=sum(cls.values()), classes=dict(cls)),
        cpu_hours=dict(nothird=round(sum(r.get('wall_s', 0) for r in nt.values()) / 3600, 1),
                       census=round(sum(c.get('wall_s', 0) for c in cen.values()) / 3600, 1),
                       refine=round(ref_s / 3600, 1),
                       certifier=round(sum(x.get('seconds', 0) for x in tc.values()) / 3600, 1),
                       split=round(split_s / 3600, 1)))
    opened, summary['tree'] = open_cells(tree)
    json.dump(dict(time=time.strftime('%Y-%m-%d %H:%M'), balls=opened), open(os.path.join(out, 'open_cells.json'), 'w'))
    json.dump(summary, open(os.path.join(out, 'summary.json'), 'w'), indent=1)
    print(json.dumps(summary, indent=1))


if __name__ == '__main__':
    main()
