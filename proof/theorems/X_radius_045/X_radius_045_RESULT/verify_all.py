#!/usr/bin/env python3
"""Replay and bind the enlarged Fourier no-quartet certificate.

Standard library only. Default: regenerate geometry, graph and all radius-.45
cover inequalities. --interfaces-only checks the identities of recorded,
completed component replays; it does not rerun their inequality checks.
"""
if not __debug__:
    raise SystemExit('Assertions must be enabled. Do not run Python with -O.')

from pathlib import Path
from fractions import Fraction as F
from datetime import datetime, timezone
import argparse
import hashlib
import json
import os
import subprocess
import sys
import time

ROOT = Path(__file__).resolve().parent
CERT = ROOT / 'certificates'


def read(path):
    return json.loads(path.read_text())


def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def run(label, path, *args):
    log = CERT / (label + '.log')
    env = dict(os.environ)
    env.pop('PYTHONOPTIMIZE', None)
    started = time.monotonic()
    print('RUN', label, flush=True)
    with log.open('wb') as out:
        result = subprocess.run(
            [sys.executable, str(path), *map(str, args)], cwd=path.parent,
            env=env, stdout=out, stderr=subprocess.STDOUT, check=False)
    if result.returncode:
        raise RuntimeError(f'{label} failed with code {result.returncode}; see {log}')
    print('PASS', label, f'({time.monotonic()-started:.1f}s)', flush=True)
    return log


def exact_poly(poly):
    return {key: list(map(F, values)) for key, values in poly.items()}


def graph_configuration(receipt, name):
    assert receipt['status'] == 'CERTIFIED'
    matches = [c for c in receipt['configurations'] if c['name'] == name]
    assert len(matches) == 1
    return matches[0]


def bind_cover(directory, rho, configuration, geometry, require_receipt=True):
    base = ROOT / directory
    data = base / 'cover_data'
    meta = read(data / 'manifest.json')
    assert F(meta['rho']) == rho
    envelopes = [e for e in geometry['envelopes'] if F(e['rho']) == rho]
    assert len(envelopes) == 1
    e = envelopes[0]
    assert F(e['normal']) <= F(meta['normal'])
    assert F(e['column']) <= F(meta['column'])
    if 'normal_error' in meta:
        assert F(e['error_to_Q']) <= F(meta['normal_error'])
    if 'cubic_error' in meta:
        assert F(e['error_to_Q_plus_P3']) <= F(meta['cubic_error'])

    centers = ROOT / 'graph/quantized48.json'
    assert (data / 'quantized48.json').read_bytes() == centers.read_bytes()
    radii = list(map(F, meta['radii']))
    assert len(radii) == 48
    assert radii == [radii[0]] * 12 + [radii[12]] * 36
    assert radii[0] + F(1, 1000) <= F(configuration['gaussian_radius'])
    assert radii[12] + F(1, 1000) <= F(configuration['bjork_radius'])
    assert radii[0] <= F(configuration['quantized_gaussian_radius'])
    assert radii[12] <= F(configuration['quantized_bjork_radius'])
    gap = F(configuration['guaranteed_probability_gap'])
    assert gap > 0
    endpoint_key = ('minimum_cross_probability_upper'
                    if 'minimum_cross_probability_upper' in configuration
                    else 'guaranteed_minimum_cross_probability_upper')
    assert F(configuration[endpoint_key]) == F(1, 6) - gap

    if 'normal_error' in meta:
        q = read(data / 'quadratic_tensor.json')
        gq = read(ROOT / 'geometry/quadratic_predictor.json')
        for key in ('natural_frame_V', 'Gram', 'Q_div_sqrt3'):
            assert q[key] == gq[key], ('quadratic interface', key)
    if 'cubic_error' in meta:
        c = read(data / 'cubic_tensor.json')
        gc = read(ROOT / 'geometry/cubic_predictor.json')
        bridge = read(ROOT / 'cubic_bridge/cubic_filter_tensors.json')
        for key in ('Q_div_sqrt3', 'P3'):
            assert exact_poly(c[key]) == exact_poly(gc[key])
            assert exact_poly(c[key]) == exact_poly(bridge['natural_predictors'][key])

    assert meta['levels'][0]['M'] == 12
    assert meta['levels'][0]['nodes'] == 12**5
    for before, after in zip(meta['levels'], meta['levels'][1:]):
        assert after['M'] == 2 * before['M']
        assert after['nodes'] == 32 * before['refined']
    assert meta['levels'][-1]['refined'] == 0
    total = sum(level['nodes'] for level in meta['levels'])
    if require_receipt:
        receipt = read(data / 'replay_receipt.json')
        assert receipt['status'] == 'PASS'
        assert F(receipt['rho']) == rho
        assert receipt['total_nodes_checked'] == total
        assert len(receipt['levels']) == len(meta['levels'])
        for checked, proposed in zip(receipt['levels'], meta['levels']):
            for key in ('M', 'nodes', 'covered', 'refined'):
                assert checked[key] == proposed[key]
            assert checked['nodes'] == checked['covered'] + checked['rejected'] + checked['refined']
        assert receipt['quantized_centers_sha256'] == sha(centers)
        for key, filename in [('quadratic_tensor_sha256', 'quadratic_tensor.json'),
                              ('cubic_tensor_sha256', 'cubic_tensor.json')]:
            if key in receipt:
                assert receipt[key] == sha(data / filename)
    return {
        'rho': str(rho), 'probability_deficit': str(gap),
        'minimum_cross_probability_upper': str(F(1, 6) - gap),
        'total_nodes_checked': total, 'unresolved_leaves': 0,
        'quantized_gaussian_radius': str(radii[0]),
        'quantized_bjork_radius': str(radii[12]),
        'exact_gaussian_radius': configuration['gaussian_radius'],
        'exact_bjork_radius': configuration['bjork_radius'],
        'cover_directory': directory,
    }


