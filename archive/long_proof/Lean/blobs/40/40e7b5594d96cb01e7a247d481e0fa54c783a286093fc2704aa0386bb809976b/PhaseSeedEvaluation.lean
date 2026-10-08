import ExactSeedEvaluator

/-! Connection between exact seed evaluation and the original exponential
phase coordinates of the physical target. The phase lift is the actual one
in InPuncturedSeedBall, not a rounded native midpoint. -/
set_option autoImplicit false
namespace Centiradian20261006.NativeEvaluation20261006
open scoped ComplexConjugate
open NativeMean20261006
noncomputable section

def phaseSeed (θ : Fin 4 → ℝ) (i : Fin 4) : ℂ := Complex.exp (Complex.I*(θ i:ℂ))

theorem phaseSeed_re (θ : Fin 4 → ℝ) (i : Fin 4) :
    (phaseSeed θ i).re=Real.cos (θ i) := by
  rw [phaseSeed,mul_comm Complex.I,Complex.exp_ofReal_mul_I_re]

theorem phaseSeed_im (θ : Fin 4 → ℝ) (i : Fin 4) :
    (phaseSeed θ i).im=Real.sin (θ i) := by
  rw [phaseSeed,mul_comm Complex.I,Complex.exp_ofReal_mul_I_im]

theorem phaseSeed_unit (θ : Fin 4 → ℝ) (i : Fin 4) :
    Complex.normSq (phaseSeed θ i)=1 := by
  rw [Complex.normSq_apply,phaseSeed_re,phaseSeed_im]
  nlinarith [Real.sin_sq_add_cos_sq (θ i)]

/-- All exact native outputs on the original phase lift equal the proved
physical functions. The equation premise is the explicit meaning of a lift. -/
theorem phase_evaluator_physical {H : Mat6} (hd : Dephased H)
    (θ : Fin 4 → ℝ) (hθ : seedEntry H=phaseSeed θ) :
    exactSeedR (phaseSeed θ)=leadingR H ∧
    exactDelta (phaseSeed θ)=nativeDelta H ∧
    (∀ pair, exactMeanA (phaseSeed θ) pair=nativeClearedA H pair) ∧
    (∀ pair, exactMeanBeta (phaseSeed θ) pair=nativeClearedBeta H pair) := by
  rw [←hθ]
  exact ⟨exactSeedR_physical_seed hd,exactDelta_physical_seed H,
    exactMeanA_physical_seed hd,exactMeanBeta_physical_seed hd⟩

/-- The original punctured seed-ball hypothesis supplies an actual phase
lift for the evaluator, preserving every component radius and the puncture. -/
theorem punctured_seed_evaluator_lift {H : Mat6} (hd : Dephased H)
    (conjugateSeed : Bool) (radius : ℝ) (hb : InPuncturedSeedBall H conjugateSeed radius) :
    ∃ u : Fin 4 → ℝ,
      (∀ i, |u i|≤radius) ∧ (∃ i, u i≠0) ∧
      seedEntry H=phaseSeed (fun i => seedAngle conjugateSeed i+u i) ∧
      exactSeedR (phaseSeed (fun i => seedAngle conjugateSeed i+u i))=leadingR H ∧
      exactDelta (phaseSeed (fun i => seedAngle conjugateSeed i+u i))=nativeDelta H ∧
      (∀ pair, exactMeanA (phaseSeed (fun i => seedAngle conjugateSeed i+u i)) pair=nativeClearedA H pair) ∧
      (∀ pair, exactMeanBeta (phaseSeed (fun i => seedAngle conjugateSeed i+u i)) pair=nativeClearedBeta H pair) := by
  obtain ⟨u,heq,hu,hne⟩ := hb
  have heq' : seedEntry H=phaseSeed (fun i => seedAngle conjugateSeed i+u i) := funext heq
  exact ⟨u,hu,hne,heq',phase_evaluator_physical hd _ heq'⟩

/-- The physical mean bound at actual phase coordinates. This says nothing
about how an interval producer computes an enclosure of these functions. -/
theorem phase_seed_mean_abs_bound {H : Mat6} (hH : Physical H) (hd : Dephased H)
    (hm : Maximal H) (θ : Fin 4 → ℝ) (hθ : seedEntry H=phaseSeed θ)
    (hR : 0<exactSeedR (phaseSeed θ)) (pair : Fin 3) :
    |exactMeanA (phaseSeed θ) pair+physicalSideSign H*exactMeanBeta (phaseSeed θ) pair| ≤
      exactD (phaseSeed θ)*Real.sqrt (exactSeedR (phaseSeed θ)) := by
  rw [←hθ] at hR ⊢
  exact exact_seed_mean_abs_bound hH hd hm hR pair
end
end Centiradian20261006.NativeEvaluation20261006

#print axioms Centiradian20261006.NativeEvaluation20261006.phaseSeed_re
#print axioms Centiradian20261006.NativeEvaluation20261006.phaseSeed_im
#print axioms Centiradian20261006.NativeEvaluation20261006.phaseSeed_unit
#print axioms Centiradian20261006.NativeEvaluation20261006.phase_evaluator_physical
#print axioms Centiradian20261006.NativeEvaluation20261006.punctured_seed_evaluator_lift
#print axioms Centiradian20261006.NativeEvaluation20261006.phase_seed_mean_abs_bound
