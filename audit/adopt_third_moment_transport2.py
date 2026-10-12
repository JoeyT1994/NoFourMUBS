"""Reuse exact b shifts for saved products17 and18; no new numeric arrays."""
import json

from adopt_third_moment_slice import (
    AUDIT, BASE, MODULE, NAMESPACE, ROOT, nested_slice, read_saved_document,
    sha, write_once,
)

DC = 'CriticalZeroSumAssembly20261003.DenseCoefficients'
NAME = 'MATCHED_THIRD_MONOMIAL_TRANSPORT_2'


def main():
    document, pin = read_saved_document()
    names = ['MATCHED_THIRD_PRODUCT_015', 'MATCHED_THIRD_PRODUCT_003',
             'MATCHED_THIRD_W11_SUMS', 'MATCHED_THIRD_MONOMIAL_TRANSPORT_0']
    known, completed = {}, {}
    for name in names:
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

    for target, original_pid in [(38, 31), (37, 36)]:
        for sl in document['polynomials'][target]['a_slices']:
            power = sl['a_power']
            data = raw(original_pid, power)
            assert data[0] == [] and data[1:] == raw(target, power)
            original = f'P{original_pid:03d}A{power:02d}'
            tag = f'P{target:03d}A{power:02d}'
            dependency = known[MODULE + '.Data.' + original]
            assert sha(ROOT / 'lean' / dependency['active_path']) == dependency['active_sha256']
            records[dependency['module']] = dependency
            source = f'import {dependency["module"]}\n\nset_option autoImplicit false\n'
            source += f'namespace {NAMESPACE}\n'
            source += f'-- Exact saved-slice reuse: polynomial {target}, a^{power}.\n'
            source += f'def {tag} : List {DC}.XY :=\n  {original}.tail\nend {NAMESPACE}\n'
            path = BASE / 'Data' / (tag + '.lean')
            write_once(path, source)
            record = dict(module=MODULE + '.Data.' + tag,
                active_path=str(path.relative_to(ROOT / 'lean')), active_sha256=sha(path),
                saved_certificate_data=True, saved_data_alias=True, alias_dependency=dependency)
            records[record['module']] = record
            aliases[tag] = dict(target_polynomial=target, target_a_power=power,
                source_polynomial=original_pid, source_a_power=power,
                operation='tail_b', round_trip_equal=True, record=record)
        powers = {s['a_power'] for s in document['polynomials'][target]['a_slices']}
        tags = [f'P{target:03d}A{k:02d}' if k in powers else '[]' for k in range(16)]
        source = f'import {MODULE}.Model\n'
        source += ''.join(f'import {MODULE}.Data.{tag}\n' for tag in tags if tag != '[]')
        source += f'\nset_option autoImplicit false\nnamespace {NAMESPACE}\n'
        source += '-- Exact saved polynomial; only existing slice tails.\n'
        source += f'def P{target:03d} : List (List {DC}.XY) :=\n  [' + ', '.join(tags) + ']\n'
        source += f'end {NAMESPACE}\n'
        path = BASE / 'Polynomials' / f'P{target:03d}.lean'
        write_once(path, source)
        module = MODULE + f'.Polynomials.P{target:03d}'
        records[module] = dict(module=module, active_path=str(path.relative_to(ROOT / 'lean')),
                               active_sha256=sha(path), saved_data_reference_assembly=True)

    registry_path = AUDIT / 'MATCHED_THIRD_DATA_ALIASES.json'
    registry = json.loads(registry_path.read_text())
    assert registry['source_certificate_sha256'] == pin['sha256']
    for tag, record in aliases.items():
        assert tag not in registry['aliases'] or registry['aliases'][tag] == record
        registry['aliases'][tag] = record
    registry_path.write_text(json.dumps(registry, indent=2) + '\n')

    source = f'import {MODULE}.Products.MonomialTransport0\n'
    source += ''.join(f'import {MODULE}.Polynomials.P{i:03d}\n' for i in [8, 31, 36, 37, 38])
    source += '\nset_option autoImplicit false\nset_option maxRecDepth 10000\nset_option maxHeartbeats 1500000\n'
    source += f'namespace {NAMESPACE}\nopen CriticalZeroSplitReduction20261003\n'
    source += 'variable {R : Type*} [CommRing R]\n\n'
    source += '''theorem P008_value (a b c d : R) : polynomialValue a b c d P008 = b := by
  simp only [polynomialValue,P008,P008A00,sliceValue,
    CriticalZeroSumAssembly20261003.DenseCoefficients.interpret,
    IntegerReflector.evalII,IntegerReflector.evalI,Coefficients.eval,
    List.map_cons,List.map_nil,Int.cast_one,zero_add,add_zero,mul_zero,mul_one]

'''
    endpoints = ['P008_value']
    for left, right, product in [(31, 38, 17), (36, 37, 18)]:
        tag = f'P{left:03d}_eq_b_mul_P{right:03d}'
        source += f'theorem {tag} (a b c d : R) :\n'
        source += f'    polynomialValue a b c d P{left:03d} = b * polynomialValue a b c d P{right:03d} := by\n'
        source += '  have hz : sliceValue b c d [] = (0 : R) := rfl\n'
        rules = []
        for sl in document['polynomials'][left]['a_slices']:
            power = sl['a_power']
            lhs, rhs = f'P{left:03d}A{power:02d}', f'P{right:03d}A{power:02d}'
            source += f'  have h{power} : sliceValue b c d {lhs} = b * sliceValue b c d {rhs} := by\n'
            source += f'    have hs : {DC}.shift 1 {rhs} = {lhs} := rfl\n'
            source += '    rw [← hs]\n'
            source += f'    exact (by simpa only [pow_one] using sliceValue_shift b c d 1 {rhs})\n'
            rules.append(f'h{power}')
        source += f'  have hm : P{left:03d}.map (sliceValue b c d) =\n'
        source += f'      Coefficients.scale b (P{right:03d}.map (sliceValue b c d)) := by\n'
        source += f'    simp only [P{left:03d},P{right:03d},Coefficients.scale,List.map_cons,List.map_nil,\n'
        source += '      ' + ','.join(rules) + ',hz,mul_zero]\n'
        source += '  unfold polynomialValue\n  rw [hm,Coefficients.eval_scale]\n\n'
        source += f'theorem Product{product:03d}_value (a b c d : R) :\n'
        source += f'    polynomialValue a b c d P{right:03d} * polynomialValue a b c d P008 =\n'
        source += f'      polynomialValue a b c d P{left:03d} := by\n'
        source += f'  rw [P008_value,{tag},mul_comm]\n\n'
        endpoints += [tag, f'Product{product:03d}_value']
    source += f'end {NAMESPACE}\n'
    path = BASE / 'Products' / 'MonomialTransport2.lean'
    write_once(path, source)
    module = MODULE + '.Products.MonomialTransport2'
    records[module] = dict(module=module, active_path=str(path.relative_to(ROOT / 'lean')),
                           active_sha256=sha(path), local_model_adapter=True)
    manifest = dict(scope='matched_third_arithmetic', records=list(records.values()),
        axiom_endpoints=[NAMESPACE + '.' + e for e in endpoints],
        dependency_audits=['KERNEL_AUDIT_' + n + '_STATUS.json' for n in names],
        dependency_pins=[dict(active_path=str((BASE / 'Model.lean').relative_to(ROOT / 'lean')),
                              active_sha256=sha(BASE / 'Model.lean'))],
        source_certificate_sha256=pin['sha256'], transported_product_indices=[17, 18],
        scope_note='Exact saved b shifts imply products17 and18 over every commutative ring; '
                   'no division, new numeric arrays or repeated product checks.', atlas_certification=False)
    write_once(AUDIT / (NAME + '_MANIFEST.json'), json.dumps(manifest, indent=2) + '\n')
    retained = [r['module'] for r in records.values() if completed.get(r['active_path']) == r['active_sha256']]
    status = dict(completed_modules=retained, completed_files=len(retained), total_files=len(records),
        complete=False, source_hashes={r['active_path']: r['active_sha256'] for r in records.values()},
        returncode=0, manifest=NAME + '_MANIFEST.json', atlas_certification=False)
    write_once(AUDIT / (NAME + '_BUILD_STATUS.json'), json.dumps(status, indent=2) + '\n')
    print(json.dumps(dict(manifest=NAME, modules=len(records), retained=len(retained),
        new_numeric_arrays=0, aliases=len(aliases), endpoints=len(endpoints), atlas_certification=False)))


if __name__ == '__main__':
    main()