def check_frozen_identities():
    graph = read(ROOT / 'graph/graph_replay_manifest.json')
    assert graph['status'] == 'FROZEN_AFTER_FULL_EXACT_REPLAY_PASS'
    for filename, record in graph['files'].items():
        path = ROOT / 'graph' / filename
        assert sha(path) == record['sha256'], ('graph identity', filename)
        assert path.stat().st_size == record['bytes']
    cover = read(ROOT / 'cover/run_input_hashes.json')
    assert cover['status'] == 'PASS'
    assert cover['input_hashes_unchanged'] is True
    for filename, expected in cover['proof_inputs_sha256'].items():
        assert sha(ROOT / 'cover' / filename) == expected, ('cover identity', filename)
    assert sha(ROOT / 'cover/cover_data/replay_receipt.json') == cover['cover_receipt_sha256']


def check_030_identities(check_receipt=True):
    base = ROOT / 'cover_030'
    frozen = read(base / 'frozen_replay_manifest.json')
    assert frozen['status'] == 'POST_REPLAY_FROZEN_SNAPSHOT'
    assert frozen['replay_status'] == 'PASS'
    assert frozen['total_nodes_checked'] == 2119936
    for filename, expected in frozen['proof_inputs_sha256'].items():
        assert sha(base / filename) == expected, ('radius-.30 input identity', filename)
    if check_receipt:
        assert sha(base / 'cover_data/replay_receipt.json') == frozen['completed_receipt_sha256']
    return frozen


