import NoFourMUBs.Reuse.Archive.SideIntrinsicActualLambda
import NoFourMUBs.Step2.CriticalZero.EquicorrelationMixedCorner

/-! The equal-modulus endpoint cancels the common permanent term in the
existing intrinsic identities. No sheet or nonzero determinant is needed. -/

set_option autoImplicit false
set_option maxHeartbeats 1500000
noncomputable section
open scoped ComplexConjugate
namespace NoFourMUBs.Step2.Critical.Equicorrelation
open StrictReconstruction20261007 StrictReconstruction20261007.SideIntrinsic

theorem oriented_gram_constants :
    Complex.normSq (2 + alpha) = 9 / 5 ∧
    Complex.normSq (2 + conj alpha) = 9 / 5 ∧
    Complex.normSq (1 + 2 * conj alpha) = 9 / 5 ∧
    conj (sideP0 (2 + alpha) (2 + conj alpha) (1 + 2 * conj alpha)) = 108 / 25 ∧
    conj (sideP1 (2 + alpha) (2 + conj alpha) (1 + 2 * conj alpha)) =
      (108 / 25) * alpha ∧
    conj (sideP2 (2 + alpha) (2 + conj alpha) (1 + 2 * conj alpha)) =
      (108 / 25) * conj alpha := by
  norm_num [alpha, sideP0, sideP1, sideP2, Complex.normSq_apply,
    Complex.ext_iff, Complex.mul_re, Complex.mul_im, pow_two, map_ofNat]

/-- The actual coordinate products follow from the oriented Gram alone.
This is a consequence of the already checked three intrinsic identities. -/
theorem oriented_row_products (a : Rows ℂ) (ha : UnitRows a)
    (hs : rowS a = 2 + alpha) (ht : rowT a = 2 + conj alpha)
    (hr : rowR a = 1 + 2 * conj alpha) :
    rowU a = alpha ∧ rowV a = conj alpha := by
  obtain ⟨h0, h1, h2⟩ := actual_intrinsic_lambda_identities a ha
  obtain ⟨_, _, hu, hv⟩ := row_product_units a ha
  obtain ⟨hS, hT, hR, hP0, hP1, hP2⟩ := oriented_gram_constants
  rw [hs, ht, hr, hR, hP0] at h0
  rw [hs, ht, hr, hT, hP1] at h1
  rw [hs, ht, hr, hS, hP2] at h2
  have hU : rowU a * (108 / 25 : ℂ) = (108 / 25 : ℂ) * alpha := by
    apply mul_left_cancel₀ hv
    linear_combination h0 - h1
  have hV : rowV a * (108 / 25 : ℂ) = (108 / 25 : ℂ) * conj alpha := by
    apply mul_left_cancel₀ hu
    linear_combination h0 - h2
  constructor
  · linear_combination (25 / 108 : ℂ) * hU
  · linear_combination (25 / 108 : ℂ) * hV

end NoFourMUBs.Step2.Critical.Equicorrelation
