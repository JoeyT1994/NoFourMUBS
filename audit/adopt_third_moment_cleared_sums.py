"""Assemble the saved cleared polynomials by references to adopted slices.

Uses the existing one-variable evaluator for a, and the existing slice proofs.
There is no discovery, expansion, or alternate certificate generation here.
"""
from pathlib import Path
import json

from adopt_third_moment_slice import (
    AUDIT, BASE, MODULE, NAMESPACE, ROOT, read_saved_document, sha, write_once,
)


def nested(operation, values):
    result = values[-1]
    for value in reversed(values[:-1]):
        result = f'{operation} {value} ({result})'
    return result


def main():
    document, pin = read_saved_document()
    supplied = json.loads((AUDIT / 'MATCHED_THIRD_ALL_SLICES_MANIFEST.json').read_text())
    data = {r['module']: r for r in supplied['records'] if r.get('saved_certificate_data')}
    records = []

    def record(path, **extra):
        rel = str(path.relative_to(ROOT / 'lean'))
        result = dict(module=rel[:-5].replace('/', '.'), active_path=rel,
                      active_sha256=sha(path), **extra)
        records.append(result)
        return result

    record(BASE / 'Model.lean', local_model_adapter=True)
    pids = sorted({s['cleared_integer'] for i in document['identities'] for s in i['summands']})
    width = 1 + max(s['a_power'] for pid in pids for s in document['polynomials'][pid]['a_slices'])
    bindings = []
    for pid in pids:
        polynomial = document['polynomials'][pid]
        assert polynomial['scale'] == 1
        powers = {s['a_power'] for s in polynomial['a_slices']}
        references = []
        digits = []
        for power in range(width):
            if power in powers:
                name = f'P{pid:03d}A{power:02d}'
                module = MODULE + '.Data.' + name
                r = data[module]
                assert sha(ROOT / 'lean' / r['active_path']) == r['active_sha256']
                references.append(module)
                digits.append(name)
            else:
                digits.append('[]')
        text = 'import ' + MODULE + '.Model\n'
        text += ''.join('import ' + m + '\n' for m in references)
        text += '\nset_option autoImplicit false\n'
        text += f'namespace {NAMESPACE}\n'
        text += f'-- Saved integer polynomial {pid}; zero-padded in a to {width} coefficients.\n'
        text += f'def P{pid:03d} : List (List CriticalZeroSumAssembly20261003.DenseCoefficients.XY) :=\n'
        text += '  [' + ', '.join(digits) + ']\n'
        text += f'end {NAMESPACE}\n'
        path = BASE / 'Polynomials' / f'P{pid:03d}.lean'
        write_once(path, text)
        record(path, saved_data_reference_assembly=True)
        bindings.append(dict(polynomial_id=pid, original_scale=1, nonzero_a_powers=sorted(powers),
                             trailing_zero_padding_to=width, referenced_modules=references))
    endpoints = []
    imports = []
    for index, identity in enumerate(document['identities']):
        ids = [s['cleared_integer'] for s in identity['summands']]
        powers = identity['coefficient_identity_a_powers']
        text = ''.join(f'import {MODULE}.Polynomials.P{pid:03d}\n' for pid in dict.fromkeys(ids))
        text += ''.join(f'import {MODULE}.Slices.Slice{index:02d}A{k:02d}\n' for k in powers)
        text += '\nset_option autoImplicit false\nset_option maxRecDepth 10000\n'
        text += 'set_option maxHeartbeats 2000000\n'
        text += f'namespace {NAMESPACE}\nopen CriticalZeroSplitReduction20261003\n'
        sums = nested('Coefficients.add', [f'(P{pid:03d}.map (sliceValue b c d))' for pid in ids])
        values = [f'polynomialValue a b c d P{pid:03d}' for pid in ids]
        rhs = values[-1]
        for value in reversed(values[:-1]):
            rhs = value + ' + (' + rhs + ')'
        tag = f'ClearedSum{index:02d}'
        text += f'\n/-- All coefficients of the saved {identity["label"]} residual cancel. -/\n'
        text += f'theorem {tag}_value {{R : Type*}} [CommRing R] (a b c d : R) :\n    {rhs} = 0 := by\n'
        text += f'  have hz : Coefficients.allZero ({sums}) := by\n'
        text += '    refine ⟨' + ', '.join('?_ ' for _ in range(width)) + ', True.intro⟩\n'
        for power in range(width):
            if power in powers:
                text += f'    · exact Slice{index:02d}A{power:02d}_value b c d\n'
            else:
                text += '    · change (0 : R) + _ = 0\n      simp [sliceValue, CriticalZeroSumAssembly20261003.DenseCoefficients.interpret, Coefficients.eval]\n'
        text += '  have he := Coefficients.eval_allZero a _ hz\n'
        text += '  simpa only [Coefficients.eval_add,polynomialValue] using he\n'
        text += f'end {NAMESPACE}\n'
        path = BASE / 'Sums' / (tag + '.lean')
        write_once(path, text)
        entry = record(path, local_model_adapter=True)
        imports.append(entry['module'])
        endpoints.append(NAMESPACE + '.' + tag + '_value')
    path = BASE / 'ClearedSums.lean'
    write_once(path, ''.join('import ' + m + '\n' for m in imports))
    record(path, import_assembly=True)
    manifest = dict(scope='matched_third_arithmetic', records=records,
        axiom_endpoints=endpoints,
        dependency_audits=['KERNEL_AUDIT_MATCHED_THIRD_ALL_SLICES_STATUS.json'],
        dependency_pins=[dict(active_path=r['active_path'], active_sha256=r['active_sha256'])
                         for r in supplied['records']],
        source_certificate_sha256=pin['sha256'], serialization_bindings=bindings,
        scope_note='The eight supplied cleared polynomial sums, over every commutative ring. '
                   'Cofactor products and rational-expression/matrix bindings remain open.',
        atlas_certification=False)
    name = 'MATCHED_THIRD_CLEARED_SUMS_MANIFEST.json'
    write_once(AUDIT / name, json.dumps(manifest, indent=2) + '\n')
    print(json.dumps(dict(manifest=name, referenced_saved_polynomials=len(pids),
                         new_modules=len(records), outer_width=width,
                         new_endpoints=len(endpoints), certificate_generated=False,
                         atlas_certification=False)))


if __name__ == '__main__':
    main()
