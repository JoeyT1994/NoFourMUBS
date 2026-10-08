import Mathlib.Analysis.Complex.Exponential
import Mathlib.Tactic.GCongr
import Mathlib.Tactic.Ring
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Positivity

/-! Generic analytic bridge for finite Laurent/phasor expansions. The factor
two is the checked Mathlib exponential-series remainder, rather than the
sharper imaginary-axis estimate used in the exploratory numerical packet. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000

namespace Centiradian20261006
open scoped BigOperators
noncomputable section

def phaseTaylor16 (a : ℝ) : ℂ :=
  ∑ k ∈ Finset.range 17, (Complex.I*(a:ℂ))^k / (k.factorial : ℂ)

theorem phaseTaylor16_error (a : ℝ) (ha : |a| ≤ 9) :
    ‖Complex.exp (Complex.I*(a:ℂ))-phaseTaylor16 a‖ ≤ |a|^17/(Nat.factorial 17:ℝ)*2 := by
  have hn : ‖Complex.I*(a:ℂ)‖ = |a| := by simp
  have hh : ‖Complex.I*(a:ℂ)‖ / (17+1:ℕ) ≤ (1:ℝ)/2 := by
    rw [hn]
    norm_num
    linarith
  simpa only [phaseTaylor16, hn] using Complex.exp_bound' (n := 17) hh

/-- A finite sum of exact phases has a fully explicit degree-sixteen tail.
All coefficients and phases are mathematical inputs, with no floating point. -/
theorem finite_phaseTaylor16_error {ι : Type*} (S : Finset ι) (c : ι → ℂ) (a : ι → ℝ)
    (ha : ∀ i ∈ S, |a i| ≤ 9) :
    ‖(∑ i ∈ S, c i*Complex.exp (Complex.I*(a i:ℂ))) -
      ∑ i ∈ S, c i*phaseTaylor16 (a i)‖ ≤
      (∑ i ∈ S, ‖c i‖*|a i|^17) * (2/(Nat.factorial 17:ℝ)) := by
  rw [← Finset.sum_sub_distrib]
  calc
    ‖∑ i ∈ S, (c i*Complex.exp (Complex.I*(a i:ℂ))-c i*phaseTaylor16 (a i))‖ ≤
        ∑ i ∈ S, ‖c i*Complex.exp (Complex.I*(a i:ℂ))-c i*phaseTaylor16 (a i)‖ :=
      norm_sum_le _ _
    _ ≤ ∑ i ∈ S, ‖c i‖*(|a i|^17/(Nat.factorial 17:ℝ)*2) := by
      apply Finset.sum_le_sum
      intro i hi
      rw [← mul_sub, norm_mul]
      exact mul_le_mul_of_nonneg_left (phaseTaylor16_error (a i) (ha i hi)) (norm_nonneg _)
    _ = (∑ i ∈ S, ‖c i‖*|a i|^17)*(2/(Nat.factorial 17:ℝ)) := by
      rw [Finset.sum_mul]
      apply Finset.sum_congr rfl
      intro i _
      ring

def frequencyDot (e : Fin 4 → ℤ) (u : Fin 4 → ℝ) : ℝ := ∑ j, (e j:ℝ)*u j
def frequencyNorm (e : Fin 4 → ℤ) : ℝ := ∑ j, |(e j:ℝ)|

theorem frequencyDot_bound (e : Fin 4 → ℤ) (u : Fin 4 → ℝ) {ρ : ℝ}
    (hu : ∀ j, |u j| ≤ ρ) : |frequencyDot e u| ≤ frequencyNorm e*ρ := by
  unfold frequencyDot frequencyNorm
  calc
    |∑ j, (e j:ℝ)*u j| ≤ ∑ j, |(e j:ℝ)*u j| := Finset.abs_sum_le_sum_abs _ _
    _ ≤ ∑ j, |(e j:ℝ)| *ρ := by
      apply Finset.sum_le_sum
      intro j _
      rw [abs_mul]
      exact mul_le_mul_of_nonneg_left (hu j) (abs_nonneg _)
    _ = (∑ j, |(e j:ℝ)|)*ρ := (Finset.sum_mul _ _ _).symm

/-- The complete finite Fourier sum tail scales as rho^17. This is reusable
for a future exact replay of the new Laurent coefficient table. -/
theorem finite_frequencyTaylor16_error {ι : Type*} (S : Finset ι) (c : ι → ℂ)
    (e : ι → Fin 4 → ℤ) (u : Fin 4 → ℝ) {ρ : ℝ} (hρ : 0 ≤ ρ)
    (hu : ∀ j, |u j| ≤ ρ) (he : ∀ i ∈ S, frequencyNorm (e i)*ρ ≤ 9) :
    ‖(∑ i ∈ S, c i*Complex.exp (Complex.I*(frequencyDot (e i) u:ℂ))) -
      ∑ i ∈ S, c i*phaseTaylor16 (frequencyDot (e i) u)‖ ≤
      (∑ i ∈ S, ‖c i‖*frequencyNorm (e i)^17)*ρ^17*(2/(Nat.factorial 17:ℝ)) := by
  have hb : ∀ i ∈ S, |frequencyDot (e i) u| ≤ 9 :=
    fun i hi => le_trans (frequencyDot_bound (e i) u hu) (he i hi)
  apply le_trans (finite_phaseTaylor16_error S c (fun i => frequencyDot (e i) u) hb)
  have hh : (∑ i ∈ S, ‖c i‖*|frequencyDot (e i) u|^17) ≤
      (∑ i ∈ S, ‖c i‖*frequencyNorm (e i)^17)*ρ^17 := by
    rw [Finset.sum_mul]
    apply Finset.sum_le_sum
    intro i hi
    have hd := frequencyDot_bound (e i) u hu
    have hn : 0 ≤ frequencyNorm (e i) := by unfold frequencyNorm; positivity
    calc
      ‖c i‖*|frequencyDot (e i) u|^17 ≤ ‖c i‖*(frequencyNorm (e i)*ρ)^17 := by gcongr
      _ = ‖c i‖*frequencyNorm (e i)^17*ρ^17 := by rw [mul_pow]; ring
  exact mul_le_mul_of_nonneg_right hh (by positivity)

end
end Centiradian20261006

#print axioms Centiradian20261006.phaseTaylor16_error
#print axioms Centiradian20261006.finite_phaseTaylor16_error
#print axioms Centiradian20261006.frequencyDot_bound
#print axioms Centiradian20261006.finite_frequencyTaylor16_error
