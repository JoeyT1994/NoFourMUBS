"""Build the pinned Fourier closure in small dependency-ordered batches.

Lake otherwise starts many independent generated certificate files at once.
Small batches keep this proof reproducible on the user's 16 GiB machine.
"""
from pathlib import Path
import json
import subprocess
import time

ROOT = Path(__file__).resolve().parents[1]
LEAN = ROOT / 'lean'
AUDIT = ROOT / 'audit'
MANIFEST = json.loads((AUDIT / 'FOURIER_SOURCE_MANIFEST.json').read_text())
assert MANIFEST['closure_complete']
records = MANIFEST['files']
status_path = AUDIT / 'FOURIER_BUILD_STATUS.json'
previous = json.loads(status_path.read_text()) if status_path.exists() else {}
done = set(previous.get('completed_modules', []))
started = time.monotonic()
logdir = AUDIT / 'fourier_build'
logdir.mkdir(exist_ok=True)
for i in range(len(records)):
    if (AUDIT / 'FOURIER_BUILD_STOP').exists():
        print('Stopped between batches; all completed modules remain cached.', flush=True)
        break
    pending = set(records) - done
    if not pending:
        break
    ready = sorted(m for m in pending if all(
        dep in done or not dep.startswith('OAI.') for dep in records[m]['imports']))
    assert ready, 'Dependency cycle or missing source'
    batch = ready[:3]
    with (logdir / f'batch_{i:04d}.log').open('w') as output:
        result = subprocess.run(
            ['/Users/mateo2/.elan/bin/lake', 'build', *batch],
            cwd=LEAN, stdout=output, stderr=subprocess.STDOUT)
    if result.returncode == 0:
        done.update(batch)
    status = {
        'completed_files': len(done), 'total_files': len(records),
        'completed_modules': sorted(done),
        'last_batch': batch, 'last_log': f'fourier_build/batch_{i:04d}.log',
        'returncode': result.returncode, 'elapsed_seconds': time.monotonic() - started,
        'complete': len(done) == len(records),
    }
    (AUDIT / 'FOURIER_BUILD_STATUS.json').write_text(json.dumps(status, indent=2) + '\n')
    print(f"{len(done)}/{len(records)} files; exit {result.returncode}; batch {i}", flush=True)
    if result.returncode:
        raise SystemExit(result.returncode)
