#!/usr/bin/env python3
"""Read-only artifact verification; this does not run Lean or grant proof credit."""
from pathlib import Path
import ast,hashlib,json,re
P=Path(__file__).resolve().parent
manifest=json.loads((P/'MANIFEST.json').read_text())
listed={x['path']:x for x in manifest['files']}
actual={str(p.relative_to(P)) for p in P.rglob('*') if p.is_file() and p.name!='MANIFEST.json'}
assert actual==set(listed),('inventory mismatch',sorted(actual-set(listed)),sorted(set(listed)-actual))
for rel,item in listed.items():
 p=P/rel
 assert not p.is_symlink() and p.resolve().is_relative_to(P.resolve())
 b=p.read_bytes()
 assert len(b)==item['bytes'] and hashlib.sha256(b).hexdigest()==item['sha256'],rel
 if p.suffix in ['.json','.md','.py','.toml','.lean','.txt']:
  assert b'/'+b'Users'+b'/' not in b and b'/'+b'private'+b'/var/' not in b,rel
inv=json.loads((P/'SOURCE_INVENTORY.json').read_text())
names=[x['module'] for x in inv['modules']]
assert len(names)==len(set(names))==6
total=0
for row in inv['modules']:
 source=(P/row['source']).read_text()
 imports=re.findall(r'^(?:(?:public|private)\s+)?import\s+(\S+)',source,re.M)
 assert imports==row['imports']
 assert all(i=='Std' or i in names for i in imports)
 assert not re.search(r'\b(?:sorry|admit|native_decide|axiom)\b',source)
 assert hashlib.sha256(source.encode()).hexdigest()==row['source_sha256']
 lines=(P/row['axioms']).read_text().splitlines()
 assert len(lines)==row['printed_declarations']
 assert all('sorryAx' not in l for l in lines)
 total+=len(lines)
assert total==410
fixture=(P/'data/centre-root-2241383.tags').read_bytes()
status=json.loads((P/'STATUS.json').read_text())
assert len(fixture)==385 and hashlib.sha256(fixture).hexdigest()==status['fixture_sha256']
source=(P/'lean/PureCentre385Compositional.lean').read_text()
m=re.search(r'theorem erased_fixture : eraseTape tags_000 = (\[[^\n]+\]) :=',source)
assert m and bytes(ast.literal_eval(m[1]))==fixture
assert status['complete_pure_phase_roots_accepted']==1 and status['physical_36_box_closures']==0
assert not status['whole_7485187_node_forest_accepted']
print(json.dumps({'status':'INVENTORY_PASS','modules':6,'printed_declarations':410,
 'complete_pure_phase_roots':1,'physical_36_box_closures':0}))
