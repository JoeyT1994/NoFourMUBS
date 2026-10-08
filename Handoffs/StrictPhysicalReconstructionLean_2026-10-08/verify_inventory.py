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

status = load('STATUS.json')
expected_modules=status['custom_source_modules']
expected_selected=status['selected_modules']
expected_roots=status['selected_printed_roots']
expected_reviews=status['independent_review_projections']
inventory = load('SOURCE_INVENTORY.json')['modules']
modules = {i['module']: i for i in inventory}
require(len(modules) == len(inventory) == expected_modules, 'module count mismatch')
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
    require(not re.search(r'\b(?:sorry|admit|sorryAx|native_decide|axiom)\b', text), 'admission token')
    for imp in found:
        require(imp in modules or imp.split('.')[0] in external, 'missing custom import ' + imp)
    check = load('checks/' + item['module'] + '.json')
    require(check['success'] and check['exit_code'] == 0, 'unsuccessful check projection')
    for key in ['source_sha256', 'checked_object', 'original_receipt', 'original_axiom_log', 'selected_roots']:
        require(check[key] == item[key], 'check inventory mismatch: ' + key)
    for key in ['checked_object', 'original_receipt', 'original_axiom_log']:
        require(re.fullmatch('[0-9a-f]{64}', item[key]['sha256']) is not None, 'invalid digest')
        require(item[key]['bytes'] >= 0, 'invalid byte count')
    for dep, obj_sha in item['original_check_custom_import_object_bindings'].items():
        require(dep in found and obj_sha == modules[dep]['checked_object']['sha256'], 'import object pin mismatch')
    require(set(item['original_check_custom_import_object_bindings']) == {n for n in found if n in modules}, 'missing object edge')
    if item['selected']:
        printed = re.findall(r'^#print axioms (\S+)', text, re.M)
        require(len(printed) == len(item['selected_roots']) and all(r['declaration'] == p or r['declaration'].endswith('.' + p) for p, r in zip(printed, item['selected_roots'])), 'selected declaration mismatch')
        review = load(item['independent_review'])
        require(item['module'] in review['reviewed_modules'], 'review module binding')
        require(review['original_status'].startswith('PASS') and review['independent_author_and_reviewer'], 'review scope status')
        roots.extend(item['selected_roots'])
for r in roots:
    require(set(r['axioms']) <= allowed, 'nonstandard axiom')
require(len(selected) == expected_selected and len(roots) == expected_roots and len({r['declaration'] for r in roots}) == expected_roots, 'selected count/uniqueness')
review_names = {i['independent_review'] for i in selected}
require(len(review_names) == expected_reviews, 'review count')
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
require(status['selected_modules'] == 7 and status['selected_printed_roots'] == 18 and status['independent_review_projections'] == 2, 'selected scope')
require(status['whole_physical_strict_necessity_proved'] is True and status['literal_seed_binding_proved'] is True and status['transpose_strictness_derived'] is True, 'physical meaning')
require(status['final_hypotheses'] == ['Physical H', 'Dephased H', '0 < leadingR H'], 'endpoint hypotheses')
endpoint='StrictReconstruction20261007.SideIntrinsic.strict_physical_literal_seed_reconstruction'
require(endpoint in {r['declaration'] for r in roots}, 'literal endpoint missing')
for key in ['arbitrary_recipe_pair_sufficiency_proved','matched_completion_classification_proved','gauge_normalization_proved','zero_invariant_branch_closed','radius_exclusion_proved','finite_forest_closure_proved','physical_box_closure_proved','global_coverage_proved','no_four_mubs_proved','fresh_clean_rebuild','fresh_relocation_replay']:
    require(status[key] is False, 'scope exceeded: '+key)
reuse=load('DEPENDENCY_REUSE.json')
inherited={m for m,item in modules.items() if not item['selected']}
prior=set(reuse['reused_expanded_packet_modules'])
support=set(reuse['additional_inherited_physical_support_modules'])
require(not prior & support and prior | support == inherited, 'inherited partition')
require(reuse['prior_packet_manifest_sha256']=='40cdcf736a15f7769a4b2a96dbd8f944444d82ed6c994e0c923efff70da28ea8', 'prior packet pin')
require(reuse['new_selected_roots_from_prior_packet']==0 and reuse['new_selected_roots_from_inherited_physical_support']==0, 'inherited proof-count boundary')
for m in prior:
    require(modules[m]['reused_source_packet_manifest_sha256']==reuse['prior_packet_manifest_sha256'], 'reused module pin')
for m in support:
    require(modules[m]['scope']=='Inherited physical source support; no new selected theorem credit.', 'support scope')
require(reuse['prior_source_bytes_unchanged'] is True and reuse['prior_packet_unchanged'] is True, 'prior preservation')
print(json.dumps({'status':'PASS_INTEGRITY_AND_SCOPE_ONLY','files':len(actual),'custom_source_modules':expected_modules,'selected_modules':expected_selected,'selected_printed_roots':expected_roots,'manifest_sha256':sha((root/'MANIFEST.json').read_bytes()),'lean_invoked':False},indent=2))
