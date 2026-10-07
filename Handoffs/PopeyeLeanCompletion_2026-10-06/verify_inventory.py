#!/usr/bin/env python3
"""Verify this packet's bytes, import inventory and scoped status; not a proof checker."""
from pathlib import Path
import hashlib,json,re,sys
root=Path(__file__).resolve().parent
expected={}
for line in (root/'MANIFEST.sha256').read_text().splitlines():
 digest,name=line.split('  ',1)
 if name in expected or Path(name).is_absolute() or '..' in Path(name).parts:raise SystemExit('Invalid manifest entry')
 expected[name]=digest
actual={str(p.relative_to(root)) for p in root.rglob('*') if p.is_file() and p.name!='MANIFEST.sha256' and '__pycache__' not in p.parts}
if actual!=set(expected):raise SystemExit('File-set mismatch')
for name,digest in expected.items():
 p=root/name
 if p.is_symlink() or hashlib.sha256(p.read_bytes()).hexdigest()!=digest:raise SystemExit('Hash mismatch: '+name)
modules={'.'.join(p.relative_to(root/'lean').with_suffix('').parts):p for p in (root/'lean').rglob('*.lean')}
for module,p in modules.items():
 receipt=json.loads((root/'checks'/(module+'.json')).read_text())
 if receipt['source_sha256']!=hashlib.sha256(p.read_bytes()).hexdigest():raise SystemExit('Source/check mismatch: '+module)
 if not receipt.get('success',receipt.get('returncode')==0):raise SystemExit('Unsuccessful module: '+module)
 for dep in re.findall(r'^import\s+(\S+)',p.read_text(),re.M):
  if not dep.startswith(('Mathlib.','Lean.','Std.')) and dep not in modules:raise SystemExit('Missing local import '+dep)
status=json.loads((root/'STATUS.json').read_text())
if status['full_no_four_MUB6_proved'] or status['only_remaining_boxes_needed']:raise SystemExit('Unsupported full-proof status')
print(json.dumps({'inventory':'PASS','files':len(expected),'local_lean_modules':len(modules),'all_local_imports_present':True,'mathematical_proof_replayed':False,'full_theorem_proved':False},indent=2))
