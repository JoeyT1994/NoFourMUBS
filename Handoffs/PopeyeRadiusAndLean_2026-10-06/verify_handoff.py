"""Verify package integrity only; this never reports mathematical proof closure."""
from pathlib import Path
import hashlib, json, sys

HERE = Path(__file__).resolve().parent

def check(manifest, base):
    seen = set()
    for line in manifest.read_text().splitlines():
        digest, name = line.split(None, 1)
        name = name.lstrip('*')
        path = (base / name).resolve()
        if path == manifest.resolve() or not path.is_relative_to(base.resolve()):
            raise ValueError('Unsafe/self-referential manifest entry: ' + name)
        if name in seen or not path.is_file():
            raise ValueError('Duplicate/missing entry: ' + name)
        if hashlib.sha256(path.read_bytes()).hexdigest() != digest:
            raise ValueError('Hash mismatch: ' + name)
        seen.add(name)
    if not seen:
        raise ValueError('Empty manifest')
    return len(seen)

def main():
    outer = check(HERE/'MANIFEST.sha256', HERE)
    native = check(HERE/'radius025/MANIFEST.sha256', HERE/'radius025')
    record = json.loads((HERE/'lean/FORMALIZATION_RECORD.json').read_text())
    if record['checked_theorem_count'] != 49 or record['target_proved'] is not False:
        raise ValueError('Unexpected formalization scope')
    for entry in record['checked_modules'] + [record['axiom_audit']]:
        p = HERE/'lean'/Path(entry['source']).name
        if hashlib.sha256(p.read_bytes()).hexdigest() != entry['source_sha256']:
            raise ValueError('Lean source hash mismatch')
        for key in ('checker_log', 'log', 'result'):
            if key in entry:
                original = Path(entry[key])
                p = HERE/'lean/receipts'/original.parent.name/original.name
                if hashlib.sha256(p.read_bytes()).hexdigest() != entry[key+'_sha256']:
                    raise ValueError('Lean receipt hash mismatch')
    print(json.dumps({'status':'PACKAGE_INTEGRITY_PASS', 'files':outer,
                      'native_manifest_entries':native,
                      'lean_checked_components':49,'full_uniform_lean_theorem_proved':False,
                      'full_no_four_mub_theorem_proved':False}))

if __name__ == '__main__':
    main()
