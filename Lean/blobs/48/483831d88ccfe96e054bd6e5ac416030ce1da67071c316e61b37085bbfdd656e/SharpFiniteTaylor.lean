import SharpPhaseTaylor
import CentiradianTaylor

set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace Centiradian20261006.SharpTaylor20261006
open scoped BigOperators
noncomputable section

/-- A finite phase sum inherits the sharp arbitrary-order Taylor tail. -/
theorem finite_phasePartial_error {ι : Type*} (S : Finset ι) (c : ι → ℂ)
    (a : ι → ℝ) (n : ℕ) :
    ‖(∑ i ∈ S, c i*Complex.exp (Complex.I*(a i:ℂ)))-
      ∑ i ∈ S, c i*phasePartial n (a i)‖ ≤
      (∑ i ∈ S, ‖c i‖*|a i|^n)/(n.factorial:ℝ) := by
  rw [← Finset.sum_sub_distrib]
  calc
    ‖∑ i ∈ S, (c i*Complex.exp (Complex.I*(a i:ℂ))-c i*phasePartial n (a i))‖ ≤
        ∑ i ∈ S, ‖c i*Complex.exp (Complex.I*(a i:ℂ))-c i*phasePartial n (a i)‖ :=
      norm_sum_le _ _
    _ ≤ ∑ i ∈ S, ‖c i‖*(|a i|^n/(n.factorial:ℝ)) := by
      apply Finset.sum_le_sum
      intro i hi
      rw [← mul_sub,norm_mul]
      exact mul_le_mul_of_nonneg_left (phaseRemainder_bound n (a i)) (norm_nonneg _)
    _ = (∑ i ∈ S, ‖c i‖*|a i|^n)/(n.factorial:ℝ) := by
      simp only [Finset.sum_div,mul_div_assoc]

/-- A finite four-frequency Laurent expansion has a sharp n-th order
tail throughout any closed coordinate cube. Unlike the earlier factor-two
lemma, no additional bound on frequency times radius is assumed. -/
theorem finite_frequencyPartial_error {ι : Type*} (S : Finset ι) (c : ι → ℂ)
    (e : ι → Fin 4 → ℤ) (u : Fin 4 → ℝ) (n : ℕ) {ρ : ℝ}
    (hρ : 0 ≤ ρ) (hu : ∀ j, |u j| ≤ ρ) :
    ‖(∑ i ∈ S, c i*Complex.exp (Complex.I*(frequencyDot (e i) u:ℂ)))-
      ∑ i ∈ S, c i*phasePartial n (frequencyDot (e i) u)‖ ≤
      (∑ i ∈ S, ‖c i‖*frequencyNorm (e i)^n)*ρ^n/(n.factorial:ℝ) := by
  apply le_trans (finite_phasePartial_error S c (fun i => frequencyDot (e i) u) n)
  apply div_le_div_of_nonneg_right _ (by positivity)
  rw [Finset.sum_mul]
  apply Finset.sum_le_sum
  intro i hi
  have hd := frequencyDot_bound (e i) u hu
  have hn : 0 ≤ frequencyNorm (e i) := by unfold frequencyNorm; positivity
  calc
    ‖c i‖*|frequencyDot (e i) u|^n ≤ ‖c i‖*(frequencyNorm (e i)*ρ)^n := by gcongr
    _ = ‖c i‖*frequencyNorm (e i)^n*ρ^n := by rw [mul_pow]; ring

theorem phaseTaylor8_sharp_error (x : ℝ) :
    ‖Complex.exp (Complex.I*(x:ℂ))-
      ∑ k ∈ Finset.range 9, (Complex.I*(x:ℂ))^k/(k.factorial:ℂ)‖ ≤
      |x|^9/(Nat.factorial 9:ℝ) :=
  phaseTaylor_error 8 x

theorem phaseTaylor16_sharp_error (x : ℝ) :
    ‖Complex.exp (Complex.I*(x:ℂ))-phaseTaylor16 x‖ ≤
      |x|^17/(Nat.factorial 17:ℝ) :=
  phaseTaylor_error 16 x

theorem finite_frequencyTaylor16_sharp_error {ι : Type*} (S : Finset ι) (c : ι → ℂ)
    (e : ι → Fin 4 → ℤ) (u : Fin 4 → ℝ) {ρ : ℝ}
    (hρ : 0 ≤ ρ) (hu : ∀ j, |u j| ≤ ρ) :
    ‖(∑ i ∈ S, c i*Complex.exp (Complex.I*(frequencyDot (e i) u:ℂ)))-
      ∑ i ∈ S, c i*phaseTaylor16 (frequencyDot (e i) u)‖ ≤
      (∑ i ∈ S, ‖c i‖*frequencyNorm (e i)^17)*ρ^17/(Nat.factorial 17:ℝ) :=
  finite_frequencyPartial_error S c e u 17 hρ hu

end
end Centiradian20261006.SharpTaylor20261006

#print axioms Centiradian20261006.SharpTaylor20261006.finite_phasePartial_error
#print axioms Centiradian20261006.SharpTaylor20261006.finite_frequencyPartial_error
#print axioms Centiradian20261006.SharpTaylor20261006.phaseTaylor8_sharp_error
#print axioms Centiradian20261006.SharpTaylor20261006.phaseTaylor16_sharp_error
#print axioms Centiradian20261006.SharpTaylor20261006.finite_frequencyTaylor16_sharp_error
