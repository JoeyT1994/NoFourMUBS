import LocalPhysicalSideEnclosure
import LiftedLambdaSide

/-! Binding actual lambda phases to the scalar-moment enclosure input. Unit
lambda denominators use floor one. Rational recovery safely retains the full
phase rectangle whenever a denominator box meets zero. -/
namespace Mub6.Classification.RadicalIntervals
open Mub6.Numerical Mub6.Numerical.IntervalKernel
open Mub6.Classification.PoleAtlas
open Hadamard6Extensions.FourierSide
noncomputable section

def lambdaMomentBoxes (s t r z w : RationalRectangle) (L : Fin 3 → RationalRectangle) :
    SideMomentBoxes where
  s := s
  t := t
  u := boxDivide (L 0) (L 1) 1
  v := boxDivide (L 0) (L 2) 1
  r := r
  W := boxMul z (L 0)
  omega := w

theorem lambdaU_box_sound {B : Fin 3 → RationalRectangle} {L : Fin 3 → ℂ}
    (hb : ∀ i, MemRectangle (B i) (L i)) (hL : IsPhase3 L) :
    MemRectangle (boxDivide (B 0) (B 1) 1) (lambdaU L) := by
  exact mem_boxDivide (floor := 1) (by norm_num) (hb 0) (hb 1)
    (by norm_num; exact le_of_eq (hL 1).symm)

theorem lambdaV_box_sound {B : Fin 3 → RationalRectangle} {L : Fin 3 → ℂ}
    (hb : ∀ i, MemRectangle (B i) (L i)) (hL : IsPhase3 L) :
    MemRectangle (boxDivide (B 0) (B 2) 1) (lambdaV L) := by
  exact mem_boxDivide (floor := 1) (by norm_num) (hb 0) (hb 2)
    (by norm_num; exact le_of_eq (hL 2).symm)

theorem actual_lambda_moment_cover (x y : Fin 3 → ℂ) (w : ℂ)
    (hx : IsPhase3 x) (hy : IsPhase3 y) (hD : (actualSide x y).det≠0)
    {s t r z W : RationalRectangle} {L : Fin 3 → RationalRectangle}
    (hs : MemRectangle s (sum3 x)) (ht : MemRectangle t (sum3 y))
    (hr : MemRectangle r (cross3 x y)) (hz : MemRectangle z (actualSheet x y))
    (hw : MemRectangle W w) (hL : ∀ i, MemRectangle (L i) (actualLambda x y i)) :
    CoversSideMoments (lambdaMomentBoxes s t r z W L) x y w := by
  obtain ⟨hphase,hu,hv,hW,_⟩ := actual_lambda_binding x y hx hy hD
  refine ⟨hs,ht,?_,?_,hr,?_,hw⟩
  · change MemRectangle (boxDivide (L 0) (L 1) 1) (prod3 x)
    rw [← hu]
    exact lambdaU_box_sound hL hphase
  · change MemRectangle (boxDivide (L 0) (L 2) 1) (prod3 y)
    rw [← hv]
    exact lambdaV_box_sound hL hphase
  · change MemRectangle (boxMul z (L 0)) (permanentSide x y)
    rw [← hW]
    exact mem_boxMul hz (hL 0)

def recoveredLambdaBoxes (N D : Fin 3 → RationalRectangle) : Fin 3 → RationalRectangle :=
  fun i => phaseQuotientBox (N i) (D i)

theorem actual_recovered_lambda_boxes (x y : Fin 3 → ℂ)
    (hx : IsPhase3 x) (hy : IsPhase3 y) (hD : (actualSide x y).det≠0)
    {N D : Fin 3 → RationalRectangle}
    (hn : ∀ i, MemRectangle (N i) (FourierGramNumerators.numerator (sum3 x) (sum3 y) (cross3 x y) i))
    (hd : ∀ i, MemRectangle (D i)
      (liftedDenominator (sum3 x) (sum3 y) (cross3 x y) (actualSheet x y) i)) :
    ∀ i, MemRectangle (recoveredLambdaBoxes N D i) (actualLambda x y i) := by
  obtain ⟨hphase,_,_,_,he⟩ := actual_lambda_binding x y hx hy hD
  intro i
  exact phaseQuotientBox_sound (hn i) (hd i) (hphase i) (he i)

/-- Pole-safe physical moment input for the local Fourier certificate consumer.
No actual or interval denominator nonzero assumption is required. -/
theorem actual_quotient_moment_cover (x y : Fin 3 → ℂ) (w : ℂ)
    (hx : IsPhase3 x) (hy : IsPhase3 y) (hD : (actualSide x y).det≠0)
    {s t r z W : RationalRectangle} {N D : Fin 3 → RationalRectangle}
    (hs : MemRectangle s (sum3 x)) (ht : MemRectangle t (sum3 y))
    (hr : MemRectangle r (cross3 x y)) (hz : MemRectangle z (actualSheet x y))
    (hw : MemRectangle W w)
    (hn : ∀ i, MemRectangle (N i) (FourierGramNumerators.numerator (sum3 x) (sum3 y) (cross3 x y) i))
    (hd : ∀ i, MemRectangle (D i)
      (liftedDenominator (sum3 x) (sum3 y) (cross3 x y) (actualSheet x y) i)) :
    CoversSideMoments (lambdaMomentBoxes s t r z W (recoveredLambdaBoxes N D)) x y w :=
  actual_lambda_moment_cover x y w hx hy hD hs ht hr hz hw
    (actual_recovered_lambda_boxes x y hx hy hD hn hd)

#check lambdaU_box_sound
#print axioms lambdaU_box_sound
#check lambdaV_box_sound
#print axioms lambdaV_box_sound
#check actual_lambda_moment_cover
#print axioms actual_lambda_moment_cover
#check actual_recovered_lambda_boxes
#print axioms actual_recovered_lambda_boxes
#check actual_quotient_moment_cover
#print axioms actual_quotient_moment_cover
end
end Mub6.Classification.RadicalIntervals
