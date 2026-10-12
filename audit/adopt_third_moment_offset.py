"""Bind the original last W11 constant summand to the actual Gram offset."""
import json

from adopt_third_moment_slice import AUDIT, BASE, MODULE, NAMESPACE, ROOT, read_saved_document, sha, write_once
from adopt_third_moment_product_slice import adopt_data


def main():
    document, pin = read_saved_document()
    last = document['identities'][1]['summands'][-1]
    assert last == dict(numerator=65, denominator=66, cofactor=67, cleared_integer=64)
    records, bindings = {}, []
    for pid in [65, 66]:
        assert document['polynomials'][pid]['scale'] == 1
        powers = {s['a_power'] for s in document['polynomials'][pid]['a_slices']}
        for power in sorted(powers):
            _, _, record, binding = adopt_data(document, pid, power)
            records[record['module']] = record
            bindings.append(binding)
        tags = [f'P{pid:03d}A{k:02d}' if k in powers else '[]' for k in range(16)]
        source = f'import {MODULE}.Model\n'
        source += ''.join(f'import {MODULE}.Data.{tag}\n' for tag in tags if tag != '[]')
        source += f'\nset_option autoImplicit false\nnamespace {NAMESPACE}\n'
        source += f'-- Exact original saved polynomial {pid}, with scale1.\n'
        source += f'def P{pid:03d} : List (List CriticalZeroSumAssembly20261003.DenseCoefficients.XY) :=\n'
        source += '  [' + ', '.join(tags) + f']\nend {NAMESPACE}\n'
        path = BASE / 'Polynomials' / f'P{pid:03d}.lean'
        write_once(path, source)
        module = MODULE + f'.Polynomials.P{pid:03d}'
        records[module] = dict(module=module, active_path=str(path.relative_to(ROOT / 'lean')),
                              active_sha256=sha(path), saved_data_reference_assembly=True)

    source = f'''import {MODULE}.Polynomials.P065
import {MODULE}.Polynomials.P066
import NoFourMUBs.Step2.Reconstruction.ThirdMoment.SeedResiduals
import NoFourMUBs.Step1.Lift
import Mathlib.Tactic.FieldSimp

set_option autoImplicit false
set_option maxHeartbeats 1000000
open Matrix Hadamard6
open scoped ComplexConjugate

noncomputable section
namespace {NAMESPACE}
open CriticalZeroSplitReduction20261003

theorem P065_value {{R : Type*}} [CommRing R] (a b c d : R) :
    polynomialValue a b c d P065 = -((a*c+a+c)*(a*b+a+b)) := by
  simp only [polynomialValue,P065,P065A00,P065A01,P065A02,sliceValue,
    CriticalZeroSumAssembly20261003.DenseCoefficients.interpret,
    IntegerReflector.evalII,IntegerReflector.evalI,Coefficients.eval,
    List.map_cons,List.map_nil,Int.cast_neg,Int.cast_one,Int.cast_ofNat,
    zero_add,add_zero,mul_zero,mul_one]
  ring

theorem P066_value {{R : Type*}} [CommRing R] (a b c d : R) :
    polynomialValue a b c d P066 = a^2*b*c := by
  simp only [polynomialValue,P066,P066A02,sliceValue,
    CriticalZeroSumAssembly20261003.DenseCoefficients.interpret,
    IntegerReflector.evalII,IntegerReflector.evalI,Coefficients.eval,
    List.map_cons,List.map_nil,Int.cast_one,zero_add,add_zero,mul_zero,mul_one]
  ring

theorem seedWeightedOffset_formula (p : Seed) :
    seedWeightedOffset p =
      (1+conj (p 0 : ℂ)+conj (p 2 : ℂ))*(1+conj (p 0 : ℂ)+conj (p 1 : ℂ)) := by
  simp [seedWeightedOffset,seedCorner,corner,sixI3,Matrix.mul_apply,
    Matrix.conjTranspose_apply,Matrix.vecMul,dotProduct,Fin.sum_univ_three]
  <;> ring

theorem P066_seed_ne_zero (p : Seed) :
    polynomialValue (p 0 : ℂ) (p 1) (p 2) (p 3) P066 ≠ 0 := by
  rw [P066_value]
  exact mul_ne_zero (mul_ne_zero (pow_ne_zero 2 (Circle.coe_ne_zero (p 0)))
    (Circle.coe_ne_zero (p 1))) (Circle.coe_ne_zero (p 2))

/-- The supplied numerator and denominator are the literal last W11 term.
This uses only unit phases; no strict or generic parameter assumption. -/
theorem savedOffset_value (p : Seed) :
    -seedWeightedOffset p =
      polynomialValue (p 0 : ℂ) (p 1) (p 2) (p 3) P065 /
      polynomialValue (p 0 : ℂ) (p 1) (p 2) (p 3) P066 := by
  rw [seedWeightedOffset_formula,P065_value,P066_value]
  simp only [NoFourMUBs.Step1Geo.conj_circle]
  field_simp [Circle.coe_ne_zero (p 0),Circle.coe_ne_zero (p 1),Circle.coe_ne_zero (p 2)]
  <;> ring

end {NAMESPACE}
'''
    path = BASE / 'OffsetBinding.lean'
    write_once(path, source)
    module = MODULE + '.OffsetBinding'
    records[module] = dict(module=module, active_path=str(path.relative_to(ROOT / 'lean')),
                           active_sha256=sha(path), local_model_adapter=True)
    manifest = dict(scope='matched_third_flatness', records=list(records.values()),
        axiom_endpoints=[NAMESPACE + '.' + n for n in ['P065_value','P066_value',
            'seedWeightedOffset_formula','P066_seed_ne_zero','savedOffset_value']],
        dependency_audits=['KERNEL_AUDIT_MATCHED_THIRD_SEED_RESIDUALS_STATUS.json',
                           'KERNEL_AUDIT_MATCHED_THIRD_W11_SUMS_STATUS.json'],
        dependency_pins=[dict(active_path=str((BASE / 'Model.lean').relative_to(ROOT / 'lean')),
                              active_sha256=sha(BASE / 'Model.lean'))],
        source_certificate_sha256=pin['sha256'], serialization_bindings=bindings,
        scope_note='Bind only the last W11 constant summand to the actual seed matrix and '
                   'prove its saved denominator nonzero on every unit-phase seed; no atlas.',
        atlas_certification=False)
    name = 'MATCHED_THIRD_OFFSET_BINDING'
    write_once(AUDIT / (name + '_MANIFEST.json'), json.dumps(manifest, indent=2) + '\n')
    print(json.dumps(dict(manifest=name, modules=len(records), endpoints=5,
                         original_saved_terms=9, atlas_certification=False)))


if __name__ == '__main__':
    main()
