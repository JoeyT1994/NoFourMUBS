"""Verify recovered bytes and preservation of the pinned original statements."""
from pathlib import Path
import hashlib,json

HERE=Path(__file__).resolve().parent


def run():
    manifest=json.loads((HERE/'RECOVERY_MANIFEST.json').read_text())
    for record in manifest['files']:
        path=Path(record['path'])
        assert not path.is_absolute() and '..' not in path.parts
        data=(HERE/path).read_bytes()
        assert len(data)==record['bytes']
        assert hashlib.sha256(data).hexdigest()==record['sha256']
    excerpts=json.loads((HERE/'SESSION_EXCERPT_MANIFEST.json').read_text())
    for record in excerpts['files']:
        path=Path(record['path'])
        assert not path.is_absolute() and '..' not in path.parts
        data=(HERE/path).read_bytes()
        assert len(data)==record['bytes']
        assert hashlib.sha256(data).hexdigest()==record['sha256']
    baseline=json.loads((HERE/'APPEND_ONLY_BASELINES.json').read_text())
    original=json.loads((HERE/'ORIGINAL_PIN_HASHES.json').read_text())
    current={}
    for name,record in baseline.items():
        data=(HERE.parent/name).read_bytes()
        assert len(data)>record['bytes']
        assert hashlib.sha256(data[:record['bytes']]).hexdigest()==record['sha256']
        assert original['MinimalConstruction/'+name]==record['sha256']
        current[name]=hashlib.sha256(data).hexdigest()
    return dict(status='PASS_PROVENANCE_AND_APPEND_ONLY',
                recovered_files=len(manifest['files']),current_pinned_file_hashes=current,
                recovered_session_excerpts=len(excerpts['files']),
                scope='Byte preservation and provenance only; not acceptance of historical proof claims.')


if __name__=='__main__':
    print(json.dumps(run(),indent=2))
