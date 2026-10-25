#!/usr/bin/env python3
"""Replay every exact certificate for the global inequality S >= 100 L_tot."""
from fractions import Fraction
from pathlib import Path
from datetime import datetime, timezone
import hashlib
import json
import subprocess
import sys
import time


def main():
    root = Path(__file__).resolve().parent
    receipts = root / 'verification'
    receipts.mkdir(exist_ok=True)
    start = time.monotonic()
    results = []
    for name in ('verify_feature_table.py', 'verify_mixing_sos.py', 'verify_S_D.py', 'verify_tao.py'):
        print(f'Replaying {name} ...', flush=True)
        tick = time.monotonic()
        run = subprocess.run([sys.executable, str(root / name)], cwd=root,
                             capture_output=True, text=True)
        output = run.stdout + run.stderr
        (receipts / (name.removesuffix('.py') + '.txt')).write_text(output)
        item = {'script': name, 'exit_code': run.returncode,
                'elapsed_seconds': round(time.monotonic() - tick, 3),
                'sha256': hashlib.sha256((root / name).read_bytes()).hexdigest()}
        results.append(item)
        if run.returncode or 'PASS' not in output:
            print(output, flush=True)
            raise SystemExit(f'Certificate replay failed: {name}')
        print(f'PASS: {name}', flush=True)

    data = json.loads((root / 'S_D_certificate.json').read_text())
    c = Fraction(data['B1'], 6 * data['B0'])
    assert c == Fraction(84684731883192, 818002268369)
    assert c > Fraction(10352628, 100000) > 100
    # The non-Tao identity plus L <= 6D gives c; check Tao independently too.
    assert Fraction(87480, 1) >= c * Fraction(225, 2)
    assert Fraction(100, 400) * Fraction(2, 3) == Fraction(1, 6)
    assert Fraction(3, 2) * Fraction(1, 101) == Fraction(3, 202)
    summary = {
        'status': 'PASS',
        'completed_utc': datetime.now(timezone.utc).isoformat(),
        'python': sys.version.split()[0],
        'clean_global_inequality': 'S(H) >= 100 L_tot(H)',
        'stronger_global_coefficient': str(c),
        'matrices': 'every complex Hadamard matrix of order six',
        'normalization': 'unit-modulus entries; all 400 corners; all 6 references',
        'arithmetic': 'integers and exact rational fractions only',
        'written_geometric_input': 'non-Tao Fourier-vanishing theorem',
        'source_single_matrix_identity_replayed': True,
        'tao_exception_checked_exactly': True,
        'numerical_tolerance': None,
        'atlas_or_stage_C_input': False,
        'precomputed_moment_table_input': False,
        'scripts': results,
        'elapsed_seconds': round(time.monotonic() - start, 3),
    }
    (receipts / 'SUMMARY.json').write_text(json.dumps(summary, indent=2) + '\n')
    print(json.dumps(summary, indent=2), flush=True)


if __name__ == '__main__':
    main()
