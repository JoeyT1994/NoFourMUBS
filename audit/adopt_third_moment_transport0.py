"""Reuse product 0 for products 6 and 9 by exact monomial transport.

The saved arrays are referenced, shifted, or stripped of a leading zero row;
there are no new numeric coefficients and no repeated product computations.
"""
import json

from adopt_third_moment_slice import AUDIT, BASE, MODULE, NAMESPACE, ROOT, nested_slice, read_saved_document, sha, write_once


def main():
    document, pin = read_saved_document()
    previous = json.loads((AUDIT / 'MATCHED_THIRD_PRODUCT_000_MANIFEST.json').read_text())
    known = {r['module']: r for r in previous['records']}
    records, aliases = {}, {}

    def data(pid, power):
        ss = [s['terms'] for s in document['polynomials'][pid]['a_slices'] if s['a_power'] == power]
        assert len(ss) == 1
        return nested_slice(ss[0])

    for target, source, operation, offset in [(15, 3, 'identity', 1),
                                             (16, 4, 'identity', -1),
                                             (21, 3, 'shift_b', 1),
                                             (22, 4, 'tail_b', -1)]:
        for sl in document['polynomials'][target]['a_slices']:
            power = sl['a_power']
            original_power = power + offset
            raw = data(source, original_power)
            if operation == 'identity':
                transformed = raw
            elif operation == 'shift_b':
                transformed = [[]] + raw
            else:
                assert raw[0] == []
                transformed = raw[1:]
            assert transformed == data(target, power)
            original = f'P{source:03d}A{original_power:02d}'
            name = f'P{target:03d}A{power:02d}'
            dependency = known[MODULE + '.Data.' + original]
            assert sha(ROOT / 'lean' / dependency['active_path']) == dependency['active_sha256']
            records[dependency['module']] = dependency
            expression = original if operation == 'identity' else \
                ('CriticalZeroSumAssembly20261003.DenseCoefficients.shift 1 ' + original
                 if operation == 'shift_b' else original + '.tail')
            text = 'import ' + dependency['module'] + '\n\nset_option autoImplicit false\n'
            text += f'namespace {NAMESPACE}\n'
            text += f'-- Exact saved-slice reuse: polynomial {target}, a^{power}.\n'
            text += f'def {name} : List CriticalZeroSumAssembly20261003.DenseCoefficients.XY :=\n  {expression}\n'
            text += f'end {NAMESPACE}\n'
            path = BASE / 'Data' / (name + '.lean')
            write_once(path, text)
            record = dict(module=MODULE + '.Data.' + name,
                active_path=str(path.relative_to(ROOT / 'lean')), active_sha256=sha(path),
                saved_certificate_data=True, saved_data_alias=True, alias_dependency=dependency)
            records[record['module']] = record
            aliases[name] = dict(target_polynomial=target, target_a_power=power,
                source_polynomial=source, source_a_power=original_power,
                operation=operation, round_trip_equal=True, record=record)

    registry = dict(source_certificate_sha256=pin['sha256'], aliases=aliases,
                    arithmetic_generated=False, atlas_certification=False)
    write_once(AUDIT / 'MATCHED_THIRD_DATA_ALIASES.json', json.dumps(registry, indent=2) + '\n')
    for pid in [15, 16, 21, 22]:
        powers = {s['a_power'] for s in document['polynomials'][pid]['a_slices']}
        names = [f'P{pid:03d}A{k:02d}' if k in powers else '[]' for k in range(16)]
        text = 'import ' + MODULE + '.Model\n'
        text += ''.join('import ' + MODULE + '.Data.' + x + '\n' for x in names if x != '[]')
        text += '\nset_option autoImplicit false\n'
        text += f'namespace {NAMESPACE}\n'
        text += f'-- Saved integer array for polynomial {pid}; only existing slice references and monomial shifts.\n'
        text += f'def P{pid:03d} : List (List CriticalZeroSumAssembly20261003.DenseCoefficients.XY) :=\n'
        text += '  [' + ', '.join(names) + ']\n'
        text += f'end {NAMESPACE}\n'
        path = BASE / 'Polynomials' / f'P{pid:03d}.lean'
        write_once(path, text)
        module = MODULE + f'.Polynomials.P{pid:03d}'
        records[module] = dict(module=module, active_path=str(path.relative_to(ROOT / 'lean')),
                               active_sha256=sha(path), saved_data_reference_assembly=True)

    dc = 'CriticalZeroSumAssembly20261003.DenseCoefficients'
    source = 'import ' + MODULE + '.Products.Product000\n'
    source += ''.join(f'import {MODULE}.Polynomials.P{i:03d}\n' for i in [15, 16, 21, 22])
    source += '\nset_option autoImplicit false\nset_option maxRecDepth 10000\nset_option maxHeartbeats 1500000\n'
    source += f'namespace {NAMESPACE}\nopen CriticalZeroSplitReduction20261003\n'
    source += 'variable {R : Type*} [CommRing R]\n\n'
    source += f'theorem sliceValue_shift (b c d : R) (n : ℕ) (p : List {dc}.XY) :\n'
    source += f'    sliceValue b c d ({dc}.shift n p) = b^n * sliceValue b c d p := by\n'
    source += f'  simp only [sliceValue,{dc}.interpret_shift,Coefficients.eval_shift]\n\n'
    endpoints = ['sliceValue_shift']

    for left, right, alias_pid, statement in [
            (3, 15, 15, 'P003_eq_a_mul_P015'), (16, 4, 16, 'P016_eq_a_mul_P004')]:
        used = [x for x, row in aliases.items() if row['target_polynomial'] == alias_pid]
        source += f'theorem {statement} (a b c d : R) :\n'
        source += f'    polynomialValue a b c d P{left:03d} = a * polynomialValue a b c d P{right:03d} := by\n'
        source += '  have hz : sliceValue b c d [] = (0 : R) := rfl\n'
        source += f'  simp only [polynomialValue,P{left:03d},P{right:03d},List.map_cons,List.map_nil,\n'
        source += '    Coefficients.eval,' + ','.join(used) + ',hz,zero_add,mul_zero,add_zero]\n\n'
        endpoints.append(statement)

    for left, right, statement in [(21, 15, 'P021_eq_b_mul_P015'), (16, 22, 'P016_eq_b_mul_P022')]:
        source += f'theorem {statement} (a b c d : R) :\n'
        source += f'    polynomialValue a b c d P{left:03d} = b * polynomialValue a b c d P{right:03d} := by\n'
        source += '  have hz : sliceValue b c d [] = (0 : R) := rfl\n'
        slot_rules = []
        if left == 16:
            for power in range(2, 8):
                tag = f'h{power}'
                source += f'  have {tag} : sliceValue b c d P016A{power:02d} = b * sliceValue b c d P022A{power:02d} := by\n'
                source += f'    have hs : {dc}.shift 1 P022A{power:02d} = P016A{power:02d} := rfl\n'
                source += f'    rw [← hs]\n    exact (by simpa only [pow_one] using sliceValue_shift b c d 1 P022A{power:02d})\n'
                slot_rules.append(tag)
        else:
            slot_rules = [x for x, row in aliases.items() if row['target_polynomial'] in [15, 21]]
            slot_rules += ['sliceValue_shift', 'pow_one']
        source += f'  have hm : P{left:03d}.map (sliceValue b c d) =\n'
        source += f'      Coefficients.scale b (P{right:03d}.map (sliceValue b c d)) := by\n'
        source += f'    simp only [P{left:03d},P{right:03d},Coefficients.scale,List.map_cons,List.map_nil,\n'
        source += '      ' + ','.join(slot_rules) + ',hz,mul_zero]\n'
        source += '  unfold polynomialValue\n  rw [hm,Coefficients.eval_scale]\n\n'
        endpoints.append(statement)

    source += '''/-- Reuse the already checked product after moving its a factor. -/
theorem Product006_value (a b c d : R) :
    polynomialValue a b c d P015 * polynomialValue a b c d P016 =
      polynomialValue a b c d P000 := by
  rw [P016_eq_a_mul_P004,← mul_assoc,mul_comm (polynomialValue a b c d P015) a,
    ← P003_eq_a_mul_P015]
  exact Product000_value a b c d

/-- Move the b factor between the same two factors. -/
theorem Product009_value (a b c d : R) :
    polynomialValue a b c d P021 * polynomialValue a b c d P022 =
      polynomialValue a b c d P000 := by
  rw [P021_eq_b_mul_P015,mul_comm b (polynomialValue a b c d P015),mul_assoc,
    ← P016_eq_b_mul_P022]
  exact Product006_value a b c d
'''
    source += f'\nend {NAMESPACE}\n'
    endpoints += ['Product006_value', 'Product009_value']
    path = BASE / 'Products' / 'MonomialTransport0.lean'
    write_once(path, source)
    module = MODULE + '.Products.MonomialTransport0'
    records[module] = dict(module=module, active_path=str(path.relative_to(ROOT / 'lean')),
                           active_sha256=sha(path), local_model_adapter=True)
    manifest = dict(scope='matched_third_arithmetic', records=list(records.values()),
        axiom_endpoints=[NAMESPACE + '.' + e for e in endpoints],
        dependency_audits=['KERNEL_AUDIT_MATCHED_THIRD_PRODUCT_000_STATUS.json'],
        dependency_pins=[dict(active_path='NoFourMUBs/Step2/Reconstruction/ThirdMoment/Certificates/Model.lean',
                              active_sha256=sha(BASE / 'Model.lean'))],
        source_certificate_sha256=pin['sha256'], transported_product_indices=[6, 9],
        scope_note='Reuse product000 for saved products006 and009 over every commutative ring, '
                   'using exact saved-array monomial relationships; no division or new product checks.',
        atlas_certification=False)
    name = 'MATCHED_THIRD_MONOMIAL_TRANSPORT_0'
    write_once(AUDIT / (name + '_MANIFEST.json'), json.dumps(manifest, indent=2) + '\n')
    old = json.loads((AUDIT / 'MATCHED_THIRD_PRODUCT_000_BUILD_STATUS.json').read_text())
    done = [r['module'] for r in records.values() if r['module'] in old['completed_modules'] and
            old['source_hashes'].get(r['active_path']) == r['active_sha256']]
    status = dict(completed_modules=sorted(done), completed_files=len(done), total_files=len(records),
        complete=False, source_hashes={r['active_path']: r['active_sha256'] for r in records.values()},
        returncode=0, manifest=name + '_MANIFEST.json', atlas_certification=False)
    write_once(AUDIT / (name + '_BUILD_STATUS.json'), json.dumps(status, indent=2) + '\n')
    print(json.dumps(dict(manifest=name, modules=len(records), retained=len(done), new_numeric_arrays=0,
                         endpoints=len(endpoints), atlas_certification=False)), flush=True)


if __name__ == '__main__':
    main()
