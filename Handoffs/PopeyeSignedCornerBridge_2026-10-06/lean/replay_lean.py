#!/usr/bin/env python3
"""Portable, serialized and bounded replay of the 48-theorem signed-corner phase-two packet.

Requires the pinned Lean binary and a pinned Mathlib Git checkout with compiled
Mathlib/cache dependencies already installed. It never downloads or builds them.
"""
from __future__ import annotations
import argparse
import datetime
import fcntl
import hashlib
import json
import os
from pathlib import Path
import re
import shutil
import signal
import subprocess
import time

HERE = Path(__file__).resolve().parent
LEAN_VERSION = '4.33.0-rc2'
LEAN_COMMIT = 'd8b18978322de05a8f3dba51ef03cf5461676c17'
MATHLIB_COMMIT = '51e6992efd06126df61a496bebf8f49482a4e129'
HEAP_MIB = 2304
RSS_LIMIT = (HEAP_MIB + 512) * 1024**2
DISK_MIN = 8 * 1024**3
FIRST_WAVE_MODULES = ['CentiradianPhysical', 'CentiradianNormalization']
MODULES = ['SignedDeterminantFoundation', 'SignedNumeratorDefs', 'SignedNumeratorCoeff0', 'SignedNumeratorCoeff1', 'SignedNumeratorCoeff2', 'SignedNumeratorCoeff3', 'SignedNumeratorCoeff4', 'SignedNumeratorCoeff5', 'SignedNumeratorCoeff6', 'SignedNumeratorCoeff7', 'SignedNumeratorCoeff8', 'SignedNumeratorCertificate', 'SignedNumeratorBindings', 'SignedDeterminantAlgebra', 'SignedDeterminantGram', 'SignedCornerPhysical', 'SignedCornerAudit']

