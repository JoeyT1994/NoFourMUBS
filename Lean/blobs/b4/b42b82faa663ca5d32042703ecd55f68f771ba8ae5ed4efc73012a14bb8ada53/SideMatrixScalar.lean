import StrictSideFinalGuards

/-! Small algebra for the literal reconstruction matrix, after its checked guards. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000

namespace StrictReconstruction20261007
open Centiradian20261006
open scoped ComplexConjugate
noncomputable section

def reconstructionK (s t r : ℂ) : ℂ := r / 3 - (t / 3) * conj (s / 3)
def prescribedCPlus (s t r : ℂ) (epsilon : ℝ) (delta : ℂ) : ℂ :=
  (reconstructionK s t r - delta * conj (prescribedQ s t r epsilon delta)) / (preRhoN s : ℂ)
def prescribedCMinus (s t r : ℂ) (epsilon : ℝ) (delta : ℂ) : ℂ :=
  (reconstructionK s t r * prescribedQ s t r epsilon delta + delta) / (preRhoN s : ℂ)

theorem rho_quotient_balance (alpha : ℂ) (rho n : ℝ) (hr : 0 < rho)
    (hquad : rho ^ 2 - n * rho + Complex.normSq alpha = 0) :
    rho * (1 + Complex.normSq (alpha / (rho : ℂ))) = n := by
  have ha : Complex.normSq alpha = rho * (n - rho) := by nlinarith [hquad]
  rw [Complex.normSq_div, Complex.normSq_ofReal, ha]
  field_simp [ne_of_gt hr]
  <;> ring

theorem prescribed_rho_q_balance {s t r : ℂ} (hR : 0 < gramInvariant s t r)
    (hg : 0 < gramG s t r) (hn : 0 < preRhoN s)
    {epsilon : ℝ} (he : epsilon ^ 2 = 1)
    {delta : ℂ} (hd : delta ^ 2 = prescribedDeltaRadicand s t r epsilon)
    (ho : 0 ≤ (prescribedDF s t r epsilon delta).re) :
    prescribedRho s t r epsilon delta *
      (1 + Complex.normSq (prescribedQ s t r epsilon delta)) = preRhoN s := by
  obtain ⟨hr, hquad⟩ := prescribed_rho_guard hR hg hn he hd ho
  exact rho_quotient_balance _ _ _ hr hquad

/-- The determinant/Schur scalar identity, directly in the displayed correlations. -/
theorem reconstruction_schur_identity (s t r : ℂ) :
    preRhoN s * (1 - Complex.normSq (t / 3)) - Complex.normSq (reconstructionK s t r) =
      gramG s t r / 27 := by
  simp [preRhoN, reconstructionK, gramG, gramP, gramJ,
    Complex.normSq_apply, Complex.mul_re, Complex.mul_im, Complex.div_re,
    Complex.div_im, pow_two]
  <;> ring

/-- The two numerator cross terms cancel exactly. -/
theorem two_coefficient_norm_identity (k delta q : ℂ) :
    Complex.normSq (k - delta * conj q) + Complex.normSq (k * q + delta) =
      (Complex.normSq k + Complex.normSq delta) * (1 + Complex.normSq q) := by
  simp [Complex.normSq_apply, Complex.mul_re, Complex.mul_im]
  <;> ring

theorem two_coefficient_norm_division (k delta q : ℂ) (n : ℝ) :
    Complex.normSq ((k - delta * conj q) / (n : ℂ)) +
      Complex.normSq ((k * q + delta) / (n : ℂ)) =
      (Complex.normSq k + Complex.normSq delta) * (1 + Complex.normSq q) / (n * n) := by
  rw [Complex.normSq_div, Complex.normSq_div, Complex.normSq_ofReal, ← add_div,
    two_coefficient_norm_identity]

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
    _ = _ := by field_simp [ne_of_gt hn]; ring

theorem coefficient_sigma_inner (cp cm q sigma : ℂ) (rho : ℝ)
    (hs : Complex.normSq sigma = rho) :
    (cp * sigma) * conj sigma + (cm * conj sigma) * conj (q * conj sigma) =
      (rho : ℂ) * (cp + cm * conj q) := by
  have hcc : conj (conj sigma) = sigma := by simp
  simp only [map_mul, hcc]
  calc
    _ = (sigma * conj sigma) * (cp + cm * conj q) := by ring
    _ = _ := by rw [Complex.mul_conj, hs]

end
end StrictReconstruction20261007

#print axioms StrictReconstruction20261007.prescribed_rho_q_balance
#print axioms StrictReconstruction20261007.reconstruction_schur_identity
#print axioms StrictReconstruction20261007.two_coefficient_norm_identity
#print axioms StrictReconstruction20261007.two_coefficient_inner
#print axioms StrictReconstruction20261007.two_coefficient_weighted_norm
