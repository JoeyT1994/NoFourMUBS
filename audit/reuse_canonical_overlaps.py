"""Replace overlap cases with existing OAI data/theorems, preserving stable IDs.

Called after generation and usable on the paused generated files. A shared
definition alone is not mislabeled as a previously proved theorem: the ledger
distinguishes a direct theorem call from a one-step symmetry adapter.
"""
from pathlib import Path
import ast
import hashlib
import json
import re
from reuse_preflight import require_reuse_review

ROOT = Path(__file__).resolve().parents[1]
AUDIT = ROOT / 'audit'
DEST = ROOT / 'lean/NoFourMUBs/Step2/SOS'
BASE = ROOT / 'lean/vendor/fourier/OAI/Analysis/MutuallyUnbiased'
PFX = 'OAI.Analysis.MutuallyUnbiased.'
PS = 'OAI.MUB6.Certificate.PairSemantics.'
PT = 'OAI.MUB6.Certificate.PairTargetSemantics.'


def rewrite():
    require_reuse_review('moment_normalization')
    plan = json.loads((AUDIT / 'sos/NORMALIZATION_PENDING_PLAN.json').read_text())
    ids = {tuple(map(tuple, a)): i for i, a in enumerate(plan['new_canonical_inputs'])}
    # Search the entire vendored closure, not just the Canonical*.lean family.
    overlap = {}
    checked = 0
    for path in sorted(BASE.rglob('*.lean')):
        source = path.read_text()
        for m in re.finditer(r'def (\w+) : Matrix \(Fin (\d+)\) \(Fin (\d+)\) ℤ := (!\[.*)', source):
            try:
                A = tuple(map(tuple, ast.literal_eval(m[4].replace('!', ''))))
            except (ValueError, SyntaxError, TypeError):
                continue
            checked += 1
            if A not in ids:
                continue
            # Prefer a canonical theorem over an internal pivot definition.
            i = ids[A]
            priority = 1 if m[1].startswith('pivot') else 0
            if i not in overlap or priority < overlap[i][0]:
                overlap[i] = (priority, path, m[1], int(m[2]), int(m[3]))
    records = []
    for i, (_, path, name, r, c) in sorted(overlap.items()):
        source = path.read_text()
        module = PFX + str(path.relative_to(BASE)).removesuffix('.lean').replace('/', '.')
        namespace = PT if path.parent.name == 'PairTargets' else PS
        qname = namespace+name
        if name.startswith('pivotMatrix'):
            n = name.removeprefix('pivotMatrix')
            original = PS+'node'+n
            perm = PS+'pivotPermutation'+n
            transposed = f'{name} = (fun u v => node{n}.transpose ' in source
            base = original+'.transpose' if transposed else original
            tail = f'.trans (injectiveMoment_transpose H {original})' if transposed else ''
            proof = (f'by\n  change injectiveMoment H {qname} = injectiveMoment H {original}\n'
                     f'  have heq : {qname} = (fun u v => {base} ({perm} u) v) := by ext u v; fin_cases u <;> fin_cases v <;> decide +kernel\n'
                     f'  rw [heq]\n  exact (injectiveMoment_row_permutation H {base} {perm}){tail}')
            kind = 'existing pivot data plus existing row-permutation theorem'
            theorem = 'OAI.MUB6.injectiveMoment_row_permutation'
        else:
            raw = name.split('step')[0]
            n = re.search(r'\d+', raw)[0]
            theorem = namespace+('extraCanonical' if namespace == PT else 'canonical')+n
            original = namespace+raw
            if name == raw:
                proof = theorem+' hH'
                kind = 'existing canonical theorem directly'
            else:
                assert name == raw+'step0', name
                match = re.search(r'theorem '+theorem.split('.')[-1]+r'\b[\s\S]*?(?=\ndef |\Z)', source)
                assert match
                body = match[0]
                if f'{name} = {raw}.transpose' in body:
                    proof = (f'by\n  change injectiveMoment H {qname} = _\n'
                             f'  have heq : {qname} = {original}.transpose := by ext u v; fin_cases u <;> fin_cases v <;> decide +kernel\n'
                             f'  rw [heq]\n'
                             f'  exact (injectiveMoment_transpose H {original}).trans ({theorem} hH)')
                    kind = 'existing canonical theorem through transpose symmetry'
                elif f'{name} = -{raw}' in body:
                    proof = (f'by\n  change injectiveMoment H {qname} = _\n'
                             f'  have heq : {qname} = -{original} := by ext u v; fin_cases u <;> fin_cases v <;> decide +kernel\n'
                             f'  rw [heq]\n'
                             f'  exact (injectiveMoment_neg hH {original}).trans ({theorem} hH)')
                    kind = 'existing canonical theorem through negation symmetry'
                else:
                    # The only current remaining first step deletes one zero row.
                    perm_match = re.search(r'moment_delete_zero_row \(by decide\) H '+raw+r' (\w+) hz', body)
                    assert perm_match, name
                    perm = namespace+perm_match[1]
                    proof = (f'by\n  change injectiveMoment H {qname} = _\n'
                        f'  have hz : ∀ j, {original} ({perm} 0) j = 0 := by decide +kernel\n'
                        f'  have heq : {qname} = (fun u v => {original} ({perm} u.succ) v) := by ext u v; fin_cases u <;> fin_cases v <;> decide +kernel\n'
                        f'  rw [heq]\n  exact (moment_delete_zero_row (by decide) H {original} {perm} hz).symm.trans\n'
                        f'    ({theorem} hH)')
                    kind = 'existing canonical theorem through zero-row deletion'
        file = DEST / f'Canonical{i//64:03d}.lean'
        text = file.read_text()
        import_line = 'import '+module+'\n'
        if import_line not in text:
            text = import_line+text
        text, count = re.subn(rf'def canonicalInput{i} : ExponentCode := [^\n]+',
                            f'def canonicalInput{i} : ExponentCode := ⟨{r}, {c}, {qname}⟩', text)
        assert count == 1
        pattern = rf'(theorem canonicalSound{i} \{{H : CMatrix\}} \(hH : IsHadamard H\) :\n    canonicalInput{i}.moment H = canonicalOutput{i}.moment H :=)[\s\S]*?(?=\n\n)'
        text, count = re.subn(pattern, lambda m: m[1]+'\n  '+proof, text)
        assert count == 1, i
        file.write_text(text)
        records.append({'id': i, 'file': file.name, 'reused_module': module,
                        'reused_definition': qname, 'reused_theorem': theorem, 'kind': kind})
    manifest_path = AUDIT / 'sos/CANONICAL_MANIFEST.json'
    manifest = json.loads(manifest_path.read_text())
    for file in {r['file'] for r in records}:
        manifest['files'][file] = hashlib.sha256((DEST/file).read_bytes()).hexdigest()
    manifest['overlap_adapters'] = len(records)
    manifest['new_padded_certificates'] = manifest['canonical_equalities']-len(records)
    manifest_path.write_text(json.dumps(manifest, indent=2)+'\n')
    (AUDIT / 'sos/CANONICAL_REUSE_LEDGER.json').write_text(json.dumps({
        'definitions_checked': checked, 'overlap_adapters': records,
        'all_adapters_kernel_checked': False}, indent=2)+'\n')
    print(f'{len(records)} overlap cases now reuse existing OAI definitions and lemmas.')


if __name__ == '__main__':
    rewrite()
