"""Fetch only the pinned Fourier theorem's transitive OAI source dependencies.

No Lean source is executed by this downloader. Source bytes and imports are
recorded for the subsequent trust audit and Lean build.
"""
from concurrent.futures import ThreadPoolExecutor, as_completed
from pathlib import Path
import hashlib
import json
import re
import subprocess
import time

PIN = 'fd4aeeb2ee4fc729c18d98444fed42fd0529eeeb'
ROOT = Path(__file__).resolve().parents[1]
DEST = ROOT / 'lean/vendor/fourier'
REPORT = ROOT / 'audit/FOURIER_SOURCE_MANIFEST.json'
START = 'OAI.Analysis.MutuallyUnbiased.Fourier.FourierTheorem'
IMPORT = re.compile(r'^(?:public\s+)?import\s+([^\n]+)', re.M)
VALID = re.compile(r'[A-Za-z_][A-Za-z_0-9.]*(?:\.[A-Za-z_0-9]+)*\Z')
records = {}
external = set()


def get(module):
    assert VALID.fullmatch(module) and module.startswith('OAI.')
    rel = module.replace('.', '/') + '.lean'
    path = DEST / rel
    if path.exists():
        body = path.read_bytes()
    else:
        url = f'https://raw.githubusercontent.com/openai/math/{PIN}/lean/{rel}'
        for attempt in range(5):
            try:
                body = subprocess.check_output(
                    ['/usr/bin/curl', '--fail', '--silent', '--show-error',
                     '--location', '--max-time', '45', url])
                break
            except Exception:
                if attempt == 4:
                    raise
                time.sleep(2 ** attempt)
        path.parent.mkdir(parents=True, exist_ok=True)
        path.write_bytes(body)
    text = body.decode()
    deps = []
    for match in IMPORT.finditer(text):
        for name in match.group(1).split('--', 1)[0].split():
            assert VALID.fullmatch(name), (module, name)
            deps.append(name)
    return module, {
        'path': rel, 'bytes': len(body), 'sha256': hashlib.sha256(body).hexdigest(),
        'imports': deps,
    }


pending = {START}
with ThreadPoolExecutor(max_workers=5) as pool:
    while pending:
        batch = sorted(pending)
        pending = set()
        for future in as_completed([pool.submit(get, m) for m in batch]):
            module, record = future.result()
            records[module] = record
            for dep in record['imports']:
                if dep.startswith('OAI.'):
                    if dep not in records:
                        pending.add(dep)
                else:
                    external.add(dep)
        pending.difference_update(records)
        REPORT.write_text(json.dumps({
            'repository': 'https://github.com/openai/math', 'commit': PIN,
            'entry_point': START, 'closure_complete': not pending,
            'files': records, 'external_imports': sorted(external),
        }, indent=2) + '\n')
        print(f'{len(records)} source files, {len(pending)} pending', flush=True)
print('Pinned Fourier dependency closure downloaded and hashed.', flush=True)
