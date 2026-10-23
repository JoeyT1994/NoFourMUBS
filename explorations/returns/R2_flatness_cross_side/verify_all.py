#!/usr/bin/env python3
"""Reproduce the R2 compact certificate, optionally with independent CAS checks."""
import argparse
from datetime import datetime, timezone
import hashlib
import importlib.metadata
import json
from pathlib import Path
import subprocess
import sys
import time


def main():
    if sys.flags.optimize:
        raise SystemExit('Run without -O or -OO.')
    parser = argparse.ArgumentParser()
    parser.add_argument('--symbolic', action='store_true',
                        help='Also run SymPy coordinate checks and FLINT rational verifiers')
    parser.add_argument('--output', type=Path, default=Path('verification_results.json'))
    args = parser.parse_args()
    root = Path(__file__).resolve().parent
    scripts = ['verification/verify_target_binding.py', 'verification/check_packed_circuit.py']
    if args.symbolic:
        scripts += ['verification/verify_coordinates.py',
                    'verification/check_covariance_norm.py',
                    'verification/verify_compact_rational.py',
                    'verification/verify_c11_rational.py']
    result = dict(started_utc=datetime.now(timezone.utc).isoformat(), python=sys.version,
                  assertions_enabled=True, checks=[], status='PASS',
                  structural_cross_side_derivation='NOT_ESTABLISHED',
                  c11_ideal_membership='CERTIFIED_EXACTLY', lean_build_performed=False,
                  lean_files_modified=False)
    result['dependencies'] = {}
    if args.symbolic:
        for name in ['sympy', 'python-flint']:
            try:
                result['dependencies'][name] = importlib.metadata.version(name)
            except importlib.metadata.PackageNotFoundError:
                result['dependencies'][name] = 'MISSING'
    started = time.perf_counter()
    for script in scripts:
        t = time.perf_counter()
        run = subprocess.run([sys.executable, str(root/script)], cwd=root, capture_output=True, text=True)
        check = dict(script=script, return_code=run.returncode,
                     elapsed_seconds=round(time.perf_counter()-t, 6),
                     status='PASS' if run.returncode == 0 else 'FAIL',
                     stdout=run.stdout, stderr=run.stderr)
        result['checks'].append(check)
        print(f"{check['status']} {script} ({check['elapsed_seconds']:.3f} s)", flush=True)
        if run.returncode:
            result['status'] = 'FAIL'
            result['c11_ideal_membership'] = 'NOT_REPLAYED_SUCCESSFULLY'
            break
    result['elapsed_seconds'] = round(time.perf_counter()-started, 6)
    core = ['certificate/packed_circuit.json', 'certificate/build_circuit.py',
            'verification/check_packed_circuit.py', 'verification/verify_target_binding.py']
    result['core_files'] = {name: dict(bytes=(root/name).stat().st_size,
        sha256=hashlib.sha256((root/name).read_bytes()).hexdigest()) for name in core}
    result['core_total_bytes'] = sum(x['bytes'] for x in result['core_files'].values())
    output = args.output if args.output.is_absolute() else root/args.output
    output.write_text(json.dumps(result, indent=2)+'\n')
    print('Verification status:', result['status'])
    print('Structural cross-side derivation: NOT_ESTABLISHED; Lean build: NOT_PERFORMED')
    return 0 if result['status'] == 'PASS' else 1


if __name__ == '__main__':
    raise SystemExit(main())
