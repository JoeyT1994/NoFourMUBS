"""Complete interval/exact replay of an X-ball sphere cap certificate.

The parallel route shares cert.edgecaps.check_edge_cap with the serial
production checker. Each worker independently rebuilds the source model;
all caps are checked once, and exact sphere coverage is checked once in the
parent. A PASS requires unchanged input/code hashes and every required
interval or exact inequality. No construction diagnostic is trusted.
"""
from __future__ import annotations
import argparse
import copy
from concurrent.futures import ProcessPoolExecutor, ThreadPoolExecutor, as_completed
import gzip
import hashlib
import importlib.metadata
import json
import multiprocessing as mp
import os
from pathlib import Path
import sys
import time

ROOT = Path(__file__).resolve().parent
for directory in (ROOT/'atlas', ROOT/'cert'):
    sys.path.insert(0, str(directory))
os.environ.setdefault('OPENBLAS_NUM_THREADS', '1')
os.environ.setdefault('OMP_NUM_THREADS', '1')

import cap_coverage as COV
import edgecaps as EC
import edge_wholeball as EW
import seedcert as S


def load(path):
    opener = gzip.open if str(path).endswith('.gz') else open
    with opener(path, 'rt') as handle:
        return json.load(handle)


def load_exact(path, expected_digest):
    """Hash and parse exactly the same immutable byte string.

    Workers must not certify a transiently rewritten input even if the
    original path is restored before the final parent binding check.
    """
    raw = Path(path).read_bytes()
    S.need(hashlib.sha256(raw).hexdigest() == expected_digest,
           'replay input bytes differ from the parent binding')
    decoded = gzip.decompress(raw) if str(path).endswith('.gz') else raw
    return json.loads(decoded)


def digest(path):
    answer = hashlib.sha256()
    with open(path, 'rb') as handle:
        for chunk in iter(lambda: handle.read(1 << 20), b''):
            answer.update(chunk)
    return answer.hexdigest()


def binding(input_path, caps_path):
    source_files = sorted(list((ROOT/'cert').glob('*.py')) +
                          list((ROOT/'cert').glob('*.json')) +
                          list((ROOT/'atlas').glob('*.py')) +
                          [Path(__file__).resolve()])
    return dict(input_sha256=digest(input_path), certificate_sha256=digest(caps_path),
                sources={str(path.relative_to(ROOT)): digest(path) for path in source_files})


class LazyTargets:
    """Parse only the target seed headers actually named by checked caps."""
    def __init__(self, records):
        self.records, self.cache = records, {}

    def __len__(self):
        return len(self.records)

    def __getitem__(self, index):
        if index not in self.cache:
            self.cache[index] = S.Ball(self.records[index])
        return self.cache[index]


_WORK = None


def init_worker(input_path, precision, expected_digest):
    global _WORK
    data = load_exact(input_path, expected_digest)
    S.need(isinstance(data.get('edge'), list) and len(data['edge']) == 1,
           'replay expects exactly one X-ball source')
    source = data['edge'][0]
    model = EW.edge_model(source, prec=precision)
    _WORK = dict(model=model, source=source, groups=source['transfers'],
                 seeds=LazyTargets(data['seed_headers']), transfers={})


def run_shard(number, work):
    started = time.perf_counter()
    results, failed = [], []
    previous_group = object()
    seen_groups = set()
    for position, (index, cap) in enumerate(work):
        # make_shards keeps every group's caps contiguous.  Retain only the
        # active group's Arb matrices; thousands of dormant transfers can
        # otherwise dominate the memory of six independent workers.
        gi = cap.get('group_index') if isinstance(cap, dict) else None
        if gi != previous_group:
            _WORK['transfers'].clear()
            previous_group = gi
        if type(gi) is int:
            seen_groups.add(gi)
        try:
            result = EC.check_edge_cap(_WORK['model'], _WORK['seeds'], _WORK['groups'], cap,
                                       transfer_cache=_WORK['transfers'], index=index)
            results.append(dict(index=index, group_index=cap['group_index'], **result))
        except Exception as error:
            failed.append(dict(index=index, error='%s: %s' % (type(error).__name__, error)))
        if (position + 1) % 250 == 0:
            print(json.dumps(dict(event='replay_progress', shard=number,
                                  completed=position+1, total=len(work), failures=len(failed),
                                  seconds=time.perf_counter()-started)), flush=True)
    return dict(shard=number, results=results, failures=failed,
                groups=len(seen_groups), targets=len(_WORK['seeds'].cache),
                source=_WORK['model']['summary'], seconds=time.perf_counter()-started)


