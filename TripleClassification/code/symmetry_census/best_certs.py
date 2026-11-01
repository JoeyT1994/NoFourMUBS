"""Best onetree certificate per ball (as closer/status_tmp.py: CLOSED first, then smallest proof_bytes); also
balls with only summaries (runs in progress, part summaries). Writes a TSV to argv[1]."""
import glob, json, os, sys
B = '/mnt/ceph/users/jtindall/seed_atlas_build/triples_tc'
best = {}
for base in ('/onetree/native', '/onetree/all', '/onetree/sample', '/onetree/default', '/onetree/hard', '/onetree'):
    for f in glob.glob(B + base + '/b*/check.json'):
        b = os.path.basename(os.path.dirname(f))
        try: c = json.load(open(f)); s_ = json.load(open(os.path.join(os.path.dirname(f), 'summary.json')))
        except Exception: continue
        cand = (c['verdict'] == 'CLOSED', -s_.get('proof_bytes', 0), c, s_, base)
        if b not in best or cand[:2] > best[b][:2]: best[b] = cand
prog = {}
for base in ('/onetree/default', '/onetree/hard', '/onetree/all', '/onetree'):
    for d in glob.glob(B + base + '/b*'):
        b = os.path.basename(d)
        if not os.path.isdir(d) or b in best: continue
        parts = []
        for f in glob.glob(d + '/summary*.json'):
            try: parts.append(json.load(open(f)))
            except Exception: pass
        if parts: prog.setdefault(b, []).append((base, sum(p.get('leaves', 0) for p in parts), sum(p.get('proof_bytes', 0) for p in parts), len(parts)))
with open(sys.argv[1], 'w') as o:
    o.write('ball\tverdict\tscope\tleaves\tnative_leaves\tproof_bytes\tbase\n')
    for b, (ok, _, c, s_, base) in sorted(best.items(), key=lambda x: int(x[0][1:])):
        o.write('%s\t%s\t%s\t%d\t%d\t%d\t%s\n' % (b[1:], c['verdict'], c.get('scope', ''), s_.get('leaves', 0), s_.get('native_leaves', 0), s_.get('proof_bytes', 0), base))
    for b, v in sorted(prog.items(), key=lambda x: int(x[0][1:])):
        for base, lv, pb, n in v:
            o.write('%s\tINPROGRESS\t%d_parts\t%d\t-1\t%d\t%s\n' % (b[1:], n, lv, pb, base))
