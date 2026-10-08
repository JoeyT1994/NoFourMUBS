import FiniteRadialModel

/-! The exact-real centering and alpha majorant used by PM::inv and PM::root.
The literal coefficient zeroing is justified by one fixed nonzero center.
No interval coefficient operation or finite basis enumeration is claimed here. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace Centiradian20261006.RadialProduct20261008
open scoped BigOperators
noncomputable section

theorem totalDegree_pos_of_ne_zero {n : ℕ} (e : MultiIndex n) (he : e ≠ 0) :
    0 < totalDegree e := by
  by_contra h
  have hz : totalDegree e = 0 := Nat.eq_zero_of_not_pos h
  apply he
  funext i
  have hi : e i ≤ totalDegree e :=
    Finset.single_le_sum (fun j _ => Nat.zero_le (e j)) (Finset.mem_univ i)
  exact Nat.eq_zero_of_le_zero (hz ▸ hi)

theorem centered_polynomial_radial_bound {n : ℕ} (S : Finset (MultiIndex n))
    (a : MultiIndex n → ℝ) (ha : a 0 = 0) (xi : Fin n → ℝ) {h : ℝ}
    (hh : 0 ≤ h) (hh1 : h ≤ 1) (hxi : ∀ i, |xi i| ≤ h) :
    |polyEval S a xi| ≤ coefficientNorm S a * h := by
  classical
  calc
    _ ≤ ∑ e ∈ S, |a e * monomial xi e| := Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ e ∈ S, |a e| * h := by
      apply Finset.sum_le_sum
      intro e _
      by_cases he : e = 0
      · simp [he, ha]
      · rw [abs_mul]
        have hm := (monomial_radial_bound xi e hh hxi).trans
          (pow_le_pow_of_le_one hh hh1 (totalDegree_pos_of_ne_zero e he))
        simpa using mul_le_mul_of_nonneg_left hm (abs_nonneg (a e))
    _ = _ := by rw [← Finset.sum_mul]; rfl

theorem centered_model_radial_bound {n : ℕ} (m : ℕ)
    (S : Finset (MultiIndex n)) (A : FiniteModel n) (ha : A.coeff 0 = 0)
    {value h : ℝ} {xi : Fin n → ℝ} (hh : 0 ≤ h) (hh1 : h ≤ 1)
    (hxi : ∀ i, |xi i| ≤ h) (hA : ModelSoundAt m S A value xi h) :
    |value| ≤ (coefficientNorm S A.coeff + A.tail) * h := by
  have hp := centered_polynomial_radial_bound S A.coeff ha xi hh hh1 hxi
  have ht : A.tail * h^(m+1) ≤ A.tail * h := by
    apply mul_le_mul_of_nonneg_left _ hA.1
    simpa using pow_le_pow_of_le_one hh hh1 (Nat.succ_le_succ (Nat.zero_le m))
  calc
    |value| = |(value-modelEval S A xi)+modelEval S A xi| := by congr 1; ring
    _ ≤ |value-modelEval S A xi| + |modelEval S A xi| := abs_add_le _ _
    _ ≤ A.tail*h + coefficientNorm S A.coeff*h := add_le_add (hA.2.trans ht) hp
    _ = _ := by ring

def centeredModel {n : ℕ} (A : FiniteModel n) (c : ℝ) : FiniteModel n :=
  modelAdd (modelScale c⁻¹ A) (modelConst (-1))

theorem centeredModel_coeff_zero {n : ℕ} (A : FiniteModel n) {c : ℝ}
    (hc : c ≠ 0) (hcenter : A.coeff 0 = c) : (centeredModel A c).coeff 0 = 0 := by
  simp [centeredModel, modelAdd, modelScale, modelConst, hcenter, hc]

theorem centeredModel_coeff_of_ne_zero {n : ℕ} (A : FiniteModel n) (c : ℝ)
    (e : MultiIndex n) (he : e ≠ 0) :
    (centeredModel A c).coeff e = A.coeff e / c := by
  simp [centeredModel, modelAdd, modelScale, modelConst, he, div_eq_mul_inv, mul_comm]

theorem centeredModel_sound {n : ℕ} (m : ℕ) (S : Finset (MultiIndex n))
    (A : FiniteModel n) (c : ℝ) (h0 : 0 ∈ S) {value h : ℝ} {xi : Fin n → ℝ}
    (hA : ModelSoundAt m S A value xi h) :
    ModelSoundAt m S (centeredModel A c) (value/c-1) xi h := by
  have hs := modelScale_sound m S c⁻¹ A hA
  have hc := modelConst_sound m S h0 (-1) xi h
  simpa [centeredModel, div_eq_mul_inv, mul_comm, sub_eq_add_neg] using
    modelAdd_sound m S (modelScale c⁻¹ A) (modelConst (-1)) hs hc

theorem centeredModel_alpha_bound {n : ℕ} (m : ℕ) (S : Finset (MultiIndex n))
    (A : FiniteModel n) {c : ℝ} (hc : c ≠ 0) (hcenter : A.coeff 0 = c)
    (h0 : 0 ∈ S) {value h : ℝ} {xi : Fin n → ℝ}
    (hh : 0 ≤ h) (hh1 : h ≤ 1) (hxi : ∀ i, |xi i| ≤ h)
    (hA : ModelSoundAt m S A value xi h) :
    |value/c-1| ≤
      (coefficientNorm S (centeredModel A c).coeff + (centeredModel A c).tail) * h := by
  exact centered_model_radial_bound m S (centeredModel A c)
    (centeredModel_coeff_zero A hc hcenter) hh hh1 hxi
    (centeredModel_sound m S A c h0 hA)

end
end Centiradian20261006.RadialProduct20261008
#print axioms Centiradian20261006.RadialProduct20261008.totalDegree_pos_of_ne_zero
#print axioms Centiradian20261006.RadialProduct20261008.centered_polynomial_radial_bound
#print axioms Centiradian20261006.RadialProduct20261008.centered_model_radial_bound
#print axioms Centiradian20261006.RadialProduct20261008.centeredModel_coeff_zero
#print axioms Centiradian20261006.RadialProduct20261008.centeredModel_coeff_of_ne_zero
#print axioms Centiradian20261006.RadialProduct20261008.centeredModel_sound
#print axioms Centiradian20261006.RadialProduct20261008.centeredModel_alpha_bound
