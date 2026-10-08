import ExactMeanPhaseLeaf

set_option autoImplicit false
namespace ExactMeanChecker20261006.IndependentReview
open Mub6.GlobalBoxCover20261006
open ExactMeanChecker20261006

theorem reviewed_checked_leaf (b : Box 4) (p : PhaseInput)
    (hp : p.check b=true) (ht : rejectsBoth p.rectangles=true) :
    ∃ t : CertifiedTree StrictMaximalPopulation b,
      t.frontier=[] ∧ ¬Live StrictMaximalPopulation b := by
  exact ⟨checkedPhaseLeaf b p hp ht,checkedPhaseLeaf_frontier b p hp ht,
    phase_leaf_excluded b p hp ht⟩

end ExactMeanChecker20261006.IndependentReview
#print axioms ExactMeanChecker20261006.IndependentReview.reviewed_checked_leaf
