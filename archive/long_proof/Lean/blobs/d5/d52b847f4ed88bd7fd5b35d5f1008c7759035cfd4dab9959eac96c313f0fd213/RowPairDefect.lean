import CentiradianPhysical

/-! Exact stability at a nearly repeated three-entry row block.
No division by a reconstruction determinant or discriminant is used. -/
set_option autoImplicit false
set_option maxHeartbeats 1200000
namespace Seed0024Mathematical20261007
open scoped BigOperators ComplexConjugate
open Centiradian20261006
noncomputable section

theorem unit_normSq_add_one (z : ℂ) (hz : Complex.normSq z = 1) :
    Complex.normSq (z + 1) = 2 + 2*z.re := by
  simp only [Complex.normSq_apply, Complex.add_re, Complex.add_im,
    Complex.one_re, Complex.one_im] at *
  nlinarith

theorem unit_normSq_sub_one (z : ℂ) (hz : Complex.normSq z = 1) :
    Complex.normSq (z - 1) = 2 - 2*z.re := by
  simp only [Complex.normSq_apply, Complex.sub_re, Complex.sub_im,
    Complex.one_re, Complex.one_im] at *
  nlinarith

theorem physical_nonfirst_row_sum {H : Mat6} (hH : Physical H)
    (hd : Dephased H) (i : Fin 6) (hi : i ≠ 0) :
    (∑ j : Fin 6, H i j) = 0 := by
  have h := hH.2 i 0
  simpa only [hd.1, map_one, mul_one, if_neg hi] using h

/-- A whole complementary triple inherits the small squared defect of
the two corner entries. This is exact and has no square-root loss. -/
theorem physical_complementary_row_defect {H : Mat6} (hH : Physical H)
    (hd : Dephased H) :
    Complex.normSq (H 1 3 + 1) + Complex.normSq (H 1 4 + 1) +
      Complex.normSq (H 1 5 + 1) =
    Complex.normSq (H 1 1 - 1) + Complex.normSq (H 1 2 - 1) := by
  have hs := physical_nonfirst_row_sum hH hd 1 (by decide)
  have hr := congrArg Complex.re hs
  simp only [Fin.sum_univ_succ,
    Complex.add_re, hd.2, Complex.one_re, Complex.zero_re] at hr
  rw [unit_normSq_add_one _ (hH.1 1 3), unit_normSq_add_one _ (hH.1 1 4),
    unit_normSq_add_one _ (hH.1 1 5), unit_normSq_sub_one _ (hH.1 1 1),
    unit_normSq_sub_one _ (hH.1 1 2)]
  change 1 + ((H 1 1).re + ((H 1 2).re + ((H 1 3).re +
    ((H 1 4).re + ((H 1 5).re + 0))))) = 0 at hr
  linarith

theorem physical_complementary_row_defect_le {H : Mat6} (hH : Physical H)
    (hd : Dephased H) {ε : ℝ}
    (hε : Complex.normSq (H 1 1 - 1) + Complex.normSq (H 1 2 - 1) ≤ ε) :
    Complex.normSq (H 1 3 + 1) + Complex.normSq (H 1 4 + 1) +
      Complex.normSq (H 1 5 + 1) ≤ ε := by
  rw [physical_complementary_row_defect hH hd]
  exact hε

/-- Exact repeated entries force the entire other half-row to be -1. -/
theorem physical_exact_repeated_row {H : Mat6} (hH : Physical H)
    (hd : Dephased H) (ha : H 1 1 = 1) (hb : H 1 2 = 1) :
    H 1 3 = -1 ∧ H 1 4 = -1 ∧ H 1 5 = -1 := by
  have h := physical_complementary_row_defect hH hd
  simp only [ha, hb, sub_self, map_zero, add_zero] at h
  have h3 := Complex.normSq_nonneg (H 1 3 + 1)
  have h4 := Complex.normSq_nonneg (H 1 4 + 1)
  have h5 := Complex.normSq_nonneg (H 1 5 + 1)
  have e3 : Complex.normSq (H 1 3 + 1) = 0 := by linarith
  have e4 : Complex.normSq (H 1 4 + 1) = 0 := by linarith
  have e5 : Complex.normSq (H 1 5 + 1) = 0 := by linarith
  have z3 := Complex.normSq_eq_zero.mp e3
  have z4 := Complex.normSq_eq_zero.mp e4
  have z5 := Complex.normSq_eq_zero.mp e5
  exact ⟨eq_neg_of_add_eq_zero_left z3, eq_neg_of_add_eq_zero_left z4,
    eq_neg_of_add_eq_zero_left z5⟩

end
end Seed0024Mathematical20261007
#print axioms Seed0024Mathematical20261007.unit_normSq_add_one
#print axioms Seed0024Mathematical20261007.unit_normSq_sub_one
#print axioms Seed0024Mathematical20261007.physical_nonfirst_row_sum
#print axioms Seed0024Mathematical20261007.physical_complementary_row_defect
#print axioms Seed0024Mathematical20261007.physical_complementary_row_defect_le
#print axioms Seed0024Mathematical20261007.physical_exact_repeated_row