def check_auxiliary_receipts():
    frozen = read(CERT / 'frozen_auxiliary_receipts.json')
    assert frozen['status'] == 'FROZEN_AFTER_FULL_EXACT_REPLAY_PASS'
    for filename, expected in frozen['files'].items():
        assert sha(ROOT / filename) == expected, ('auxiliary receipt identity', filename)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--workers', type=int, default=4)
    parser.add_argument('--include-030', action='store_true')
    parser.add_argument('--interfaces-only', action='store_true')
    args = parser.parse_args()
    assert 1 <= args.workers <= 64
    CERT.mkdir(exist_ok=True)
    started = time.monotonic()
    # These identities are required whenever the additional .30 theorem is
    # published. A refresh never accepts changed proof-source/data identities.
    check_030_identities()
    check_auxiliary_receipts()
    check_frozen_identities()
    pinned_main_inputs = dict(read(ROOT / 'cover/run_input_hashes.json')['proof_inputs_sha256'])
    initial_geometry = read(ROOT / 'geometry/geometry_summary.json')
    assert initial_geometry['status'] == 'PASS'
    pinned_geometry_sources = dict(initial_geometry['script_sha256'])
    for filename, expected in pinned_geometry_sources.items():
        assert sha(ROOT / 'geometry' / filename) == expected
    if not args.interfaces_only:
        run('geometry', ROOT / 'geometry/verify_all.py')
        run('cubic_bridge', ROOT / 'cubic_bridge/verify_cubic_filter_bridge.py')
        run('cover_implementation_audit', ROOT / 'cubic_bridge/audit_cover_bridge.py',
            ROOT / 'cover/verify_cover.py')
        graph_log = run('polar_graph', ROOT / 'graph/verify_polar_budget.py')
        polar = read(graph_log)
        assert polar['status'] == 'CERTIFIED'
        # The fresh calculation must reproduce the complete frozen receipt.
        # Compare parsed JSON so an irrelevant newline cannot affect replay.
        assert polar == read(ROOT / 'graph/polar_budget_receipt.json')
        graph_log = run('radius_030_graph', ROOT / 'graph/verify_extended_graph.py')
        assert read(graph_log) == read(ROOT / 'graph/extended_graph_receipt.json')
        # Check the component contracts before the expensive exhaustive replay.
        geometry = read(ROOT / 'geometry/geometry_summary.json')
        cfg = graph_configuration(polar, 'G_67_100_B_93_200')
        bind_cover('cover', F(9, 20), cfg, geometry, require_receipt=False)
        run('radius_045_cover', ROOT / 'cover/launch_replay.py', '--workers', args.workers)
        if args.include_030:
            frozen_030 = check_030_identities()
            pinned_030 = dict(frozen_030['proof_inputs_sha256'])
            run('radius_030_cover', ROOT / 'cover_030/verify_cover.py')
            after_030 = check_030_identities(check_receipt=False)
            assert after_030['proof_inputs_sha256'] == pinned_030
            new_receipt = ROOT / 'cover_030/cover_data/replay_receipt.json'
            assert read(new_receipt)['status'] == 'PASS'
            frozen_030['completed_receipt_sha256'] = sha(new_receipt)
            frozen_030['last_fresh_replay_utc'] = datetime.now(timezone.utc).isoformat()
            frozen_030['last_fresh_replay_checked_pinned_inputs_before_and_after'] = True
            (ROOT / 'cover_030/frozen_replay_manifest.json').write_text(
                json.dumps(frozen_030, indent=2) + '\n')

    geometry = read(ROOT / 'geometry/geometry_summary.json')
    assert geometry['status'] == 'PASS'
    assert geometry['script_sha256'] == pinned_geometry_sources
    for filename, expected in geometry['script_sha256'].items():
        assert sha(ROOT / 'geometry' / filename) == expected
    audit = read(ROOT / 'cubic_bridge/code18_bridge_audit.json')
    assert audit['status'] == 'PASS'
    assert audit['cover_sha256'] == sha(ROOT / 'cover/verify_cover.py')
    assert audit['exact_interval_entry_checks'] == 3024
    assert audit['independent_rational_LDL_value_checks'] == 128
    check_frozen_identities()
    assert read(ROOT / 'cover/run_input_hashes.json')['proof_inputs_sha256'] == pinned_main_inputs
    check_030_identities()
    check_auxiliary_receipts()
    polar = read(ROOT / 'graph/polar_budget_receipt.json')
    cfg = graph_configuration(polar, 'G_67_100_B_93_200')
    main_result = bind_cover('cover', F(9, 20), cfg, geometry)
    extra_cfg = graph_configuration(read(ROOT / 'graph/extended_graph_receipt.json'),
                                    'G_111_200_B_101_200')
    extra_result = bind_cover('cover_030', F(3, 10), extra_cfg, geometry)
    assert len(cfg['remaining_cliques']) == 52
    assert cfg['pointwise_witnesses'] == 1728
    assert cfg['polar_basis_budget_witnesses'] == 976
    assert cfg['pointwise_witnesses'] + cfg['polar_basis_budget_witnesses'] == 52**2

    result = {
        'status': 'PROVED_WITH_CERTIFIED_FINITE_STEPS',
        'metric': 'Unnormalized Frobenius norm of horizontal phase increments, radians',
        'closed_ball': True,
        'conclusion': 'No quartet edge: every pair of additional orthonormal bases unbiased to I,H has a deficient cross probability.',
        'main_theorem': main_result,
        'additional_stronger_gap_theorem': extra_result,
        'graph_possible_label_sets': 52,
        'graph_ordered_label_set_pairs_checked': 2704,
        'interface_checks': 'PASS',
        'run_mode': ('Recorded completed replays plus exact hash/interface checks; no fresh cover inequality replay'
                     if args.interfaces_only else 'Fresh full radius-.45 replay and exact interface checks'),
        'radius_030_freshly_replayed_this_run': bool(args.include_030 and not args.interfaces_only),
        'radius_050': 'NOT_ESTABLISHED',
        'optimality': 'NOT_ESTABLISHED',
        'lean_formalization': 'NOT_SUPPLIED',
        'elapsed_seconds_informational': time.monotonic() - started,
    }
    (CERT / 'RESULT.json').write_text(json.dumps(result, indent=2) + '\n')
    print(json.dumps(result, indent=2))


if __name__ == '__main__':
    main()
