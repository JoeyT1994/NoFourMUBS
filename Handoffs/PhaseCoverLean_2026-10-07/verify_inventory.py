"""Verify a portable source inventory; this does not run Lean."""
from pathlib import Path
import hashlib, json, re, sys, tomllib

P = Path(sys.argv[1]).resolve() if len(sys.argv)>1 else Path(__file__).resolve().parent
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
load = lambda p: json.loads(p.read_text())
manifest = load(P/'MANIFEST.json')['files']
expected = {x['path']:x['sha256'] for x in manifest}
assert len(expected)==len(manifest), 'Duplicate manifest path.'
actual = {str(x.relative_to(P)) for x in P.rglob('*') if x.is_file() and x.name!='MANIFEST.json'}
assert actual==set(expected), ('Manifest/file set mismatch',actual^set(expected))
for relative,digest in expected.items():
    assert not Path(relative).is_absolute() and '..' not in Path(relative).parts
    path=P/relative
    assert sha(path)==digest, ('Hash mismatch',relative)
    assert path.suffix not in ['.olean','.ilean','.ir','.bin','.tags','.tar','.gz']
    assert path.name not in ['JOB.json','RUNTIME.json','stdout.log','stderr.log']
    text=path.read_text()
    assert not re.search(r'/(?:Users|home|private|opt|tmp|var)/|[A-Z]:\\',text), ('Host path',relative)

inventory=load(P/'SOURCE_INVENTORY.json')['modules']
modules={x['module']:x for x in inventory}
assert len(modules)==len(inventory), 'Conflicting module names.'
standard=lambda m:any(m==s or m.startswith(s+'.') for s in ['Mathlib','Init','Lean','Std','Batteries','Aesop','Qq'])
for module,row in modules.items():
    source=P/row['file']
    assert row['file']=='lean/'+module.replace('.','/')+'.lean'
    assert sha(source)==row['source_sha256']
    deps=[m for line in re.findall(r'^(?:(?:public|private)\s+)?import\s+([^\n]+)',source.read_text(),re.M)
          for m in line.split('--')[0].split()]
    assert deps==row['imports'], ('Import inventory mismatch',module)
    assert all(standard(d) or d in modules for d in deps), ('Unclosed custom import',module)
excluded={'ConcretePhaseChecks','RoundedCentreData','IntegerBallLabel','SquareBallLabel','BallLabelAudit'}
assert not excluded.intersection(modules)
assert [x for x in modules if 'Pilot' in x]==['RejectionPilot64Compact']

allowed={'propext','Classical.choice','Quot.sound'}
receipts=[load(x) for x in sorted((P/'receipts').glob('*.json'))]
assert {x['module'] for x in receipts}=={m for m,r in modules.items() if r['selected_root']}
reviews=[load(x) for x in sorted((P/'reviews').glob('*.json'))]
reviewed={(x['original_review_sha256'],s['module'],s['source_sha256']) for x in reviews for s in x['selected_sources']}
names=[]
for row in receipts:
    assert row['success'] and row['exit_code']==0
    assert row['source_sha256']==modules[row['module']]['source_sha256']
    assert (row['review_sha256'],row['module'],row['source_sha256']) in reviewed
    for declaration in row['declarations']:
        assert set(declaration['axioms'])<=allowed
        names.append(declaration['name'])
assert len(names)==len(set(names)), 'Duplicate selected global declarations.'
status=load(P/'STATUS.json')
assert status['source_closure_module_count']==len(modules)
assert status['selected_module_count']==len(receipts)
assert status['selected_declaration_count']==len(names)
assert status['pilot_phase_root_ordinals']=={'start':0,'count':64}
assert status['physical_retained36_closures']==0
assert not status['whole_cover_accepted'] and not status['pilot_is_physical_boxes']
assert not status['global_no_four_proved'] and not status['fresh_clean_rebuild_performed_here']
config=tomllib.loads((P/'lakefile.toml').read_text())
assert config['lean_lib'][0]['srcDir']=='lean'
assert set(config['lean_lib'][0]['roots'])=={x['module'] for x in receipts}
assert config['require']==[{'name':'mathlib','git':'https://github.com/leanprover-community/mathlib4.git',
                            'rev':status['toolchain']['mathlib_revision']}]
assert (P/'lean-toolchain').read_text().strip()=='leanprover/lean4:v'+status['toolchain']['lean']
assert (P/'LICENSE.mathlib').is_file()
print(json.dumps({'status':'PASS_SOURCE_INVENTORY_ONLY','source_modules':len(modules),
                  'selected_modules':len(receipts),'selected_declarations':len(names),
                  'actual_pilots':1,'pilot_phase_roots':64,'physical_box_closures':0},indent=2))
