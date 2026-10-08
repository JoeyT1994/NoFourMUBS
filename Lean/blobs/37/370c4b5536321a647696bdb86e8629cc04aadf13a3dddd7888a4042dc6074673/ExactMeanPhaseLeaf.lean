import ExactPhaseInput
import StrictMaximalPhasePopulation
import ExactMeanTerminal

/-! The exact rational phase input check feeds the proved four-seed mean
interpreter and closes an actual strict maximal physical leaf. The exact
certificate expressions stay behind their already checked theorem interface.
-/
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace ExactMeanChecker20261006
open Centiradian20261006
open Mub6 Mub6.GlobalBoxCover20261006 Mub6.MaximalRadian20261006

attribute [local irreducible] certificate rejectsPlus rejectsMinus rejectsBoth

theorem phase_leaf_excluded (b : Box 4) (p : PhaseInput)
    (hp : p.check b=true) (ht : rejectsBoth p.rectangles=true) :
    ¬Live StrictMaximalPopulation b := by
  rintro ⟨x,⟨D,hD,hH,hd,hm,hR,hphase⟩,hx⟩
  let H : Mat6 := phaseOverlap (D 0) (D 1)
  have hseed : ∀ i : Fin 4, (p.rectangles i).Contains (seedEntry H i) := by
    intro i
    have hi : (p.rectangles i).Contains (Complex.exp ((x i:ℂ)*Complex.I)) :=
      PhaseInput.sound p b hp hx i
    have he : Complex.exp ((x i:ℂ)*Complex.I)=seedEntry H i := hphase i
    exact he ▸ hi
  exact rejectsBoth_physical hH hd hm hR p.rectangles hseed ht

def checkedPhaseLeaf (b : Box 4) (p : PhaseInput)
    (hp : p.check b=true) (ht : rejectsBoth p.rectangles=true) :
    CertifiedTree StrictMaximalPopulation b :=
  .closed b (phase_leaf_excluded b p hp ht)

theorem checkedPhaseLeaf_frontier (b : Box 4) (p : PhaseInput)
    (hp : p.check b=true) (ht : rejectsBoth p.rectangles=true) :
    (checkedPhaseLeaf b p hp ht).frontier=[] := rfl

end ExactMeanChecker20261006
#print axioms ExactMeanChecker20261006.phase_leaf_excluded
#print axioms ExactMeanChecker20261006.checkedPhaseLeaf
#print axioms ExactMeanChecker20261006.checkedPhaseLeaf_frontier
