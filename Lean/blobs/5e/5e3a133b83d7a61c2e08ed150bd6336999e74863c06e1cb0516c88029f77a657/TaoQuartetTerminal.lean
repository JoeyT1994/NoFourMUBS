import CircleTaoSymmetryClosing
import CircleTaoNormalizedWitness
import Worker12.TaoSourceBinding

/-! Close the inherited Tao exclusion proposition using the accepted circle
certificate, with physical quartet extraction and both primitive cubic roots.
This is a scoped integration record, not a global classification theorem. -/
set_option autoImplicit false
namespace Mub6.ExceptionalTerminals
open Mub6 Numerical Numerical.CircleFullPrototype Worker12

theorem unbiased_identity_flat {B : BasisMatrix}
    (h : IsUnbiased identityBasis B) :
    ∀ j, IsNormalizedFlatRay (fun r => B r j) := by
  intro j r
  have hij := h r j
  change Complex.normSq (overlap identityBasis B r j) = (1 : ℝ) / 6 at hij
  rw [overlap_identity_left] at hij
  exact hij

theorem two_remaining_indices : ∀ a b : Fin 4, a ≠ b →
    ∃ c d : Fin 4, a ≠ c ∧ a ≠ d ∧ b ≠ c ∧ b ≠ d ∧ c ≠ d := by
  decide +kernel

theorem standard_pair_excluded_of_no_extension {H : BasisMatrix}
    (hex : ∀ B : BasisMatrix, IsOrthonormalBasis B →
      (∀ j, IsNormalizedFlatRay (fun r => B r j)) → B = H →
      ¬ ∃ C D : BasisMatrix,
        IsOrthonormalBasis C ∧ IsOrthonormalBasis D ∧
        (∀ j, IsNormalizedFlatRay (fun r => C r j)) ∧
        (∀ j, IsNormalizedFlatRay (fun r => D r j)) ∧
        IsUnbiased B C ∧ IsUnbiased B D ∧ IsUnbiased C D) :
    ¬ ExtendsStandardPair H := by
  rintro ⟨B, hB, a, b, hab, ha, hb⟩
  obtain ⟨c, d, hac, had, hbc, hbd, hcd⟩ := two_remaining_indices a b hab
  exact hex (B b) (hB.1 b)
    (unbiased_identity_flat (ha ▸ hB.2 a b hab)) hb
    ⟨B c, B d, hB.1 c, hB.1 d,
      unbiased_identity_flat (ha ▸ hB.2 a c hac),
      unbiased_identity_flat (ha ▸ hB.2 a d had),
      hB.2 b c hbc, hB.2 b d hbd, hB.2 c d hcd⟩

theorem normalize_eq (H : BasisMatrix) :
    physicalNormalize H = NormalizedWitness.normalized H := by
  funext r k
  simp [physicalNormalize, phaseScale, NormalizedWitness.normalized, div_eq_mul_inv,
    mul_comm]

theorem tao_literal : publishedTaoPhase TaoCalibration.omega = TaoCalibration.tao := by
  funext r k
  fin_cases r <;> fin_cases k <;>
    simp [publishedTaoPhase, TaoCalibration.tao, TaoCalibration.omegaBar_eq_sq]

theorem tao_root : PrimitiveCubicPhase TaoCalibration.omega := by
  have hs := Real.sq_sqrt (by norm_num : (0 : ℝ) ≤ 3)
  constructor
  · norm_num [TaoCalibration.omega, Complex.normSq_apply]
    nlinarith
  · apply Complex.ext <;>
      norm_num [TaoCalibration.omega, pow_two, Complex.mul_re, Complex.mul_im] <;>
      nlinarith

theorem tao_fixed_standard_pair_exclusion :
    PublishedTaoRootStandardPairExclusion TaoCalibration.omega := by
  apply standard_pair_excluded_of_no_extension
  intro B hB hflat heq
  apply TaoSymmetryClosing.tao_normalized_extension_excluded hB hflat
  rw [heq, tao_literal, normalize_eq]
  exact NormalizedWitness.raw_carrier_normalized NormalizedWitness.tao_first_row

theorem tao_standard_pair_exclusion : PublishedTaoStandardPairExclusion :=
  publishedTaoStandardPairExclusion_of_fixedRoot tao_root tao_fixed_standard_pair_exclusion

theorem tao_quartet_exclusion : TaoQuartetExclusion :=
  taoQuartetExclusion_of_published tao_standard_pair_exclusion

-- Bare-@ assignments prohibit an unnoticed exclusion or coverage parameter.
example : PublishedTaoStandardPairExclusion := @tao_standard_pair_exclusion
example : TaoQuartetExclusion := @tao_quartet_exclusion
#print axioms standard_pair_excluded_of_no_extension
#print axioms tao_fixed_standard_pair_exclusion
#print axioms tao_standard_pair_exclusion
#print axioms tao_quartet_exclusion
end Mub6.ExceptionalTerminals
