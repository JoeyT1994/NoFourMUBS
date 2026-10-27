"""Same-axis weighted refits of a frozen X-ball cap proposal snapshot.

Construction uses floats and rigorous weighted constants. By default each
returned cap also passes Arb. --no-transfer-replay leaves its new caps
NUMERICAL until the final independent sphere replay.
"""
from __future__ import annotations
import argparse
import copy
import gc
import gzip
import hashlib
import json
import multiprocessing as mp
from pathlib import Path
import time
import numpy as np

import xball_groups_build as G
import edge_wholeball as E
import caps as C
import seedcert as S

_SEARCH = None
_TARGETS = {}
_NO_TRANSFER_REPLAY = False


def one_refit(work):
    index, old = work
    started = time.perf_counter()
    gi = old['group_index']
    group = _SEARCH.groups[gi]
    row = dict(original_index=index, group_index=gi,
               original_radius=old['info']['numerical_radius'])
    try:
        ti = group['target']
        if ti not in _TARGETS:
            _TARGETS[ti] = S.Ball(_SEARCH.data['seed_headers'][ti])
        tick = time.perf_counter()
        exact = E.EdgeTransfer(_SEARCH.model, _TARGETS[ti], group)
        row['weighted_seconds'] = time.perf_counter()-tick
        numeric = G.CachedTransfer(_SEARCH, gi)
        row['basic_curvature'] = numeric.curvA
        numeric.curvA = exact.weighted['weighted_Hessian']
        row['weighted_curvature'] = numeric.curvA
        tick = time.perf_counter()
        proposed = numeric.cap(old['v'], mode='local_sphere')
        row['proposal_seconds'] = time.perf_counter()-tick
        row['fallback'] = None
        if proposed is None:
            proposed = copy.deepcopy(old)
            row['fallback'] = 'no weighted numerical proposal; original cap retained'
        tick = time.perf_counter()
        replay = None if _NO_TRANSFER_REPLAY else C.check_cap(_SEARCH.model, exact, proposed)
        if replay is not None and not replay['ok'] and row['fallback'] is None:
            row['weighted_proposal_failure'] = replay
            proposed = copy.deepcopy(old)
            replay = C.check_cap(_SEARCH.model, exact, proposed)
            row['fallback'] = 'weighted proposal rejected; original cap replayed'
        row['replay_seconds'] = time.perf_counter()-tick
        row['replay'] = replay
        row['transfer_status'] = ('NUMERICAL' if replay is None else
                                  'CERTIFIED' if replay['ok'] else 'FAIL')
        row['radius'] = proposed['info']['numerical_radius']
        row['radius_ratio'] = row['radius']/row['original_radius']
        row['ok'] = replay is None or bool(replay['ok'])
        row['seconds'] = time.perf_counter()-started
        return row, proposed if row['ok'] else None
    except Exception as error:
        row.update(ok=False, error='%s: %s' % (type(error).__name__, error),
                   seconds=time.perf_counter()-started)
        return row, None


