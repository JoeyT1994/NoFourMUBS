"""Portable source/hash/closure verification; never launches Lean or claims proofs."""
from pathlib import Path
import hashlib,json,re
P=Path(__file__).resolve().parent

def sha(f):return hashlib.sha256(f.read_bytes()).hexdigest()
def load(f):return json.loads(f.read_text())
def external(m):return m.split('.')[0] in {'Init','Std','Lean','Mathlib','Batteries','Aesop','Qq','ProofWidgets','Plausible','LeanSearchClient','ImportGraph','Cli'}
manifest=load(P/'MANIFEST.json')['files'];listed={r['path'] for r in manifest}
assert len(listed)==len(manifest),'duplicate manifest path'
actual={str(f.relative_to(P)) for f in P.rglob('*') if f.is_file() and f.name!='MANIFEST.json' and '__pycache__' not in f.parts}
assert actual==listed,('manifest file set mismatch',actual-listed,listed-actual)
for r in manifest:
 f=P/r['path'];assert f.resolve().is_relative_to(P)
 assert sha(f)==r['sha256'],r['path']
 assert f.suffix not in {'.olean','.ilean','.o','.ir'}
 if f.suffix in {'.json','.md','.py','.lean'}:assert (b'/' + b'Users/') not in f.read_bytes(),r['path']
inventory=load(P/'SOURCE_INVENTORY.json')['modules'];by={r['module']:r for r in inventory};assert len(by)==len(inventory)
plan=load(P/'REPLAY_PLAN.json');order=plan['serial_module_order'];assert set(order)==set(by) and len(order)==len(by)
indices={m:i for i,m in enumerate(order)}
for m,r in by.items():
 f=P/r['file'];assert sha(f)==r['source_sha256']
 s=f.read_text()
 static=[m for line in re.findall(r'^(?:(?:public|private)\s+)?import\s+([^\n]+)',s,re.M) for m in line.split('--',1)[0].split()]
 dynamic=re.findall(r'\{\s*module\s*:=\s*`([A-Za-z0-9_.]+)\s*\}',s)
 assert static==r['static_imports'] and dynamic==r['dynamic_imports'],m
 assert dynamic==plan['dynamic_import_edges'].get(m,[]),m
 for dep in static+dynamic:
  assert external(dep) or dep in by,(m,dep)
  if not external(dep):assert indices[dep]<indices[m],(m,dep,'wrong replay order')
assert 'CoreLabelBridge' not in by
status=load(P/'STATUS.json')
assert status['distinct_auxiliary_phase_roots']==37 and status['exact_distinct_ordinal_intervals']==[[64,100],[2241383,2241384]]
assert not status['full_forest_accepted'] and status['physical_T4_hadamard_box_closures']==0 and not status['global_no_four_mubs_proved']
reviews=[load(f) for f in (P/'reviews').glob('*.json')]
checks=[load(f) for f in (P/'checks').glob('*.json')]
for c in checks:
 assert c['success'] and c['exit_code']==0 and c['source_sha256']==by[c['module']]['source_sha256']
 assert c['object_sha256'] in by[c['module']]['checked_object_sha256s']
 assert all(set(d['axioms'])<={'propext','Classical.choice','Quot.sound'} for d in c['declarations'])
 assert any(r['original_review_sha256']==c['independent_review_sha256'] and any(s['source_sha256']==c['source_sha256'] for s in r['selected_sources']) for r in reviews)
assert len(checks)==status['selected_modules']
assert sum(len(c['declarations']) for c in checks)==status['selected_printed_declarations']
print(json.dumps({'success':True,'manifest_files':len(manifest),'custom_sources':len(by),'selected_modules':len(checks),'printed_declarations':status['selected_printed_declarations'],'explicit_dynamic_module_edges':sum(len(x) for x in plan['dynamic_import_edges'].values()),'auxiliary_phase_roots':37,'full_forests_admitted':0,'physical_T4_box_closures':0,'lean_launched':False},indent=2))
