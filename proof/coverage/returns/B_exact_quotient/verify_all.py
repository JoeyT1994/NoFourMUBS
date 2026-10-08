#!/usr/bin/env python3
"""Replay all exact coverage-argument checks; this is not an atlas certificate."""
import argparse
import datetime
import hashlib
import importlib.metadata
import json
import os
from pathlib import Path, PurePosixPath
import subprocess
import sys
import time

ROOT = Path(__file__).resolve().parent
CHECKS = [
    ('structural_polynomial_and_exact_orbit', 'exact_maxima/verify_exact_maxima.py', []),
    ('regular_invariant_branch', 'exact_maxima/verify_regular_branch.py', []),
    ('single_gram_phase_branch', 'conditioning_audit/verify_q_branch.py', []),
    ('raw_gram_boundary_lift_identities', 'conditioning_audit/verify_fold_lift.py', []),
    ('single_side_discriminant_branch', 'fold_branch/verify_fold_branch.py', []),
    ('all_equal_pole', 'quotient_coverage/verify_all_equal_pole.py', []),
    ('double_zero_intersection', 'exact_maxima/verify_intersection.py', []),
    ('sheet_orbit_roots_and_quotient', 'quotient_coverage/verify_quotient.py', []),
    ('boundary_checker_empty_tube_regression', 'quotient_coverage/verify_boundary_records.py', ['--selftest']),
    ('fourier_family_conditioning', 'conditioning_audit/verify_conditioning.py', []),
]


def check_manifest():
    path = ROOT/'MANIFEST.sha256'
    if not path.is_file():
        raise RuntimeError('Missing MANIFEST.sha256')
    count = 0
    names = set()
    for line in path.read_text().splitlines():
        digest, name = line.split('  ', 1)
        rel = PurePosixPath(name)
        if rel.is_absolute() or '..' in rel.parts or name in names:
            raise RuntimeError('Invalid or duplicate manifest path')
        names.add(name)
        data = (ROOT/name).read_bytes()
        if hashlib.sha256(data).hexdigest() != digest:
            raise RuntimeError('Payload hash mismatch: '+name)
        count += 1
    required = {script for _,script,_ in CHECKS}
    required.update({'inputs/rfourier.json','COVERAGE.md','STATUS.md','verify_all.py'})
    if not required.issubset(names):
        raise RuntimeError('Manifest omits a required proof payload')
    return count


def main():
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument('--write-receipt', action='store_true',
                    help='write this replay receipt as VERIFICATION.json')
    args = ap.parse_args()
    if not __debug__:
        raise RuntimeError('Run without Python -O; the acceptance scripts use assertions.')
    count = check_manifest()
    print(f'PASS: {count} payload hashes.', flush=True)
    env = dict(os.environ)
    env['PYTHONDONTWRITEBYTECODE'] = '1'
    env.pop('PYTHONOPTIMIZE', None)
    receipt = {
        'format':'coverage-proof-replay-v1',
        'started_utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),
        'python':sys.version,
        'sympy':importlib.metadata.version('sympy'),
        'python_flint':importlib.metadata.version('python-flint'),
        'manifest_sha256':hashlib.sha256((ROOT/'MANIFEST.sha256').read_bytes()).hexdigest(),
        'payload_hashes_verified':count,
        'checks':[],
        'scope': {
            'claim_A':'exact algebraic proof and acceptance checks supplied',
            'claims_B_C':'proofs and exact algebra supplied, relative to the stated handoff inputs',
            'actual_nonempty_atlas':'NOT SUPPLIED',
            'actual_atlas_boundary_certificate':'NOT SUPPLIED',
            'no_four_MUBs':'NOT CERTIFIED BY THIS BUNDLE ALONE',
            'task_D_global':'NOT PROVED',
            'task_D_fourier_family':'PROVED',
        },
    }
    for label,script,extra in CHECKS:
        start=time.perf_counter()
        result=subprocess.run([sys.executable,str(ROOT/script),*extra],cwd=ROOT,
                              env=env,text=True,capture_output=True)
        record={'name':label,'script':script,'arguments':extra,
                'exit_code':result.returncode,
                'elapsed_seconds':round(time.perf_counter()-start,6),
                'stdout':result.stdout,'stderr':result.stderr}
        receipt['checks'].append(record)
        print(f"{'PASS' if result.returncode == 0 else 'FAIL'}: {label}",flush=True)
        if result.returncode:
            print(result.stdout, end='')
            print(result.stderr, end='',file=sys.stderr)
            receipt['result']='FAIL'
            if args.write_receipt:
                (ROOT/'VERIFICATION.json').write_text(json.dumps(receipt,indent=2)+'\n')
            return result.returncode or 1
    receipt['result']='PASS'
    receipt['finished_utc']=datetime.datetime.now(datetime.timezone.utc).isoformat()
    if args.write_receipt:
        (ROOT/'VERIFICATION.json').write_text(json.dumps(receipt,indent=2)+'\n')
    print('ALL EXACT ACCEPTANCE CHECKS PASSED.',flush=True)
    print('Scope: maximum classification and conditional coverage theorem; no actual atlas supplied.',flush=True)
    return 0


if __name__ == '__main__':
    try:
        sys.exit(main())
    except Exception as exc:
        print('FAIL: '+str(exc),file=sys.stderr)
        sys.exit(1)
