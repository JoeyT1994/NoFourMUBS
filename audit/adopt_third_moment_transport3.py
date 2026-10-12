"""Move the saved a^2*b*c monomial for product32, reusing product17."""
import json

from adopt_third_moment_slice import (
    AUDIT, BASE, MODULE, NAMESPACE, ROOT, nested_slice, read_saved_document,
    sha, write_once,
)

DC = 'CriticalZeroSumAssembly20261003.DenseCoefficients'
NAME = 'MATCHED_THIRD_MONOMIAL_TRANSPORT_3'


def main():
    document, pin = read_saved_document()
    names = ['MATCHED_THIRD_MONOMIAL_TRANSPORT_1', 'MATCHED_THIRD_MONOMIAL_TRANSPORT_2',
             'MATCHED_THIRD_OFFSET_BINDING']
    known, completed = {}, {}
    for name in names:
        m = AUDIT / (name + '_MANIFEST.json')
        manifest = json.loads(m.read_text())
        audit = json.loads((AUDIT / ('KERNEL_AUDIT_' + name + '_STATUS.json')).read_text())
        assert audit['status'] == 'PASS' and audit['manifest_sha256'] == sha(m)
        known.update({r['module']: r for r in manifest['records']})
        completed.update(audit['source_hashes'])
    records, aliases = {}, {}

    def raw(pid, power):
        ss = [s for s in document['polynomials'][pid]['a_slices'] if s['a_power'] == power]
        assert len(ss) == 1
        return nested_slice(ss[0]['terms'])

    for sl in document['polynomials'][67]['a_slices']:
        k = sl['a_power']
        data = raw(31, k + 2)
        assert data[0] == [] and all(not row or row[0] == [] for row in data[1:])
        assert [row[1:] for row in data[1:]] == raw(67, k)
        original, tag = f'P031A{k+2:02d}', f'P067A{k:02d}'
        dependency = known[MODULE + '.Data.' + original]
        assert sha(ROOT / 'lean' / dependency['active_path']) == dependency['active_sha256']
        records[dependency['module']] = dependency
        source = f'import {dependency["module"]}\n\nset_option autoImplicit false\n'
        source += f'namespace {NAMESPACE}\n'
        source += f'-- Exact saved-slice reuse: polynomial67, a^{k}.\n'
        source += f'def {tag} : List {DC}.XY :=\n  {original}.tail.map List.tail\nend {NAMESPACE}\n'
        path = BASE / 'Data' / (tag + '.lean')
        write_once(path, source)
        record = dict(module=MODULE + '.Data.' + tag,
            active_path=str(path.relative_to(ROOT / 'lean')), active_sha256=sha(path),
            saved_certificate_data=True, saved_data_alias=True, alias_dependency=dependency)
        records[record['module']] = record
        aliases[tag] = dict(target_polynomial=67, target_a_power=k, source_polynomial=31,
            source_a_power=k+2, operation='tail_b_tail_c', round_trip_equal=True, record=record)
    registry_path = AUDIT / 'MATCHED_THIRD_DATA_ALIASES.json'
    registry = json.loads(registry_path.read_text())
    assert registry['source_certificate_sha256'] == pin['sha256']
    for tag, row in aliases.items():
        assert tag not in registry['aliases'] or registry['aliases'][tag] == row
        registry['aliases'][tag] = row
    registry_path.write_text(json.dumps(registry, indent=2) + '\n')
    powers = {s['a_power'] for s in document['polynomials'][67]['a_slices']}
    tags = [f'P067A{k:02d}' if k in powers else '[]' for k in range(16)]
    source = f'import {MODULE}.Model\n'
    source += ''.join(f'import {MODULE}.Data.{tag}\n' for tag in tags if tag != '[]')
    source += f'\nset_option autoImplicit false\nnamespace {NAMESPACE}\n'
    source += f'def P067 : List (List {DC}.XY) :=\n  [' + ', '.join(tags) + ']\n'
    source += f'end {NAMESPACE}\n'
    path = BASE / 'Polynomials' / 'P067.lean'
    write_once(path, source)
    module = MODULE + '.Polynomials.P067'
    records[module] = dict(module=module, active_path=str(path.relative_to(ROOT / 'lean')),
                          active_sha256=sha(path), saved_data_reference_assembly=True)

    source = f'''import {MODULE}.Products.MonomialTransport1
import {MODULE}.Products.MonomialTransport2
import {MODULE}.OffsetBinding
import {MODULE}.Polynomials.P067

set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1500000
namespace {NAMESPACE}
open CriticalZeroSplitReduction20261003
variable {{R : Type*}} [CommRing R]

theorem P038_eq_a_sq_c_mul_P067 (a b c d : R) :
    polynomialValue a b c d P038 = a^2*(c*polynomialValue a b c d P067) := by
  have hz : sliceValue b c d [] = (0 : R) := rfl
'''
    rules = []
    for k in sorted(powers):
        lhs, rhs = f'P038A{k+2:02d}', f'P067A{k:02d}'
        source += f'  have h{k} : sliceValue b c d {lhs} = c * sliceValue b c d {rhs} := by\n'
        source += f'    have hs : {lhs}.map List.tail = {rhs} := rfl\n'
        source += f'    simpa only [hs] using sliceValue_eq_c_mul_tail b c d {lhs} (by rfl)\n'
        rules.append(f'h{k}')
    source += '  simp only [polynomialValue,P038,P067,List.map_cons,List.map_nil,Coefficients.eval,\n'
    source += '    ' + ','.join(rules) + ',hz,mul_zero,zero_add,add_zero]\n  ring\n\n'
    source += '''theorem Product032_value (a b c d : R) :
    polynomialValue a b c d P066 * polynomialValue a b c d P067 =
      polynomialValue a b c d P031 := by
  rw [P066_value]
  calc
    a^2*b*c*polynomialValue a b c d P067 =
        (a^2*(c*polynomialValue a b c d P067))*b := by ring
    _ = polynomialValue a b c d P038*b := by rw [← P038_eq_a_sq_c_mul_P067]
    _ = polynomialValue a b c d P031 := by
      simpa only [P008_value] using Product017_value a b c d
'''
    source += f'\nend {NAMESPACE}\n'
    path = BASE / 'Products' / 'MonomialTransport3.lean'
    write_once(path, source)
    module = MODULE + '.Products.MonomialTransport3'
    records[module] = dict(module=module, active_path=str(path.relative_to(ROOT / 'lean')),
                           active_sha256=sha(path), local_model_adapter=True)
    manifest = dict(scope='matched_third_arithmetic', records=list(records.values()),
        axiom_endpoints=[NAMESPACE + '.' + n for n in ['P038_eq_a_sq_c_mul_P067','Product032_value']],
        dependency_audits=['KERNEL_AUDIT_' + n + '_STATUS.json' for n in names],
        dependency_pins=[dict(active_path=str((BASE / 'Model.lean').relative_to(ROOT / 'lean')),
                              active_sha256=sha(BASE / 'Model.lean'))],
        source_certificate_sha256=pin['sha256'], transported_product_indices=[32],
        scope_note='Reuse product17 for saved product32 by a^2*c monomial transport; '
                   'every commutative ring, no nonzero hypothesis, new arrays or multiplication checks.',
        atlas_certification=False)
    write_once(AUDIT / (NAME + '_MANIFEST.json'), json.dumps(manifest, indent=2) + '\n')
    retained = [r['module'] for r in records.values() if completed.get(r['active_path']) == r['active_sha256']]
    status = dict(completed_modules=retained, completed_files=len(retained), total_files=len(records),
        complete=False, source_hashes={r['active_path']: r['active_sha256'] for r in records.values()},
        returncode=0, manifest=NAME + '_MANIFEST.json', atlas_certification=False)
    write_once(AUDIT / (NAME + '_BUILD_STATUS.json'), json.dumps(status, indent=2) + '\n')
    print(json.dumps(dict(manifest=NAME, modules=len(records), retained=len(retained),
        new_numeric_arrays=0, aliases=len(aliases), endpoints=2, atlas_certification=False)))


if __name__ == '__main__':
    main()
