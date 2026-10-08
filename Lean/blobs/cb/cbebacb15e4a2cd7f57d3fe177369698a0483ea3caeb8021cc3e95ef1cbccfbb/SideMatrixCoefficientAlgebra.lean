import Mathlib.Data.Complex.Basic
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Ring
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Linarith

/-! Lightweight complex coefficient algebra, without the reconstruction frontend. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000

namespace StrictReconstruction20261007
open scoped ComplexConjugate
noncomputable section

theorem rho_quotient_balance (alpha : ℂ) (rho n : ℝ) (hr : 0 < rho)
    (hquad : rho ^ 2 - n * rho + Complex.normSq alpha = 0) :
    rho * (1 + Complex.normSq (alpha / (rho : ℂ))) = n := by
  have ha : Complex.normSq alpha = rho * (n - rho) := by nlinarith [hquad]
  rw [Complex.normSq_div, Complex.normSq_ofReal, ha]
  field_simp [ne_of_gt hr]
  <;> ring

/- The two numerator cross terms cancel exactly. -/
#print axioms StrictReconstruction20261007.rho_quotient_balance

theorem two_coefficient_norm_identity (k delta q : ℂ) :
    Complex.normSq (k - delta * conj q) + Complex.normSq (k * q + delta) =
      (Complex.normSq k + Complex.normSq delta) * (1 + Complex.normSq q) := by
  simp [Complex.normSq_apply, Complex.mul_re, Complex.mul_im]
  <;> ring

#print axioms StrictReconstruction20261007.two_coefficient_norm_identity

theorem two_coefficient_norm_division (k delta q : ℂ) (n : ℝ) :
    Complex.normSq ((k - delta * conj q) / (n : ℂ)) +
      Complex.normSq ((k * q + delta) / (n : ℂ)) =
      (Complex.normSq k + Complex.normSq delta) * (1 + Complex.normSq q) / (n * n) := by
  rw [Complex.normSq_div, Complex.normSq_div, Complex.normSq_ofReal, ← add_div,
    two_coefficient_norm_identity]

#print axioms StrictReconstruction20261007.two_coefficient_norm_division

theorem two_coefficient_inner (k delta q : ℂ) (n rho : ℝ) (hn : 0 < n)
    (hbalance : rho * (1 + Complex.normSq q) = n) :
    (rho : ℂ) * (((k - delta * conj q) / (n : ℂ)) +
      ((k * q + delta) / (n : ℂ)) * conj q) = k := by
  have hnc : (n : ℂ) ≠ 0 := by exact_mod_cast (ne_of_gt hn)
  have hb : (rho : ℂ) * (1 + q * conj q) = (n : ℂ) := by
    rw [Complex.mul_conj]
    exact_mod_cast hbalance
  calc
    _ = k * ((rho : ℂ) * (1 + q * conj q)) / (n : ℂ) := by
      field_simp [hnc]
      <;> ring
    _ = k := by rw [hb]; field_simp [hnc]

#print axioms StrictReconstruction20261007.two_coefficient_inner

theorem two_coefficient_weighted_norm (nu k delta q : ℂ) (n rho : ℝ) (hn : 0 < n)
    (hbalance : rho * (1 + Complex.normSq q) = n)
    (hschur : Complex.normSq k + Complex.normSq delta = n * (1 - Complex.normSq nu)) :
    rho * (Complex.normSq ((k - delta * conj q) / (n : ℂ)) +
      Complex.normSq ((k * q + delta) / (n : ℂ))) = 1 - Complex.normSq nu := by
  rw [two_coefficient_norm_division]
  calc
    _ = (Complex.normSq k + Complex.normSq delta) *
        (rho * (1 + Complex.normSq q)) / (n * n) := by ring
    _ = n * (1 - Complex.normSq nu) * n / (n * n) := by rw [hbalance, hschur]
    _ = _ := by field_simp [ne_of_gt hn] <;> ring

#print axioms StrictReconstruction20261007.two_coefficient_weighted_norm

theorem coefficient_sigma_inner (cp cm q sigma : ℂ) (rho : ℝ)
    (hs : Complex.normSq sigma = rho) :
    (cp * sigma) * conj sigma + (cm * conj sigma) * conj (q * conj sigma) =
      (rho : ℂ) * (cp + cm * conj q) := by
  have hcc : conj (conj sigma) = sigma := by simp
  simp only [map_mul, hcc]
  calc
    _ = (sigma * conj sigma) * (cp + cm * conj q) := by ring
    _ = _ := by rw [Complex.mul_conj, hs]

#print axioms StrictReconstruction20261007.coefficient_sigma_inner

end
end StrictReconstruction20261007
