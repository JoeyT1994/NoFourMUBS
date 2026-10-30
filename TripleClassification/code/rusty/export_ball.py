#!/usr/bin/env python3
"""Freeze, audit and pack one ball's complete covering chain for replay off the cluster (no proof role of its own).

  python export_ball.py BALL EXPORT_DIR

1. Finds the ball's selective chain (parents/b<i>_l2, children/b<i>_l3, l<k>/b<i>_l<k>) in selective or selective2,
   exactly as assemble.py does.
2. Freezes a snapshot under EXPORT_DIR/b<i>/: every layer's sub-atlas (immutable) and the whole lines of its
   append-only receipts as of now; the ball's score (gamma_v3), anchored and graph receipts; gamma_lower.json; and
   the Stage C sidecar rows naming any of its layers.
3. Audits the frozen copy with audit_select.py and every rule (fourier, ordering, anchored, graph), using
   --report-open, down to the last layer whose receipts cover every sub-ball. It also checks Stage C for every closed
   or rule-discharged row, as assemble.py and verify_ball.py do.
4. Writes index.json (every file with its SHA-256 and original cluster path, the builders accepted per layer, the
   audit command and result, the exact open cells as (level, cell), unfinished layers and missing Stage C rows),
   then EXPORT_DIR/b<i>.tar.gz, and removes the staging directory by its exact path.
"""
import gzip, hashlib, json, os, shutil, subprocess, sys, tarfile, time

B = '/mnt/ceph/users/jtindall/seed_atlas_build/triples_tc'
G = B + '/selective'
C = B + '/main_split3/TripleClassification/code'
PY = '/mnt/ceph/users/jtindall/venvs/nofourmubs/bin/python'
TC = B + '/frozen_bd87c69'
L2 = [B + '/main_split/TripleClassification/code/split.py', B + '/main_split2/TripleClassification/code/split.py', C + '/split.py']
DEEP = [C + '/' + n for n in ('split_select.py', 'tree_build.py', 'tree_build_v0.py', 'tree_build_v1.py', 'tree_build_v2.py',
                              'score_first_run.py', 'score_first_run_v0.py', 'score_first_run_v1.py')]


def sha(p):
    h = hashlib.sha256()
    with open(p, 'rb') as f:
        for c in iter(lambda: f.read(1 << 22), b''): h.update(c)
    return h.hexdigest()


def freeze(src, dst):
    """Copy the whole lines of an append-only file as of now."""
    size = os.path.getsize(src)
    with open(src, 'rb') as f, open(dst, 'wb') as g:
        left = size; tail = b''
        while left > 0:
            chunk = f.read(min(left, 1 << 22)); left -= len(chunk)
            if not chunk: break
            g.write(chunk); tail = chunk
    with open(dst, 'rb+') as g:                                   # drop a partial final line
        data_end = os.path.getsize(dst)
        if data_end and not tail.endswith(b'\n'):
            g.seek(0); buf = g.read(); g.seek(0); g.truncate(buf.rfind(b'\n') + 1)


