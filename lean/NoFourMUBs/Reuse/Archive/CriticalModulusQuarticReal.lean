import NoFourMUBs.Reuse.Archive.CriticalModulusSignedDomain
import NoFourMUBs.Reuse.Archive.CriticalNonzeroPolynomialData
import Mathlib.Data.Complex.Basic

set_option autoImplicit false
set_option maxHeartbeats 2000000
namespace CriticalModulusDomain20261003
noncomputable section

theorem quartic_real_cast (k K : ℝ) :
    ((CriticalNonzeroPolynomial20261003.quartic k K : ℝ) : ℂ)=
      CriticalNonzeroPolynomial20261003.quartic (k : ℂ) (K : ℂ) := by
  simp [CriticalNonzeroPolynomial20261003.quartic]

theorem quartic_abs (k K : ℝ) :
    CriticalNonzeroPolynomial20261003.quartic |k| K=
      CriticalNonzeroPolynomial20261003.quartic k K := by
  simp only [CriticalNonzeroPolynomial20261003.quartic,sq_abs]

/-- Specialization of the original generic quartic, not a copied polynomial. -/
theorem quartic_one (K : ℝ) :
    CriticalNonzeroPolynomial20261003.quartic 1 K=
      1073741824*(K-21)*(K-5)^2 := by
  norm_num [CriticalNonzeroPolynomial20261003.quartic]
  ring

theorem allowed_one_upper (K : ℝ) (ha : Allowed 1 K) : K≤9 := by
  norm_num [Allowed,minimum,root0,rootPlus,rootMinus,h] at ha
  rcases ha with ha | ha <;> linarith [ha.2]

/-- At the retained exceptional parameter, the actual necessary domain
removes the extraneous quartic root21. K=5 remains a separate physical case. -/
theorem quartic_zero_at_one (K : ℝ) (ha : Allowed 1 K)
    (hq : CriticalNonzeroPolynomial20261003.quartic 1 K=0) : K=5 := by
  have hb := allowed_one_upper K ha
  rw [quartic_one] at hq
  have h21 : K-21≠0 := by linarith
  have hs : (K-5)^2=0 :=
    (mul_eq_zero.mp hq).resolve_left (mul_ne_zero (by norm_num) h21)
  nlinarith

/-- Both original parameter signs are included without changing the matrix. -/
theorem quartic_zero_at_abs_one (k K : ℝ) (hk : |k|=1)
    (ha : Allowed |k| K)
    (hq : CriticalNonzeroPolynomial20261003.quartic (k : ℂ) (K : ℂ)=0) : K=5 := by
  have hr : CriticalNonzeroPolynomial20261003.quartic k K=0 := by
    apply Complex.ofReal_injective
    simpa only [quartic_real_cast,Complex.ofReal_zero] using hq
  have he := quartic_abs k K
  rw [hk] at he ha
  exact quartic_zero_at_one K ha (he.trans hr)

end
#print axioms quartic_real_cast
#print axioms quartic_abs
#print axioms quartic_one
#print axioms allowed_one_upper
#print axioms quartic_zero_at_one
#print axioms quartic_zero_at_abs_one
end CriticalModulusDomain20261003
