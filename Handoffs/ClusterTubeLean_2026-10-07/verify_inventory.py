"""Check portable file integrity and source closure, not mathematical truth."""
from pathlib import Path
import hashlib
import json
import re

root = Path(__file__).resolve().parent
manifest = json.loads((root / 'MANIFEST.json').read_text())
listed = {entry['file']: entry['sha256'] for entry in manifest['files']}
actual = {p.relative_to(root).as_posix() for p in root.rglob('*')
          if p.is_file() and p.name != 'MANIFEST.json' and '__pycache__' not in p.parts}
assert set(listed) == actual, (set(listed) - actual, actual - set(listed))
for name, digest in listed.items():
    assert hashlib.sha256((root / name).read_bytes()).hexdigest() == digest, name

sources = {p.relative_to(root / 'lean').with_suffix('').as_posix().replace('/', '.'): p
           for p in (root / 'lean').rglob('*.lean')}
for module, path in sources.items():
    text = path.read_text()
    assert not re.search(r'^\s*(?:axiom|sorry)\b', text, re.M), module
    for imported in re.findall(r'^(?:public )?import\s+(\S+)', text, re.M):
        if imported.split('.')[0] not in {'Mathlib', 'Lean', 'Std', 'Aesop', 'Batteries'}:
            assert imported in sources, (module, imported)

audit = json.loads((root / 'receipts/CentreInterfaceAudit.json').read_text())
assert audit['success'] and audit['exit_code'] == 0
assert audit['source_sha256'] == listed['lean/CentreInterfaceAudit.lean']
log = (root / 'receipts/CentreInterfaceAudit.stdout.txt').read_text()
outputs = re.findall(r"'([^']+)' depends on axioms: \[([^\]]*)\]", log, re.S)
assert len(outputs) == 14
for name, axioms in outputs:
    assert set(a.strip() for a in axioms.split(',')) <= {
        'propext', 'Classical.choice', 'Quot.sound'}, name
entry = (root / 'lean/ApproximateF6GraphExclusion.lean').read_text()
assert 'ApproximateF6CentreCover' in entry
assert 'retained36_no_live_of_centre_cover' in entry
status = json.loads((root / 'STATUS.json').read_text())
assert status['unconditional_box_closures'] == 0
assert status['remaining_local_premise'] == 'ApproximateF6CentreCover'
print(json.dumps({'inventory_pass': True, 'source_modules': len(sources),
                  'audited_interface_theorems': 14,
                  'unconditional_box_closures': 0,
                  'remaining_local_premise': 'ApproximateF6CentreCover'}))
