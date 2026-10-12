"""Reuse product 15 by moving a, b, c factors in the exact saved arrays.

No numeric arrays or multiplication certificates are generated. New data
definitions refer only to existing slices, their tails, or their shifts.
"""
import datetime
import json

from adopt_third_moment_slice import (
    AUDIT, BASE, MODULE, NAMESPACE, ROOT, nested_slice, read_saved_document,
    sha, write_once,
)

DC = 'CriticalZeroSumAssembly20261003.DenseCoefficients'
NAME = 'MATCHED_THIRD_MONOMIAL_TRANSPORT_1'


def main():
    document, pin = read_saved_document()
    previous_names = ['MATCHED_THIRD_PRODUCT_015', 'MATCHED_THIRD_MONOMIAL_TRANSPORT_0']
    known, completed = {}, {}
    for name in previous_names:
        manifest = json.loads((AUDIT / (name + '_MANIFEST.json')).read_text())
        audit = json.loads((AUDIT / ('KERNEL_AUDIT_' + name + '_STATUS.json')).read_text())
        assert audit['status'] == 'PASS'
        assert audit['manifest_sha256'] == sha(AUDIT / (name + '_MANIFEST.json'))
        known.update({r['module']: r for r in manifest['records']})
        completed.update(audit['source_hashes'])
    records, aliases = {}, {}

    def raw(pid, power):
        slices = [s for s in document['polynomials'][pid]['a_slices'] if s['a_power'] == power]
        assert len(slices) == 1
        return nested_slice(slices[0]['terms'])

    specs = [(45, 34, 'tail_c', 0), (48, 34, 'identity', -1),
             (49, 35, 'identity', 1), (52, 34, 'shift_b_tail_c', 0),
             (53, 4, 'tail_b', 0), (56, 34, 'shift_b', 0), (57, 35, 'tail_b', 0)]
    for target, source, operation, offset in specs:
        for sl in document['polynomials'][target]['a_slices']:
            power = sl['a_power']
            source_power = power + offset
            data = raw(source, source_power)
            original = f'P{source:03d}A{source_power:02d}'
            if operation in {'tail_c', 'shift_b_tail_c'}:
                assert all(not row or row[0] == [] for row in data)
                transformed = [row[1:] for row in data]
                expression = f'({original}.map List.tail)'
                if operation == 'shift_b_tail_c':
                    transformed = [[]] + transformed
                    expression = f'{DC}.shift 1 {expression}'
            elif operation == 'tail_b':
                assert data[0] == []
                transformed, expression = data[1:], original + '.tail'
            elif operation == 'shift_b':
                transformed, expression = [[]] + data, f'{DC}.shift 1 {original}'
            else:
                transformed, expression = data, original
            assert transformed == raw(target, power)
            dependency = known[MODULE + '.Data.' + original]
            assert sha(ROOT / 'lean' / dependency['active_path']) == dependency['active_sha256']
            records[dependency['module']] = dependency
            tag = f'P{target:03d}A{power:02d}'
            text = 'import ' + dependency['module'] + '\n\nset_option autoImplicit false\n'
            text += f'namespace {NAMESPACE}\n'
            text += f'-- Exact saved-slice reuse: polynomial {target}, a^{power}.\n'
            text += f'def {tag} : List {DC}.XY :=\n  {expression}\nend {NAMESPACE}\n'
            path = BASE / 'Data' / (tag + '.lean')
            write_once(path, text)
            record = dict(module=MODULE + '.Data.' + tag,
                          active_path=str(path.relative_to(ROOT / 'lean')),
                          active_sha256=sha(path), saved_certificate_data=True,
                          saved_data_alias=True, alias_dependency=dependency)
            records[record['module']] = record
            aliases[tag] = dict(target_polynomial=target, target_a_power=power,
                source_polynomial=source, source_a_power=source_power,
                operation=operation, round_trip_equal=True, record=record)

    registry_path = AUDIT / 'MATCHED_THIRD_DATA_ALIASES.json'
    registry = json.loads(registry_path.read_text())
    assert registry['source_certificate_sha256'] == pin['sha256']
    for tag, record in aliases.items():
        assert tag not in registry['aliases'] or registry['aliases'][tag] == record
        registry['aliases'][tag] = record
    registry_path.write_text(json.dumps(registry, indent=2) + '\n')

    for target, _, _, _ in specs:
        powers = {s['a_power'] for s in document['polynomials'][target]['a_slices']}
        names = [f'P{target:03d}A{k:02d}' if k in powers else '[]' for k in range(16)]
        text = f'import {MODULE}.Model\n'
        text += ''.join(f'import {MODULE}.Data.{tag}\n' for tag in names if tag != '[]')
        text += f'\nset_option autoImplicit false\nnamespace {NAMESPACE}\n'
        text += '-- Exact saved polynomial; only references, tails and monomial shifts.\n'
        text += f'def P{target:03d} : List (List {DC}.XY) :=\n  [' + ', '.join(names) + ']\n'
        text += f'end {NAMESPACE}\n'
        path = BASE / 'Polynomials' / f'P{target:03d}.lean'
        write_once(path, text)
        module = MODULE + f'.Polynomials.P{target:03d}'
        records[module] = dict(module=module, active_path=str(path.relative_to(ROOT / 'lean')),
                              active_sha256=sha(path), saved_data_reference_assembly=True)

    helper = f'''import {MODULE}.Model

set_option autoImplicit false
namespace {NAMESPACE}
open CriticalZeroSplitReduction20261003
variable {{R : Type*}} [CommRing R]

/-- Strip the empty leading c row using the existing Horner evaluator. -/
theorem sliceValue_eq_c_mul_tail (b c d : R) (p : List {DC}.XY)
    (h : p.map (fun row => row.headD []) = List.replicate p.length []) :
    sliceValue b c d p = c * sliceValue b c d (p.map List.tail) := by
  have hi : {DC}.interpret c d p =
      Coefficients.scale c ({DC}.interpret c d (p.map List.tail)) := by
    induction p with
    | nil => rfl
    | cons row rest ih =>
      change row.headD [] :: rest.map (fun q => q.headD []) =
        [] :: List.replicate rest.length [] at h
      have ht := (List.cons.inj h).2
      cases row with
      | nil =>
        simp only [List.map_cons, List.tail_nil, {DC}.interpret,
          IntegerReflector.evalII, ih ht, Coefficients.scale, List.map_cons, mul_zero]
      | cons first tail =>
        have hf : first = [] := (List.cons.inj h).1
        subst first
        simp only [List.map_cons, List.tail_cons, {DC}.interpret,
          IntegerReflector.evalII, IntegerReflector.evalI, zero_add, ih ht,
          Coefficients.scale, List.map_cons]
  unfold sliceValue
  rw [hi, Coefficients.eval_scale]

end {NAMESPACE}
'''
    helper_path = BASE / 'Products' / 'MonomialTail.lean'
    write_once(helper_path, helper)
    helper_module = MODULE + '.Products.MonomialTail'
    records[helper_module] = dict(module=helper_module,
        active_path=str(helper_path.relative_to(ROOT / 'lean')),
        active_sha256=sha(helper_path), local_model_adapter=True)

    source = f'import {MODULE}.Products.Product015\nimport {MODULE}.Products.MonomialTransport0\n'
    source += f'import {helper_module}\n'
    source += ''.join(f'import {MODULE}.Polynomials.P{pid:03d}\n' for pid, _, _, _ in specs)
    source += '\nset_option autoImplicit false\nset_option maxRecDepth 10000\nset_option maxHeartbeats 1500000\n'
    source += f'namespace {NAMESPACE}\nopen CriticalZeroSplitReduction20261003\n'
    source += 'variable {R : Type*} [CommRing R]\n\n'
    endpoints = ['sliceValue_eq_c_mul_tail']

    for left, right, alias_pid, tag in [
            (48, 34, 48, 'P048_eq_a_mul_P034'), (35, 49, 49, 'P035_eq_a_mul_P049')]:
        used = [k for k, v in aliases.items() if v['target_polynomial'] == alias_pid]
        source += f'theorem {tag} (a b c d : R) :\n'
        source += f'    polynomialValue a b c d P{left:03d} = a * polynomialValue a b c d P{right:03d} := by\n'
        source += '  have hz : sliceValue b c d [] = (0 : R) := rfl\n'
        source += f'  simp only [polynomialValue,P{left:03d},P{right:03d},List.map_cons,List.map_nil,\n'
        source += '    Coefficients.eval,' + ','.join(used) + ',hz,zero_add,mul_zero,add_zero]\n\n'
        endpoints.append(tag)

    for left, right, factor, operation in [(34, 45, 'c', 'tail_c'), (4, 35, 'c', 'tail_c'),
            (52, 45, 'b', 'shift_b'), (4, 53, 'b', 'tail_b'),
            (56, 34, 'b', 'shift_b'), (35, 57, 'b', 'tail_b')]:
        tag = f'P{left:03d}_eq_{factor}_mul_P{right:03d}'
        source += f'theorem {tag} (a b c d : R) :\n'
        source += f'    polynomialValue a b c d P{left:03d} = {factor} * polynomialValue a b c d P{right:03d} := by\n'
        source += '  have hz : sliceValue b c d [] = (0 : R) := rfl\n'
        rules = []
        powers = [s['a_power'] for s in document['polynomials'][left]['a_slices']]
        if operation in {'tail_c', 'tail_b'}:
            for power in powers:
                lhs, rhs = f'P{left:03d}A{power:02d}', f'P{right:03d}A{power:02d}'
                source += f'  have h{power} : sliceValue b c d {lhs} = {factor} * sliceValue b c d {rhs} := by\n'
                if operation == 'tail_c':
                    assert [x[1:] for x in raw(left, power)] == raw(right, power)
                    source += f'    have hs : {lhs}.map List.tail = {rhs} := rfl\n'
                    source += f'    simpa only [hs] using sliceValue_eq_c_mul_tail b c d {lhs} (by rfl)\n'
                else:
                    assert raw(left, power)[0] == []
                    assert raw(left, power)[1:] == raw(right, power)
                    source += f'    have hs : {DC}.shift 1 {rhs} = {lhs} := rfl\n'
                    source += '    rw [← hs]\n'
                    source += f'    exact (by simpa only [pow_one] using sliceValue_shift b c d 1 {rhs})\n'
                rules.append(f'h{power}')
        else:
            rules = [k for k, v in aliases.items() if v['target_polynomial'] in [left, right]]
            rules += ['sliceValue_shift', 'pow_one']
        source += f'  have hm : P{left:03d}.map (sliceValue b c d) =\n'
        source += f'      Coefficients.scale {factor} (P{right:03d}.map (sliceValue b c d)) := by\n'
        source += f'    simp only [P{left:03d},P{right:03d},Coefficients.scale,List.map_cons,List.map_nil,\n'
        source += '      ' + ','.join(rules) + ',hz,mul_zero]\n'
        source += '  unfold polynomialValue\n  rw [hm,Coefficients.eval_scale]\n\n'
        endpoints.append(tag)

    source += '''/-- Move the c factor in the already checked product15. -/
theorem Product021_value (a b c d : R) :
    polynomialValue a b c d P045 * polynomialValue a b c d P004 =
      polynomialValue a b c d P031 := by
  rw [P004_eq_c_mul_P035, ← mul_assoc,
    mul_comm (polynomialValue a b c d P045) c, ← P034_eq_c_mul_P045]
  exact Product015_value a b c d

theorem Product023_value (a b c d : R) :
    polynomialValue a b c d P048 * polynomialValue a b c d P049 =
      polynomialValue a b c d P031 := by
  rw [P048_eq_a_mul_P034, mul_comm a (polynomialValue a b c d P034),
    mul_assoc, ← P035_eq_a_mul_P049]
  exact Product015_value a b c d

theorem Product025_value (a b c d : R) :
    polynomialValue a b c d P052 * polynomialValue a b c d P053 =
      polynomialValue a b c d P031 := by
  rw [P052_eq_b_mul_P045, mul_comm b (polynomialValue a b c d P045),
    mul_assoc, ← P004_eq_b_mul_P053]
  exact Product021_value a b c d

theorem Product027_value (a b c d : R) :
    polynomialValue a b c d P056 * polynomialValue a b c d P057 =
      polynomialValue a b c d P031 := by
  rw [P056_eq_b_mul_P034, mul_comm b (polynomialValue a b c d P034),
    mul_assoc, ← P035_eq_b_mul_P057]
  exact Product015_value a b c d
'''
    source += f'\nend {NAMESPACE}\n'
    endpoints += [f'Product{i:03d}_value' for i in [21, 23, 25, 27]]
    path = BASE / 'Products' / 'MonomialTransport1.lean'
    write_once(path, source)
    module = MODULE + '.Products.MonomialTransport1'
    records[module] = dict(module=module, active_path=str(path.relative_to(ROOT / 'lean')),
                           active_sha256=sha(path), local_model_adapter=True)
    manifest = dict(scope='matched_third_arithmetic', records=list(records.values()),
        axiom_endpoints=[NAMESPACE + '.' + e for e in endpoints],
        dependency_audits=['KERNEL_AUDIT_' + x + '_STATUS.json' for x in previous_names],
        dependency_pins=[dict(active_path=str((BASE / 'Model.lean').relative_to(ROOT / 'lean')),
                              active_sha256=sha(BASE / 'Model.lean'))],
        source_certificate_sha256=pin['sha256'], transported_product_indices=[21, 23, 25, 27],
        scope_note='Reuse product015 for four saved products by exact a,b,c monomial transport; '
                   'all commutative rings, no division or new multiplication certificates.',
        atlas_certification=False)
    write_once(AUDIT / (NAME + '_MANIFEST.json'), json.dumps(manifest, indent=2) + '\n')
    retained = [r['module'] for r in records.values()
                if completed.get(r['active_path']) == r['active_sha256']]
    status = dict(completed_modules=retained, completed_files=len(retained), total_files=len(records),
                  complete=False, source_hashes={r['active_path']: r['active_sha256'] for r in records.values()},
                  returncode=0, manifest=NAME + '_MANIFEST.json', atlas_certification=False)
    write_once(AUDIT / (NAME + '_BUILD_STATUS.json'), json.dumps(status, indent=2) + '\n')
    print(json.dumps(dict(manifest=NAME, modules=len(records), retained=len(retained),
        new_numeric_arrays=0, aliases=len(aliases), endpoints=len(endpoints), atlas_certification=False)))


if __name__ == '__main__':
    main()
