#!/usr/bin/env python3
"""Exact replay of the reduced Return O. Python 3 and python-flint; no SymPy."""
import argparse
import hashlib
import json
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent
sys.path.insert(0, str(ROOT / 'support'))


def shipped_files():
    return sorted(p for p in ROOT.rglob('*') if p.is_file()
                  and '__pycache__' not in p.parts
                  and p.name != 'SHA256SUMS')


def check_hashes():
    declared = {}
    for line in (ROOT / 'SHA256SUMS').read_text().splitlines():
        digest, name = line.split('  ', 1)
        path = Path(name)
        assert len(digest) == 64 and all(c in '0123456789abcdef' for c in digest)
        assert not path.is_absolute() and '..' not in path.parts
        assert name not in declared
        declared[name] = digest
    actual = {str(p.relative_to(ROOT)): hashlib.sha256(p.read_bytes()).hexdigest()
              for p in shipped_files()}
    assert declared == actual, 'SHA256SUMS content or file inventory mismatch'
    print(f'PASS SHA256SUMS: {len(actual)} files', flush=True)


def run_support(name, flags=()):
    subprocess.run([sys.executable, str(ROOT/'support'/name), *flags],
                   cwd=ROOT, check=True)


def main():
    if not __debug__:
        raise SystemExit('Run without -O: assertions are mandatory.')
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--self-test', action='store_true',
                        help='also require rejection of altered and invalid certificates')
    args = parser.parse_args()
    print('Return O: exact zero-J mixed-signature verification', flush=True)
    check_hashes()

    try:
        import flint
        import verify_mixed
    except ImportError as exc:
        raise SystemExit('Install requirements.txt before replay: '+str(exc)) from exc
    print('python-flint '+flint.__version__, flush=True)
    mixed = verify_mixed.verify(ROOT/'certificates'/'mixed_certificates.json',
                               self_test=args.self_test)
    print('PASS original signature, 21 Newton moments, and 2 mixed regroupings', flush=True)
    print('PASS 2 source-bound integer DAG identities', flush=True)
    if args.self_test:
        print('PASS false polynomial target and zero-denominator pseudo-certificate rejected',
              flush=True)

    flags = ('--self-test',) if args.self_test else ()
    run_support('verify_scalar_boundary.py', flags)
    run_support('verify_scalar_core.py', (*flags, '--bind-mixed-source'))
    run_support('verify_geometric.py')
    run_support('verify_source_independent.py')
    run_support('verify_boundary_independent.py')

    stats = json.loads((ROOT/'CERTIFICATE_STATISTICS.json').read_text())
    files = sorted((ROOT/'certificates').glob('*.json'))
    sizes = {p.name:p.stat().st_size for p in files}
    count = sum(len(json.loads(p.read_text())['certificates']) for p in files)
    assert stats['certificate_files'] == sizes
    assert stats['certificate_bytes_total'] == sum(sizes.values()) < 50000
    assert stats['integer_dag_identities'] == count == 17
    assert stats['source_bound_mixed_identities'] == mixed['source_bound_integer_identities'] == 2
    assert stats['scalar_boundary_identities'] == 9 and stats['scalar_core_identities'] == 6
    assert stats['newton_moment_identities'] == mixed['newton_moments'] == 21
    assert stats['signature_laurent_monomials'] == mixed['signature_monomials'] == 48
    assert stats['mixed_moment_terms'] == mixed['moment_terms'] == {'Tx':24,'Tpair':44}
    assert stats['mixed_regrouping_identities'] == mixed['regroupings'] == 2
    assert stats['geometric_integer_polynomial_checks'] == 9
    print(f'PASS certificate budget: {sum(sizes.values())} < 50000 uncompressed bytes',
          flush=True)
    print('PASS all exact checks; Z1 and Z2 paper deductions are in REPORT.md', flush=True)


if __name__ == '__main__':
    main()
