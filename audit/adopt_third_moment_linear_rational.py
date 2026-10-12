"""Assemble the saved W11 linear fractions from existing Lean product proofs."""
import json

from adopt_third_moment_slice import AUDIT, BASE, MODULE, NAMESPACE, ROOT, read_saved_document, sha, write_once
from adopt_third_moment_product_slice import products
from run_third_moment_products import passed, product_evidence


def main():
    document, pin = read_saved_document()
    identity = document['identities'][0]
    assert identity['label'] == 'W11 linear' and identity['common_denominator'] == 0
    table = products(document)
    pairs, used = [], []
    for s in identity['summands']:
        scales = {k: document['polynomials'][s[k]]['scale'] for k in ['numerator','denominator','cofactor']}
        assert scales['numerator'] == scales['denominator']
        assert scales['denominator'] * scales['cofactor'] == identity['integer_scale'] == 16
        wanted = [dict(kind='denominator', left=s['denominator'], right=s['cofactor'], target=0, scale=1),
                  dict(kind='cleared', left=s['numerator'], right=s['cofactor'],
                       target=s['cleared_integer'], scale=identity['integer_scale'])]
        pair = []
        for w in wanted:
            matches = [i for i, row in enumerate(table) if all(row[k] == value for k, value in w.items())]
            assert len(matches) == 1 and passed(matches[0])
            pair.append(matches[0])
            used.append(matches[0])
        pairs.append(pair)

    evidences = [product_evidence(i) for i in dict.fromkeys(used)]
    modules = [json.loads((AUDIT / e['manifest']).read_text())['records'][-1]['module'] for e in evidences]
    source = ''.join('import ' + m + '\n' for m in dict.fromkeys(modules))
    source += f'import {MODULE}.W11ClearedSums\nimport {MODULE}.DenominatorInputs\n\n'
    source += 'set_option autoImplicit false\nset_option maxHeartbeats 1000000\nnoncomputable section\n'
    source += f'namespace {NAMESPACE}\n\n'
    source += '''/-- Common-denominator cancellation using only the checked cofactor equations. -/
theorem quotient_of_cofactor {K : Type*} [Field K] {n d c t D : K}
    (hD : D ≠ 0) (hd : d*c = D) (hn : n*c = t) : n/d = t/D := by
  have hd0 : d ≠ 0 := by
    intro hz
    apply hD
    rw [← hd,hz,zero_mul]
  apply (div_eq_div_iff hd0 hD).2
  rw [← hd,← hn]
  ring

'''

    def pv(i):
        return f'polynomialValue a b c d P{i:03d}'

    terms = [pv(s['numerator']) + ' / ' + pv(s['denominator']) for s in identity['summands']]
    expr = terms[-1]
    for term in reversed(terms[:-1]):
        expr = term + ' + (' + expr + ')'
    source += '/-- Raw saved fractions; each original numerator and denominator has the same positive scale. -/\n'
    source += f'def savedW11Linear (a b c d : ℂ) : ℂ :=\n  {expr}\n\n'
    source += '''theorem savedW11Linear_zero (a b c d : ℂ)
    (hD : polynomialValue a b c d P000 ≠ 0) : savedW11Linear a b c d = 0 := by
'''
    for j, (s, (den, num)) in enumerate(zip(identity['summands'], pairs)):
        source += f'  have h{j} : {pv(s["numerator"])} / {pv(s["denominator"])} =\n'
        source += f'      {pv(s["cleared_integer"])} / {pv(0)} :=\n'
        source += f'    quotient_of_cofactor hD (Product{den:03d}_value a b c d) (Product{num:03d}_value a b c d)\n'
    source += '  unfold savedW11Linear\n  rw [' + ','.join(f'h{i}' for i in range(9)) + ']\n'
    source += '  simp only [← add_div,ClearedSum00_value,zero_div]\n\n'
    source += '''/-- The saved linear rational identity holds on the full strict seed domain.
Its binding to the actual matrix residual is a separate remaining theorem. -/
theorem savedW11Linear_strict_zero (p : StrictSeed) :
    savedW11Linear (p.1 0) (p.1 1) (p.1 2) (p.1 3) = 0 :=
  savedW11Linear_zero _ _ _ _ (P000_strict_ne_zero p)
'''
    source += f'\nend {NAMESPACE}\n'
    path = BASE / 'LinearRational.lean'
    write_once(path, source)
    record = dict(module=MODULE + '.LinearRational', active_path=str(path.relative_to(ROOT / 'lean')),
                  active_sha256=sha(path), local_model_adapter=True)
    audits = list(dict.fromkeys(e['audit'] for e in evidences))
    audits += ['KERNEL_AUDIT_MATCHED_THIRD_W11_SUMS_STATUS.json',
               'KERNEL_AUDIT_MATCHED_THIRD_DENOMINATOR_INPUTS_STATUS.json']
    manifest = dict(scope='matched_third_flatness', records=[record],
        axiom_endpoints=[NAMESPACE + '.' + n for n in
                         ['quotient_of_cofactor','savedW11Linear_zero','savedW11Linear_strict_zero']],
        dependency_audits=audits, source_certificate_sha256=pin['sha256'],
        reused_product_indices=list(dict.fromkeys(used)), summand_product_pairs=pairs,
        original_matching_scales=True, new_numeric_arrays=0,
        scope_note='Combine existing exact products and cleared sum to prove the saved linear '
                   'rational identity on all strict seeds; actual9matrix-expression bindings remain open.',
        atlas_certification=False)
    name = 'MATCHED_THIRD_LINEAR_RATIONAL'
    write_once(AUDIT / (name + '_MANIFEST.json'), json.dumps(manifest, indent=2) + '\n')
    print(json.dumps(dict(manifest=name, modules=1, endpoints=3, reused_products=len(set(used)),
                         new_numeric_arrays=0, atlas_certification=False)))


if __name__ == '__main__':
    main()
