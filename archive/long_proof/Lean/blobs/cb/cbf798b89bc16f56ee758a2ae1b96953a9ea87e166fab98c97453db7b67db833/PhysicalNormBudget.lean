import Source2442Binding

set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace Centiradian20261006.PhysicalNormBudget20261006
open NativeSigned20261006 ChartExtension20261006 ChartRadius0120261006 InvariantBinding20261006
noncomputable section

/-- The exact positive-J expression's norm budget controls the actual
native leading score. This small interface does not import the calculus
implementation used to prove a moment budget. -/
theorem source2442Model_sqrt_of_normBudget (u angles : Fin 4 → ℝ) (ρ q budget : ℝ)
    (hq : 0 ≤ q)
    (hnorm : ‖KernelLaurent.eval
      (KernelLaurent.phaseCharacter (fun i => seedAngle false i+u i))
      KernelLaurent.cornerPolynomial‖ ≤ ρ^4*budget)
    (hbudget : budget ≤ q^2) :
    Real.sqrt (leadingR (source2442Model u angles)) ≤ q*ρ^2 := by
  have hR : leadingR (source2442Model u angles) ≤ ρ^4*budget := by
    calc
      leadingR (source2442Model u angles) ≤ |leadingR (source2442Model u angles)| := le_abs_self _
      _ = ‖(leadingR (source2442Model u angles):ℂ)‖ := by simp
      _ = ‖KernelLaurent.eval
          (KernelLaurent.phaseCharacter (fun i => seedAngle false i+u i))
          KernelLaurent.cornerPolynomial‖ := by rw [source2442Model_leadingR_eq_laurent_eval]
      _ ≤ ρ^4*budget := hnorm
  apply (Real.sqrt_le_left (mul_nonneg hq (sq_nonneg ρ))).mpr
  calc
    leadingR (source2442Model u angles) ≤ ρ^4*budget := hR
    _ ≤ ρ^4*q^2 := mul_le_mul_of_nonneg_left hbudget (by positivity)
    _ = (q*ρ^2)^2 := by ring

/-- The norm budget supplied by coefficient and moment certification
passes through the exact physical chart cover to all 94 source residuals.
The norm budget is still an explicit premise, not an admitted certificate. -/
theorem physical_source2442_q_cover_of_normBudget {H : Mat6}
    (hH : Physical H) (hd : Dephased H) (hm : Maximal H) (hR : 0 < leadingR H)
    (b : Bool) (ρ : ℝ) (hball : InPuncturedSeedBall H b ρ)
    (hρmax : ρ ≤ radiusEnvelope01) (q budget : ℝ) (hq : 0 ≤ q)
    (hnorm : ∀ u : Fin 4 → ℝ, (∀ j, |u j| ≤ ρ) →
      ‖KernelLaurent.eval (KernelLaurent.phaseCharacter (fun i => seedAngle false i+u i))
        KernelLaurent.cornerPolynomial‖ ≤ ρ^4*budget)
    (hbudget : budget ≤ q^2) :
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
  have hqmodel := source2442Model_sqrt_of_normBudget u angles ρ q budget hq (hnorm u hu) hbudget
  refine ⟨u,angles,hu,hn,hdom,hpos,hscore,?_,heq,?_⟩
  · rwa [hscore] at hqmodel
  · intro index hindex
    exact le_trans (hsigned index hindex) hqmodel

end
end Centiradian20261006.PhysicalNormBudget20261006

#print axioms Centiradian20261006.PhysicalNormBudget20261006.source2442Model_sqrt_of_normBudget
#print axioms Centiradian20261006.PhysicalNormBudget20261006.physical_source2442_q_cover_of_normBudget