def digest(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()

def save(path: Path, value) -> None:
    path.write_text(json.dumps(value, indent=2, sort_keys=True) + '\n')

def tree_rss(pid: int) -> int:
    result = subprocess.run(['ps', '-axo', 'pid=,ppid=,rss='], capture_output=True,
                            text=True, check=True, timeout=5)
    rows = [tuple(map(int, line.split())) for line in result.stdout.splitlines() if line.strip()]
    tree = {pid}
    while True:
        children = {child for child, parent, _ in rows if parent in tree}
        if children <= tree:
            break
        tree |= children
    return sum(rss * 1024 for child, _, rss in rows if child in tree)

def run_one(lean: Path, mathlib: Path, source: Path, out: Path,
            built: list[Path], seconds: int) -> dict:
    if shutil.disk_usage(out.parent).free < DISK_MIN:
        raise RuntimeError('Less than 8 GiB free disk; refusing to start Lean.')
    out.mkdir(exist_ok=False)
    saved = out / source.name
    shutil.copyfile(source, saved)
    paths = [lean.parent.parent / 'lib/lean', out, *built, HERE,
             mathlib / '.lake/build/lib/lean']
    paths += sorted((mathlib / '.lake/packages').glob('*/.lake/build/lib/lean'))
    env = os.environ.copy()
    env['LEAN_PATH'] = os.pathsep.join(str(p) for p in paths)
    command = [str(lean), '-j1', f'-M{HEAP_MIB}', '-T2000000', '-o',
               str(out / (source.stem + '.olean')), str(saved)]
    save(out / 'JOB.json', {'command': command, 'source_sha256': digest(source),
                          'lean_path': [str(p) for p in paths], 'seconds': seconds,
                          'heap_mib': HEAP_MIB, 'rss_limit_bytes': RSS_LIMIT,
                          'minimum_free_disk_bytes': DISK_MIN})
    stop = None
    peak = 0
    started = time.monotonic()
    with (out / 'stdout.log').open('w') as stdout, (out / 'stderr.log').open('w') as stderr:
        proc = subprocess.Popen(command, cwd=out, env=env, stdout=stdout, stderr=stderr,
                                start_new_session=True)
        try:
            while proc.poll() is None:
                try:
                    peak = max(peak, tree_rss(proc.pid))
                except Exception as exc:
                    stop = 'resource_monitor_failed: ' + type(exc).__name__
                if peak > RSS_LIMIT:
                    stop = 'rss_limit'
                if time.monotonic() - started > seconds:
                    stop = 'wall_time_limit'
                if shutil.disk_usage(out).free < DISK_MIN:
                    stop = 'free_disk_limit'
                if stop:
                    os.killpg(proc.pid, signal.SIGTERM)
                    try:
                        proc.wait(timeout=5)
                    except subprocess.TimeoutExpired:
                        os.killpg(proc.pid, signal.SIGKILL)
                    break
                time.sleep(0.5)
        finally:
            if proc.poll() is None:
                os.killpg(proc.pid, signal.SIGKILL)
            code = proc.wait()
    result = {'success': code == 0 and stop is None, 'exit_code': code,
              'stop_reason': stop, 'wall_seconds': time.monotonic() - started,
              'peak_tree_rss_bytes': peak, 'source_sha256': digest(source),
              'full_radius_target_proved': False, 'mode': 'portable-serialized-guarded-v1'}
    save(out / 'RESULT.json', result)
    if not result['success']:
        raise RuntimeError(f'{source.name} failed; inspect {out}')
    return result

def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--lean', required=True, type=Path, help='Absolute pinned Lean executable')
    parser.add_argument('--mathlib', required=True, type=Path, help='Pinned Mathlib Git checkout with cache')
    parser.add_argument('--first-wave', type=Path, default=HERE.parent, help='Directory containing the two pinned first-wave physical sources')
    parser.add_argument('--out', type=Path, help='New output directory, must not already exist')
    parser.add_argument('--seconds', type=int, default=240, help='Per-module limit, 1 through 540 seconds')
    args = parser.parse_args()
    if not 1 <= args.seconds <= 540:
        parser.error('--seconds must be between 1 and 540')
    if not args.lean.is_absolute() or not args.mathlib.is_absolute():
        parser.error('--lean and --mathlib must be absolute paths')
    lean, mathlib = args.lean.resolve(), args.mathlib.resolve()
    version = subprocess.run([str(lean), '--version'], capture_output=True, text=True,
                             check=True, timeout=20).stdout.strip()
    if LEAN_VERSION not in version or LEAN_COMMIT not in version:
        raise RuntimeError('Wrong Lean version or commit: ' + version)
    revision = subprocess.run(['git', '-C', str(mathlib), 'rev-parse', 'HEAD'],
                              capture_output=True, text=True, check=True, timeout=20).stdout.strip()
    if revision != MATHLIB_COMMIT:
        raise RuntimeError('Wrong Mathlib commit: ' + revision)
    manifest = json.loads((HERE / 'PORTABLE_SOURCE_MANIFEST.json').read_text())
    first_wave = args.first_wave.resolve()
    sources = {module: first_wave / (module + '.lean') for module in FIRST_WAVE_MODULES}
    sources.update({module: HERE / (module + '.lean') for module in MODULES})
    for group, directory in [('first_wave_sources', first_wave), ('sources', HERE)]:
        for file, expected in manifest[group].items():
            if digest(directory / file) != expected:
                raise RuntimeError('Source pin mismatch: ' + file)
    tag = datetime.datetime.now(datetime.timezone.utc).strftime('%Y%m%dT%H%M%SZ')
    out = (args.out or HERE / ('portable-replay-' + tag)).resolve()
    out.mkdir(parents=True, exist_ok=False)
    built = []
    results = []
    # Both first-wave and phase-two portable replays share the first-wave lock.
    with (first_wave / 'PORTABLE_LEAN_SERIAL.lock').open('a+') as lock:
        fcntl.flock(lock, fcntl.LOCK_EX)
        for module in FIRST_WAVE_MODULES + MODULES:
            target = out / module
            results.append(run_one(lean, mathlib, sources[module], target,
                                   built, args.seconds))
            built.append(target)
    log = (out / 'SignedCornerAudit/stdout.log').read_text()
    audited = {name: sorted(a.strip() for a in axioms.split(','))
               for name, axioms in re.findall(r"'([^']+)' depends on axioms: \[([^\]]*)\]", log, re.S)}
    if set(audited) != set(manifest['declarations']):
        raise RuntimeError('Aggregate declaration audit does not match the 48-theorem manifest.')
    if any(a != ['Classical.choice', 'Quot.sound', 'propext'] for a in audited.values()):
        raise RuntimeError('Unexpected axiom dependency in aggregate audit.')
    save(out / 'REPLAY_RESULT.json', {'status': 'PASS', 'lean_version': version,
         'mathlib_commit': revision, 'checked_theorem_count': len(audited),
         'full_radius_target_proved': False, 'results': results})
    print(f'PASS: {len(audited)} scoped theorems; physical radius target remains open. Receipt: {out}')

if __name__ == '__main__':
    main()
