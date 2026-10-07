#!/usr/bin/env python3
"""Hybrid whole-box certificates: factored signed-mean cover + signed-corner PSD leaves (NoFourMUBS, 7 Oct 2026).

Boxes the signed-mean producer (certify_boxes.py = collaborator's certify_leaves.py with a pinned input file) cannot
close because a node reaches the producer's maximum depth 48 at a degenerate point (R -> 0 with A, B-D, B+D -> 0).
Starting from the producer's own saved state (same partition, splits and closed leaves), this driver continues the
search with one extra leaf rule: a node at depth >= PSD_DEPTH is first offered to the whole-box predicate of
ProvenResults/SignedCornerPSDPrune (strict-D0 exclusion via the PSD conditions q G +/- N >= 0, q = sqrt R); otherwise
the unchanged signed-mean terminal decides, and failing nodes are split on its axis as before.  A depth-48 node that
neither rule closes is kept open ("stuck") without stopping the rest of the box.

Every closed leaf is either a signed-mean leaf (replayed by certify_boxes.terminal) or {'backend': 'psd', ...} with
the predicate's full returned evidence (replayed by calling the predicate again with the same arguments).  The binary
partition is audited with certify_boxes.audit_partition, exactly as in the producer.

  python3 hybrid_close.py --mode certify|replay --unit U --root R [--jobs N] [--cpu S] [--psd-depth D]
    inputs:  R/tail_inputs/U.jsonl (pinned by its sha256 in R/hybrid/U.input.sha256), start states R/hybrid/U/start/
    outputs: R/hybrid/U/states/<id>.json.gz, R/hybrid/U/replay/<id>.json, R/hybrid/U/{certify,replay}.json
"""
import argparse, gzip, hashlib, json, os, sys, time
from concurrent.futures import ProcessPoolExecutor
from multiprocessing import get_context
from fractions import Fraction as Q
from pathlib import Path

ADAPTER = Path(os.environ.get('HYB_ADAPTER', '/mnt/ceph/users/jtindall/nofour_psd/adapter'))
PSDROOT = Path(os.environ.get('HYB_PSDROOT', '/mnt/ceph/users/jtindall/nofour_psd/psdtest'))
PSD_ARGS = dict(extra=True, seed_depth=8, seed_nodes=255, q_depth=8, q_nodes=511)   # predicate defaults
MAXDEPTH = 64          # signed-mean splits stop here; PSD leaves are tried from PSD_DEPTH on (deep stuck nodes close by PSD at depth 49+)
cb = None; predicate = None; _HERE_SHA = None


def sha_bytes(b): return hashlib.sha256(b).hexdigest()


def init(binary):
    global cb, predicate, _HERE_SHA
    sys.path.insert(0, str(ADAPTER)); sys.path.insert(0, str(PSDROOT))
    import certify_boxes as m
    from ProvenResults.SignedCornerPSDPrune.predicate import predicate as pr
    cb, predicate = m, pr
    cb.init(binary, 3, 'linear')
    _HERE_SHA = sha_bytes(Path(__file__).read_bytes())


def jsonable(x):
    return json.loads(json.dumps(x, default=str))


def certify_one(task):
    row, start_path, out_path, cpu, psd_depth = task
    t0 = time.process_time()
    s = json.loads(gzip.decompress(Path(start_path).read_bytes()))
    if s['input'] != row:
        raise ValueError('state input differs from pinned row')
    closed, splits = s['closed'], s['splits']
    pending = list(s['pending']); stuck = []
    cb.audit_partition(closed, pending, splits)
    nodes = psd_tries = psd_ok = 0; reason = 'whole_box_hybrid_cover'
    while pending:
        if time.process_time() - t0 >= cpu:
            reason = 'cpu_budget'; break
        p = pending.pop()
        c, r = cb.geometry(row, p, splits); nodes += 1
        if len(p) >= psd_depth:
            psd_tries += 1
            res = predicate(c, r, **PSD_ARGS)
            if res.get('ok') is True:
                closed[p] = {'ok': True, 'backend': 'psd', 'reason': res.get('reason'), 'psd_args': PSD_ARGS,
                             'evidence': jsonable(res)}
                psd_ok += 1; continue
        cb._LIB.set_budget(max(.001, cpu - (time.process_time() - t0)))
        try:
            q = cb.terminal(c, r)
        except cb.Budget:
            pending.append(p); reason = 'cpu_budget'; break
        if q['ok']:
            closed[p] = q
        elif len(p) >= MAXDEPTH:
            stuck.append(p)
        else:
            splits[p] = q['axis']; pending.extend([p + '1', p + '0'])
    pending += stuck
    cb.audit_partition(closed, pending, splits)
    if not pending:
        reason = 'whole_box_hybrid_cover'
    elif stuck and reason != 'cpu_budget':
        reason = 'stuck_at_depth_48'
    st = dict(s, closed=closed, splits=splits, pending=pending, ok=not pending, hybrid_reason=reason,
              hybrid_driver_sha256=_HERE_SHA, hybrid_psd_depth=psd_depth,
              hybrid_cpu_seconds=time.process_time() - t0, stuck=stuck)
    Path(out_path).parent.mkdir(parents=True, exist_ok=True)
    tmp = Path(str(out_path) + '.tmp')
    with gzip.open(tmp, 'wt', compresslevel=3) as f:
        json.dump(st, f, separators=(',', ':'), allow_nan=False)
    os.replace(tmp, out_path)
    return dict(id=row['id'], ok=not pending, reason=reason, nodes=nodes, psd_tries=psd_tries, psd_ok=psd_ok,
                stuck=len(stuck), pending=len(pending), cpu_seconds=time.process_time() - t0)