def main():
    global _SEARCH, _NO_TRANSFER_REPLAY
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--input', type=Path, default=G.F.B.ROOT/'data/xball_headers.json.gz')
    parser.add_argument('--caps', type=Path, default=G.F.B.ROOT/'results/groups_all_proposal.json')
    parser.add_argument('--out', type=Path, default=G.F.B.ROOT/'results/groups_weighted_proposal.json')
    parser.add_argument('--workers', type=int, default=6)
    parser.add_argument('--checkpoint', type=int, default=500)
    parser.add_argument('--resume', action='store_true')
    parser.add_argument('--no-transfer-replay', action='store_true',
                        help='construct only; final independent full replay remains mandatory')
    args = parser.parse_args()
    if not 1 <= args.workers <= 6:
        parser.error('workers must be 1..6')
    started = time.perf_counter()
    source_bytes, cap_bytes = args.input.read_bytes(), args.caps.read_bytes()
    source_hash = hashlib.sha256(source_bytes).hexdigest()
    cap_hash = hashlib.sha256(cap_bytes).hexdigest()
    data = json.loads(gzip.decompress(source_bytes) if str(args.input).endswith('.gz') else source_bytes)
    original = json.loads(gzip.decompress(cap_bytes) if str(args.caps).endswith('.gz') else cap_bytes)['caps']
    del source_bytes, cap_bytes
    _SEARCH = G.GroupSearch(data)
    _NO_TRANSFER_REPLAY = args.no_transfer_replay
    source_summary = _SEARCH.model['summary']
    rows, accepted = {}, {}
    previous_seconds = 0.0
    if args.resume:
        previous = json.loads(args.out.read_text())
        if (previous['info']['source_input_sha256'] != source_hash or
                previous['info']['original_caps_sha256'] != cap_hash):
            raise ValueError('resume input hashes differ from the frozen checkpoint')
        for row in previous['info']['groups']:
            index = row['original_index']
            if index in rows or original[index]['group_index'] != row['group_index']:
                raise ValueError('malformed resume index or group binding')
            row.setdefault('transfer_status', 'CERTIFIED' if (row.get('replay') or {}).get('ok') else 'FAIL')
            rows[index] = row
        retained_rows = [row for row in previous['info']['groups'] if row['ok']]
        if len(retained_rows) != len(previous['caps']):
            raise ValueError('resume cap and row counts differ')
        for row, cap in zip(retained_rows, previous['caps']):
            if cap['group_index'] != row['group_index']:
                raise ValueError('resume cap/group order differs')
            accepted[row['original_index']] = cap
        previous_seconds = previous['info']['seconds']
    resumed_from = len(rows)
    total = len(original)
    def checkpoint():
        ordered = [rows[index] for index in sorted(rows)]
        ratios = [row['radius_ratio'] for row in ordered if row['ok']]
        failed = [row for row in ordered if not row['ok']]
        certified = sum(row.get('transfer_status') == 'CERTIFIED' for row in ordered)
        numerical = sum(row.get('transfer_status') == 'NUMERICAL' for row in ordered)
        finished = len(rows) == total
        out = dict(format='zc2a-edge-cap-weighted-refits-v1',
                   status=('NUMERICAL' if numerical else
                           'CAP_TRANSFERS_CERTIFIED' if finished and not failed else 'PARTIAL'),
                   coverage_status='NOT ESTABLISHED',
                   caps=[accepted[index] for index in sorted(accepted)],
                   info=dict(completed=len(rows), total=total, failures=failed,
                             certified_transfers=certified, numerical_transfers=numerical,
                             resumed_from=resumed_from, no_transfer_replay=args.no_transfer_replay,
                             fallbacks=sum(row.get('fallback') is not None for row in ordered),
                             groups=ordered, source=source_summary,
                             source_input_sha256=source_hash, original_caps_sha256=cap_hash,
                             seconds=previous_seconds+time.perf_counter()-started,
                             radius_gain_numeric=(dict(min=min(ratios), median=float(np.median(ratios)),
                                                        max=max(ratios)) if ratios else None)))
        temporary = args.out.with_suffix('.tmp')
        args.out.parent.mkdir(parents=True, exist_ok=True)
        temporary.write_text(json.dumps(out, separators=(',', ':')))
        temporary.replace(args.out)
        print(json.dumps(dict(event='weighted_refit_progress', completed=len(rows), total=total,
                              retained=len(accepted), failures=len(failed),
                              certified_transfers=certified, numerical_transfers=numerical,
                              fallbacks=out['info']['fallbacks'],
                              radius_gain_numeric=out['info']['radius_gain_numeric'],
                              seconds=out['info']['seconds'])), flush=True)
    gc.collect()
    gc.freeze()
    work = [(index, cap) for index, cap in enumerate(original) if index not in rows]
    with mp.get_context('fork').Pool(args.workers) as pool:
        for row, cap in pool.imap_unordered(one_refit, work, chunksize=8):
            index = row['original_index']
            rows[index] = row
            if cap is not None:
                accepted[index] = cap
            if len(rows) % args.checkpoint == 0:
                checkpoint()
    checkpoint()
    return 0 if len(accepted) == total else 1


if __name__ == '__main__':
    raise SystemExit(main())
