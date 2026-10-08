import StrictMaximalPhasePopulation

set_option autoImplicit false
namespace ExactMeanChecker20261006.IndependentReview
open Centiradian20261006
open Mub6 Mub6.GlobalBoxCover20261006 Mub6.MaximalRadian20261006
open ExactMeanChecker20261006

theorem reviewed_quartet_strict_or_zero {B : Fin 4 → BasisMatrix}
    (hB : IsMUBQuartet B) :
    Live StrictMaximalPopulation (radianRoot 4) ∨
      ∃ D : Fin 4 → BasisMatrix, IsMUBQuartet D ∧
        Physical (phaseOverlap (D 0) (D 1)) ∧
        Dephased (phaseOverlap (D 0) (D 1)) ∧
        Maximal (phaseOverlap (D 0) (D 1)) ∧
        leadingR (phaseOverlap (D 0) (D 1))=0 :=
  quartet_reaches_strict_or_zero hB

theorem reviewed_conditional_endpoint
    (zero_excluded : ZeroMaximalQuartetsExcluded)
    (tree : CertifiedTree StrictMaximalPopulation (radianRoot 4))
    (closed : tree.frontier=[]) : NoFourMUB6 :=
  noFour_of_strict_forest_and_zero zero_excluded tree closed

end ExactMeanChecker20261006.IndependentReview
#print axioms ExactMeanChecker20261006.IndependentReview.reviewed_quartet_strict_or_zero
#print axioms ExactMeanChecker20261006.IndependentReview.reviewed_conditional_endpoint
