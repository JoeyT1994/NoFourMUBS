"""Assemble the original constant sum using the checked linear quotient lemma.

No coefficient arrays, arithmetic certificates, or new cancellation lemmas are
generated. Every required product must already have a current audited proof.
"""
import json

from adopt_third_moment_slice import (
    AUDIT, BASE, MODULE, NAMESPACE, ROOT, read_saved_document, sha, write_once,
)
from adopt_third_moment_product_slice import products
from run_third_moment_products import passed, product_evidence


def main():
    document, pin = read_saved_document()
    identity = document['identities'][1]
    assert identity['label'] == 'W11 constant'
    assert identity['common_denominator'] == 31 and identity['integer_scale'] == 80
    table = products(document)
    pairs, used = [], []
    for summand in identity['summands']:
        scale = {k: document['polynomials'][summand[k]]['scale']
                 for k in ['numerator', 'denominator', 'cofactor']}
        assert scale['numerator'] == scale['denominator']
        assert scale['denominator'] * scale['cofactor'] == 80
        wanted = [
            dict(kind='denominator', left=summand['denominator'],
                 right=summand['cofactor'], target=31, scale=1),
            dict(kind='cleared', left=summand['numerator'],
                 right=summand['cofactor'], target=summand['cleared_integer'], scale=80),
        ]
        pair = []
        for row in wanted:
            matches = [i for i, product in enumerate(table)
                       if all(product[k] == value for k, value in row.items())]
            assert len(matches) == 1
            assert passed(matches[0]), f'Product{matches[0]:03d} is not yet audited.'
            pair.append(matches[0])
            used.append(matches[0])
        pairs.append(pair)

    evidence = [product_evidence(i) for i in dict.fromkeys(used)]
    imports = [json.loads((AUDIT / e['manifest']).read_text())['records'][-1]['module']
               for e in evidence]
    imports += [MODULE + '.W11ClearedSums', MODULE + '.LinearRational',
                MODULE + '.DenominatorGram']
    source = ''.join('import ' + m + '\n' for m in dict.fromkeys(imports))
    source += '\nset_option autoImplicit false\nset_option maxHeartbeats 1000000\n'
    source += 'noncomputable section\nnamespace ' + NAMESPACE + '\n\n'

    def value(i):
        return f'polynomialValue a b c d P{i:03d}'

    terms = [value(s['numerator']) + ' / ' + value(s['denominator'])
             for s in identity['summands']]
    expression = terms[-1]
    for term in reversed(terms[:-1]):
        expression = term + ' + (' + expression + ')'
    source += '/-- The original ten saved fractions, with matching numerator/denominator scales. -/\n'
    source += 'def savedW11Constant (a b c d : ℂ) : ℂ :=\n  ' + expression + '\n\n'
    source += '''theorem savedW11Constant_zero (a b c d : ℂ)
    (hD : polynomialValue a b c d P031 ≠ 0) : savedW11Constant a b c d = 0 := by
'''
    for j, (summand, (den, num)) in enumerate(zip(identity['summands'], pairs)):
        source += f'  have h{j} : {value(summand["numerator"])} / {value(summand["denominator"])} =\n'
        source += f'      {value(summand["cleared_integer"])} / {value(31)} :=\n'
        source += f'    quotient_of_cofactor hD (Product{den:03d}_value a b c d) (Product{num:03d}_value a b c d)\n'
    source += '  unfold savedW11Constant\n  rw ['
    source += ','.join(f'h{i}' for i in range(len(terms))) + ']\n'
    source += '  simp only [← add_div,ClearedSum01_value,zero_div]\n\n'
    source += '''/-- Full strict-domain rational identity; actual matrix bindings are separate. -/
theorem savedW11Constant_strict_zero (p : StrictSeed) :
    savedW11Constant (p.1 0) (p.1 1) (p.1 2) (p.1 3) = 0 :=
  savedW11Constant_zero _ _ _ _ (P031_strict_ne_zero p)
'''
    source += '\nend ' + NAMESPACE + '\n'
    path = BASE / 'ConstantRational.lean'
    write_once(path, source)
    audits = list(dict.fromkeys(e['audit'] for e in evidence))
    audits += ['KERNEL_AUDIT_MATCHED_THIRD_W11_SUMS_STATUS.json',
               'KERNEL_AUDIT_MATCHED_THIRD_LINEAR_RATIONAL_STATUS.json',
               'KERNEL_AUDIT_MATCHED_THIRD_DENOMINATOR_GRAM_STATUS.json']
    manifest = dict(scope='matched_third_flatness', records=[dict(
        module=MODULE + '.ConstantRational', active_path=str(path.relative_to(ROOT / 'lean')),
        active_sha256=sha(path), local_model_adapter=True)],
        axiom_endpoints=[NAMESPACE + '.' + name for name in
                         ['savedW11Constant_zero', 'savedW11Constant_strict_zero']],
        dependency_audits=audits, source_certificate_sha256=pin['sha256'],
        reused_product_indices=list(dict.fromkeys(used)), summand_product_pairs=pairs,
        original_matching_scales=True, new_numeric_arrays=0,
        scope_note='Reuse the checked quotient lemma, products and cleared sum for the saved '
                   'constant rational identity on all strict seeds. Matrix bindings remain separate.',
        atlas_certification=False)
    name = 'MATCHED_THIRD_CONSTANT_RATIONAL'
    write_once(AUDIT / (name + '_MANIFEST.json'), json.dumps(manifest, indent=2) + '\n')
    print(json.dumps(dict(manifest=name, modules=1, endpoints=2,
                         reused_products=len(set(used)), new_numeric_arrays=0,
                         atlas_certification=False)))


if __name__ == '__main__':
    main()
