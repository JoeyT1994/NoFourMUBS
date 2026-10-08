import SideIntrinsicTheta

/-! Every actual strict unit side lies on one of the two literal sheets.
The moment premises in the elementary helper are discharged in the endpoint. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace StrictReconstruction20261007.SideIntrinsic
open Centiradian20261006
open scoped ComplexConjugate
noncomputable section

theorem moments_coordinates {s t r z : ℂ}
    (hn : Complex.normSq z = gramEta s t r)
    (hm : (gramG s t r : ℂ) * (z + conj z) = (gramChi s t r : ℂ)) :
    2 * gramG s t r * z.re = gramChi s t r ∧
    (2 * gramG s t r * z.im)^2 = gramInvariant s t r := by
  have hr0 := congrArg Complex.re hm
  simp [Complex.mul_re] at hr0
  have hre : 2 * gramG s t r * z.re = gramChi s t r := by linear_combination hr0
  have hn' : z.re^2 + z.im^2 = gramEta s t r := by
    simpa only [Complex.normSq_apply, pow_two] using hn
  refine ⟨hre, ?_⟩
  rw [gramInvariant_eq, ← hre]
  linear_combination 4 * gramG s t r ^ 2 * hn'

theorem sideZ_eq_of_coordinates {s t r z : ℂ} {epsilon : ℝ}
    (hg : gramG s t r ≠ 0)
    (hre : 2 * gramG s t r * z.re = gramChi s t r)
    (him : 2 * gramG s t r * z.im = epsilon * Real.sqrt (gramInvariant s t r)) :
    sideZ s t r epsilon = z := by
  have h2g : 2 * gramG s t r ≠ 0 := mul_ne_zero (by norm_num) hg
  apply Complex.ext
  · rw [sideZ_re]
    apply (div_eq_iff h2g).2
    linear_combination -hre
  · simp only [sideZ, Complex.div_ofReal_im, Complex.add_im, Complex.ofReal_im,
      Complex.mul_im, Complex.ofReal_re, Complex.I_im, Complex.I_re,
      zero_mul, one_mul, mul_one, add_zero, zero_add, mul_zero]
    apply (div_eq_iff h2g).2
    linear_combination -him

theorem moments_choose_sheet {s t r z : ℂ}
    (hR : 0 < gramInvariant s t r) (hg : 0 < gramG s t r)
    (hn : Complex.normSq z = gramEta s t r)
    (hm : (gramG s t r : ℂ) * (z + conj z) = (gramChi s t r : ℂ)) :
    ∃ epsilon : ℝ, epsilon^2 = 1 ∧ sideZ s t r epsilon = z := by
  obtain ⟨hre,hsq⟩ := moments_coordinates hn hm
  have hsqrt := Real.sq_sqrt hR.le
  have hsnonneg := Real.sqrt_nonneg (gramInvariant s t r)
  by_cases him : 0 ≤ z.im
  · have hp : 0 ≤ 2 * gramG s t r * z.im := mul_nonneg (by positivity) him
    have heq : 2 * gramG s t r * z.im = Real.sqrt (gramInvariant s t r) := by
      nlinarith
    refine ⟨1, by norm_num, ?_⟩
    apply sideZ_eq_of_coordinates (ne_of_gt hg) hre
    simpa using heq
  · have hp : 2 * gramG s t r * z.im ≤ 0 :=
      mul_nonpos_of_nonneg_of_nonpos (by positivity) (le_of_lt (lt_of_not_ge him))
    have heq : 2 * gramG s t r * z.im = -Real.sqrt (gramInvariant s t r) := by
      nlinarith
    refine ⟨-1, by norm_num, ?_⟩
    apply sideZ_eq_of_coordinates (ne_of_gt hg) hre
    simpa using heq

#print axioms moments_choose_sheet

theorem strict_intrinsic_sheet_exists (a : Rows ℂ) (ha : UnitRows a)
    (hR : 0 < gramInvariant (rowS a) (rowT a) (rowR a)) :
    ∃ epsilon : ℝ, epsilon^2 = 1 ∧
      sideZ (rowS a) (rowT a) (rowR a) epsilon = intrinsicTheta a := by
  obtain ⟨hd,hg⟩ := strict_intrinsic_det_guard a ha hR
  obtain ⟨hn,hm⟩ := intrinsicTheta_moments a ha hd
  exact moments_choose_sheet hR hg hn hm

#print axioms strict_intrinsic_sheet_exists
end
end StrictReconstruction20261007.SideIntrinsic
