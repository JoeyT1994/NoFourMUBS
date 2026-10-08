import Hadamard6.FourierAutocorrelation
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Linarith

/-! Reuse the checked DFT norm expansions for the prescribed phase gate. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace StrictReconstruction20261007
open scoped ComplexConjugate
noncomputable section

theorem cube_root_of_unit_is_unit (w xi : ℂ) (hxi : Complex.normSq xi = 1)
    (hw : w ^ 3 = xi) : Complex.normSq w = 1 := by
  have hc : Complex.normSq w ^ 3 = 1 := by
    have h := congrArg Complex.normSq hw
    simpa only [map_pow, hxi] using h
  have hf : (Complex.normSq w - 1) *
      (Complex.normSq w ^ 2 + Complex.normSq w + 1) = 0 := by nlinarith [hc]
  have hp : 0 < Complex.normSq w ^ 2 + Complex.normSq w + 1 := by
    nlinarith [Complex.normSq_nonneg w, sq_nonneg (Complex.normSq w)]
  have hz := (mul_eq_zero.mp hf).resolve_right (ne_of_gt hp)
  linarith

#print axioms cube_root_of_unit_is_unit

theorem prescribed_phase_gate_cyclicCorr (a b c sigma w : ℂ) (rho : ℝ)
    (hr : 0 < rho) (hw : Complex.normSq w = 1)
    (hw3 : w ^ 3 = sigma ^ 2 / (rho : ℂ))
    (hgate : sigma ^ 2 * (a * conj b + c * conj a) + (rho : ℂ) * b * conj c = 0) :
    Hadamard6.cyclicCorr a (b * conj w) (c * w) = 0 := by
  have hrc : (rho : ℂ) ≠ 0 := by exact_mod_cast (ne_of_gt hr)
  have hwc : w * conj w = 1 := by rw [Complex.mul_conj, hw]; rfl
  have hw0 : w ≠ 0 := by intro h; simp [h] at hw
  have hw3' : (rho : ℂ) * w ^ 3 = sigma ^ 2 := by
    rw [hw3]
    field_simp [hrc]
  have heq :
      ((rho : ℂ) * w ^ 2) * conj (Hadamard6.cyclicCorr a (b * conj w) (c * w)) =
      ((rho : ℂ) * w ^ 3) * (a * conj b + c * conj a) +
        (rho : ℂ) * (w * conj w) ^ 2 * b * conj c := by
    simp only [Hadamard6.cyclicCorr, Complex.star_def, map_add, map_mul,
      show conj (conj a) = a from by simp,
      show conj (conj b) = b from by simp,
      show conj (conj c) = c from by simp,
      show conj (conj w) = w from by simp]
    ring
  rw [hw3', hwc] at heq
  simp only [one_pow, mul_one] at heq
  have hz : ((rho : ℂ) * w ^ 2) *
      conj (Hadamard6.cyclicCorr a (b * conj w) (c * w)) = 0 := heq.trans hgate
  have hc := (mul_eq_zero.mp hz).resolve_left (mul_ne_zero hrc (pow_ne_zero 2 hw0))
  have h := congrArg (fun z : ℂ => conj z) hc
  simpa using h

#print axioms prescribed_phase_gate_cyclicCorr

theorem dft_unit_of_norm_and_cyclicCorr (omega a b c : ℂ)
    (homega : Complex.normSq omega = 1) (hquad : omega ^ 2 + omega + 1 = 0)
    (hnorm : Complex.normSq a + Complex.normSq b + Complex.normSq c = 1)
    (hcorr : Hadamard6.cyclicCorr a b c = 0) :
    Complex.normSq (Hadamard6.dft₀ a b c) = 1 ∧
    Complex.normSq (Hadamard6.dft₁ omega a b c) = 1 ∧
    Complex.normSq (Hadamard6.dft₂ omega a b c) = 1 := by
  have hsum : star a * a + star b * b + star c * c = 1 := by
    simp only [Complex.star_def, ← Complex.normSq_eq_conj_mul_self]
    exact_mod_cast hnorm
  refine ⟨?_, ?_, ?_⟩
  · have h : (Complex.normSq (Hadamard6.dft₀ a b c) : ℂ) = 1 := by
      rw [Complex.normSq_eq_conj_mul_self]
      change star (Hadamard6.dft₀ a b c) * Hadamard6.dft₀ a b c = 1
      rw [Hadamard6.dft₀_norm_expansion, hsum, hcorr]
      simp
    exact_mod_cast h
  · have h : (Complex.normSq (Hadamard6.dft₁ omega a b c) : ℂ) = 1 := by
      rw [Complex.normSq_eq_conj_mul_self]
      change star (Hadamard6.dft₁ omega a b c) * Hadamard6.dft₁ omega a b c = 1
      rw [Hadamard6.dft₁_norm_expansion homega hquad, hsum, hcorr]
      simp
    exact_mod_cast h
  · have h : (Complex.normSq (Hadamard6.dft₂ omega a b c) : ℂ) = 1 := by
      rw [Complex.normSq_eq_conj_mul_self]
      change star (Hadamard6.dft₂ omega a b c) * Hadamard6.dft₂ omega a b c = 1
      rw [Hadamard6.dft₂_norm_expansion homega hquad, hsum, hcorr]
      simp
    exact_mod_cast h

#print axioms dft_unit_of_norm_and_cyclicCorr

theorem phase_gated_dft_row_unit (omega a b c sigma w : ℂ) (rho : ℝ)
    (homega : Complex.normSq omega = 1) (hquad : omega ^ 2 + omega + 1 = 0)
    (hr : 0 < rho) (hw : Complex.normSq w = 1)
    (hw3 : w ^ 3 = sigma ^ 2 / (rho : ℂ))
    (hnorm : Complex.normSq a + Complex.normSq b + Complex.normSq c = 1)
    (hgate : sigma ^ 2 * (a * conj b + c * conj a) + (rho : ℂ) * b * conj c = 0) :
    Complex.normSq (Hadamard6.dft₀ a (b * conj w) (c * w)) = 1 ∧
    Complex.normSq (Hadamard6.dft₁ omega a (b * conj w) (c * w)) = 1 ∧
    Complex.normSq (Hadamard6.dft₂ omega a (b * conj w) (c * w)) = 1 := by
  apply dft_unit_of_norm_and_cyclicCorr _ _ _ _ homega hquad
  · simpa only [Complex.normSq_mul, Complex.normSq_conj, hw, mul_one] using hnorm
  · exact prescribed_phase_gate_cyclicCorr a b c sigma w rho hr hw hw3 hgate

#print axioms phase_gated_dft_row_unit
end
end StrictReconstruction20261007

