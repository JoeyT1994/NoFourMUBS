#!/usr/bin/env python3
"""Place outside whole-cell proofs and transfer receipts (the AntiGravity attempt) into the closer's cell directories,
so that ball_closer.py --assemble builds trees from them. Nothing here is trusted: the closer's final check replays every
leaf and re-checks every transfer, and the audit (assemble.py) checks region transfers against the target's open and
transferred cells.

  python ag_place.py REPLAY TRANSFERS PLANE_V1 TARGETS BALLS OUT_JSON

REPLAY/<ball>/<name>/ holds entry.json, frontier.input.json.gz, frontier.proposal.json.gz and replay.json (ag_replay.py);
TRANSFERS/b<ball>_transfers.json.gz the receipts (if any) (source_ball, box, target_ball, group); PLANE_V1/b<ball>.cc.txt the
ball's root cell directories; TARGETS the closed balls a transfer may enter whole (transfer_targets.txt).
For a piece (level, cell) strictly inside a root, the directory is <root>/kids/<level>_<cell>:
- a certified replay goes there (its four files), unless the directory already holds a certified replay;
- a transfer writes transfer.json ({target, group}, or with region 'image' when the target is not closed) unless the
  directory holds a certified replay, a placed proof or a transfer.json already.
Writes OUT_JSON: what was placed where (and what was skipped, and why)."""
import gzip, json, os, shutil, sys, collections
from pathlib import Path

CERT = ('CERTIFIED_EMPTY_DYADIC_CELL', 'CERTIFIED_CLASSIFIED_DYADIC_CELL', 'CERTIFIED_MINIMUM_TRANSITION_DYADIC_CELL')
FILES = ('entry.json', 'frontier.input.json.gz', 'frontier.proposal.json.gz', 'replay.json')


def certified(d):
    try: return json.load(open(d / 'replay.json')).get('status') in CERT
    except (OSError, ValueError): return False


def put(src, dst):
    tmp = dst.with_name(dst.name + '.%d.new' % os.getpid()); shutil.copyfile(src, tmp); os.replace(tmp, dst)


def main():
    replay, transfers, plane, targets, balls, out = sys.argv[1:7]
    closed = {int(x) for x in open(targets).read().split()}
    log = dict(placed=[], transfers=[], skipped=collections.Counter())
    for ball in (int(b) for b in balls.split(',')):
        roots = {}
        for line in open(Path(plane) / ('b%d.cc.txt' % ball)):
            if line.strip():
                d = Path(line.strip()); e = json.load(open(d / 'entry.json'))
                roots[(e['level'], tuple(e['cell']))] = d
        def where(level, cell):
            hit = [d for (l, c), d in roots.items() if l < level and tuple(x >> (level - l) for x in cell) == c]
            return hit[0] / 'kids' / ('%d_%s' % (level, '_'.join(map(str, cell)))) if len(hit) == 1 else None
        rdir = Path(replay) / str(ball)
        for p in sorted(rdir.iterdir()) if rdir.is_dir() else []:
            if not (p / 'replay.json').is_file(): continue       # a failed search (gamma_sweep.py), or not a cell
            r = json.load(open(p / 'replay.json')); e = json.load(open(p / 'entry.json'))
            if r.get('status') not in CERT: log['skipped']['%d not certified' % ball] += 1; continue
            d = where(e['level'], e['cell'])
            if d is None: log['skipped']['%d outside the roots' % ball] += 1; continue
            if certified(d): log['skipped']['%d already certified here' % ball] += 1; continue
            d.mkdir(parents=True, exist_ok=True)
            for f in FILES: put(p / f, d / f)
            log['placed'].append(str(d))
        tf = Path(transfers) / ('b%d_transfers.json.gz' % ball)
        for it in json.load(gzip.open(tf)) if tf.exists() else []:
            if it['source_ball'] != ball: continue
            level, cell = it['box'][0], it['box'][1:]; d = where(level, cell)
            if d is None: log['skipped']['%d transfer outside the roots' % ball] += 1; continue
            if certified(d) or (d / 'transfer.json').exists(): log['skipped']['%d transfer: cell already settled' % ball] += 1; continue
            t = int(it['target_ball']); spec = dict(target=t, group=it['group'])
            if t not in closed: spec['region'] = 'image'
            d.mkdir(parents=True, exist_ok=True)
            tmp = d / ('transfer.json.%d.new' % os.getpid()); json.dump(spec, open(tmp, 'w')); os.replace(tmp, d / 'transfer.json')
            log['transfers'].append([str(d), t, 'region' in spec])
    log['skipped'] = dict(log['skipped'])
    json.dump(log, open(out, 'w'), indent=1)
    print('placed %d proofs, %d transfers (%d region); skipped %s' % (len(log['placed']), len(log['transfers']),
                                                                       sum(x[2] for x in log['transfers']), log['skipped']))


if __name__ == '__main__': main()
