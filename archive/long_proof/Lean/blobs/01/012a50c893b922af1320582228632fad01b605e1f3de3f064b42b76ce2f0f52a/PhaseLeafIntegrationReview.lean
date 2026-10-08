import ExactMeanPhaseLeaf

/-! Independent semantic restatement of the frozen phase-leaf integration.
The statements keep the actual phase point, literal physical matrix, strict
population, certified closed leaf, and unsupplied zero/forest endpoint inputs
visible. -/
set_option autoImplicit false
namespace ExactMeanChecker20261006.IndependentReview
open SignedMeanIntake20261006
open Centiradian20261006
open Mub6 Mub6.GlobalBoxCover20261006 Mub6.MaximalRadian20261006
open ExactMeanChecker20261006
noncomputable section

/-- A successful rational phase-input check encloses the exact exponential of
every point in the closed angle box. -/
theorem reviewed_phase_input_sound (p : PhaseInput) (b : Box 4)
    (hp : p.check b=true) {x : Fin 4 → ℝ} (hx : b.Contains x) :
    ∀ i, (p.rectangles i).Contains (Complex.exp ((x i:ℂ)*Complex.I)) := by
  intro i
  exact PhaseInput.sound p b hp hx i

/-- The exact phase boxes feed the already checked mean interpreter for an
actual Physical, Dephased, Maximal matrix with strictly positive leading R. -/
theorem reviewed_actual_matrix_rejection {H : Mat6}
    (hH : Physical H) (hd : Dephased H) (hm : Maximal H) (hR : 0 < leadingR H)
    (b : Box 4) (p : PhaseInput) (hp : p.check b=true)
    (ht : rejectsBoth p.rectangles=true) {x : Fin 4 → ℝ}
    (hx : b.Contains x)
    (hphase : ∀ i : Fin 4, Complex.exp ((x i:ℂ)*Complex.I)=seedEntry H i) : False :=
  phase_box_rejects_physical hH hd hm hR b p hp ht hx hphase

/-- The Boolean inputs construct a literal closed certified leaf for the same
strict physical population and its frontier is definitionally empty. -/
theorem reviewed_checked_leaf (b : Box 4) (p : PhaseInput)
    (hp : p.check b=true) (ht : rejectsBoth p.rectangles=true) :
    ∃ t : CertifiedTree StrictMaximalPopulation b,
      t.frontier=[] ∧ ¬Live StrictMaximalPopulation b := by
  exact ⟨checkedPhaseLeaf b p hp ht,checkedPhaseLeaf_frontier b p hp ht,
    phase_leaf_excluded b p hp ht⟩

/-- Every literal quartet reaches either the strict population in the whole
closed root or an actual maximal zero-R quartet. -/
theorem reviewed_quartet_strict_or_zero {B : Fin 4 → BasisMatrix}
    (hB : IsMUBQuartet B) :
    Live StrictMaximalPopulation (radianRoot 4) ∨
      ∃ D : Fin 4 → BasisMatrix, IsMUBQuartet D ∧
        Physical (phaseOverlap (D 0) (D 1)) ∧
        Dephased (phaseOverlap (D 0) (D 1)) ∧
        Maximal (phaseOverlap (D 0) (D 1)) ∧
        leadingR (phaseOverlap (D 0) (D 1))=0 :=
  quartet_reaches_strict_or_zero hB

/-- The no-four endpoint still takes both global obligations as explicit
arguments; this review does not manufacture either one. -/
theorem reviewed_conditional_endpoint
    (zero_excluded : ZeroMaximalQuartetsExcluded)
    (tree : CertifiedTree StrictMaximalPopulation (radianRoot 4))
    (closed : tree.frontier=[]) : NoFourMUB6 :=
  noFour_of_strict_forest_and_zero zero_excluded tree closed

end
end ExactMeanChecker20261006.IndependentReview

#print axioms ExactMeanChecker20261006.IndependentReview.reviewed_phase_input_sound
#print axioms ExactMeanChecker20261006.IndependentReview.reviewed_actual_matrix_rejection
#print axioms ExactMeanChecker20261006.IndependentReview.reviewed_checked_leaf
#print axioms ExactMeanChecker20261006.IndependentReview.reviewed_quartet_strict_or_zero
#print axioms ExactMeanChecker20261006.IndependentReview.reviewed_conditional_endpoint
