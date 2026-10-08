"""Read-only source/receipt checks for the split data and table refinement.

This does not invoke Lean, evaluate the forest, or regenerate numerical data.
Run with --include-table only after check-core-table-01 has a successful result.
"""
from pathlib import Path
import argparse
import hashlib
import json
import re

HERE = Path(__file__).resolve().parent
WORK = next(p for p in HERE.parents if (p / 'cluster-tube-inclusion').is_dir())
BRIDGE = WORK / 'cluster-tube-inclusion/frontend-bridge/square-acceleration/std-core-bridge'
SPLIT = BRIDGE / 'data-split'
parser = argparse.ArgumentParser()
parser.add_argument('--include-table', action='store_true')
args = parser.parse_args()
ALLOWED = {'propext', 'Classical.choice', 'Quot.sound'}


def sha(p):
    assert not p.stat().st_flags & 0x40000000, 'Refuse dataless input.'
    return hashlib.sha256(p.read_bytes()).hexdigest()


def load(p):
    sha(p)
    return json.loads(p.read_text())


def imports(p):
    return [m for line in re.findall(r'^(?:(?:public|private)\s+)?import\s+([^\n]+)',
                                     p.read_text(), re.M)
            for m in line.split('--')[0].split()]


def standard(m):
    return any(m == s or m.startswith(s + '.') for s in
               ['Mathlib', 'Init', 'Lean', 'Std', 'Batteries', 'Aesop', 'Qq'])


def resolve(module, job):
    relative = Path(*module.split('.')).with_suffix('.olean')
    candidates = list(dict.fromkeys(Path(d) / relative for d in job['lean_path']
                                   if (Path(d) / relative).is_file()))
    assert len(candidates) == 1, ('Nonunique direct import', module, len(candidates))
    obj = candidates[0]
    src = obj.with_suffix('.lean')
    result = load(obj.parent / 'RESULT.json')
    assert result['success'] and result['exit_code'] == 0
    assert sha(src) == result['source_sha256']
    return {'module': module, 'source_sha256': sha(src), 'object_sha256': sha(obj),
            'receipt_sha256': sha(obj.parent / 'RESULT.json'), 'unique_resolution': True}


def checked(module, parent, check_name, expected_count):
    check = parent / check_name
    current = parent / (module + '.lean')
    frozen = check / (module + '.lean')
    result = load(check / 'RESULT.json')
    job = load(check / 'JOB.json')
    assert result['success'] and result['exit_code'] == 0
    assert sha(current) == sha(frozen) == result['source_sha256'] == job['source_sha256']
    text = frozen.read_text()
    assert not re.search(r'^\s*(axiom|unsafe|sorry|admit)\b', text, re.M)
    assert 'native_decide' not in text and 'ofReduceBool' not in text
    expected = re.findall(r'^#print axioms ([\w.]+)\s*$', text, re.M)
    assert len(expected) == expected_count and len(set(expected)) == expected_count
    stdout = (check / 'stdout.log').read_text()
    actual = {name: [a.strip() for a in axioms.split(',') if a.strip()]
              for name, axioms in re.findall(r"'([^']+)' depends on axioms:\s*\[([^\]]*)\]", stdout)}
    actual.update({name: [] for name in re.findall(r"'([^']+)' does not depend on any axioms", stdout)})
    assert set(expected) == set(actual)
    assert all(set(axioms) <= ALLOWED for axioms in actual.values())
    assert (check / 'stderr.log').read_text() == ''
    assert 'error:' not in stdout and 'sorryAx' not in stdout
    assert job['heap_mib'] == 2304 and job['seconds'] == 180
    assert job['minimum_free_disk_bytes'] == 2147483648
    assert job['rss_stop_mib'] == 2816 and job['command'][1:4] == ['-j1', '-M2304', '-T2000000']
    deps = [resolve(m, job) for m in imports(frozen) if not standard(m)]
    return {'module': module, 'source': str(current.relative_to(WORK)),
            'check': str(check.relative_to(WORK)), 'source_sha256': sha(frozen),
            'receipt_sha256': sha(check / 'RESULT.json'), 'job_sha256': sha(check / 'JOB.json'),
            'stdout_sha256': sha(check / 'stdout.log'), 'object_sha256': sha(check / (module + '.olean')),
            'axioms': actual, 'direct_import_bindings': deps,
            'wall_seconds': result['wall_seconds'], 'peak_tree_rss_bytes': result['peak_tree_rss_bytes'],
            'source_options': re.findall(r'^set_option (\S+) (\S+)', text, re.M)}


components = load(SPLIT / 'COMPONENT_CHECKS.json')
records = []
for row in components['bindings']:
    record = checked(row['module'], SPLIT, row['check'], row['axiom_reports'])
    assert record['source_sha256'] == row['source_sha256']
    assert record['receipt_sha256'] == row['result_sha256']
    records.append(record)
assert len(records) == 13 and sum(len(r['axioms']) for r in records) == 49

# Check complete, literal row indexing in the proof statements themselves.
labels = []
for k in range(0, 48, 4):
    text = (SPLIT / f'CoreCentreRows{k:02d}.lean').read_text()
    row_pattern = (r'theorem centre_row_(\d+) : ∀ i : Fin 5,\s*'
                   r'Seed0024PhaseCore20261007\.centreEntry \((\d+) : Fin 48\) i =\s*'
                   r'Seed0024ClusterTube20261007\.roundedCentreCoordinates \((\d+) : Fin 48\) i := by\s*'
                   r'decide \+kernel')
    matched = re.findall(row_pattern, text)
    assert len(matched) == 4
    assert [(int(a), int(b), int(c)) for a, b, c in matched] == [(i, i, i) for i in range(k, k + 4)]
    labels.extend(int(a) for a, _, _ in matched)
assert labels == list(range(48))
assembly = checked('CoreDataEqualitiesSplit', SPLIT, 'check-data-assembly-01', 2)
assert assembly['source_sha256'] == components['assembly_source_sha256']
assert assembly['receipt_sha256'] == components['assembly_result_sha256']
records.append(assembly)
if args.include_table:
    records.append(checked('CoreTableBridge', BRIDGE, 'check-core-table-01', 6))

output = {'status': 'PASS_READ_ONLY_SOURCE_RECEIPT_AUDIT',
          'reviewer': 'seed0024_averaging', 'components_manifest_sha256': sha(SPLIT / 'COMPONENT_CHECKS.json'),
          'selected_declarations': sum(len(r['axioms']) for r in records),
          'bindings': records, 'all_48_rows_and_five_coordinates_in_statements': True,
          'current_frozen_receipt_hashes_match': True,
          'lean_or_forest_replay_invoked': False, 'new_physical_closure_claimed': False}
destination = HERE / ('SOURCE_RECEIPT_AUDIT_57.json' if args.include_table else 'SOURCE_RECEIPT_AUDIT_51.json')
assert not destination.exists(), 'Preserve previous audit; do not overwrite.'
destination.write_text(json.dumps(output, indent=2) + '\n')
print(json.dumps({'file': destination.name, 'sha256': sha(destination),
                  'selected_declarations': output['selected_declarations']}))
