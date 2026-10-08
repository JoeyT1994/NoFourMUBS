#!/usr/bin/env python3
"""Run the fourteen exact certificates; exclude all numerical experiments.

Writes verification.log next to this file and exits nonzero on any failure.
No result of this runner asserts the unproved global confinement theorem.
"""
from datetime import datetime, timezone
from importlib import metadata
from pathlib import Path
import os
import platform
import subprocess
import sys
import time


CERTIFICATES = (
    'fourier/verify_fourier.py',
    'global/verify_tube.py',
    'global/verify_critical_invariants.py',
    'global/verify_cayley_smooth.py',
    'critical/verify_gauge.py',
    'critical/verify_chart.py',
    'critical/verify_chirality.py',
    'critical/verify_chirality_pair.py',
    'critical/verify_double_zero.py',
    'critical_exceptions/verify_qzero.py',
    'mc1/verify_minor_identities.py',
    'mc1/verify_global_contractions.py',
    'mc1/complement_minimax/verify_complement_minimax.py',
    'mc1/verify_cross_partition.py',
)


def main():
    if sys.flags.optimize:
        raise RuntimeError('Run without -O: the exact certificates use assertions.')
    root = Path(__file__).resolve().parent
    log_path = root / 'verification.log'
    environment = os.environ.copy()
    environment.pop('PYTHONOPTIMIZE', None)
    environment['PYTHONDONTWRITEBYTECODE'] = '1'
    environment['PYTHONHASHSEED'] = '0'
    failures = []
    with log_path.open('w', encoding='utf-8') as log:
        def report(message):
            print(message, flush=True)
            log.write(message + '\n')
            log.flush()

        report('EXACT PARTIAL-CONFINEMENT CERTIFICATE REPLAY')
        report('UTC: ' + datetime.now(timezone.utc).isoformat())
        report('Python: ' + platform.python_version())
        for package in ('sympy', 'mpmath', 'numpy', 'scipy'):
            try:
                version = metadata.version(package)
            except metadata.PackageNotFoundError:
                version = 'not installed'
            report(package + ': ' + version)
        report('Deciding arithmetic: exact integers/rationals, exact polynomial algebra, '
               'Sturm counts, and rational interval bounds.')
        report('Global confinement remains unproved; numerical experiments are excluded.')
        start = time.monotonic()
        for index, relative in enumerate(CERTIFICATES, 1):
            report('\n[{}/{}] {}'.format(index, len(CERTIFICATES), relative))
            script = root / relative
            if not script.is_file():
                report('FAIL: missing certificate')
                failures.append(relative)
                continue
            before = time.monotonic()
            completed = subprocess.run(
                [sys.executable, '-B', str(script)], cwd=root,
                env=environment, stdout=subprocess.PIPE,
                stderr=subprocess.STDOUT, text=True, check=False,
            )
            if completed.stdout:
                report(completed.stdout.rstrip())
            report('Exit status: {}; elapsed {:.3f} seconds'.format(
                completed.returncode, time.monotonic() - before))
            if completed.returncode != 0:
                failures.append(relative)
        report('\nTotal elapsed: {:.3f} seconds'.format(time.monotonic() - start))
        if failures:
            report('EXACT CERTIFICATE SUITE FAILED: ' + ', '.join(failures))
            return 1
        report('ALL {} EXACT CERTIFICATES PASS'.format(len(CERTIFICATES)))
        report('Scope: the partial theorems in CONFINEMENT.md; '
               'the unrestricted global theorem is not proved.')
    return 0


if __name__ == '__main__':
    raise SystemExit(main())
