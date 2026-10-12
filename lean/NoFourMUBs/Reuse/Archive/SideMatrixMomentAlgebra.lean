import NoFourMUBs.Reuse.Archive.SideMatrixCoefficientAlgebra
import Mathlib.Tactic.LinearCombination

/-! Small coefficient identities for the literal phase-gate and moment formulas. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace StrictReconstruction20261007
open scoped ComplexConjugate
noncomputable section

theorem two_coefficient_determinant (k delta q : ℂ) (n rho : ℝ) (hn : 0 < n)
    (hbalance : rho * (1 + Complex.normSq q) = n) :
    (rho : ℂ) * (((k * q + delta) / (n : ℂ)) -
      q * ((k - delta * conj q) / (n : ℂ))) = delta := by
  have hnc : (n : ℂ) ≠ 0 := by exact_mod_cast (ne_of_gt hn)
  have hb : (rho : ℂ) * (1 + q * conj q) = (n : ℂ) := by
    rw [Complex.mul_conj]
    exact_mod_cast hbalance
  calc
    _ = delta * ((rho : ℂ) * (1 + q * conj q)) / (n : ℂ) := by
      field_simp [hnc] <;> ring
    _ = delta := by rw [hb]; field_simp [hnc]

#print axioms two_coefficient_determinant

theorem two_coefficient_mixed (k delta q alpha gamma : ℂ) (n rho : ℝ) (hn : 0 < n)
    (hbalance : rho * (1 + Complex.normSq q) = n)
    (hq : (rho : ℂ) * q = alpha)
    (hmixed : (n : ℂ) * gamma - 2 * alpha * k =
      (2 * (rho : ℂ) - (n : ℂ)) * delta) :
    (rho : ℂ) * (((k * q + delta) / (n : ℂ)) +
      q * ((k - delta * conj q) / (n : ℂ))) = gamma := by
  have hnc : (n : ℂ) ≠ 0 := by exact_mod_cast (ne_of_gt hn)
  have hb : (rho : ℂ) * (1 + q * conj q) = (n : ℂ) := by
    rw [Complex.mul_conj]
    exact_mod_cast hbalance
  apply (mul_right_cancel₀ hnc)
  calc
    _ = 2 * ((rho : ℂ) * q) * k +
        (2 * (rho : ℂ) - (rho : ℂ) * (1 + q * conj q)) * delta := by
      field_simp [hnc] <;> ring
    _ = gamma * (n : ℂ) := by rw [hq, hb]; linear_combination -hmixed

#print axioms two_coefficient_mixed

theorem phase_gate_from_unit_balance (mu u q : ℂ) (rho : ℝ) (hr : 0 < rho)
    (hu : Complex.normSq u = 1)
    (hq : (rho : ℂ) * q = mu ^ 2 - u * conj mu)
    (hbalance : rho * (1 + Complex.normSq q) = 1 - Complex.normSq mu) :
    mu + q * conj mu + (u + mu * q) * conj q = 0 := by
  have hrc : (rho : ℂ) ≠ 0 := by exact_mod_cast (ne_of_gt hr)
  have hb : (rho : ℂ) * (1 + q * conj q) = 1 - mu * conj mu := by
    simp only [Complex.mul_conj]
    exact_mod_cast hbalance
  have hqc : (rho : ℂ) * conj q = conj mu ^ 2 - conj u * mu := by
    have h := congrArg (fun z : ℂ => conj z) hq
    simpa only [map_mul, Complex.conj_ofReal, map_sub, map_pow,
      show conj (conj mu) = mu from by simp] using h
  have hu' : u * conj u = 1 := by rw [Complex.mul_conj, hu]; rfl
  apply (mul_eq_zero.mp (show (rho : ℂ) *
    (mu + q * conj mu + (u + mu * q) * conj q) = 0 from ?_)).resolve_left hrc
  calc
    _ = mu * ((rho : ℂ) * (1 + q * conj q)) +
        ((rho : ℂ) * q) * conj mu + u * ((rho : ℂ) * conj q) := by ring
    _ = mu * (1 - u * conj u) := by rw [hb, hq, hqc]; ring
    _ = 0 := by rw [hu']; ring

#print axioms phase_gate_from_unit_balance

theorem sigma_row_phase_gate (mu q sigma : ℂ) (rho : ℝ)
    (hs : Complex.normSq sigma = rho)
    (hgate : mu + q * conj mu + sigma * conj q = 0) :
    sigma ^ 2 * (mu * conj sigma + (q * conj sigma) * conj mu) +
      (rho : ℂ) * sigma * conj (q * conj sigma) = 0 := by
  have hs' : sigma * conj sigma = (rho : ℂ) := by rw [Complex.mul_conj, hs]
  have hcc : conj (conj sigma) = sigma := by simp
  simp only [map_mul, hcc]
  calc
    _ = sigma * (sigma * conj sigma) * (mu + q * conj mu) +
      (rho : ℂ) * sigma ^ 2 * conj q := by ring
    _ = (rho : ℂ) * sigma * (mu + q * conj mu + sigma * conj q) := by rw [hs']; ring
    _ = 0 := by rw [hgate]; ring

#print axioms sigma_row_phase_gate

end
end StrictReconstruction20261007

