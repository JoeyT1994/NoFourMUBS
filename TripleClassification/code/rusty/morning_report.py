#!/usr/bin/env python3
"""The morning report: audited counts, each open ball's remaining cells with the reason, and core-hours (no proof role).

  python morning_report.py BASE OUT.md [--since 2026-10-29T15:00]

Reads BASE/status.json and BASE/results_live/open_cells.json (written by the live audit), and per cell the whole-cell
files under BASE/plane_v1/b<ball>/<level>_<cell>/. A cell's reason is, in this order:
- proved, awaiting audit: its replay (or refined tree) certified it, but no audit pass has used it yet;
- failed after refinement: refined.json says NOT_ESTABLISHED;
- search failed, refinement pending: frontier.json says NOT_ESTABLISHED and no refinement has run;
- not yet run: no result.
A ball whose audit failed, or which waits on Stage C rows, is reported with that reason instead of cells.
Core-hours come from sacct (CPU time of this user's jobs since --since), when sacct is available.
"""
import json, os, subprocess, sys, collections

CERT = ('CERTIFIED_EMPTY_DYADIC_CELL', 'CERTIFIED_CLASSIFIED_DYADIC_CELL')


def status(path):
    try: return json.load(open(path)).get('status')
    except (OSError, ValueError): return None


def reason(d):
    if status(os.path.join(d, 'replay.json')) in CERT or status(os.path.join(d, 'refined.json')) in CERT:
        return 'proved, awaiting audit'
    if status(os.path.join(d, 'refined.json')) == 'NOT_ESTABLISHED': return 'failed after refinement'
    if status(os.path.join(d, 'frontier.json')) == 'NOT_ESTABLISHED': return 'search failed, refinement pending'
    return 'not yet run'


def main():
    base, out = sys.argv[1], sys.argv[2]
    since = sys.argv[sys.argv.index('--since') + 1] if '--since' in sys.argv else '2026-10-29T15:00'
    st = json.load(open(os.path.join(base, 'status.json')))
    try: oc = json.load(open(os.path.join(base, 'results_live/open_cells.json')))['balls']
    except (OSError, ValueError, KeyError): oc = {}
    L = ['# Overnight report (%s)' % st.get('time'), '']
    f = st.get('final', {}); opened = st.get('open', {})
    total = sum(f.values()) if f else 0
    L += ['**Audited (live pass %s, %s): %d closed, %d open of %d.**' % (st.get('time'), 'ok' if st.get('ok') else 'FAILED',
          total - f.get('open', 0), f.get('open', 0), total), '', 'Counts: `%s`' % json.dumps(f), '']
    cells_out = {}
    for b in sorted(opened, key=int):
        why = opened[b]
        if b not in oc:
            L.append('- **%s**: %s' % (b, why)); continue
        lv = oc[b]['level']; c = collections.Counter(); rows = []
        for cell in oc[b]['cells']:
            d = os.path.join(base, 'plane_v1', 'b%s' % b, '%d_%s' % (lv, '_'.join(map(str, cell))))
            r = reason(d); c[r] += 1; rows.append(dict(level=lv, cell=cell, reason=r))
        cells_out[b] = rows
        L.append('- **%s**: %d open cells at level %d: %s' % (b, len(rows), lv, ', '.join('%s %d' % kv for kv in c.most_common())))
    try:
        q = subprocess.run(['sacct', '-u', os.environ.get('USER', 'jtindall'), '-S', since, '-X', '-n', '-P', '--format=CPUTimeRAW'],
                           capture_output=True, text=True, timeout=120).stdout
        hours = sum(int(x) for x in q.split() if x.isdigit()) / 3600
        L += ['', 'Core-hours since %s: **%.0f**.' % (since, hours)]
    except (OSError, subprocess.SubprocessError, ValueError):
        L += ['', 'Core-hours: sacct unavailable.']
    L += ['', 'Exact cells (ball, level, coordinates, reason): `%s`.' % (os.path.splitext(out)[0] + '.cells.json')]
    open(out, 'w').write('\n'.join(L) + '\n')
    json.dump(cells_out, open(os.path.splitext(out)[0] + '.cells.json', 'w'))
    print('\n'.join(L))


if __name__ == '__main__': main()
