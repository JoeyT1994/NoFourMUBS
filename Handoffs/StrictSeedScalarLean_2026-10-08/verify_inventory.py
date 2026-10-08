#!/usr/bin/env python3
"""Read-only portable integrity verifier. Does not invoke Lean or confer proof credit."""
import hashlib
import json
import re
from pathlib import Path

root = Path(__file__).resolve().parent
def load(name):
    return json.loads((root / name).read_text())
def sha(data):
    return hashlib.sha256(data).hexdigest()
def require(condition, message):
    if not condition:
        raise SystemExit('FAIL: ' + message)
def strip_comments(text):
    # Lean permits nested block comments. Preserve newlines for line-start imports.
    out, i, depth = [], 0, 0
    while i < len(text):
        if text.startswith('/-', i):
            depth += 1; i += 2
        elif depth and text.startswith('-/', i):
            depth -= 1; i += 2
        elif depth:
            if text[i] == '\n': out.append('\n')
            i += 1
        elif text.startswith('--', i):
            end = text.find('\n', i)
            i = len(text) if end < 0 else end
        else:
            out.append(text[i]); i += 1
    require(depth == 0, 'unterminated Lean comment')
    return ''.join(out)

manifest = load('MANIFEST.json')
records = manifest['files']
expected = {r['file'] for r in records}
actual = {str(p.relative_to(root)) for p in root.rglob('*') if p.is_file()}
require(len(expected) == len(records), 'duplicate manifest entries')
require(actual == expected | {'MANIFEST.json'}, 'file set mismatch')
for item in records:
    p = root / item['file']
    require(not p.is_symlink() and p.resolve().is_relative_to(root), 'unsafe file path')
    data = p.read_bytes()
    require(len(data) == item['bytes'] and sha(data) == item['sha256'], item['file'] + ' digest/size mismatch')
    require(p.suffix not in {'.olean', '.ilean', '.o', '.so', '.dylib', '.pyc'}, 'binary file')
    for marker in [b'/' + b'Users/', b'/' + b'private/']:
        require(marker not in data, 'host path in ' + item['file'])

inventory = load('SOURCE_INVENTORY.json')['modules']
modules = {i['module']: i for i in inventory}
require(len(modules) == len(inventory) == 23, 'module count mismatch')
require({i['file'] for i in inventory} == {p for p in expected if p.endswith('.lean')}, 'source inventory mismatch')
allowed = {'propext', 'Classical.choice', 'Quot.sound'}
external = {'Mathlib', 'Lean', 'Std', 'Init', 'Batteries', 'Qq', 'Aesop'}
selected = [i for i in inventory if i['selected']]
roots = []
for item in inventory:
    data = (root / item['file']).read_bytes()
    require(sha(data) == item['source_sha256'] and len(data) == item['bytes'], 'inventory source pin')
    text = strip_comments(data.decode())
    found = []
    for line in text.splitlines():
        match = re.match(r'^\s*(?:public\s+)?import\s+(.+?)\s*$', line)
        if match:
            names = match.group(1).split()
            require(all(re.fullmatch(r'[A-Za-z0-9_.]+', n) for n in names), 'unparsed import')
            found.extend(names)
    require(found == item['static_imports'] and not item['dynamic_imports'], 'import projection mismatch')
    require('Lean.importModules' not in text, 'unexpected dynamic import')
    require(not re.search(r'\b(?:sorry|admit|sorryAx|native_decide)\b', text), 'admission token')
    for imp in found:
        require(imp in modules or imp.split('.')[0] in external, 'missing custom import ' + imp)
    check = load('checks/' + item['module'] + '.json')
    require(check['success'] and check['exit_code'] == 0, 'unsuccessful check projection')
    for key in ['source_sha256', 'checked_object', 'original_receipt', 'original_axiom_log', 'selected_roots']:
        require(check[key] == item[key], 'check inventory mismatch: ' + key)
    for key in ['checked_object', 'original_receipt', 'original_axiom_log']:
        require(re.fullmatch('[0-9a-f]{64}', item[key]['sha256']) is not None, 'invalid digest')
        require(item[key]['bytes'] >= 0, 'invalid byte count')
    if item['selected']:
        printed = re.findall(r'^#print axioms (\S+)', text, re.M)
        require(printed == [r['declaration'] for r in item['selected_roots']], 'selected declaration mismatch')
        review = load(item['independent_review'])
        require(item['module'] in review['reviewed_modules'], 'review module binding')
        require(review['original_status'].startswith('PASS') and review['independent_author_and_reviewer'], 'review scope status')
        for dep, obj_sha in item['original_check_custom_import_object_bindings'].items():
            require(dep in found and obj_sha == modules[dep]['checked_object']['sha256'], 'import object pin mismatch')
        require(set(item['original_check_custom_import_object_bindings']) == {n for n in found if n in modules}, 'missing object edge')
        roots.extend(item['selected_roots'])
for r in roots:
    require(set(r['axioms']) <= allowed, 'nonstandard axiom')
require(len(selected) == 19 and len(roots) == 62 and len({r['declaration'] for r in roots}) == 62, 'selected count/uniqueness')
review_names = {i['independent_review'] for i in selected}
require(len(review_names) == 8, 'review count')
for name in review_names:
    review = load(name)
    require(re.fullmatch('[0-9a-f]{64}', review['original_review_sha256']) is not None, 'review digest')
    require(set(review['reviewed_modules']) == {i['module'] for i in selected if i['independent_review'] == name}, 'review membership')
    artifacts = {a['module']: a for a in review['reviewed_artifacts']}
    require(set(artifacts) == set(review['reviewed_modules']) and len(artifacts) == len(review['reviewed_artifacts']), 'review artifact membership')
    for module, artifact in artifacts.items():
        for key in ['module', 'file', 'source_sha256', 'bytes', 'checked_object',
                    'original_receipt', 'original_axiom_log', 'selected_roots']:
            require(artifact[key] == modules[module][key], 'review source/evidence binding: ' + module + '/' + key)
    require(review['selected_printed_roots'] == sum(len(modules[m]['selected_roots']) for m in review['reviewed_modules']), 'review root count')
plan = load('REPLAY_PLAN.json')
order = plan['serial_custom_module_order']
require(len(order) == len(modules) and set(order) == set(modules), 'replay set mismatch')
for n in order:
    require(all(order.index(d) < order.index(n) for d in modules[n]['static_imports'] if d in modules), 'replay order')
status = load('STATUS.json')
require(status['selected_modules'] == 19 and status['selected_printed_roots'] == 62 and status['custom_source_modules'] == 23, 'status count')
for key in ['matrix_reconstruction_proved', 'side_fiber_exhaustion_proved', 'radius_exclusion_proved',
            'physical_box_closure_proved', 'global_coverage_proved', 'no_four_mubs_proved',
            'fresh_clean_rebuild', 'fresh_relocation_replay']:
    require(status[key] is False, 'scope exceeded: ' + key)
print(json.dumps({'status': 'PASS_INTEGRITY_AND_SCOPE_ONLY', 'files': len(actual),
                  'custom_source_modules': 23, 'selected_modules': 19, 'selected_printed_roots': 62,
                  'manifest_sha256': sha((root / 'MANIFEST.json').read_bytes()), 'lean_invoked': False}, indent=2))
