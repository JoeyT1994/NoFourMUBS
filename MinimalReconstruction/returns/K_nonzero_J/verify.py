#!/usr/bin/env python3
"""Exact replay of return K. No old square sum or quartic is imported.

Normal mode reconstructs targets and compares every certificate. The
--regenerate option writes the canonical certificates; --circuits-only
replays the shipped integer polynomial DAGs using only the standard library.
Python assertions are required: do not run with -O or PYTHONOPTIMIZE.
"""
import argparse
import hashlib
import json
from pathlib import Path
import sys
import tempfile
import time

ROOT = Path(__file__).resolve().parent
SUPPORT = ROOT/'support'
CERTS = ROOT/'certificates'
sys.path.insert(0, str(SUPPORT))


def compare_json(actual, path):
    expected = json.loads(path.read_text())
    # JSON normalizes tuple/list distinctions in generated moment indices.
    actual = json.loads(json.dumps(actual))
    if actual != expected:
        raise AssertionError('Regenerated certificate differs: '+path.name)


def check_manifest():
    manifest = ROOT/'SHA256SUMS'
    if not manifest.exists():
        raise AssertionError('SHA256SUMS is missing')
    count = 0
    for line in manifest.read_text().splitlines():
        digest, name = line.split('  ', 1)
        path = ROOT/name
        if not path.is_file() or hashlib.sha256(path.read_bytes()).hexdigest() != digest:
            raise AssertionError('Hash mismatch: '+name)
        count += 1
    return count


def replay_circuits(directory):
    from verify_scalar_circuit import check
    total = 0
    for name in ('unweighted_circuits.json', 'newton_circuits.json',
                 'weighted_boundaries_dag.json', 'scalar_certificates.json'):
        number = check(directory/name)
        total += number
        print('PASS: '+name+' ('+str(number)+' integer polynomial identities)', flush=True)
    return total


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    mode = parser.add_mutually_exclusive_group()
    mode.add_argument('--regenerate', action='store_true')
    mode.add_argument('--circuits-only', action='store_true')
    parser.add_argument('--self-test', action='store_true',
                        help='also verify rejection of a corrupted polynomial target')
    options = parser.parse_args()
    if not __debug__:
        raise RuntimeError('Assertions are disabled; remove -O/PYTHONOPTIMIZE')
    start = time.monotonic()
    if not options.regenerate:
        print('PASS: SHA256SUMS ('+str(check_manifest())+' files)', flush=True)
    if options.circuits_only:
        total = replay_circuits(CERTS)
        print('ALL '+str(total)+' INTEGER POLYNOMIAL CIRCUIT CHECKS PASSED')
        print('This mode does not regenerate the source-to-target bindings or prove the paper deductions.')
        return

    try:
        import sympy
        import flint
    except ImportError as error:
        raise SystemExit('Install requirements.txt for full replay; --circuits-only uses the standard library.') from error
    from verify_unweighted import verify as signed
    from verify_newton import verify as newton
    from verify_full_weighted import verify as boundaries, nine_moments
    from audit_scalar import check as scalars
    from export_unweighted_circuits import build as signed_circuits
    from export_newton_circuits import build as newton_circuits

    with tempfile.TemporaryDirectory(prefix='return_k_verify_') as temp:
        generated = CERTS if options.regenerate else Path(temp)
        generated.mkdir(parents=True, exist_ok=True)
        signed(generated/'unweighted_identities.json')
        print('PASS: signed corner expansion, paired lambda identity, universal boundary factorization', flush=True)
        summary = newton(moment_builder=nine_moments,
                         output_certificate=generated/'newton_identities.json')
        assert summary['checked_moments'] == 9
        print('PASS: all 9 implemented moments equal direct sums on independent Laurent variables', flush=True)
        boundary_data = boundaries(generated/'full_weighted_certificate.json',
                                   generated/'weighted_boundaries_dag.json')
        print('PASS: all 4 boundary identities, with explicit polynomial cofactors', flush=True)
        scalar_summary = scalars(generated/'scalar_certificates.json')
        print('PASS: '+str(scalar_summary['identities_checked'])+' scalar identities, pole products, endpoints, and rational bounds', flush=True)
        signed_circuits(generated/'unweighted_circuits.json')
        newton_circuits(generated/'newton_circuits.json')
        for path in sorted(generated.glob('*.json')):
            if not options.regenerate:
                compare_json(json.loads(path.read_text()), CERTS/path.name)
        total = replay_circuits(generated)
        if options.self_test:
            from verify_scalar_circuit import check
            damaged = json.loads((generated/'weighted_boundaries_dag.json').read_text())
            first = damaged['certificates'][0]
            i = len(first['nodes'])
            first['nodes'].append(['const', 1])
            first['nodes'].append(['add', first['lhs'], i])
            first['lhs'] = i+1
            bad = Path(temp)/'deliberately_invalid.json'
            bad.write_text(json.dumps(damaged))
            try:
                check(bad)
            except AssertionError:
                print('PASS: independent circuit checker rejects a target changed by +1', flush=True)
            else:
                raise AssertionError('Corrupted target was accepted')
        size = sum(path.stat().st_size for path in generated.glob('*.json')
                   if path.name != 'deliberately_invalid.json')
        print('Certificate JSON bytes:', size)
        assert size < 500_000, 'Certificate budget exceeded'
        print('ALL EXACT CHECKS PASSED ('+str(total)+' integer polynomial DAG identities; '
              +format(time.monotonic()-start, '.3f')+' seconds).')
        print('Lean kernel compilation and the full repository axioms audit were not run here.')
        if options.regenerate:
            print('Certificates regenerated. Rebuild SHA256SUMS before normal replay.')


if __name__ == '__main__':
    main()
