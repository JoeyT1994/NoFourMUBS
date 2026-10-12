"""Release only Lake's regenerable setup description after a successful build.

Lake 4.33's Module.checkArtifactsExist does not require this file. The pinned
implementation and a successful cache-only rebuild were reviewed in
GENERATED_DEPENDENCY_SETUP_CLEANUP.json and BUILD_CACHE_AFTER_SETUP_CLEANUP.log.
Compiled proofs, traces, generated C and Lean sources are always retained.
"""
from datetime import datetime, timezone
import hashlib
import json
from pathlib import Path


def release_checked_setup(root: Path, modules):
    for module in modules:
        if module.startswith('NoFourMUBs.'):
            package = root / 'lean'
        elif module.startswith('Hadamard6.'):
            package = root / 'lean/vendor/hadamard6'
        else:
            raise AssertionError(f'Unregistered task package: {module}')
        relative = Path(*module.split('.'))
        setup = package / '.lake/build/ir' / relative.with_suffix('.setup.json')
        proof = package / '.lake/build/lib/lean' / relative.with_suffix('.olean')
        if not setup.is_file() or not proof.is_file():
            continue
        size = setup.stat().st_size
        digest = hashlib.sha256()
        with setup.open('rb') as stream:
            for block in iter(lambda: stream.read(1024 * 1024), b''):
                digest.update(block)
        setup.unlink()
        record = {'checked_at': datetime.now(timezone.utc).isoformat(),
                  'module': module, 'path': str(setup.relative_to(root)),
                  'bytes': size, 'sha256': digest.hexdigest(),
                  'reason': 'Successful module build; compiled proof retained'}
        with (root / 'audit/RELEASED_CHECKED_SETUP.jsonl').open('a') as out:
            out.write(json.dumps(record) + '\n')
