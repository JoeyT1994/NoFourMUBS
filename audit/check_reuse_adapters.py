"""Kernel-check only the changed overlap adapters, in bounded batches."""
from pathlib import Path
import json
import subprocess

AUDIT = Path(__file__).resolve().parent
path = AUDIT / 'sos/CANONICAL_REUSE_LEDGER.json'
ledger = json.loads(path.read_text())
files = sorted({r['file'] for r in ledger['overlap_adapters']})
logs = AUDIT / 'reuse_adapter_build'
logs.mkdir(exist_ok=True)
done = []
for i in range(0, len(files), 2):
    batch = files[i:i+2]
    modules = ['NoFourMUBs.Step2.SOS.'+Path(f).stem for f in batch]
    log = logs / f'batch_{i//2:03d}.log'
    with log.open('w') as output:
        result = subprocess.run(['/Users/mateo2/.elan/bin/lake', 'build', *modules],
            cwd=AUDIT.parent/'lean', stdout=output, stderr=subprocess.STDOUT)
    if result.returncode == 0:
        done.extend(batch)
    ledger.update(checked_files=done, last_log=str(log.relative_to(AUDIT)),
                  returncode=result.returncode, all_adapters_kernel_checked=len(done)==len(files))
    path.write_text(json.dumps(ledger, indent=2)+'\n')
    print(f'{len(done)}/{len(files)} adapter files; exit {result.returncode}', flush=True)
    if result.returncode:
        raise SystemExit(result.returncode)
