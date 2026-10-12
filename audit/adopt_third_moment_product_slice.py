"""Transcribe one saved cofactor-product coefficient for the existing checker.

Only the original factor and target slices are serialized. No product
coefficients are computed here: the existing Lean operations do the checking.
"""
from pathlib import Path
import argparse
import json
import math

from adopt_third_moment_slice import (
    AUDIT, BASE, MODULE, NAMESPACE, ROOT, SOURCE, literal, nested_slice,
    read_saved_document, sha, write_once,
)


def products(document):
    seen = set()
    result = []
    for index, identity in enumerate(document['identities']):
        for item in identity['summands']:
            rows = [dict(kind='denominator', left=item['denominator'],
                         right=item['cofactor'], target=identity['common_denominator'], scale=1),
                    dict(kind='cleared', left=item['numerator'], right=item['cofactor'],
                         target=item['cleared_integer'], scale=identity['integer_scale'])]
            for row in rows:
                key = tuple(row.values())
                if key not in seen:
                    seen.add(key)
                    result.append(dict(**row, source_identity=index, label=identity['label']))
    assert len(result) == 136
    return result


def adopt_data(document, pid, power):
    polynomial = document['polynomials'][pid]
    assert polynomial['id'] == pid
    matches = [s for s in polynomial['a_slices'] if s['a_power'] == power]
    assert len(matches) <= 1
    terms = matches[0]['terms'] if matches else []
    data = nested_slice(terms)
    name = f'P{pid:03d}A{power:02d}'
    alias_path = AUDIT / 'MATCHED_THIRD_DATA_ALIASES.json'
    if alias_path.exists():
        registry = json.loads(alias_path.read_text())
        alias = registry['aliases'].get(name)
        if alias is not None:
            assert registry['source_certificate_sha256'] == sha(SOURCE)
            assert (alias['target_polynomial'], alias['target_a_power']) == (pid, power)
            source = document['polynomials'][alias['source_polynomial']]
            slices = [s for s in source['a_slices'] if s['a_power'] == alias['source_a_power']]
            assert len(slices) == 1
            raw = nested_slice(slices[0]['terms'])
            operation = alias['operation']
            assert operation in {'identity', 'shift_b', 'tail_b', 'tail_c', 'shift_b_tail_c', 'tail_b_tail_c'}
            if operation == 'tail_b':
                assert raw[0] == []
            if operation == 'tail_b_tail_c':
                assert raw[0] == [] and all(not row or row[0] == [] for row in raw[1:])
                transformed = [row[1:] for row in raw[1:]]
            elif operation in {'tail_c', 'shift_b_tail_c'}:
                assert all(not row or row[0] == [] for row in raw)
                transformed = [row[1:] for row in raw]
                if operation == 'shift_b_tail_c':
                    transformed = [[]] + transformed
            else:
                transformed = raw if operation == 'identity' else \
                    ([[]] + raw if operation == 'shift_b' else raw[1:])
            assert transformed == data
            record = alias['record']
            for row in [record, record['alias_dependency']]:
                assert sha(ROOT / 'lean' / row['active_path']) == row['active_sha256']
            binding = dict(polynomial_id=pid, a_power=power, source_terms=len(terms),
                original_polynomial_scale=polynomial['scale'], round_trip_equal=True,
                module=record['module'], reused_slice_alias=dict(
                    source_polynomial=alias['source_polynomial'],
                    source_a_power=alias['source_a_power'], operation=operation))
            return name, data, record, binding
    text = 'import NoFourMUBs.Reuse.Archive.CriticalZeroSumDenseCoefficients\n\n'
    text += 'set_option autoImplicit false\n'
    text += f'namespace {NAMESPACE}\n'
    text += f'-- Pinned upstream polynomial {pid}, coefficient of a^{power}; axes b,c,d.\n'
    text += f'def {name} : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY :=\n'
    text += literal(data) + '\n'
    text += f'end {NAMESPACE}\n'
    path = BASE / 'Data' / (name + '.lean')
    write_once(path, text)
    record = dict(module=MODULE + '.Data.' + name,
                  active_path=str(path.relative_to(ROOT / 'lean')),
                  active_sha256=sha(path), saved_certificate_data=True)
    binding = dict(polynomial_id=pid, a_power=power, source_terms=len(terms),
                   original_polynomial_scale=polynomial['scale'],
                   round_trip_equal=True, module=record['module'])
    return name, data, record, binding


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--product', type=int, required=True)
    parser.add_argument('--a-power', type=int, required=True)
    args = parser.parse_args()
    document, pin = read_saved_document()
    table = products(document)
    product = table[args.product]
    left, right, target = [document['polynomials'][product[k]] for k in ['left','right','target']]
    # The saved records denote integer arrays divided by their positive scales.
    # Prove a primitive integer equality; multiplication by the common factor
    # then recovers the original cross-multiplied certificate statement.
    lhs_scale = product['scale'] * target['scale']
    rhs_scale = left['scale'] * right['scale']
    common = math.gcd(lhs_scale, rhs_scale)
    lhs_scale //= common
    rhs_scale //= common
    left_powers = {s['a_power'] for s in left['a_slices']}
    right_powers = {s['a_power'] for s in right['a_slices']}
    pairs = [(k,args.a_power-k) for k in range(args.a_power+1)
             if k in left_powers and args.a_power-k in right_powers]
    assert pairs, 'Choose a nonempty product coefficient for this pilot.'
    records, bindings, widths, summands, values = {}, [], [], [], []

    def save_slice(pid, power):
        name, data, record, binding = adopt_data(document, pid, power)
        if record.get('alias_dependency'):
            dependency = record['alias_dependency']
            records[dependency['module']] = dependency
        if record['module'] not in records:
            records[record['module']] = record
            bindings.append(binding)
        return name, len(data)

    for i, j in pairs:
        a, aw = save_slice(left['id'], i)
        b, bw = save_slice(right['id'], j)
        summands.append(f'DC.mul {a} {b}')
        widths.append(aw + bw - 1)
        values.append(f'sliceValue b c d {a} * sliceValue b c d {b}')
    t, tw = save_slice(target['id'], args.a_power)
    widths.append(tw)
    tail = summands[-1]
    for term in reversed(summands[:-1]):
        tail = f'DC.add ({term}) ({tail})'
    if lhs_scale != 1:
        tail = f'DC.scale [[{lhs_scale}]] ({tail})'
    target_data = t if rhs_scale == 1 else f'(DC.scale [[{rhs_scale}]] {t})'
    residual = f'DC.add ({tail}) (DC.neg {target_data})'
    width = max(widths)
    tag = f'Product{args.product:03d}A{args.a_power:02d}'
    name = tag + '_residual'
    expr = values[-1]
    for value in reversed(values[:-1]):
        expr = value + ' + (' + expr + ')'
    if lhs_scale != 1:
        expr = f'({lhs_scale} : R) * ({expr})'
    target_expr = f'sliceValue b c d {t}'
    if rhs_scale != 1:
        target_expr = f'({rhs_scale} : R) * ({target_expr})'
    text = 'import ' + MODULE + '.Model\n'
    text += ''.join('import ' + r['module'] + '\n' for r in records.values())
    text += 'import Mathlib.Data.Fintype.Fin\nimport Mathlib.Tactic.FinCases\n\n'
    text += 'set_option autoImplicit false\nset_option maxRecDepth 10000\n'
    text += 'set_option maxHeartbeats 4000000\n'
    text += f'namespace {NAMESPACE}\nopen CriticalZeroSplitReduction20261003 IntegerReflector\n'
    text += f'def {name} : List DC.XY := {residual}\n\n'
    text += f'theorem {tag}_length : {name}.length = {width} := by rfl\n'
    text += f'theorem {tag}_checked (i : Fin {width}) : zeroII ({name}.getD i []) = true := by\n'
    text += '  fin_cases i <;> rfl\n'
    text += f'theorem {tag}_value {{R : Type*}} [CommRing R] (b c d : R) :\n    {expr} = {target_expr} := by\n'
    text += f'  have hz := DC.allZero_of_certificates c d {name} (fun n hn =>\n'
    text += f'    {tag}_checked ⟨n, by simpa only [{tag}_length] using hn⟩)\n'
    text += '  have he := Coefficients.eval_allZero b _ hz\n'
    text += f'  simp only [{name},DC.interpret_add,DC.interpret_neg,DC.interpret_mul,\n'
    text += '    DC.interpret_scale,Coefficients.eval_add,Coefficients.eval_neg,\n'
    text += '    Coefficients.eval_scale,CriticalZeroSumAssembly20261003.Coefficients.eval_mul] at he\n'
    text += '  apply sub_eq_zero.mp\n'
    text += '  simpa only [sliceValue,sub_eq_add_neg,add_assoc] using he\n'
    text += f'end {NAMESPACE}\n'
    text = text.replace('DC.', 'CriticalZeroSumAssembly20261003.DenseCoefficients.')
    path = BASE / 'Products' / (tag + '.lean')
    write_once(path, text)
    records[MODULE + '.Products.' + tag] = dict(module=MODULE + '.Products.' + tag,
        active_path=str(path.relative_to(ROOT / 'lean')), active_sha256=sha(path),
        local_model_adapter=True)
    model_path = BASE / 'Model.lean'
    manifest = dict(scope='matched_third_arithmetic', records=list(records.values()),
        axiom_endpoints=[NAMESPACE + '.' + tag + suffix for suffix in ['_length','_checked','_value']],
        dependency_pins=[dict(active_path=str(model_path.relative_to(ROOT / 'lean')),
                              active_sha256=sha(model_path))],
        dependency_audits=['KERNEL_AUDIT_MATCHED_THIRD_SUM00_STATUS.json'],
        source_certificate_sha256=pin['sha256'], product_index=args.product,
        source_product=product, a_power=args.a_power, convolution_pairs=pairs,
        integer_scales=dict(left=lhs_scale,right=rhs_scale,cancelled_common=common),
        serialization_bindings=bindings,
        scope_note=f'Only coefficient a^{args.a_power} of supplied cofactor/product '
                   f'{args.product}. Full product and rational bindings remain open.',
        atlas_certification=False)
    manifest_name = f'MATCHED_THIRD_PRODUCT_{args.product:03d}_{args.a_power:02d}_MANIFEST.json'
    write_once(AUDIT / manifest_name, json.dumps(manifest, indent=2) + '\n')
    print(json.dumps(dict(manifest=manifest_name, modules=len(records),
        product_terms=len(pairs), b_width=width,
        serialized_terms=sum(x['source_terms'] for x in bindings),
        certificate_generated=False, atlas_certification=False)))


if __name__ == '__main__':
    main()
