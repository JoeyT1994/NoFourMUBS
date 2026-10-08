import PhaseSeedEvaluation

/-! Independent scope review of the frozen coefficient-evaluation extension.
This file deliberately restates the native operation order, all exact evaluator
outputs on an actual dephased matrix, and the original punctured phase lift.
It makes no floating-point enclosure or coupled-side-sign assertion. -/
set_option autoImplicit false
namespace Centiradian20261006.NativeEvaluation20261006.IndependentReview
open scoped ComplexConjugate
open Centiradian20261006 SignedDeterminant NativeMean20261006
noncomputable section

/-- Reviewer transcription of `signed_linear_engine.cpp::stableR`. -/
def reviewedStableR {K : Type*} [CommRing K] (p j w : K) : K :=
  let pp := p^2
  let jj := j^2
  jj*j*4+jj*(-pp+p*2+27)+j*(pp*p*2-pp*24-p*w*2+p*54+w*30)-
    pp^2+pp*p*18+pp*w*2-pp*81-p*w*54-w^2+w*324

/-- Reviewer transcription of `signed_linear_engine.cpp::stableA`. -/
def reviewedStableA (p j w z : ℝ) : ℝ :=
  w-p^2+p*9-z*18+z*p*2+(p+3-z*2)*j

theorem reviewed_stableR_is_packet_formula {K : Type*} [CommRing K] (p j w : K) :
    reviewedStableR p j w = stableRFormula p j w := by rfl

theorem reviewed_stableA_is_packet_formula (p j w z : ℝ) :
    reviewedStableA p j w z = nativeStableA p j w z := by rfl

theorem reviewed_seed_and_pair_order (H : Mat6) :
    seedEntry H = ![H 1 1, H 1 2, H 2 1, H 2 2] ∧
    pairFirst = ![0, 0, 1] ∧ pairSecond = ![1, 2, 2] := by
  exact ⟨rfl, rfl, rfl⟩

/-- Every exact scalar output advertised by the extension is joined to the
actual matrix quantities.  The only premise for these identities is literal
dephasing; physicality and maximality enter only the later inequality. -/
theorem reviewed_all_evaluator_outputs {H : Mat6} (hd : Dephased H) :
    exactSeedR (seedEntry H) = leadingR H ∧
    exactDelta (seedEntry H) = nativeDelta H ∧
    ∀ pair : Fin 3,
      exactMeanA (seedEntry H) pair = nativeClearedA H pair ∧
      exactMeanBeta (seedEntry H) pair = nativeClearedBeta H pair ∧
      exactKMinus (seedEntry H) pair = nativeClearedBeta H pair - 3*nativeDelta H ∧
      exactKPlus (seedEntry H) pair = nativeClearedBeta H pair + 3*nativeDelta H ∧
      exactHMinus (seedEntry H) pair = (nativeClearedA H pair)^2 -
        (nativeClearedBeta H pair-3*nativeDelta H)^2*leadingR H ∧
      exactHPlus (seedEntry H) pair = (nativeClearedA H pair)^2 -
        (nativeClearedBeta H pair+3*nativeDelta H)^2*leadingR H := by
  refine ⟨exactSeedR_physical_seed hd, exactDelta_physical_seed H, ?_⟩
  intro pair
  exact ⟨exactMeanA_physical_seed hd pair, exactMeanBeta_physical_seed hd pair,
    exactKMinus_physical_seed hd pair, exactKPlus_physical_seed hd pair,
    exactHMinus_physical_seed hd pair, exactHPlus_physical_seed hd pair⟩

/-- The original target's existential phase lift, component radius, and
puncture are retained literally. -/
theorem reviewed_original_ball_lift {H : Mat6} (hd : Dephased H)
    (conjugateSeed : Bool) (radius : ℝ)
    (hb : InPuncturedSeedBall H conjugateSeed radius) :
    ∃ u : Fin 4 → ℝ,
      (∀ i, |u i| ≤ radius) ∧ (∃ i, u i ≠ 0) ∧
      seedEntry H = phaseSeed (fun i => seedAngle conjugateSeed i + u i) ∧
      exactSeedR (phaseSeed (fun i => seedAngle conjugateSeed i + u i)) = leadingR H ∧
      exactDelta (phaseSeed (fun i => seedAngle conjugateSeed i + u i)) = nativeDelta H ∧
      (∀ pair, exactMeanA (phaseSeed (fun i => seedAngle conjugateSeed i + u i)) pair =
        nativeClearedA H pair) ∧
      (∀ pair, exactMeanBeta (phaseSeed (fun i => seedAngle conjugateSeed i + u i)) pair =
        nativeClearedBeta H pair) :=
  punctured_seed_evaluator_lift hd conjugateSeed radius hb

/-- The physical inequality keeps all substantive premises visible.  It is for
the actual horizontal sign only; it does not identify a vertical sign. -/
theorem reviewed_physical_mean_bound {H : Mat6} (hH : Physical H) (hd : Dephased H)
    (hm : Maximal H) (theta : Fin 4 → ℝ) (hθ : seedEntry H = phaseSeed theta)
    (hR : 0 < exactSeedR (phaseSeed theta)) (pair : Fin 3) :
    |exactMeanA (phaseSeed theta) pair +
        physicalSideSign H * exactMeanBeta (phaseSeed theta) pair| ≤
      exactD (phaseSeed theta) * Real.sqrt (exactSeedR (phaseSeed theta)) :=
  phase_seed_mean_abs_bound hH hd hm theta hθ hR pair

end
end Centiradian20261006.NativeEvaluation20261006.IndependentReview

#print axioms Centiradian20261006.NativeEvaluation20261006.IndependentReview.reviewed_stableR_is_packet_formula
#print axioms Centiradian20261006.NativeEvaluation20261006.IndependentReview.reviewed_stableA_is_packet_formula
#print axioms Centiradian20261006.NativeEvaluation20261006.IndependentReview.reviewed_seed_and_pair_order
#print axioms Centiradian20261006.NativeEvaluation20261006.IndependentReview.reviewed_all_evaluator_outputs
#print axioms Centiradian20261006.NativeEvaluation20261006.IndependentReview.reviewed_original_ball_lift
#print axioms Centiradian20261006.NativeEvaluation20261006.IndependentReview.reviewed_physical_mean_bound