def main():
    b, out = int(sys.argv[1]), os.path.abspath(sys.argv[2])
    st = os.path.join(out, 'b%d' % b)
    if os.path.exists(st): raise SystemExit('staging directory exists: ' + st)
    os.makedirs(st + '/layers'); os.makedirs(st + '/rules'); os.makedirs(st + '/stage_c')
    index = dict(schema='tc-upstream-covering-export-v1', ball=b, created=time.strftime('%Y-%m-%dT%H:%M:%S%z'),
                 cluster_base=B, files={}, layers=[], notes=[])

    def add(src, rel, frozen):
        dst = os.path.join(st, rel)
        (freeze if frozen else shutil.copyfile)(src, dst)
        index['files'][rel] = dict(sha256=sha(dst), bytes=os.path.getsize(dst), cluster_path=os.path.realpath(src),
                                   frozen_prefix_of_append_only_file=frozen)
        return dst
    chain = None
    for d in ('selective', 'selective2'):
        if os.path.exists('%s/%s/parents/b%d_l2.json.gz' % (B, d, b)): chain = '%s/%s' % (B, d)
    if chain is None: raise SystemExit('no selective chain for ball %d' % b)
    k = 2; audited = []
    while True:
        sub = 'parents' if k == 2 else 'children' if k == 3 else 'l%d' % k
        sa = '%s/%s/b%d_l%d.json.gz' % (chain, sub, b, k)
        if not (os.path.exists(sa) and os.path.exists(sa[:-8] + '.jsonl')): break
        a = add(sa, 'layers/b%d_l%d.json.gz' % (b, k), False)
        r = add(sa[:-8] + '.jsonl', 'layers/b%d_l%d.jsonl' % (b, k), True)
        n = len(json.load(gzip.open(a, 'rt'))['seeds']); have = set()
        for line in open(r):
            try: have.add(json.loads(line)['index'])
            except (ValueError, KeyError): pass
        complete = have >= set(range(n))
        index['layers'].append(dict(level=k, subatlas='layers/b%d_l%d.json.gz' % (b, k), receipts='layers/b%d_l%d.jsonl' % (b, k),
                                    sub_balls=n, sub_balls_with_rows=len(have & set(range(n))), complete=complete,
                                    accepted_builders=[os.path.relpath(x, B) for x in (L2 if k == 2 else [C + '/split_mixed.py'] + DEEP if k == 3 else DEEP)]))
        if complete and len(audited) == k - 2: audited.append(a)
        k += 1
    unfinished = [x['level'] for x in index['layers'] if not x['complete']]
    if unfinished: index['notes'].append('unfinished layers (rows missing; stopped refinement), not audited: %s' % unfinished)
    rules = {}
    for src, rel in ((G + '/gamma_v3/b%d.jsonl' % b, 'rules/gamma_b%d.jsonl' % b), (G + '/anchored_v1/b%d.jsonl' % b, 'rules/anchored_b%d.jsonl' % b),
                     (G + '/anchored_v1/b%d.chain.jsonl' % b, 'rules/anchored_b%d.chain.jsonl' % b)):
        if os.path.exists(src): rules[rel] = add(src, rel, True)
    for name in sorted(os.listdir(G + '/graph_v1')):
        if name.startswith('b%d.' % b) and name.endswith('.jsonl'):
            rules['rules/graph_' + name] = add(G + '/graph_v1/' + name, 'rules/graph_' + name, True)
    glow = add(G + '/gamma_lower.json', 'rules/gamma_lower.json', False)
    shas = {index['files'][x['subatlas']]['sha256'] for x in index['layers']}
    with open(st + '/stage_c/shas.txt', 'w') as f: f.write('\n'.join(sorted(shas)) + '\n')
    side_files = sorted(B + '/sidecar/' + p for p in os.listdir(B + '/sidecar') if p.startswith('sidecar_') and p.endswith('.jsonl'))
    with open(st + '/stage_c/stagec_b%d.jsonl' % b, 'w') as f:      # rows naming one of these layers (fixed-string grep)
        subprocess.run(['grep', '-h', '-F', '-f', st + '/stage_c/shas.txt'] + side_files, stdout=f)
    os.remove(st + '/stage_c/shas.txt')
    index['files']['stage_c/stagec_b%d.jsonl' % b] = dict(sha256=sha(st + '/stage_c/stagec_b%d.jsonl' % b),
                                                          cluster_path=B + '/sidecar/sidecar_*.jsonl (rows naming these layers)')
    pin = lambda p: sha(p)
    cmd = [PY, '-W', 'ignore', C + '/audit_select.py', '--root', TC, '--index', str(b), '--layers'] + audited + ['--scripts'] + \
          [','.join(L2), ','.join([C + '/split_mixed.py'] + DEEP)][:len(audited)] + [','.join(DEEP)] * max(0, len(audited) - 2) + \
          ['--gamma'] + [rules[r] for r in rules if r.startswith('rules/gamma_')] + ['--gamma-sha', pin(G + '/gamma_test.py'),
           '--gamma-rules', 'fourier,ordering,anchored,graph', '--gamma-lower', glow, '--gamma-lower-sha', pin(glow),
           '--anchored'] + [rules[r] for r in rules if r.startswith('rules/anchored_')] + \
          ['--anchored-sha', pin(C + '/anchored_column_certificate.py'), '--anchored-runner-sha', pin(C + '/anchored_run.py'),
           '--graph'] + [rules[r] for r in rules if r.startswith('rules/graph_')] + \
          ['--graph-dir', C + '/hardball', '--graph-sha', pin(C + '/hardball/certify_graph.py'), '--graph-runner-sha', pin(C + '/graph_run.py'),
           '--report-open']
    t0 = time.time()
    p = subprocess.run(cmd, capture_output=True, text=True, env=dict(os.environ, OMP_NUM_THREADS='1'))
    try: res = json.loads((p.stdout.strip().splitlines() or ['{}'])[-1])
    except ValueError: res = {}
    if p.returncode != 0 or res.get('status') not in ('GEOMETRY_AND_RECEIPTS_VERIFIED', 'OPEN_CELLS'):
        res = dict(status='AUDIT_FAILED', error=(p.stderr.strip().splitlines() or [''])[-1][:300])
    res['seconds'] = round(time.time() - t0)
    index['audit'] = dict(command=[x.replace(st + '/', '<export>/') for x in cmd], result=res)
    # Stage C for closed rows and rule-discharged cells, as assemble.py requires
    sys.path.insert(0, C)
    import receipts as RC
    V = RC.Validator(TC, TC + '/proof/seed_atlas/results/seed_atlas_certificate.json.gz', L2)
    side = {}
    for line in open(st + '/stage_c/stagec_b%d.jsonl' % b):
        try: x = json.loads(line)
        except ValueError: continue
        if x.get('status') == 'PASS' and x.get('guard_sha256') in V.guards: side[(x['atlas_sha256'], x['index'])] = x['seed_sha256']
    disch = {tuple(x) for x in res.get('discharged', [])}; missing = []
    for k_, a in enumerate(audited):
        seeds = json.load(gzip.open(a, 'rt'))['seeds']; ash = sha(a)
        cells = {e['sub']: e['cell'] for e in json.load(gzip.open(a, 'rt'))['info']['split']['cover'] if 'sub' in e}
        for line in open(a[:-8] + '.jsonl'):
            try: r = json.loads(line)
            except ValueError: continue
            if (r.get('status') in ('CERTIFIED', 'CERTIFIED EMPTY') or (2 + k_, r['index']) in disch) and \
                    (r.get('stage_c_preconditions') or {}).get('guard_sha256') not in V.guards and \
                    side.get((ash, r['index'])) != hashlib.sha256(json.dumps(seeds[r['index']], sort_keys=True).encode()).hexdigest():
                missing.append([2 + k_, cells.get(r['index']), r['index']])
    index['stage_c_missing'] = sorted({json.dumps(m) for m in missing})
    index['stage_c_missing'] = [json.loads(m) for m in index['stage_c_missing']]
    index['accepted_stage_c_guards'] = sorted(V.guards)
    index['open_cells'] = [dict(level=res.get('level'), cell=c) for c in res.get('unresolved_cells', [])]
    index['summary'] = dict(audit=res['status'], audited_levels=[2, 1 + len(audited)], open_cells=len(index['open_cells']),
                            unfinished_layers=unfinished, stage_c_missing=len(index['stage_c_missing']),
                            closed=res['status'] == 'GEOMETRY_AND_RECEIPTS_VERIFIED' and not index['stage_c_missing'])
    json.dump(index, open(st + '/index.json', 'w'), indent=1)
    tgz = os.path.join(out, 'b%d.tar.gz' % b)
    with tarfile.open(tgz, 'w:gz', compresslevel=6) as t: t.add(st, arcname='b%d' % b)
    shutil.rmtree(st)
    meta = dict(ball=b, archive=os.path.basename(tgz), sha256=sha(tgz), bytes=os.path.getsize(tgz), files=len(index['files']) + 1,
                summary=index['summary'])
    json.dump(dict(meta, index=index), open(os.path.join(out, 'b%d.index.json' % b), 'w'), indent=1)
    print(json.dumps(meta))


if __name__ == '__main__': main()
