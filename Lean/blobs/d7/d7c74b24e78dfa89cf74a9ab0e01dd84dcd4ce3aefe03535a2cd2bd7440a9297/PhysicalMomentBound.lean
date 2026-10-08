import MomentMajorant
import Source2442Binding

set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace Centiradian20261006.MomentMajorant20261006
open scoped BigOperators
open NativeSigned20261006 ChartExtension20261006 ChartRadius0120261006 InvariantBinding20261006
noncomputable section

/-- Exact coefficient-table and moment certificates imply the quadratic
bound for the actual leading score of the literal 2442 native model. The
formula-to-table equality is an explicit input, not a numerical assertion. -/
theorem source2442Model_sqrt_bound {ι : Type*} (S : Finset ι) (c : ι → ℂ)
    (e : ι → Fin 4 → ℤ) (u angles : Fin 4 → ℝ) (N : ℕ) (B : ℕ → ℝ)
    (ρ q : ℝ) (hq : 0 ≤ q) (hu : ∀ j, |u j| ≤ ρ)
    (hfourier : KernelLaurent.eval
      (KernelLaurent.phaseCharacter (fun i => seedAngle false i+u i))
      KernelLaurent.cornerPolynomial=frequencySum S c e u)
    (hzero : ∀ k, k<4 → frequencyMoment S c e u k=0)
    (hmoment : ∀ k, k<N → ‖frequencyMoment S c e u (4+k)‖ ≤ B k*ρ^(4+k))
    (hbudget : quarticBudget B (frequencyTailCoefficient S c e (4+N)) N ρ ≤ q^2) :
    Real.sqrt (leadingR (source2442Model u angles)) ≤ q*ρ^2 := by
  have hρ : 0 ≤ ρ := le_trans (abs_nonneg (u 0)) (hu 0)
  apply real_frequencySum_sqrt_bound S c e u N B _ ρ q hρ hq hu _ hzero hmoment hbudget
  rw [source2442Model_leadingR_eq_laurent_eval,hfourier]

/-- Uniform coefficient and moment certificates turn the physical
94-residual necessity theorem into the q*rho^2 inequalities used by the
native exclusion calculation. Every coefficient, cancellation, and majorant
premise is visible; the theorem does not assert that they have been supplied. -/
theorem physical_source2442_q_cover {H : Mat6} (hH : Physical H) (hd : Dephased H)
    (hm : Maximal H) (hR : 0 < leadingR H)
    (b : Bool) (ρ : ℝ) (hball : InPuncturedSeedBall H b ρ)
    (hρmax : ρ ≤ radiusEnvelope01)
    {ι : Type*} (S : Finset ι) (c : ι → ℂ) (e : ι → Fin 4 → ℤ)
    (N : ℕ) (B : ℕ → ℝ) (q : ℝ) (hq : 0 ≤ q)
    (hfourier : ∀ u : Fin 4 → ℝ, (∀ j, |u j| ≤ ρ) →
      KernelLaurent.eval (KernelLaurent.phaseCharacter (fun i => seedAngle false i+u i))
        KernelLaurent.cornerPolynomial=frequencySum S c e u)
    (hzero : ∀ u : Fin 4 → ℝ, (∀ j, |u j| ≤ ρ) →
      ∀ k, k<4 → frequencyMoment S c e u k=0)
    (hmoment : ∀ u : Fin 4 → ℝ, (∀ j, |u j| ≤ ρ) →
      ∀ k, k<N → ‖frequencyMoment S c e u (4+k)‖ ≤ B k*ρ^(4+k))
    (hbudget : quarticBudget B (frequencyTailCoefficient S c e (4+N)) N ρ ≤ q^2) :
    ∃ u angles : Fin 4 → ℝ,
      (∀ i, |u i| ≤ ρ) ∧ (∃ i, u i ≠ 0) ∧ ChartPhaseDomain angles ∧
      0 < leadingR (source2442Model u angles) ∧
      leadingR (source2442Model u angles)=leadingR H ∧
      Real.sqrt (leadingR H) ≤ q*ρ^2 ∧
      (∀ index : Fin 94, index.val<13 → residual94 (source2442Model u angles) index=0) ∧
      (∀ index : Fin 94, 13 ≤ index.val →
        |residual94 (source2442Model u angles) index| ≤ q*ρ^2) := by
  obtain ⟨u,angles,hu,hn,hdom,hpos,hscore,heq,hsigned,hinvariant⟩ :=
    both_seeds_source2442_residual_cover hH hd hm hR b ρ hball hρmax
  have hqmodel := source2442Model_sqrt_bound S c e u angles N B ρ q hq hu
    (hfourier u hu) (hzero u hu) (hmoment u hu) hbudget
  refine ⟨u,angles,hu,hn,hdom,hpos,hscore,?_,heq,?_⟩
  · rwa [hscore] at hqmodel
  · intro index hindex
    exact le_trans (hsigned index hindex) hqmodel

end
end Centiradian20261006.MomentMajorant20261006

#print axioms Centiradian20261006.MomentMajorant20261006.source2442Model_sqrt_bound
#print axioms Centiradian20261006.MomentMajorant20261006.physical_source2442_q_cover
