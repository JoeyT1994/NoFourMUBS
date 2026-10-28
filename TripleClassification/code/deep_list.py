"""List the NOT ESTABLISHED sub-balls of finished splits, for the next splitting round.

  python deep_list.py SPLIT_DIR OUT.txt [--parents-from FINAL_BALLS.tsv]

Scans SPLIT_DIR for sub-atlases `*.json.gz` with their rows `*.jsonl`.  A sub-atlas is finished when every sub-ball has
a row.  Each NOT ESTABLISHED sub-ball s of a finished sub-atlas A is listed as `A:s`, unless A's split of s already
exists (`<A without .json.gz>_s<s>_l2.json.gz`).  Unfinished sub-atlases are reported, not listed.
"""
import glob, gzip, json, os, sys


def main():
    d, out = sys.argv[1:3]
    lines, unfinished = [], 0
    for sa in sorted(glob.glob(os.path.join(d, '*.json.gz'))):
        stem = sa[:-len('.json.gz')]
        n = len(json.load(gzip.open(sa, 'rt'))['seeds'])
        rows = {}
        if os.path.exists(stem + '.jsonl'):
            for line in open(stem + '.jsonl'):
                try:
                    x = json.loads(line)
                except ValueError:
                    continue
                if x['index'] not in rows or x['status'] != 'NOT ESTABLISHED':
                    rows[x['index']] = x['status']
        if len(rows) < n:
            unfinished += 1; continue
        for s, st in sorted(rows.items()):
            if st == 'NOT ESTABLISHED' and not os.path.exists('%s_s%d_l2.json.gz' % (stem, s)):
                lines.append('%s:%d' % (sa, s))
    open(out, 'w').write('\n'.join(lines) + ('\n' if lines else ''))
    print(json.dumps(dict(listed=len(lines), unfinished_subatlases=unfinished)))


if __name__ == '__main__':
    main()
