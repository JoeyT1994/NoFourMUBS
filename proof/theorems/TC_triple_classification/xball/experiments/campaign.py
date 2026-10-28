#!/usr/bin/env python3
"""Restartable full-radius shell campaign with an explicitly bound crossing core.

The append-only journal is authoritative. Snapshots are derived and may be
rebuilt after interruption. Failed shell leaves split into all 16 children;
only strict exterior cells can be discarded. No numerical work runs on import.
"""
import argparse
from collections import deque
from concurrent.futures import ProcessPoolExecutor, wait, FIRST_COMPLETED
import fcntl
from fractions import Fraction
import hashlib
import json
import os
from pathlib import Path
import signal
import sys
import time

HERE = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(HERE))
import geometry

CLOSED = ('CERTIFIED', 'CERTIFIED EMPTY')
ORIGINAL_RADIUS = '0x1.0a3d70a3d70a4p-3'


def digest(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def encoded(value):
    return json.dumps(value, sort_keys=True, separators=(',', ':'), allow_nan=False).encode()


def atomic(path, value):
    temporary = path.with_suffix(path.suffix + '.tmp')
    with temporary.open('wb') as stream:
        stream.write(encoded(value) + b'\n')
        stream.flush()
        os.fsync(stream.fileno())
    os.replace(temporary, path)


def check_hashes(mapping):
    for name, expected in mapping.items():
        path = (HERE / name).resolve()
        path.relative_to(HERE)
        if digest(path) != expected:
            raise ValueError('extension/input hash mismatch: ' + name)


def verified_core(path, binding):
    """Check the separate theorem provenance and every scalar core obligation.

    The returned compatibility view is used only inside the frozen accountant.
    Public output records the extension separately; it is not a base-only proof.
    """
    from flint import arb, ctx
    ctx.prec = 224
    core = json.loads(path.read_text())
    if (core['schema'] != 'tc-xball-crossing-core-v1'
            or core['base_binding'] != binding or core['status'] != 'CERTIFIED'):
        raise ValueError('uncertified or mismatched core')
    check_hashes(core['extension_sources_sha256'])
    radius_name = 'results/crossing_radius_20261028_v3.json'
    if radius_name not in core['extension_sources_sha256']:
        raise ValueError('core does not bind the quantitative radius receipt')
    radius = json.loads((HERE / radius_name).read_text())
    if radius['base_binding'] != binding:
        raise ValueError('radius base mismatch')
    check_hashes(radius['sources_sha256'])
    structure = json.loads((HERE / 'results/crossing_structure_20261028.json').read_text())
    check_hashes(structure['inputs_sha256'])
    if (structure['base_binding'] != binding
            or structure['controller_sha256'] != digest(HERE / 'experiments/crossing_structure.py')):
        raise ValueError('exact structure source mismatch')
    limits = {}
    for pattern in radius['patterns']:
        if pattern['number'] in limits or pattern['status'] != 'CERTIFIED LOCAL PHASE NEIGHBOURHOOD':
            raise ValueError('duplicate or uncertified crossing')
        if pattern['physical_actions_exact'] is not True:
            raise ValueError('physical symmetry not verified')
        value = pattern['success']
        numerator, denominator = value['ambient_radius_fraction']
        R = arb(numerator) / denominator
        rho, eta = 7 * R / 8, R / 8
        if not (arb(value['ambient_radius']) == R and arb(value['kernel_radius']) == rho
                and arb(value['normal_radius']) == eta and rho*rho + eta*eta < R*R):
            raise ValueError('tube radii mismatch')
        h = arb(pattern['hessian_H']) + arb(pattern['third_derivative_H']) * R
        q = arb(pattern['normal_inverse_defect']) + h * R
        if not q < 1:
            raise ValueError('normal contraction failed')
        image = h * rho*rho/2 + q * eta
        t = h * R / (1-q)
        s = h * (1+t*t) / (1-q)
        g2, g3 = arb(pattern['hessian_G']), arb(pattern['third_derivative_G'])
        epsilon = g3*R*(1+t*t) + g2*(2*t+t*t) + (g2+g3*R)*R*s
        if not (image < eta and 2*epsilon < 1):
            raise ValueError('crossing obstruction/inclusion failed')
        limits[pattern['number']] = (rho, eta)
    if set(limits) != {1, 2}:
        raise ValueError('two crossings required')
    if (core['domain'] != 'core subset of original X-ball'
            or core['original_source']['radius_hex'] != ORIGINAL_RADIUS
            or core['subset']['original_radius_hex'] != ORIGINAL_RADIUS
            or core['subset']['radius_ratio'] != [1, 128]
            or core['subset']['radius_hex'] != '0x1.0a3d70a3d70a4p-10'
            or core['stage_c_preconditions']['status'] != 'CERTIFIED'):
        raise ValueError('core domain/guards mismatch')
    patterns = core['patterns']
    if (core['patterns_after_column_filter'] != 16 or len(patterns) != 16
            or {p['number'] for p in patterns} != set(range(16))):
        raise ValueError('incomplete core patterns')
    seen = set()
    for p in patterns:
        if p['status'] != 'CERTIFIED':
            raise ValueError('unclosed core pattern')
        if p.get('kind') == 'quantitative two-anchor crossing':
            number = p['exact_centre_pattern']
            if number in seen:
                raise ValueError('duplicate crossing inclusion')
            seen.add(number)
            rho, eta = limits[number]
            if not (p['shared_gauge'] is True and arb(p['kernel_bound']) < rho
                    and arb(p['normal_bound']) < eta):
                raise ValueError('whole-pattern inclusion failed')
        elif not arb(p['q']) < 1:
            raise ValueError('regular core contraction failed')
    if seen != {1, 2}:
        raise ValueError('missing crossing inclusion')
    view = dict(core, binding=binding, radius_hex=ORIGINAL_RADIUS)
    return view


def extend_core(cover, power=7):
    """Keep all old shell/exterior pieces; partition the old core exactly."""
    geometry.verify_cover(cover)
    if power < cover['core_power']:
        raise ValueError('this operation only shrinks the accounting core')
    leaves = []
    def visit(cell):
        lower, upper = geometry.radial_squares(cell)
        if upper <= Fraction(1, 4**power):
            kind = 'CORE'
        elif lower > 0:
            kind = 'SHELL'
        else:
            for child in geometry.children(cell):
                visit(child)
            return
        leaves.append(dict(id=geometry.identifier(cell), cell=list(cell), kind=kind))
    for leaf in cover['leaves']:
        if leaf['kind'] == 'CORE':
            visit(leaf['cell'])
        else:
            leaves.append(leaf)
    result = dict(cover, core_power=power, core_radius_ratio=[1, 2**power], leaves=leaves)
    result['verification'] = geometry.verify_cover(result)
    return result


def apply_row(leaves, done, row, max_level, binding):
    key = row['id']
    leaf = leaves[key]
    if (leaf['kind'] != 'SHELL' or row['cell'] != leaf['cell']
            or row['binding'] != binding or done.get(key, {}).get('status') in CLOSED):
        raise ValueError('journal result has wrong or already closed domain')
    if row['status'] not in (*CLOSED, 'NOT ESTABLISHED'):
        raise ValueError('unknown result status')
    done[key] = row
    pending = []
    if row['status'] == 'NOT ESTABLISHED' and leaf['cell'][0] < max_level:
        del leaves[key]
        del done[key]
        for cell in geometry.children(leaf['cell']):
            child_key = geometry.identifier(cell)
            lower, upper = geometry.radial_squares(cell)
            kind = ('OUTSIDE' if lower > 1 else
                    'CORE' if upper <= Fraction(1, 4**7) else 'SHELL')
            leaves[child_key] = dict(id=child_key, cell=list(cell), kind=kind)
            if kind == 'SHELL':
                pending.append(child_key)
    return pending


def replay_journal(path, chain, consume, repair=False):
    """Only an incomplete final line is recoverable; other corruption is fatal."""
    count = 0
    if not path.exists():
        return chain, count
    valid_bytes = 0
    with path.open('rb') as stream:
        for line in stream:
            if not line.endswith(b'\n'):
                if not repair:
                    raise ValueError('incomplete journal tail; resume to repair')
                break
            event = json.loads(line)
            calculated = hashlib.sha256(encoded(dict(previous=chain, row=event['row']))).hexdigest()
            if event['previous'] != chain or event['sha256'] != calculated:
                raise ValueError('journal hash chain mismatch')
            consume(event['row'])
            chain = calculated
            count += 1
            valid_bytes += len(line)
    if repair and path.stat().st_size != valid_bytes:
        # Preserve interrupted bytes for audit before truncating the unusable tail.
        with path.open('rb') as stream:
            stream.seek(valid_bytes)
            path.with_suffix('.interrupted-tail-' + str(time.time_ns())).write_bytes(stream.read())
        with path.open('r+b') as stream:
            stream.truncate(valid_bytes)
    return chain, count


def main():
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument('--cover', type=Path, required=True)
    p.add_argument('--receipts', type=Path, required=True)
    p.add_argument('--core', type=Path, required=True)
    p.add_argument('--output', type=Path, required=True)
    p.add_argument('--resume', action='store_true')
    p.add_argument('--workers', type=int, default=8)
    p.add_argument('--max-level', type=int, default=11)
    p.add_argument('--max-new-pieces', type=int, default=10000)
    p.add_argument('--seconds', type=float, default=23*3600)
    args = p.parse_args()
    if not 1 <= args.workers <= 128 or not 9 <= args.max_level <= 20:
        p.error('workers must be 1..128 (one Rusty node), max level 9..20')
    if args.max_new_pieces < 0 or args.seconds < 0:
        p.error('negative work budget')
    args.output.parent.mkdir(parents=True, exist_ok=True)
    lock = args.output.with_suffix('.lock').open('a')
    fcntl.flock(lock, fcntl.LOCK_EX | fcntl.LOCK_NB)
    import run_shells as RS
    import run_xball as RX
    base = RX.binding()
    core = verified_core(args.core, base['id'])
    inputs = {str(f.resolve().relative_to(HERE)): digest(f) for f in
              (args.cover, args.receipts, args.core)}
    manifest = dict(schema='tc-xball-campaign-v1', base=base,
                    controller_sha256=digest(Path(__file__)), inputs_sha256=inputs,
                    core_method='quantitative commuting-crossing extension',
                    max_level=args.max_level)
    manifest_path = args.output.with_suffix('.manifest.json')
    journal_path = args.output.with_suffix('.events.jsonl')
    if args.resume:
        if json.loads(manifest_path.read_text()) != manifest:
            raise ValueError('resume manifest mismatch')
    else:
        if manifest_path.exists() or journal_path.exists() or args.output.exists():
            p.error('fresh output required unless --resume')
        atomic(manifest_path, manifest)
    cover = extend_core(json.loads(args.cover.read_text()))
    leaves = {v['id']: v for v in cover['leaves']}
    rows = [json.loads(line) for line in args.receipts.read_text().splitlines()]
    RS.account(cover, rows, base['id'], core)
    done = {r['id']: r for r in rows}
    attempted = set()
    def consume(row):
        apply_row(leaves, done, row, args.max_level, base['id'])
        attempted.add(row['id'])
    chain, event_count = replay_journal(journal_path,
        hashlib.sha256(encoded(manifest)).hexdigest(), consume, repair=args.resume)
    # Initial cheap-screen failures get a full run, not an immediate subdivision.
    pending = deque(k for k, v in sorted(leaves.items(), key=lambda kv: kv[1]['cell'])
        if v['kind'] == 'SHELL' and done.get(k, {}).get('status') not in CLOSED and k not in attempted)
    stop = False
    def stop_dispatch(signum, frame):
        nonlocal stop
        stop = True
    signal.signal(signal.SIGUSR1, stop_dispatch)
    signal.signal(signal.SIGTERM, stop_dispatch)
    started = time.monotonic()
    submitted = 0
    def snapshot():
        current = dict(cover, leaves=sorted(leaves.values(), key=lambda v: v['cell']))
        current['verification'] = geometry.verify_cover(current)
        rows = sorted(done.values(), key=lambda v: v['cell'])
        result = RS.account(current, rows, base['id'], core)
        if result['status'] == 'CERTIFIED':
            if RX.binding() != base or digest(Path(__file__)) != manifest['controller_sha256']:
                raise ValueError('source changed before certification')
            check_hashes(inputs)
            verified_core(args.core, base['id'])
        result['base_binding'] = result.pop('binding')
        result.update(schema='tc-xball-extended-accounting-v1',
            core_receipt_sha256=digest(args.core), controller_sha256=manifest['controller_sha256'],
            manifest_sha256=hashlib.sha256(encoded(manifest)).hexdigest(),
            journal_head=chain, journal_events=event_count,
            core_method=manifest['core_method'],
            acceptance_dependencies=['QUANTITATIVE_CROSSING.md', 'supplied qualitative crossing theorem',
                                     'frozen Stage C binary64 RIGOUR.md assumptions'],
            whole_original_X_ball_certified=result['status'] == 'CERTIFIED')
        atomic(args.output.with_suffix('.state.json'), dict(result=result, cover=current, rows=rows))
        atomic(args.output, result)
        print(json.dumps({k:result[k] for k in ('status','core_status','shell_required','shell_tested',
                                              'shell_closed','journal_events')}), flush=True)
        return result
    snapshot()
    with journal_path.open('ab') as stream, ProcessPoolExecutor(max_workers=args.workers) as pool:
        active = {}
        while active or (pending and submitted < args.max_new_pieces and not stop
                         and time.monotonic()-started < args.seconds):
            while (pending and submitted < args.max_new_pieces and not stop
                   and time.monotonic()-started < args.seconds and len(active) < args.workers):
                key = pending.popleft()
                active[pool.submit(RS.run_piece, leaves[key], base['id'])] = key
                submitted += 1
            if not active:
                break
            finished, _ = wait(active, timeout=30, return_when=FIRST_COMPLETED)
            for future in finished:
                key = active.pop(future)
                row = future.result()
                if row['id'] != key:
                    raise ValueError('worker result domain mismatch')
                event = dict(previous=chain, row=row)
                event['sha256'] = hashlib.sha256(encoded(event)).hexdigest()
                stream.write(encoded(event) + b'\n')
                stream.flush()
                os.fsync(stream.fileno())
                chain = event['sha256']
                event_count += 1
                pending.extend(apply_row(leaves, done, row, args.max_level, base['id']))
                print(json.dumps({k:row[k] for k in ('id','status','seconds')}), flush=True)
            if finished:
                snapshot()
    if RX.binding() != base or digest(Path(__file__)) != manifest['controller_sha256']:
        raise ValueError('source changed during run')
    check_hashes(inputs)
    verified_core(args.core, base['id'])
    result = snapshot()
    return 0 if result['status'] == 'CERTIFIED' else 2


if __name__ == '__main__':
    raise SystemExit(main())
