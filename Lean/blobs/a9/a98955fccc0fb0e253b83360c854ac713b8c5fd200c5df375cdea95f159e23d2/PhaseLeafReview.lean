import ExactMeanPhaseLeaf

set_option autoImplicit false
namespace ExactMeanChecker20261006.IndependentReview
open Centiradian20261006
open Mub6.GlobalBoxCover20261006
open ExactMeanChecker20261006

theorem reviewed_actual_matrix_rejection {H : Mat6}
    (hH : Physical H) (hd : Dephased H) (hm : Maximal H) (hR : 0 < leadingR H)
    (b : Box 4) (p : PhaseInput) (hp : p.check b=true)
    (ht : rejectsBoth p.rectangles=true) {x : Fin 4 → ℝ}
    (hx : b.Contains x)
    (hphase : ∀ i : Fin 4, Complex.exp ((x i:ℂ)*Complex.I)=seedEntry H i) : False :=
  phase_box_rejects_physical hH hd hm hR b p hp ht hx hphase

theorem reviewed_checked_leaf (b : Box 4) (p : PhaseInput)
    (hp : p.check b=true) (ht : rejectsBoth p.rectangles=true) :
    ∃ t : CertifiedTree StrictMaximalPopulation b,
      t.frontier=[] ∧ ¬Live StrictMaximalPopulation b := by
  exact ⟨checkedPhaseLeaf b p hp ht,checkedPhaseLeaf_frontier b p hp ht,
    phase_leaf_excluded b p hp ht⟩

end ExactMeanChecker20261006.IndependentReview
#print axioms ExactMeanChecker20261006.IndependentReview.reviewed_actual_matrix_rejection
#print axioms ExactMeanChecker20261006.IndependentReview.reviewed_checked_leaf
