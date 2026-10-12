"""Adopt one pinned archived scalar route with recorded compatibility changes.

The source plan resolves the original run's dependencies before this script
can run. It does not generate coefficients. The numerator pilot retains its
statement and data but uses kernel reduction after elaborator reduction timed out.
"""
from pathlib import Path
import argparse
import hashlib
import json
import re
from reuse_preflight import require_reuse_review

parser = argparse.ArgumentParser()
parser.add_argument('--scope', default='critical_zero_scalar_reuse')
parser.add_argument('--plan', default='CRITICAL_ZERO_SCALAR_REUSE_PLAN.json')
parser.add_argument('--manifest', default='CRITICAL_ZERO_SCALAR_REUSE_MANIFEST.json')
args = parser.parse_args()
require_reuse_review(args.scope)
AUDIT = Path(__file__).resolve().parent
ROOT = AUDIT.parent
LEAN = ROOT / 'lean'
DEST = LEAN / 'NoFourMUBs/Reuse/Archive'
plan = json.loads((AUDIT / args.plan).read_text())
assert not plan['unresolved']
selected = plan['selected']
local_adapters = {r['module']: r for r in plan.get('local_adapters', [])}
existing_modules = plan.get('existing_modules', {})
records = []
order = []
visiting = set()


def visit(module):
    if module in order:
        return
    assert module not in visiting, module
    visiting.add(module)
    replacements = selected[module].get('import_replacements', {})
    for original_dependency in selected[module]['imports']:
        dependency = replacements.get(original_dependency, original_dependency)
        if dependency in selected:
            visit(dependency)
        elif dependency in local_adapters:
            adapter = local_adapters[dependency]
            target = LEAN / adapter['active_path']
            assert target.is_file(), dependency
            assert hashlib.sha256(target.read_bytes()).hexdigest() == adapter['active_sha256']
            if 'after_archived_module' in adapter:
                visit(adapter['after_archived_module'])
        elif dependency in existing_modules:
            existing = existing_modules[dependency]
            target = LEAN / existing['active_path']
            assert target.is_file(), dependency
            assert hashlib.sha256(target.read_bytes()).hexdigest() == existing['active_sha256']
        else:
            assert dependency.startswith(('Mathlib.', 'Lean.', 'Init.', 'Batteries.',
                                          'Hadamard6.', 'OAI.'))
            if dependency.startswith(('Hadamard6.', 'OAI.')):
                package = 'hadamard6' if dependency.startswith('Hadamard6.') else 'fourier'
                assert (LEAN / 'vendor' / package / (dependency.replace('.', '/') + '.lean')).is_file()
    visiting.remove(module)
    order.append(module)


for module in selected:
    visit(module)
DEST.mkdir(parents=True, exist_ok=True)
for module in order:
    record = selected[module]
    source = ROOT / record['file']
    original = source.read_bytes()
    assert hashlib.sha256(original).hexdigest() == record['sha256']
    text = original.decode()
    replacements = record.get('import_replacements', {})

    def adapt_import(match):
        dependency = replacements.get(match[1], match[1])
        if dependency in selected:
            dependency = 'NoFourMUBs.Reuse.Archive.' + dependency
        return 'import ' + dependency

    rewritten = re.sub(
        r'^import (\S+)', adapt_import,
        text, flags=re.M)
    import_adapted = rewritten
    proof_adaptations = []
    model_replacements = record.get('model_identifier_replacements', {})
    for old, new in model_replacements.items():
        rewritten, count = re.subn(r'\b' + re.escape(old) + r'\b', new, rewritten)
        assert count == record['model_identifier_counts'][old], (module, old, count)
    for old, new in record.get('namespace_open_replacements', {}).items():
        assert rewritten.count(old) == 1, (module, old)
        rewritten = rewritten.replace(old, new)
    if model_replacements or record.get('namespace_open_replacements'):
        proof_adaptations.append(
            'Reviewed matrix/predicate identifier and namespace-open substitutions only; '
            'all algebraic proof bodies retained')
    for patch in record.get('proof_tactic_replacements', []):
        assert rewritten.count(patch['before']) == patch['count'], module
        rewritten = rewritten.replace(patch['before'], patch['after'])
        proof_adaptations.append(patch['reason'])
    for omitted in record.get('omit_reused_declarations', []):
        start = text.index(omitted['start'])
        stop = text.index(omitted['stop_before'], start)
        block = text[start:stop]
        assert hashlib.sha256(block.encode()).hexdigest() == omitted['sha256']
        assert rewritten.count(block) == 1
        rewritten = rewritten.replace(block, '')
        proof_adaptations.append(
            'Omit definitions already extracted verbatim into ' + omitted['reused_from'] +
            '; all theorem statements and proof bodies retained')
    if module == 'CriticalZeroSumNumeratorCertificatePilot':
        assert rewritten.count('  rfl\n') == 1
        rewritten = rewritten.replace('  rfl\n', '  decide +kernel\n')
        proof_adaptations.append('rfl -> decide +kernel after the archived elaborator check exhausted 1500000 heartbeats; statement and polynomial data unchanged')
    target = DEST / (module + '.lean')
    if target.exists():
        previous_hash = record.get('reviewed_previous_active_sha256')
        assert (target.read_text() in (rewritten, import_adapted) or
                (previous_hash is not None and
                 hashlib.sha256(target.read_bytes()).hexdigest() == previous_hash)), \
            f'Preserve local edits: {target}'
    if not target.exists() or target.read_text() != rewritten:
        target.write_text(rewritten)
    records.append({
        'module': 'NoFourMUBs.Reuse.Archive.' + module,
        'original_module': module,
        'original_sha256': record['sha256'],
        'original_source_path': record['source_path'],
        'active_path': str(target.relative_to(LEAN)),
        'active_sha256': hashlib.sha256(target.read_bytes()).hexdigest(),
        'imports_only_adaptation': not proof_adaptations,
        'proof_adaptations': proof_adaptations,
        'import_replacements': replacements,
        'omitted_reused_declarations': record.get('omit_reused_declarations', []),
        'model_identifier_replacements': model_replacements,
        'namespace_open_replacements': record.get('namespace_open_replacements', {}),
        'proof_tactic_replacements': record.get('proof_tactic_replacements', []),
    })
for adapter in plan.get('local_adapters', []):
    target = LEAN / adapter['active_path']
    assert hashlib.sha256(target.read_bytes()).hexdigest() == adapter['active_sha256']
    if 'after_module' in adapter:
        position = next(i for i, r in enumerate(records)
                        if r['module'] == adapter['after_module'])
    else:
        position = next(i for i, r in enumerate(records)
                        if r.get('original_module') == adapter['after_archived_module'])
    records.insert(position + 1, {**adapter, 'local_model_adapter': True})
(AUDIT / args.manifest).write_text(
    json.dumps({'scope': args.scope,
                'status': 'ADOPTED_UNCOMPILED', 'records': records}, indent=2) + '\n')
print(f'Registered {len(order)} reused modules and {len(records) - len(order)} local model adapters.')
