"""Check the portable C18 inventory, never execute Lean or a certificate."""
from pathlib import Path
import hashlib
import json
import re
import sys
import tomllib

P = Path(sys.argv[1]).resolve() if len(sys.argv) > 1 else Path(__file__).resolve().parent
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
load = lambda p: json.loads(p.read_text())
manifest = load(P / 'MANIFEST.json')['files']
expected = {row['path']: row for row in manifest}
assert len(expected) == len(manifest), 'Duplicate manifest path.'
actual = {str(p.relative_to(P)) for p in P.rglob('*')
          if p.is_file() and p != P / 'MANIFEST.json'}
assert actual == set(expected), ('Manifest/file set mismatch', actual ^ set(expected))
for relative, row in expected.items():
    rel = Path(relative)
    assert not rel.is_absolute() and '..' not in rel.parts
    path = P / rel
    assert not path.is_symlink(), ('Symlink not admitted', relative)
    assert sha(path) == row['sha256'], ('Hash mismatch', relative)
    assert path.stat().st_size == row['bytes'], ('Byte count mismatch', relative)
    assert path.suffix not in ['.olean', '.ilean', '.ir', '.bin', '.tags', '.tar', '.gz']
    assert path.name not in ['JOB.json', 'RUNTIME.json', 'stdout.log', 'stderr.log']
    text = path.read_text()
    assert not re.search(r'/(?:Users|home|private|opt|tmp|var)/|[A-Z]:\\', text), ('Host path', relative)

inventory = load(P / 'SOURCE_INVENTORY.json')
modules = {row['module']: row for row in inventory['modules']}
assert len(modules) == len(inventory['modules']), 'Duplicate module name.'
order = inventory['topological_order']
assert len(order) == len(set(order)) and set(order) == set(modules)
indices = {module: i for i, module in enumerate(order)}
standard = lambda m: any(m == s or m.startswith(s + '.') for s in
                         ['Mathlib', 'Init', 'Lean', 'Std', 'Batteries', 'Aesop', 'Qq'])
for module, row in modules.items():
    assert row['file'] == 'lean/' + module.replace('.', '/') + '.lean'
    source = P / row['file']
    assert sha(source) == row['source_sha256']
    assert re.fullmatch('[0-9a-f]{64}', row['source_receipt_sha256'])
    assert row['checked_import_object_sha256s']
    assert all(re.fullmatch('[0-9a-f]{64}', h) for h in row['checked_import_object_sha256s'])
    deps = [m for line in re.findall(r'^(?:(?:public|private)\s+)?import\s+([^\n]+)',
                                    source.read_text(), re.M)
            for m in line.split('--')[0].split()]
    assert deps == row['imports'], ('Import inventory mismatch', module)
    assert all(standard(d) or d in modules for d in deps), ('Unclosed import', module)
    assert all(standard(d) or indices[d] < indices[module] for d in deps)
assert not any('Pilot' in m or 'PureCentre' in m or 'PureChild' in m for m in modules)
assert 'WitnessTapeRefinement' in modules

receipt = load(P / 'receipts/WitnessTapeRefinement.json')
assert {p.name for p in (P / 'receipts').glob('*.json')} == {'WitnessTapeRefinement.json'}
assert receipt['module'] == 'WitnessTapeRefinement'
assert receipt['result']['success'] and receipt['result']['exit_code'] == 0
assert receipt['source_sha256'] == receipt['result']['source_sha256'] == modules[receipt['module']]['source_sha256']
assert receipt['original_object_sha256'] in modules[receipt['module']]['checked_import_object_sha256s']
assert len(receipt['axioms']) == 11
assert all(set(axioms) <= {'propext', 'Classical.choice', 'Quot.sound'}
           for axioms in receipt['axioms'].values())
assert receipt['flags'] == ['-j1', '-M2304', '-T2000000']
assert receipt['guard'] == {'seconds': 180, 'heap_mib': 2304,
                             'rss_stop_mib': 2816, 'minimum_free_disk_bytes': 2147483648}
record = load(P / 'FORMALIZATION_RECORD.json')
addendum = load(P / 'REVIEW_ADDENDUM.json')
review = load(P / 'reviews/ROOT_INDEPENDENT_REVIEW.json')
assert addendum['formalization_record_sha256'] == sha(P / 'FORMALIZATION_RECORD.json')
assert addendum['status'] == 'INDEPENDENTLY_REVIEWED_PASS_SCOPED'
assert addendum['review_sha256'] == review['original_review_sha256']
assert review['status'] == 'PASS_SCOPED' and review['audited_declarations'] == 11
assert record['source_sha256'] == review['source_sha256'] == receipt['source_sha256'] == addendum['source_sha256']
assert record['receipt_sha256'] == review['result_sha256'] == receipt['original_result_sha256']
assert record['stdout_sha256'] == review['log_sha256'] == receipt['original_stdout_sha256']
assert record['object_sha256'] == review['object_sha256'] == receipt['original_object_sha256']
assert record['axioms_by_theorem'] == receipt['axioms']
assert len(record['explicit_generic_premises']) == 3
assert not review['physical_proof_admission'] and not review['complete_forest_admission']
for binding in review['direct_import_bindings']:
    assert binding['source_sha256'] == modules[binding['module']]['source_sha256']
    assert binding['object_sha256'] in modules[binding['module']]['checked_import_object_sha256s']
    assert 'resolved_path' not in binding

status = load(P / 'STATUS.json')
assert status['status'] == 'REVIEWED_GENERIC_TYPED_TAPE_REFINEMENT'
assert status['selected_module'] == receipt['module'] and status['selected_declarations'] == 11
assert status['custom_source_closure_modules'] == len(modules)
assert status['actual_tapes_or_roots_accepted_by_this_component'] == 0
assert status['physical_roots_or_boxes_closed'] == 0
assert not status['full_forest_accepted'] and not status['fresh_clean_rebuild_performed']
assert len(status['explicit_premises']) == 3
config = tomllib.loads((P / 'lakefile.toml').read_text())
assert config['lean_lib'][0]['srcDir'] == 'lean'
assert config['lean_lib'][0]['roots'] == ['WitnessTapeRefinement']
assert config['require'] == [{'name': 'mathlib', 'git': 'https://github.com/leanprover-community/mathlib4.git',
                              'rev': status['toolchain']['mathlib']}]
assert (P / 'lean-toolchain').read_text().strip() == 'leanprover/lean4:v' + status['toolchain']['lean']
assert (P / 'LICENSE.mathlib').is_file()
print(json.dumps({'status': 'PASS_SOURCE_INVENTORY_ONLY', 'custom_modules': len(modules),
                  'selected_declarations': 11, 'actual_tapes_or_roots': 0,
                  'physical_boxes_closed': 0, 'manifest_sha256': sha(P / 'MANIFEST.json')}, indent=2))