def make_shards(caps, count):
    by_group = {}
    for index, cap in enumerate(caps):
        # Malformed descriptors are still handed to the checker. The key is
        # scheduling only and never determines an acceptance verdict.
        gi = cap.get('group_index') if isinstance(cap, dict) else None
        key = gi if type(gi) is int else ('malformed', index)
        by_group.setdefault(key, []).append((index, cap))
    shards = [[] for _ in range(count)]
    for items in sorted(by_group.values(), key=len, reverse=True):
        shard = min(shards, key=len)
        shard.extend(items)
    return [shard for shard in shards if shard]


def check_coverage_job(cap_list, certificate):
    """Pure integer coverage, independent of every worker's Arb context."""
    started = time.perf_counter()
    try:
        result = COV.verify_coverage([{'v': cap['v'], 'h': cap['h']} for cap in cap_list],
                                     certificate.get('coverage') or {})
    except Exception as error:
        result = dict(passed=False, covers=False,
                      error='%s: %s' % (type(error).__name__, error))
    return result, time.perf_counter()-started


def mutation_tests(input_path, certificate, precision, expected_digest):
    init_worker(input_path, precision, expected_digest)
    first = certificate['caps'][0]
    results = []
    for name, edit in [('enlarged cap', 'h'), ('tampered witness', 's')]:
        changed = copy.deepcopy(first)
        if edit == 'h':
            h = changed['h']
            h = float.fromhex(h) if isinstance(h, str) else float(h)
            changed['h'] = float(h/2).hex()
        else:
            changed['s'] = 0
        try:
            EC.check_edge_cap(_WORK['model'], _WORK['seeds'], _WORK['groups'], changed,
                              transfer_cache=_WORK['transfers'])
            results.append(dict(test=name, rejected=False, changed_field=edit, changed_value=changed[edit]))
        except Exception as error:
            results.append(dict(test=name, rejected=True, changed_field=edit, changed_value=changed[edit],
                                reason='%s: %s' % (type(error).__name__, error)))
    for gi in range(min(20, len(_WORK['groups']))):
        if gi == first['group_index']:
            continue
        changed = copy.deepcopy(first)
        changed['group_index'] = gi
        try:
            EC.check_edge_cap(_WORK['model'], _WORK['seeds'], _WORK['groups'], changed,
                              transfer_cache=_WORK['transfers'])
        except Exception as error:
            results.append(dict(test='wrong group_index', original_group=first['group_index'],
                                changed_group=gi, rejected=True,
                                reason='%s: %s' % (type(error).__name__, error)))
            break
    else:
        results.append(dict(test='wrong group_index', rejected=False,
                            reason='all tested alternative descriptors also certified this cap'))
    geometry = [{'v': cap['v'], 'h': cap['h']} for cap in certificate['caps'][1:]]
    dropped = COV.verify_coverage(geometry, certificate.get('coverage') or {})
    results.append(dict(test='dropped cap', dropped_index=0,
                        rejected=not (dropped.get('passed') and dropped.get('covers')), replay=dropped))
    return results


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--input', type=Path, default=ROOT/'data/xball_headers.json.gz')
    parser.add_argument('--caps', type=Path, required=True)
    parser.add_argument('--receipt', type=Path, default=ROOT/'results/xball_replay.json')
    parser.add_argument('--workers', type=int, default=6)
    parser.add_argument('--precision', type=int, default=224)
    parser.add_argument('--negative-tests', action='store_true')
    args = parser.parse_args()
    if not 1 <= args.workers <= 6 or args.precision < 128:
        parser.error('workers must be 1..6 and precision at least 128')
    started = time.perf_counter()
    before = binding(args.input, args.caps)
    certificate = load_exact(args.caps, before['certificate_sha256'])
    cap_list = certificate.get('caps')
    S.need(isinstance(cap_list, list) and bool(cap_list), 'empty or malformed cap list')
    summary = dict(status='NOT ESTABLISHED', caps=len(cap_list), workers=args.workers,
                   precision=args.precision, failures=[], cap_results=[], sources=[])
    transfer_started = time.perf_counter()
    if args.workers == 1:
        data = load_exact(args.input, before['input_sha256'])
        S.need(isinstance(data.get('edge'), list) and len(data['edge']) == 1,
               'replay expects exactly one X-ball source')
        source = data['edge'][0]
        try:
            result = EC.check_edge_caps(source, LazyTargets(data['seed_headers']), source['transfers'],
                                        certificate, precision=args.precision, return_details=True)
            summary['cap_results'] = result.pop('cap_results')
            summary['coverage'] = result['coverage']
            summary['sources'] = [result['source_contraction']]
            summary['transfer_seconds'] = result['transfer_seconds']
            summary['coverage_seconds'] = result['coverage_seconds']
        except Exception as error:
            summary['failures'].append(dict(stage='serial_replay',
                                           error='%s: %s' % (type(error).__name__, error)))
    else:
        shards = make_shards(cap_list, args.workers)
        # Coverage uses Python integers only; run it while the parent would
        # otherwise wait for the six independent Arb worker processes.
        with ThreadPoolExecutor(max_workers=1) as coverage_pool:
            coverage_future = coverage_pool.submit(check_coverage_job, cap_list, certificate)
            with ProcessPoolExecutor(max_workers=args.workers, mp_context=mp.get_context('spawn'),
                                     initializer=init_worker,
                                     initargs=(str(args.input), args.precision, before['input_sha256'])) as pool:
                futures = [pool.submit(run_shard, index, shard) for index, shard in enumerate(shards)]
                for future in as_completed(futures):
                    try:
                        result = future.result()
                        summary['cap_results'].extend(result['results'])
                        summary['failures'].extend(result['failures'])
                        summary['sources'].append(result['source'])
                        print(json.dumps(dict(event='replay_shard_finished', shard=result['shard'],
                                              caps=len(result['results']), failures=len(result['failures']),
                                              seconds=result['seconds'])), flush=True)
                    except Exception as error:
                        summary['failures'].append(dict(stage='worker',
                                                       error='%s: %s' % (type(error).__name__, error)))
            summary['transfer_seconds'] = time.perf_counter()-transfer_started
            summary['coverage'], summary['coverage_seconds'] = coverage_future.result()
    summary['cap_results'].sort(key=lambda result: result['index'])
    completed = [result['index'] for result in summary['cap_results']]
    if completed != list(range(len(cap_list))):
        summary['failures'].append(dict(stage='accounting', error='not every cap index passed exactly once'))
    coverage = summary.get('coverage', {})
    if not (coverage.get('passed') and coverage.get('covers')):
        summary['failures'].append(dict(stage='coverage', error=coverage))
    if args.negative_tests and not summary['failures']:
        negative_started = time.perf_counter()
        summary['negative_tests'] = mutation_tests(str(args.input), certificate, args.precision,
                                                   before['input_sha256'])
        summary['negative_test_seconds'] = time.perf_counter()-negative_started
        if not all(test['rejected'] for test in summary['negative_tests']):
            summary['failures'].append(dict(stage='mutation_tests', error='a specified mutation was accepted'))
    after = binding(args.input, args.caps)
    if before != after:
        summary['failures'].append(dict(stage='binding', error='input or checker code changed during replay'))
    if summary['cap_results']:
        summary['min_target_margin_lower'] = min(result['target_margin_lower'] for result in summary['cap_results'])
        summary['min_orientation_margin_lower'] = min(margin for result in summary['cap_results']
                                                       for margin in result['orientation_margins_lower'])
        summary['min_ldl_pivot_lower'] = min(result['min_ldl_pivot_lower'] for result in summary['cap_results'])
    packages = {}
    for package in ('python-flint', 'numpy', 'scipy', 'sympy', 'mpmath'):
        try:
            packages[package] = importlib.metadata.version(package)
        except importlib.metadata.PackageNotFoundError:
            packages[package] = None
    summary.update(status='CERTIFIED' if not summary['failures'] else 'FAIL',
                   seconds=time.perf_counter()-started)
    receipt = dict(binding=before, python=sys.version.split()[0], packages=packages, summary=summary)
    args.receipt.parent.mkdir(parents=True, exist_ok=True)
    args.receipt.write_text(json.dumps(receipt, indent=2)+'\n')
    print(json.dumps({key: value for key, value in summary.items()
                      if key not in ('cap_results', 'sources')}), flush=True)
    return 0 if summary['status'] == 'CERTIFIED' else 1


if __name__ == '__main__':
    raise SystemExit(main())
