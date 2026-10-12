"""Check existing row/term adapters after normalization dependencies pass.

At most one row/term module runs alongside the bounded reduction builder.
Successful source hashes are retained; repository updates stop new batches.
"""
from pathlib import Path
import argparse
import hashlib
import json
import subprocess
import sys
import time
from reuse_preflight import wait_for_reuse_review
from release_checked_setup import release_checked_setup

ROOT = Path(__file__).resolve().parents[1]
AUDIT = ROOT/'audit'
SOURCE = ROOT/'lean/NoFourMUBs/Step2/SOS'
parser = argparse.ArgumentParser()
parser.add_argument('--family', choices=['boundary', 'fourier', 'target', 'psi', 'auto'], default='boundary')
parser.add_argument('--ready-only', action='store_true')
parser.add_argument('--max-batches', type=int)
args = parser.parse_args()
if args.family == 'auto':
    # Reuse this same bounded builder; never start competing family workers.
    families = ['target','psi','fourier','boundary']
    def snapshots():
        result = []
        for f in families:
            p = AUDIT/f'SOS_{f.upper()}_ROW_BUILD_STATUS.json'
            result.append(json.loads(p.read_text()) if p.exists() else {})
        return result
    rounds = 0
    while not (AUDIT/'SOS_CANONICAL_BUILD_STOP').exists():
        before = sum(s.get('completed_files',0) for s in snapshots())
        for f in families:
            if (AUDIT/'SOS_CANONICAL_BUILD_STOP').exists(): break
            result = subprocess.run([sys.executable,'-u',str(Path(__file__).resolve()),
                '--family',f,'--ready-only','--max-batches','1'])
            if result.returncode: raise SystemExit(result.returncode)
        states = snapshots()
        after = sum(s.get('completed_files',0) for s in states)
        rounds += 1
        if all(s.get('complete',False) for s in states): break
        if args.max_batches is not None and rounds >= args.max_batches: break
        if after == before:
            if args.ready_only: break
            time.sleep(5)
    raise SystemExit(0)
family = args.family.upper()
manifest_name = 'TARGET_PROJECTION_MANIFEST.json' if args.family == 'target' else f'{family}_ROW_MANIFEST.json'
manifest = json.loads((AUDIT/'sos'/manifest_name).read_text())
files = {n: h for n, h in manifest['files'].items() if n != 'FourierRowInputs.lean'}
if args.family == 'boundary':
    assert manifest['emitted_equations'] == manifest['remaining_boundary_equations']
    total_rows, records = manifest['remaining_boundary_equations'], manifest['records']
elif args.family == 'target':
    files = {n:h for n,h in files.items() if n.startswith(('TargetPsiRow','TargetCornerRow'))}
    records = manifest['rows']
    total_rows = len(records)
elif args.family == 'psi':
    # Final Psi row assemblies import the physical theory: check them alone.
    files = {n:h for n,h in files.items() if n.startswith('PsiTerms')}
    records = manifest['term_records']
    total_rows = len(records)
else:
    total_rows, records = manifest['equations'], manifest['records']
for name,digest in files.items():
    assert hashlib.sha256((SOURCE/name).read_bytes()).hexdigest() == digest
modules = {'NoFourMUBs.Step2.SOS.'+Path(f).stem:f for f in files}
dependencies = {m:[line.split()[1] for line in (SOURCE/f).read_text().splitlines()
                   if line.startswith('import ')] for m,f in modules.items()}
checker_names = ['PrimitiveRows.lean','IntegerProjection.lean','ReuseProjection.lean',
                 'NormalizationContext.lean','NormalizationContextData.lean',
                 'ReductionRules.lean','CanonicalCheck.lean','Normalization.lean','Padding.lean']
if args.family == 'fourier':
    checker_names += ['FourierRowInputs.lean', 'FourierContraction.lean', 'FourierProducts.lean']
    assert hashlib.sha256((SOURCE/'FourierRowInputs.lean').read_bytes()).hexdigest() == manifest['files']['FourierRowInputs.lean']
