#!/usr/bin/env python3
"""One small status file per live pass (read with `cat status.json`; no proof role).

  python3 live_status.py EXIT_CODE SECONDS > status.json

Fields: the pass time and duration, whether assemble_all.sh succeeded (with the error's last line if not), the final
counts, each open ball with its reason, rule receipt tallies (anchored, graph) and this user's job counts by name.
"""
import collections, glob, json, os, subprocess, sys, time

B = '/mnt/ceph/users/jtindall/seed_atlas_build/triples_tc'
rc, secs = int(sys.argv[1]), int(sys.argv[2])
out = dict(time=time.strftime('%Y-%m-%d %H:%M'), pass_seconds=secs, ok=rc == 0)
if rc != 0:
    try: out['error'] = open(os.path.join(B, 'live_err_last.txt')).read().strip().splitlines()[-1][:300]
    except (OSError, IndexError): out['error'] = 'exit code %d' % rc
try:
    s = json.load(open(os.path.join(B, 'results_live/summary.json'))); out['final'] = s['final']
    out['summary_age_minutes'] = round((time.time() - os.path.getmtime(os.path.join(B, 'results_live/summary.json'))) / 60)
except (OSError, ValueError, KeyError): pass
try:
    rows = [l.rstrip('\n').split('\t') for l in open(os.path.join(B, 'results_live/balls.tsv'))]
    h = rows[0]; i_f, i_t = h.index('final'), h.index('tree')
    out['open'] = {r[0]: r[i_t] for r in rows[1:] if r[i_f] == 'open'}
except (OSError, ValueError): pass
# Receipt files are append-only: count only the bytes added since the last pass (offsets kept in status_cache.json).
cpath = os.path.join(B, 'status_cache.json')
try: cache = json.load(open(cpath))
except (OSError, ValueError): cache = {}
tally = collections.Counter()
for kind, pat, key in (('anchored', 'selective/anchored_v1/b*.jsonl', b'"EXCLUDED_GIVEN_INPUT_ENCLOSURES"'),
                       ('graph', 'selective/graph_v1/b*.jsonl', b'"PROVED_PATTERN_EXCLUSION"')):
    for p in glob.glob(os.path.join(B, pat)):
        off, pr, ot = cache.get(p, (0, 0, 0))
        size = os.path.getsize(p)
        if size < off: off, pr, ot = 0, 0, 0                     # rewritten: count again
        if size > off:
            with open(p, 'rb') as f:
                f.seek(off); data = f.read(size - off)
            done = data.rfind(b'\n') + 1                        # whole lines only
            for line in data[:done].splitlines():
                if key in line: pr += 1
                else: ot += 1
            off += done
        cache[p] = (off, pr, ot); tally[kind + '_proved'] += pr; tally[kind + '_other'] += ot
json.dump(cache, open(cpath + '.new', 'w')); os.replace(cpath + '.new', cpath)
out['receipts'] = dict(tally)
try:
    q = subprocess.run(['squeue', '-u', os.environ.get('USER', 'jtindall'), '-h', '-o', '%j %T'], capture_output=True, text=True).stdout
    out['jobs'] = dict(collections.Counter(' '.join((x.split()[0].rstrip('0123456789'), x.split()[1])) for x in q.splitlines() if x.strip()))
except OSError: pass
print(json.dumps(out, indent=1))
