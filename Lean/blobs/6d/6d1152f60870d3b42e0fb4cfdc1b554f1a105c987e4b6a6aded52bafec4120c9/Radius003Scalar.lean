import CentiradianTaylor
import Mathlib.Analysis.Real.Sqrt

/-! Degree-eight tail and scalar constants for the radius-3/100 packet.
The finite Laurent coefficients still require a separate physical binding.
No radius exclusion theorem is claimed by this module. -/
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace Centiradian20261006.Radius003
open scoped BigOperators
noncomputable section
def phaseTaylor8 (a : ℝ) : ℂ :=
  ∑ k ∈ Finset.range 9, (Complex.I*(a:ℂ))^k / (k.factorial : ℂ)

theorem phaseTaylor8_error (a : ℝ) (ha : |a| ≤ 5) :
    ‖Complex.exp (Complex.I*(a:ℂ))-phaseTaylor8 a‖ ≤ |a|^9/(Nat.factorial 9:ℝ)*2 := by
  have hn : ‖Complex.I*(a:ℂ)‖ = |a| := by simp
  have hh : ‖Complex.I*(a:ℂ)‖ / (9+1:ℕ) ≤ (1:ℝ)/2 := by
    rw [hn]
    norm_num
    linarith
  simpa only [phaseTaylor8, hn] using Complex.exp_bound' (n := 9) hh

/-- A finite sum of exact phases has a fully explicit degree-eight tail.
All coefficients and phases are mathematical inputs, with no floating point. -/
theorem finite_phaseTaylor8_error {ι : Type*} (S : Finset ι) (c : ι → ℂ) (a : ι → ℝ)
    (ha : ∀ i ∈ S, |a i| ≤ 5) :
    ‖(∑ i ∈ S, c i*Complex.exp (Complex.I*(a i:ℂ))) -
      ∑ i ∈ S, c i*phaseTaylor8 (a i)‖ ≤
      (∑ i ∈ S, ‖c i‖*|a i|^9) * (2/(Nat.factorial 9:ℝ)) := by
  rw [← Finset.sum_sub_distrib]
  calc
    ‖∑ i ∈ S, (c i*Complex.exp (Complex.I*(a i:ℂ))-c i*phaseTaylor8 (a i))‖ ≤
        ∑ i ∈ S, ‖c i*Complex.exp (Complex.I*(a i:ℂ))-c i*phaseTaylor8 (a i)‖ :=
      norm_sum_le _ _
    _ ≤ ∑ i ∈ S, ‖c i‖*(|a i|^9/(Nat.factorial 9:ℝ)*2) := by
      apply Finset.sum_le_sum
      intro i hi
      rw [← mul_sub, Complex.norm_mul]
      exact mul_le_mul_of_nonneg_left (phaseTaylor8_error (a i) (ha i hi)) (norm_nonneg _)
    _ = (∑ i ∈ S, ‖c i‖*|a i|^9)*(2/(Nat.factorial 9:ℝ)) := by
      rw [Finset.sum_mul]
      apply Finset.sum_congr rfl
      intro i _
      ring

/-- The complete finite Fourier sum tail scales as rho^9. This is reusable
for a future exact replay of the new Laurent coefficient table. -/
theorem finite_frequencyTaylor8_error {ι : Type*} (S : Finset ι) (c : ι → ℂ)
    (e : ι → Fin 4 → ℤ) (u : Fin 4 → ℝ) {ρ : ℝ} (hρ : 0 ≤ ρ)
    (hu : ∀ j, |u j| ≤ ρ) (he : ∀ i ∈ S, frequencyNorm (e i)*ρ ≤ 5) :
    ‖(∑ i ∈ S, c i*Complex.exp (Complex.I*(frequencyDot (e i) u:ℂ))) -
      ∑ i ∈ S, c i*phaseTaylor8 (frequencyDot (e i) u)‖ ≤
      (∑ i ∈ S, ‖c i‖*frequencyNorm (e i)^9)*ρ^9*(2/(Nat.factorial 9:ℝ)) := by
  have hb : ∀ i ∈ S, |frequencyDot (e i) u| ≤ 5 :=
    fun i hi => le_trans (frequencyDot_bound (e i) u hu) (he i hi)
  apply le_trans (finite_phaseTaylor8_error S c (fun i => frequencyDot (e i) u) hb)
  have hh : (∑ i ∈ S, ‖c i‖*|frequencyDot (e i) u|^9) ≤
      (∑ i ∈ S, ‖c i‖*frequencyNorm (e i)^9)*ρ^9 := by
    rw [Finset.sum_mul]
    apply Finset.sum_le_sum
    intro i hi
    have hd := frequencyDot_bound (e i) u hu
    have hn : 0 ≤ frequencyNorm (e i) := by unfold frequencyNorm; positivity
    calc
      ‖c i‖*|frequencyDot (e i) u|^9 ≤ ‖c i‖*(frequencyNorm (e i)*ρ)^9 := by gcongr
      _ = ‖c i‖*frequencyNorm (e i)^9*ρ^9 := by rw [mul_pow]; ring
  exact mul_le_mul_of_nonneg_right hh (by positivity)

