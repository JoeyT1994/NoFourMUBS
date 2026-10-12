"""Fetch selected existing Lean sources for reuse review, checking their hashes.

This downloads source text only. It neither executes it nor admits it to the
active proof. Versions retain their content hashes until their dependencies
and theorem hypotheses have been reviewed.
"""
from concurrent.futures import ThreadPoolExecutor
from pathlib import Path
import argparse
import hashlib
import json
import subprocess

AUDIT = Path(__file__).resolve().parent
PIN = '75d27258972d9838c2a7857371becc7271bc7b81'
DEST = AUDIT / 'archive_sources'
DEST.mkdir(exist_ok=True)


def fetch(record):
    digest = record['sha256']
    name = Path(record['blob']).name
    dest = DEST / digest / name
    if dest.exists():
        data = dest.read_bytes()
    else:
        endpoint = ('repos/JoeyT1994/NoFourMUBS/contents/archive/long_proof/Lean/'
                    + record['blob'] + '?ref=' + PIN)
        data = subprocess.check_output(['/opt/homebrew/bin/gh', 'api', endpoint,
             '-H', 'Accept: application/vnd.github.raw+json'], timeout=90)
    assert hashlib.sha256(data).hexdigest() == digest, name
    dest.parent.mkdir(exist_ok=True)
    dest.write_bytes(data)
    return {'module': record['module'], 'sha256': digest, 'bytes': len(data),
            'source': 'archive/long_proof/Lean/'+record['blob'],
            'local': str(dest.relative_to(AUDIT)), 'commit': PIN}


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('selection')
    args = parser.parse_args()
    records = json.loads(Path(args.selection).read_text())
    with ThreadPoolExecutor(max_workers=4) as pool:
        result = list(pool.map(fetch, records))
    path = AUDIT / 'ARCHIVE_FETCHED_SOURCES.json'
    old = json.loads(path.read_text()) if path.exists() else []
    merged = {r['sha256']: r for r in old + result}
    path.write_text(json.dumps(list(merged.values()), indent=2)+'\n')
    print(f'{len(result)} selected sources verified; {len(merged)} unique cached sources')
