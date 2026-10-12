"""Kernel-check generated canonical witnesses in small resumable batches."""
from pathlib import Path
import hashlib
import json
import subprocess
import time

ROOT = Path(__file__).resolve().parents[1]
LEAN = ROOT / 'lean'
AUDIT = ROOT / 'audit'
SOURCE = LEAN / 'NoFourMUBs/Step2/SOS'
manifest = json.loads((AUDIT / 'sos/CANONICAL_MANIFEST.json').read_text())
files = manifest['files']
for name, digest in files.items():
    assert hashlib.sha256((SOURCE/name).read_bytes()).hexdigest() == digest
modules = {'NoFourMUBs.Step2.SOS.'+Path(name).stem: name for name in files}
dependencies = {m: [line.split()[1] for line in (SOURCE/name).read_text().splitlines()
                    if line.startswith('import ')] for m,name in modules.items()}
checker_hashes = {name: hashlib.sha256((SOURCE/name).read_bytes()).hexdigest()
                  for name in ['CanonicalCheck.lean', 'Padding.lean', 'Normalization.lean']}
status_path = AUDIT / 'SOS_CANONICAL_BUILD_STATUS.json'
previous = json.loads(status_path.read_text()) if status_path.exists() else {}
if previous.get('checker_hashes') == checker_hashes:
    done = {m for m in previous.get('completed_modules', [])
            if m in modules and previous.get('file_hashes', {}).get(modules[m]) == files[modules[m]]}
else:
    done = set()
started = time.monotonic()
logs = AUDIT / 'sos_canonical_build'
logs.mkdir(exist_ok=True)
batch_number = 1 + max((int(p.stem.split('_')[-1]) for p in logs.glob('batch_*.log')), default=-1)
while len(done) < len(modules):
    if (AUDIT / 'SOS_CANONICAL_BUILD_STOP').exists():
        print('Stopped between batches; completed proofs remain cached.', flush=True)
        break
    pending = set(modules)-done
    ready = sorted(m for m in pending if all(d not in modules or d in done
                                            for d in dependencies[m]))
    assert ready
    batch = ready[:2]
    log = logs / f'batch_{batch_number:04d}.log'
    with log.open('w') as output:
        result = subprocess.run(['/Users/mateo2/.elan/bin/lake', 'build', *batch],
                                cwd=LEAN, stdout=output, stderr=subprocess.STDOUT)
    if result.returncode == 0:
        done.update(batch)
    status = {
        'completed_files': len(done), 'total_files': len(modules),
        'completed_modules': sorted(done), 'last_batch': batch,
        'last_log': str(log.relative_to(AUDIT)), 'returncode': result.returncode,
        'elapsed_seconds': time.monotonic()-started,
        'complete': len(done) == len(modules),
        'checker_hashes': checker_hashes, 'file_hashes': files,
    }
    status_path.write_text(json.dumps(status, indent=2)+'\n')
    print(f'{len(done)}/{len(modules)} files; exit {result.returncode}; batch {batch_number}',
          flush=True)
    if result.returncode:
        raise SystemExit(result.returncode)
    batch_number += 1
