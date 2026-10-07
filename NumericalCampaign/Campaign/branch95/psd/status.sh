#!/usr/bin/env bash
# hourly status of the brute-force run (run on rusty)
R=/mnt/ceph/users/jtindall/nofour_psd; cd $R; date
squeue -u jtindall -h -o '%j %T' | sort | uniq -c
module load python/3.11.11 2>/dev/null
python3 - <<'PY'
import json, glob, os, time, collections
lv = collections.defaultdict(lambda: [0, 0, 0, 0, 0])
allacc = set(); allrows = set()
for p in glob.glob('done/*.json'):
    d = json.load(open(p)); u = os.path.basename(p)[:-5]
    k = 'main' if u.startswith('shard_') else ('tail1' if u.startswith('tail-') else 'tail%d' % (u.index('tail') + 1))
    x = lv[k]; x[0] += 1; x[1] += d['rows']; x[2] += len(d['accepted']); x[3] += len(d['unresolved']); x[4] += d['replay_exit'] != 0
    allacc |= set(d['accepted'])
    if u.startswith('shard_'): allrows |= set(range(0))
for k in sorted(lv): print(k, 'units %d rows %d accepted %d unresolved %d replay_nonzero %d' % tuple(lv[k]))
man = json.load(open('inputs/MANIFEST.json')); tot = man['rows']
print('main shards done %d of %d; distinct accepted ids %d of %d target' % (len(glob.glob('done/shard_*.json')), len(man['shards']), len(allacc), tot))
now = time.time(); stale = [c for c in glob.glob('claims/*') + glob.glob('tclaims/*') if now - os.path.getmtime(c) > 4 * 3600]
print('claims older than 4h:', len(stale), stale[:5])
PY
grep -il 'traceback' logs/job*_*.out 2>/dev/null | head -3
