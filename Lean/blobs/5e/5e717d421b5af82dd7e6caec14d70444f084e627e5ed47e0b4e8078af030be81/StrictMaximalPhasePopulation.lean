import MaximalQuartetRadian

/-! Literal strict physical population and its separate zero-R obligation.
No completed forest or zero-R exclusion is assumed in constructing a maximal
representative, and no earlier cell membership survives corner reselection.
-/
set_option autoImplicit false
set_option maxHeartbeats 1500000
namespace ExactMeanChecker20261006
open Centiradian20261006
open Mub6 Mub6.GlobalBoxCover20261006 Mub6.MaximalRadian20261006

def StrictMaximalPopulation (x : Fin 4 → ℝ) : Prop :=
  ∃ D : Fin 4 → BasisMatrix, IsMUBQuartet D ∧
    Physical (phaseOverlap (D 0) (D 1)) ∧ Dephased (phaseOverlap (D 0) (D 1)) ∧
    Maximal (phaseOverlap (D 0) (D 1)) ∧ 0<leadingR (phaseOverlap (D 0) (D 1)) ∧
    PhaseCoordinates (seedEntries (phaseOverlap (D 0) (D 1))) x

/-- This concerns actual surviving quartets, not arbitrary Hadamards.
It remains a separate mathematical obligation. -/
def ZeroMaximalQuartetsExcluded : Prop := ∀ (D : Fin 4 → BasisMatrix), IsMUBQuartet D →
    Physical (phaseOverlap (D 0) (D 1)) → Dephased (phaseOverlap (D 0) (D 1)) →
    Maximal (phaseOverlap (D 0) (D 1)) → leadingR (phaseOverlap (D 0) (D 1))=0 → False

theorem quartet_reaches_strict_or_zero {B : Fin 4 → BasisMatrix} (hB : IsMUBQuartet B) :
    Live StrictMaximalPopulation (radianRoot 4) ∨
      ∃ D : Fin 4 → BasisMatrix, IsMUBQuartet D ∧ Physical (phaseOverlap (D 0) (D 1)) ∧
        Dephased (phaseOverlap (D 0) (D 1)) ∧ Maximal (phaseOverlap (D 0) (D 1)) ∧
        leadingR (phaseOverlap (D 0) (D 1))=0 := by
  obtain ⟨D,hD,hH,hd,hm⟩ := quartet_has_maximal_phase_edge hB
  rcases maximal_strict_or_zero hH with hpos|hz
  · left
    obtain ⟨x,hx,hphase⟩ := unit_carrier_seed_in_root (phaseOverlap (D 0) (D 1))
      (phaseOverlap_norm_one (hD.2 0 1 (by decide)))
    exact ⟨x,⟨D,hD,hH,hd,hm,hpos,hphase⟩,hx⟩
  · exact Or.inr ⟨D,hD,hH,hd,hm,hz⟩

/-- No complete forest or zero-R proof is supplied by this assembly theorem.
Numerical job completion cannot fill either typed argument. -/
theorem noFour_of_strict_forest_and_zero
    (zero_excluded : ZeroMaximalQuartetsExcluded)
    (tree : CertifiedTree StrictMaximalPopulation (radianRoot 4))
    (closed : tree.frontier=[]) : NoFourMUB6 := by
  rintro ⟨B,hB⟩
  rcases quartet_reaches_strict_or_zero hB with hs|hz
  · exact tree.empty_excludes closed hs
  · obtain ⟨D,hD,hH,hd,hm,hzero⟩ := hz
    exact zero_excluded D hD hH hd hm hzero

end ExactMeanChecker20261006
#print axioms ExactMeanChecker20261006.quartet_reaches_strict_or_zero
#print axioms ExactMeanChecker20261006.noFour_of_strict_forest_and_zero
#print ExactMeanChecker20261006.noFour_of_strict_forest_and_zero