def outwardRadius003 : ℝ := 8646911284551353/288230376151711744

def doubledTailNormalized (ρ : ℝ) : ℝ :=
  972 + 40824*ρ + 27936*ρ^2 + 306180*ρ^3 + 393192*ρ^4
    + 2*(105273842788/189)*ρ^5

def doubledTailMajorant (ρ : ℝ) : ℝ :=
  972*ρ^4 + 40824*ρ^5 + 27936*ρ^6 + 306180*ρ^7
    + 393192*ρ^8 + 2*(105273842788/189)*ρ^9

theorem outward_radius_contains_exact : (3:ℝ)/100 < outwardRadius003 := by
  norm_num [outwardRadius003]

theorem outward_radius_positive : (0:ℝ) < outwardRadius003 := by
  norm_num [outwardRadius003]

theorem all_frequency_phases_in_tail_domain : 16*outwardRadius003 < 5 := by
  norm_num [outwardRadius003]

theorem doubled_tail_normalized_mono {a b : ℝ} (ha : 0 ≤ a) (hab : a ≤ b) :
    doubledTailNormalized a ≤ doubledTailNormalized b := by
  unfold doubledTailNormalized
  gcongr

theorem doubled_tail_at_outward_radius : doubledTailNormalized outwardRadius003 < 48^2 := by
  norm_num [doubledTailNormalized, outwardRadius003]

theorem doubled_tail_majorant_strict {ρ : ℝ} (hp : 0 < ρ)
    (hr : ρ ≤ outwardRadius003) : doubledTailMajorant ρ < (48*ρ^2)^2 := by
  have h := lt_of_le_of_lt (doubled_tail_normalized_mono hp.le hr)
    doubled_tail_at_outward_radius
  have hh := mul_lt_mul_of_pos_right h (pow_pos hp 4)
  have he : doubledTailMajorant ρ = doubledTailNormalized ρ*ρ^4 := by
    unfold doubledTailMajorant doubledTailNormalized
    ring
  rw [he]
  nlinarith only [hh]

/-- The actual phase-to-Laurent/Taylor bound remains the explicit hb premise. -/
theorem sqrt_bound_from_doubled_tail {ρ R : ℝ} (hp : 0 < ρ)
    (hr : ρ ≤ outwardRadius003) (hR : 0 ≤ R) (hb : R ≤ doubledTailMajorant ρ) :
    Real.sqrt R < 48*ρ^2 := by
  have h := lt_of_le_of_lt hb (doubled_tail_majorant_strict hp hr)
  have hs := Real.sq_sqrt hR
  have ht : 0 < 48*ρ^2 := by positivity
  nlinarith [Real.sqrt_nonneg R]

/-- Arithmetic diagnosis of the incoming failed radius-1/10 status packet. -/
theorem incoming_radius01_selftest_left : (24:ℝ)*(101/1000)^2 = 30603/125000 := by
  norm_num

theorem incoming_radius01_selftest_equality_false :
    (24:ℝ)*(101/1000)^2 ≠ 54/625 := by norm_num

theorem incoming_radius01_selftest_actual_bound : (24:ℝ)*(101/1000)^2 < 1 := by
  norm_num

end
end Centiradian20261006.Radius003

#print axioms Centiradian20261006.Radius003.phaseTaylor8_error
#print axioms Centiradian20261006.Radius003.finite_phaseTaylor8_error
#print axioms Centiradian20261006.Radius003.finite_frequencyTaylor8_error
#print axioms Centiradian20261006.Radius003.outward_radius_contains_exact
#print axioms Centiradian20261006.Radius003.outward_radius_positive
#print axioms Centiradian20261006.Radius003.all_frequency_phases_in_tail_domain
#print axioms Centiradian20261006.Radius003.doubled_tail_normalized_mono
#print axioms Centiradian20261006.Radius003.doubled_tail_at_outward_radius
#print axioms Centiradian20261006.Radius003.doubled_tail_majorant_strict
#print axioms Centiradian20261006.Radius003.sqrt_bound_from_doubled_tail
#print axioms Centiradian20261006.Radius003.incoming_radius01_selftest_left
#print axioms Centiradian20261006.Radius003.incoming_radius01_selftest_equality_false
#print axioms Centiradian20261006.Radius003.incoming_radius01_selftest_actual_bound
