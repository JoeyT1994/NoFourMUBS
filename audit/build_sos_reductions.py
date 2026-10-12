"""Check the one normalization DAG in bounded, dependency-aware batches."""
from pathlib import Path
import hashlib
import json
import subprocess
import time
from reuse_preflight import wait_for_reuse_review
from release_checked_setup import release_checked_setup

ROOT = Path(__file__).resolve().parents[1]
AUDIT = ROOT/'audit'
SOURCE = ROOT/'lean/NoFourMUBs/Step2/SOS'
manifest = json.loads((AUDIT/'sos/REDUCTION_MANIFEST.json').read_text())
files = manifest['files']
for name, digest in files.items():
    assert hashlib.sha256((SOURCE/name).read_bytes()).hexdigest() == digest
modules = {'NoFourMUBs.Step2.SOS.'+Path(f).stem: f for f in files}
dependencies = {m: [line.split()[1] for line in (SOURCE/f).read_text().splitlines()
                    if line.startswith('import ')] for m, f in modules.items()}
checker_names = ['ReductionRules.lean','IntegerProjection.lean','ReuseProjection.lean',
                 'NormalizationContext.lean','NormalizationContextData.lean']
checker_hashes = {n: hashlib.sha256((SOURCE/n).read_bytes()).hexdigest() for n in checker_names}
path = AUDIT/'SOS_REDUCTION_BUILD_STATUS.json'
previous = json.loads(path.read_text()) if path.exists() else {}
done = set()
if previous.get('checker_hashes') == checker_hashes:
    done = {m for m in previous.get('completed_modules', [])
            if m in modules and previous.get('file_hashes', {}).get(modules[m]) == files[modules[m]]}
logs = AUDIT/'sos_reduction_build'
logs.mkdir(exist_ok=True)
number = 1+max((int(p.stem.split('_')[-1]) for p in logs.glob('batch_*.log')), default=-1)
started = time.monotonic()
while len(done) < len(modules):
    if (AUDIT/'SOS_CANONICAL_BUILD_STOP').exists():
        print('Stop marker detected: stopped between batches; checked results retained.',flush=True)
        break
    wait_for_reuse_review('moment_normalization')
    canonical = json.loads((AUDIT/'SOS_CANONICAL_BUILD_STATUS.json').read_text())
    canonical_done = set(canonical['completed_modules'])
    ready = sorted(m for m in set(modules)-done
                   if all((d not in modules or d in done) and
                          (not d.startswith('NoFourMUBs.Step2.SOS.Canonical') or
                           d in canonical_done) for d in dependencies[m]))
    if not ready:
        if canonical['returncode'] != 0 or canonical['complete']:
            raise RuntimeError('No ready reduction batch: inspect failed dependencies or a cycle.')
        time.sleep(5)
        continue
    # Leave the second compiler slot for the semantic adapters. Three live
    # Lean heaps caused substantial compression/swap on the 16 GB host.
    batch = ready[:1]
    log = logs/f'batch_{number:04d}.log'
    with log.open('w') as out:
        result = subprocess.run(['/Users/mateo2/.elan/bin/lake','build',*batch],
                                cwd=ROOT/'lean',stdout=out,stderr=subprocess.STDOUT)
    if result.returncode == 0:
        done.update(batch)
        release_checked_setup(ROOT, batch)
    checked_nodes = sum(1 for r in manifest['records'].values() if r['module'] in done)
    status = {'completed_modules':sorted(done),'completed_files':len(done),
              'total_files':len(modules),'completed_nodes':checked_nodes,
              'total_nodes':manifest['full_nodes'],'complete':len(done)==len(modules),
              'last_batch':batch,'last_log':str(log.relative_to(AUDIT)),
              'returncode':result.returncode,'elapsed_seconds':time.monotonic()-started,
              'checker_hashes':checker_hashes,'file_hashes':files}
    path.write_text(json.dumps(status,indent=2)+'\n')
    print(f'{len(done)}/{len(modules)} files; {checked_nodes} nodes; exit {result.returncode}; batch {number}',flush=True)
    if result.returncode:
        raise SystemExit(result.returncode)
    number += 1
