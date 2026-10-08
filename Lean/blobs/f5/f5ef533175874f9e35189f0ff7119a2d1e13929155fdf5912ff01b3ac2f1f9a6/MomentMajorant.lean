import SharpFiniteTaylor
import Mathlib.Analysis.Real.Sqrt

set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace Centiradian20261006.MomentMajorant20261006
open scoped BigOperators
open SharpTaylor20261006
noncomputable section

def frequencySum {ι : Type*} (S : Finset ι) (c : ι → ℂ)
    (e : ι → Fin 4 → ℤ) (u : Fin 4 → ℝ) : ℂ :=
  ∑ i ∈ S, c i*Complex.exp (Complex.I*(frequencyDot (e i) u:ℂ))

def frequencyMoment {ι : Type*} (S : Finset ι) (c : ι → ℂ)
    (e : ι → Fin 4 → ℤ) (u : Fin 4 → ℝ) (k : ℕ) : ℂ :=
  ∑ i ∈ S, c i*((Complex.I*(frequencyDot (e i) u:ℂ))^k/(k.factorial:ℂ))

def frequencyTailCoefficient {ι : Type*} (S : Finset ι) (c : ι → ℂ)
    (e : ι → Fin 4 → ℤ) (n : ℕ) : ℝ :=
  (∑ i ∈ S, ‖c i‖*frequencyNorm (e i)^n)/(n.factorial:ℝ)

theorem frequencyPartial_eq_moments {ι : Type*} (S : Finset ι) (c : ι → ℂ)
    (e : ι → Fin 4 → ℤ) (u : Fin 4 → ℝ) (n : ℕ) :
    (∑ i ∈ S, c i*phasePartial n (frequencyDot (e i) u))=
      ∑ k ∈ Finset.range n, frequencyMoment S c e u k := by
  unfold phasePartial frequencyMoment
  simp_rw [Finset.mul_sum]
  exact Finset.sum_comm

theorem frequencySum_moment_tail {ι : Type*} (S : Finset ι) (c : ι → ℂ)
    (e : ι → Fin 4 → ℤ) (u : Fin 4 → ℝ) (n : ℕ) {ρ : ℝ}
    (hρ : 0 ≤ ρ) (hu : ∀ j, |u j| ≤ ρ) :
    ‖frequencySum S c e u-∑ k ∈ Finset.range n, frequencyMoment S c e u k‖ ≤
      frequencyTailCoefficient S c e n*ρ^n := by
  have h := finite_frequencyPartial_error S c e u n hρ hu
  rw [frequencyPartial_eq_moments] at h
  simpa only [frequencySum,frequencyTailCoefficient,div_mul_eq_mul_div] using h

theorem sum_moments_after_four (M : ℕ → ℂ) (N : ℕ)
    (hzero : ∀ k, k<4 → M k=0) :
    (∑ k ∈ Finset.range (4+N), M k)=∑ k ∈ Finset.range N, M (4+k) := by
  rw [Finset.sum_range_add]
  have h : ∑ k ∈ Finset.range 4, M k=0 := by
    apply Finset.sum_eq_zero
    intro k hk
    exact hzero k (Finset.mem_range.mp hk)
  rw [h,zero_add]

/-- A norm budget for moments starting at degree four. The tail exponent
is the number of retained higher moments, after factoring out rho^4. -/
def quarticBudget (B : ℕ → ℝ) (T : ℝ) (N : ℕ) (ρ : ℝ) : ℝ :=
  (∑ k ∈ Finset.range N, B k*ρ^k)+T*ρ^N

/-- This algebraic assembly is independent of how the moment bounds were
certified. In particular, the low-order cancellations remain explicit
premises rather than being inferred from a numerical table. -/
theorem norm_le_quarticBudget (F : ℂ) (M : ℕ → ℂ) (B : ℕ → ℝ)
    (T ρ : ℝ) (N : ℕ)
    (htail : ‖F-∑ k ∈ Finset.range (4+N), M k‖ ≤ T*ρ^(4+N))
    (hzero : ∀ k, k<4 → M k=0)
    (hmoment : ∀ k, k<N → ‖M (4+k)‖ ≤ B k*ρ^(4+k)) :
    ‖F‖ ≤ ρ^4*quarticBudget B T N ρ := by
  have hsum : ‖∑ k ∈ Finset.range (4+N), M k‖ ≤
      ∑ k ∈ Finset.range N, B k*ρ^(4+k) := by
    rw [sum_moments_after_four M N hzero]
    apply le_trans (norm_sum_le _ _)
    apply Finset.sum_le_sum
    intro k hk
    exact hmoment k (Finset.mem_range.mp hk)
  have hf : ‖F‖ ≤ ‖F-∑ k ∈ Finset.range (4+N), M k‖+
      ‖∑ k ∈ Finset.range (4+N), M k‖ := by
    simpa only [add_comm] using norm_le_insert' F (∑ k ∈ Finset.range (4+N), M k)
  calc
    ‖F‖ ≤ T*ρ^(4+N)+(∑ k ∈ Finset.range N, B k*ρ^(4+k)) :=
      le_trans hf (add_le_add htail hsum)
    _ = ρ^4*quarticBudget B T N ρ := by
      unfold quarticBudget
      simp only [pow_add,Finset.mul_sum,mul_add]
      rw [add_comm]
      congr 1
      · apply Finset.sum_congr rfl
        intro k hk
        ring
      · ring