if args.family in ['target','psi']:
    checker_names += ['MomentExponentData.lean']
if args.family == 'psi':
    checker_names += ['PsiRowInputs.lean']
if args.family == 'target':
    checker_names += ['TargetProjectionTerms.lean','CornerPairMoments.lean',
                      'CornerPairPatterns.lean','CornerPairSampling.lean','TailPadding.lean']
checker_hashes = {n:hashlib.sha256((SOURCE/n).read_bytes()).hexdigest() for n in checker_names}
for n in ['REDUCTION_MANIFEST.json','OLD_PROJECTION_MANIFEST.json','CANONICAL_MANIFEST.json']:
    d = json.loads((AUDIT/'sos'/n).read_text())['files']
    checker_hashes[n] = hashlib.sha256(json.dumps(d,sort_keys=True).encode()).hexdigest()
path = AUDIT/f'SOS_{family}_ROW_BUILD_STATUS.json'
previous = json.loads(path.read_text()) if path.exists() else {}
done = set()
if previous.get('checker_hashes') == checker_hashes:
    done = {m for m in previous.get('completed_modules',[]) if m in modules and
            previous.get('file_hashes',{}).get(modules[m]) == files[modules[m]]}
logs = AUDIT/f'sos_{args.family}_row_build'
logs.mkdir(exist_ok=True)
number = 1+max((int(p.stem.split('_')[-1]) for p in logs.glob('batch_*.log')),default=-1)
started = time.monotonic()
batches = 0
while len(done) < len(modules):
    if args.max_batches is not None and batches >= args.max_batches:
        print('Requested batch limit reached; checked results retained.', flush=True)
        break
    if (AUDIT/'SOS_CANONICAL_BUILD_STOP').exists():
        print('Stop marker detected: stopped between batches; checked results retained.',flush=True)
        break
    wait_for_reuse_review('physical_target_projection' if args.family == 'target' else 'moment_normalization')
    reductions = json.loads((AUDIT/'SOS_REDUCTION_BUILD_STATUS.json').read_text())
    checked = set(reductions['completed_modules'])
    ready = sorted(m for m in set(modules)-done if all(
        not d.startswith('NoFourMUBs.Step2.SOS.Reductions') or d in checked
        for d in dependencies[m]))
    if not ready:
        if args.ready_only:
            print('All currently ready modules checked; remaining normalization dependencies are pending.', flush=True)
            break
        if reductions['returncode'] != 0 or reductions['complete']:
            raise RuntimeError('No ready row module: inspect reduction dependencies.')
        time.sleep(5)
        continue
    batch = ready[:1]
    log = logs/f'batch_{number:04d}.log'
    with log.open('w') as out:
        result = subprocess.run(['/Users/mateo2/.elan/bin/lake','build',*batch],
                                cwd=ROOT/'lean',stdout=out,stderr=subprocess.STDOUT)
    if result.returncode == 0:
        done.update(batch)
        release_checked_setup(ROOT, batch)
    checked_rows = sum(r['module'] in done for r in records.values())
    status = {'completed_modules':sorted(done),'completed_files':len(done),
              'total_files':len(modules),'completed_rows':checked_rows,
              'total_rows':total_rows,
              'complete':len(done)==len(modules),'last_batch':batch,
              'last_log':str(log.relative_to(AUDIT)),'returncode':result.returncode,
              'elapsed_seconds':time.monotonic()-started,
              'checker_hashes':checker_hashes,'file_hashes':files}
    path.write_text(json.dumps(status,indent=2)+'\n')
    print(f'{len(done)}/{len(modules)} files; {checked_rows} rows; exit {result.returncode}; batch {number}',flush=True)
    if result.returncode: raise SystemExit(result.returncode)
    number += 1
    batches += 1
