#!/usr/bin/env python3
"""Export the patterns no rule has closed, for collaborators without cluster access (no proof role).

  python phantom_export.py ANCHORED_DIR OUT_DIR BALL...

Reads the anchored_run.py receipt files ANCHORED_DIR/b<ball>.jsonl. Each holds one line per pattern that neither the
certifier nor a score receipt closed, with the six column phase radii and the anchored verdict. Writes:
- OUT_DIR/open_cells.jsonl.gz: one line per sub-ball with at least one pattern the anchored check did not exclude:
  ball, level, sub-atlas name and SHA-256, sub index, dyadic cell, record SHA-256, and per pattern its number,
  colours, radii and why it is open ('no narrow pair': fewer than two columns of radius < 0.1; 'not established':
  two narrow columns, but no wide column gave a certificate);
- OUT_DIR/summary.json: per ball and level, the sub-balls and patterns examined, excluded and open by kind;
- OUT_DIR/snapshot_targets.txt: per ball, its deepest level's widest 'no narrow pair' pattern (the largest
  second-smallest radius) and one 'not established' pattern, as 'SUBATLAS_PATH SUB PATTERN NAME'.
"""
import collections, gzip, json, os, sys

B = '/mnt/ceph/users/jtindall/seed_atlas_build/triples_tc'


def subatlas_path(name):
    lv = int(name.split('_l')[1].split('.')[0])
    for d in ('selective', 'selective2'):
        p = os.path.join(B, d, 'children' if lv == 3 else 'l%d' % lv, name)
        if os.path.exists(p): return p
    return None


def main():
    adir, out, balls = sys.argv[1], sys.argv[2], [int(x) for x in sys.argv[3:]]
    os.makedirs(out, exist_ok=True)
    summary, targets = {}, []
    with gzip.open(os.path.join(out, 'open_cells.jsonl.gz'), 'wt') as fo:
        for b in balls:
            subs = collections.defaultdict(dict)
            for line in open(os.path.join(adir, 'b%d.jsonl' % b)):
                try:
                    x = json.loads(line)
                except ValueError:
                    continue
                if 'error' in x: continue
                kind = ('excluded' if x['status'] == 'EXCLUDED_GIVEN_INPUT_ENCLOSURES' else
                        'no narrow pair' if x.get('reason', '').startswith('fewer') else 'not established')
                subs[(x['subatlas'], x['sub'])][x['pattern']] = dict(kind=kind, colours=x.get('pattern_colours'),
                                                                     radii=x.get('radii') or [], record=x['record_sha256'],
                                                                     subatlas_sha256=x.get('subatlas_sha256'))
            per = collections.defaultdict(collections.Counter)
            cells = {}
            for name in sorted({k[0] for k in subs}):
                p = subatlas_path(name)
                info = json.load(gzip.open(p, 'rt'))['info']['split'] if p else {}
                cells[name] = {e['sub']: e['cell'] for e in info.get('cover', [])}
            best = {}
            for (name, sub), pats in sorted(subs.items()):
                lv = int(name.split('_l')[1].split('.')[0])
                c = per[lv]; c['sub-balls'] += 1
                for n, v in pats.items(): c['patterns'] += 1; c[v['kind']] += 1
                left = {n: v for n, v in pats.items() if v['kind'] != 'excluded'}
                if not left: c['sub-balls closed'] += 1; continue
                any_v = next(iter(pats.values()))
                fo.write(json.dumps(dict(ball=b, level=lv, subatlas=name, subatlas_sha256=any_v['subatlas_sha256'], sub=sub,
                                         cell=cells.get(name, {}).get(sub), record_sha256=any_v['record'],
                                         patterns=[dict(pattern=n, colours=v['colours'], radii=v['radii'], open=v['kind'])
                                                   for n, v in sorted(left.items())]), separators=(',', ':')) + '\n')
                for n, v in left.items():
                    r = sorted(v['radii'])
                    key = (lv, v['kind'])
                    score = r[1] if len(r) > 1 else 0
                    if key not in best or score > best[key][0]: best[key] = (score, name, sub, n)
            summary[b] = {str(lv): dict(c) for lv, c in sorted(per.items())}
            for kind in ('no narrow pair', 'not established'):
                lvs = [lv for (lv, k) in best if k == kind]
                if lvs:
                    _, name, sub, n = best[(max(lvs), kind)]
                    targets.append('%s %d %d b%d_l%d_s%d_p%d' % (subatlas_path(name), sub, n, b, max(lvs), sub, n))
    json.dump(summary, open(os.path.join(out, 'summary.json'), 'w'), indent=1)
    open(os.path.join(out, 'snapshot_targets.txt'), 'w').write('\n'.join(targets) + '\n')
    print(len(targets), 'snapshot targets')


if __name__ == '__main__': main()