theorem frequencySum_le_quarticBudget {ι : Type*} (S : Finset ι) (c : ι → ℂ)
    (e : ι → Fin 4 → ℤ) (u : Fin 4 → ℝ) (N : ℕ) (B : ℕ → ℝ) {ρ : ℝ}
    (hρ : 0 ≤ ρ) (hu : ∀ j, |u j| ≤ ρ)
    (hzero : ∀ k, k<4 → frequencyMoment S c e u k=0)
    (hmoment : ∀ k, k<N → ‖frequencyMoment S c e u (4+k)‖ ≤ B k*ρ^(4+k)) :
    ‖frequencySum S c e u‖ ≤
      ρ^4*quarticBudget B (frequencyTailCoefficient S c e (4+N)) N ρ :=
  norm_le_quarticBudget _ _ B _ ρ N
    (frequencySum_moment_tail S c e u (4+N) hρ hu) hzero hmoment

/-- A checked normalized budget directly controls the square root of a
real invariant. Positivity of that invariant is unnecessary here. -/
theorem sqrt_le_quadratic_of_budget (R ρ q budget : ℝ)
    (hq : 0 ≤ q) (hR : ‖(R:ℂ)‖ ≤ ρ^4*budget) (hbudget : budget ≤ q^2) :
    Real.sqrt R ≤ q*ρ^2 := by
  apply (Real.sqrt_le_left (mul_nonneg hq (sq_nonneg ρ))).mpr
  have hR' : R ≤ ρ^4*budget :=
    le_trans (le_abs_self R) (by simpa using hR)
  calc
    R ≤ ρ^4*budget := hR'
    _ ≤ ρ^4*q^2 := mul_le_mul_of_nonneg_left hbudget (by positivity)
    _ = (q*ρ^2)^2 := by ring

theorem real_frequencySum_sqrt_bound {ι : Type*} (S : Finset ι) (c : ι → ℂ)
    (e : ι → Fin 4 → ℤ) (u : Fin 4 → ℝ) (N : ℕ) (B : ℕ → ℝ)
    (R ρ q : ℝ) (hρ : 0 ≤ ρ) (hq : 0 ≤ q)
    (hu : ∀ j, |u j| ≤ ρ) (hreal : (R:ℂ)=frequencySum S c e u)
    (hzero : ∀ k, k<4 → frequencyMoment S c e u k=0)
    (hmoment : ∀ k, k<N → ‖frequencyMoment S c e u (4+k)‖ ≤ B k*ρ^(4+k))
    (hbudget : quarticBudget B (frequencyTailCoefficient S c e (4+N)) N ρ ≤ q^2) :
    Real.sqrt R ≤ q*ρ^2 := by
  apply sqrt_le_quadratic_of_budget R ρ q _ hq _ hbudget
  rw [hreal]
  exact frequencySum_le_quarticBudget S c e u N B hρ hu hzero hmoment

end
end Centiradian20261006.MomentMajorant20261006

#print axioms Centiradian20261006.MomentMajorant20261006.frequencyPartial_eq_moments
#print axioms Centiradian20261006.MomentMajorant20261006.frequencySum_moment_tail
#print axioms Centiradian20261006.MomentMajorant20261006.sum_moments_after_four
#print axioms Centiradian20261006.MomentMajorant20261006.norm_le_quarticBudget
#print axioms Centiradian20261006.MomentMajorant20261006.frequencySum_le_quarticBudget
#print axioms Centiradian20261006.MomentMajorant20261006.sqrt_le_quadratic_of_budget
#print axioms Centiradian20261006.MomentMajorant20261006.real_frequencySum_sqrt_bound