def replay_one(task):
    row, state_path, receipt_path = task
    t0 = time.process_time(); raw = Path(state_path).read_bytes()
    s = json.loads(gzip.decompress(raw))
    if s['input'] != row or s['pending'] or s.get('ok') is not True:
        raise ValueError('not a closed certificate')
    cb.audit_partition(s['closed'], [], s['splits'])
    counts = {}
    for p, old in s['closed'].items():
        c, r = cb.geometry(row, p, s['splits'])
        if old.get('backend') == 'psd':
            if old.get('psd_args') != PSD_ARGS:
                raise ValueError('psd arguments differ')
            res = predicate(c, r, **PSD_ARGS); ok = res.get('ok') is True; why = 'psd:' + str(res.get('reason'))
        else:
            if old['order'] != 3 or old.get('backend', 'mean') != 'linear':
                raise ValueError('signed-mean order/backend differs')
            cb._LIB.set_budget(30); q = cb.terminal(c, r); ok = q['ok'] is True; why = q['reason']
        if not ok:
            raise ValueError(f'fresh arithmetic failed {row["id"]} {p}')
        counts[why] = counts.get(why, 0) + 1
    rec = dict(id=row['id'], status='PASS_WHOLE_BOX_HYBRID_REPLAY', leaves=len(s['closed']), methods=counts,
               cpu_seconds=time.process_time() - t0, certificate_sha256=sha_bytes(raw), verifier_sha256=_HERE_SHA,
               signed_mean_binary_sha256=cb._BINARY_SHA, formal_admissions=0)
    Path(receipt_path).parent.mkdir(parents=True, exist_ok=True)
    Path(receipt_path).write_text(json.dumps(rec) + '\n')
    return rec


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--mode', choices=['certify', 'replay'], required=True)
    ap.add_argument('--unit', required=True); ap.add_argument('--root', required=True)
    ap.add_argument('--jobs', type=int, default=32); ap.add_argument('--cpu', type=float, default=1800)
    ap.add_argument('--psd-depth', type=int, default=40)
    a = ap.parse_args()
    R = Path(a.root); U = R / 'hybrid' / a.unit; inp = R / 'tail_inputs' / f'{a.unit}.jsonl'
    raw = inp.read_bytes(); pin = (R / 'hybrid' / f'{a.unit}.input.sha256').read_text().split()[0]
    if sha_bytes(raw) != pin:
        raise ValueError('pinned input hash mismatch')
    rows = [json.loads(l) for l in raw.splitlines()]
    os.environ['INWARD_INPUT'] = str(inp); os.environ['INWARD_INPUT_SHA256'] = pin
    sys.path.insert(0, str(ADAPTER)); import certify_boxes as m
    if a.mode == 'replay':
        import tempfile
        (ADAPTER / 'build').mkdir(exist_ok=True)
        binary = m.build(3, 'linear', fresh=True, build_root=tempfile.mkdtemp(prefix='hyb-replay-', dir=U))
    else:
        binary = m.build(3, 'linear', build_root=U / 'build')
    if a.mode == 'certify':
        tasks = [(r, U / 'start' / f"{r['id']}.json.gz", U / 'states' / f"{r['id']}.json.gz", a.cpu, a.psd_depth) for r in rows]
        fn = certify_one
    else:
        tasks = [(r, U / 'states' / f"{r['id']}.json.gz", U / 'replay' / f"{r['id']}.json") for r in rows
                 if (U / 'states' / f"{r['id']}.json.gz").exists()
                 and json.loads(gzip.decompress((U / 'states' / f"{r['id']}.json.gz").read_bytes())).get('ok') is True]
        fn = replay_one
    out = []; t = time.monotonic()
    with ProcessPoolExecutor(max_workers=a.jobs, mp_context=get_context('spawn'), initializer=init, initargs=(binary,)) as pool:
        for res in pool.map(fn, tasks):
            out.append(res); print(json.dumps(res), flush=True)
    summ = dict(mode=a.mode, unit=a.unit, input_sha256=pin, assigned=len(tasks), results=out, wall_seconds=time.monotonic() - t,
                driver_sha256=sha_bytes(Path(__file__).read_bytes()), psd_args=PSD_ARGS, psd_depth=a.psd_depth,
                scope='Conditional outward whole-box strict-D0 certificates; no Lean admission.')
    (U / f'{a.mode}.json').write_text(json.dumps(summ, indent=1) + '\n')
    print(json.dumps({k: v for k, v in summ.items() if k != 'results'}))


if __name__ == '__main__':
    main()
