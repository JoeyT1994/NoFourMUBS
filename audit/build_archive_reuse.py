"""Check a pinned archive-reuse manifest in dependency order, one module at a time."""
from pathlib import Path
import argparse
import concurrent.futures
import hashlib
import json
import re
import subprocess
import time
from reuse_preflight import wait_for_reuse_review
from release_checked_setup import release_checked_setup


def reusable_modules(previous, records, hashes, imports):
    """Retain a receipt only when its tracked dependency closure is unchanged."""
    old_hashes = previous.get('source_hashes', {})
    tracked = set(old_hashes) | set(hashes)
    changed = {p for p in tracked if old_hashes.get(p) != hashes.get(p)}
    paths = {r['module']: r['active_path'] for r in records}
    retained = set()
    for module in previous.get('completed_modules', []):
        if module not in paths:
            continue
        pending = [paths[module]]
        seen = set()
        while pending:
            path = pending.pop()
            if path in changed:
                break
            if path in seen:
                continue
            seen.add(path)
            pending.extend(p for p in imports.get(path, []) if p in tracked)
        else:
            retained.add(module)
    return retained


AUDIT = Path(__file__).resolve().parent
ROOT = AUDIT.parent
parser = argparse.ArgumentParser()
parser.add_argument('--manifest', required=True)
parser.add_argument('--status', required=True)
parser.add_argument('--max-modules', type=int)
parser.add_argument('--jobs', type=int, choices=[1, 2], default=1,
                    help='At most two independent checked-dependency targets at once.')
parser.add_argument('--defer-module', action='append', default=[],
                    help='Leave this module unverified while checking independent modules.')
args = parser.parse_args()
manifest = json.loads((AUDIT / args.manifest).read_text())
records = manifest['records']
hashes = {r['active_path']: r['active_sha256'] for r in records}
module_paths = {r['module']: r['active_path'] for r in records}
imports = {}
for path, digest in hashes.items():
    source = (ROOT / 'lean' / path).read_bytes()
    assert hashlib.sha256(source).hexdigest() == digest
    dependencies = []
    for line in re.findall(r'^import\s+([^\n]+)', source.decode(), re.M):
        dependencies.extend(module_paths.get(name, name.replace('.', '/') + '.lean')
                            for name in line.split('--', 1)[0].split())
    imports[path] = dependencies
status_path = AUDIT / args.status
previous = json.loads(status_path.read_text()) if status_path.exists() else {}
# Changed, added or removed dependencies invalidate all affected receipts.
# Independent checked modules retain their receipts; no new module is certified.
done = reusable_modules(previous, records, hashes, imports)
logs = AUDIT / (Path(args.status).stem.lower() + '_logs')
logs.mkdir(exist_ok=True)
number = 1 + max((int(p.stem.split('_')[-1]) for p in logs.glob('batch_*.log')), default=-1)
count = 0
started = time.monotonic()

if args.jobs == 2:
    # Only ready leaves are concurrent. A successor is never handed to Lake
    # before every tracked import has a successful current-source receipt.
    # The caller must hold both proof-lane locks for this mode.
    paths_to_modules = {r['active_path']: r['module'] for r in records}
    dependencies = {
        r['module']: {paths_to_modules[p] for p in imports[r['active_path']]
                      if p in paths_to_modules}
        for r in records
    }
    running = {}
    failure = 0
    stopping = False

    def check_target(module, log):
        with log.open('w') as out:
            return subprocess.run(['/Users/mateo2/.elan/bin/lake', 'build', module],
                                  cwd=ROOT / 'lean', stdout=out,
                                  stderr=subprocess.STDOUT).returncode

    with concurrent.futures.ThreadPoolExecutor(max_workers=2) as pool:
        while True:
            stopping = stopping or (AUDIT / 'SOS_CANONICAL_BUILD_STOP').exists()
            live = {item[0] for item in running.values()}
            if not failure and not stopping:
                for record in records:
                    module = record['module']
                    if len(running) == 2:
                        break
                    if args.max_modules is not None and count >= args.max_modules:
                        break
                    if module in done or module in live or module in args.defer_module:
                        continue
                    if not dependencies[module] <= done:
                        continue
                    wait_for_reuse_review(manifest['scope'])
                    log = logs / f'batch_{number:04d}.log'
                    future = pool.submit(check_target, module, log)
                    running[future] = (module, log)
                    live.add(module)
                    number += 1
                    count += 1
                    print(f'Started ({len(running)}/2): {module}', flush=True)
            if not running:
                remaining = {r['module'] for r in records} - done - set(args.defer_module)
                if remaining and not stopping and not failure and not (
                        args.max_modules is not None and count >= args.max_modules):
                    print('No ready target; unresolved tracked imports: '+
                          ', '.join(sorted(remaining)), flush=True)
                    failure = 1
                break
            ready, _ = concurrent.futures.wait(running, timeout=1,
                return_when=concurrent.futures.FIRST_COMPLETED)
            for future in ready:
                module, log = running.pop(future)
                returncode = future.result()
                if returncode == 0:
                    done.add(module)
                    release_checked_setup(ROOT, [module])
                else:
                    failure = returncode
                state = {
                    'completed_modules': sorted(done), 'completed_files': len(done),
                    'total_files': len(records), 'complete': len(done) == len(records),
                    'last_module': module, 'last_log': str(log.relative_to(AUDIT)),
                    'returncode': returncode, 'source_hashes': hashes,
                    'manifest': args.manifest, 'elapsed_seconds': time.monotonic()-started,
                    'deferred_modules': args.defer_module, 'workers': 2,
                    'running_modules': [m for m, _ in running.values()],
                    'failure_returncode': failure,
                }
                status_path.write_text(json.dumps(state, indent=2)+'\n')
                print(f'{len(done)}/{len(records)} checked; exit {returncode}; {module}',
                      flush=True)
    if stopping:
        print('Stopped between modules; successful checks retained.', flush=True)
    raise SystemExit(failure)

for record in records:
    module = record['module']
    if module in done:
        continue
    if module in args.defer_module:
        print(f'Deferred, not checked: {module}', flush=True)
        continue
    if (AUDIT / 'SOS_CANONICAL_BUILD_STOP').exists():
        print('Stopped between modules; successful checks retained.', flush=True)
        break
    if args.max_modules is not None and count >= args.max_modules:
        break
    wait_for_reuse_review(manifest['scope'])
    log = logs / f'batch_{number:04d}.log'
    with log.open('w') as out:
        result = subprocess.run(['/Users/mateo2/.elan/bin/lake', 'build', module],
                                cwd=ROOT / 'lean', stdout=out, stderr=subprocess.STDOUT)
    if result.returncode == 0:
        done.add(module)
        release_checked_setup(ROOT, [module])
    state = {
        'completed_modules': sorted(done), 'completed_files': len(done),
        'total_files': len(records), 'complete': len(done) == len(records),
        'last_module': module, 'last_log': str(log.relative_to(AUDIT)),
        'returncode': result.returncode, 'source_hashes': hashes,
        'manifest': args.manifest, 'elapsed_seconds': time.monotonic() - started,
        'deferred_modules': args.defer_module,
    }
    status_path.write_text(json.dumps(state, indent=2) + '\n')
    print(f'{len(done)}/{len(records)} checked; exit {result.returncode}; {module}', flush=True)
    if result.returncode:
        raise SystemExit(result.returncode)
    number += 1
    count += 1
