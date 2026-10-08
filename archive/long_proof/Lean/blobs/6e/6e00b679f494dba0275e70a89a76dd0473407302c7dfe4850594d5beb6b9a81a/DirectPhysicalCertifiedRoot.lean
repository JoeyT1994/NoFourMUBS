import CoreScalarBridge
import SquareBallLabelNoInit
import SeedWitnessSemanticInduction
import CoreTableBridge
import CoreDataEqualitiesSplit
import PureCentre385Compositional

/-! Split of the exact leaf bridge, preserving every data premise and predicate. -/
set_option autoImplicit false
open Seed0024PhaseCore20261007 Seed0024ClusterTube20261007
open Seed0024ClusterTubeTable20261007
open Seed0024PhaseCoreBridge20261007
namespace Seed0024DirectLabel20261007

def CentresRepresent : Prop :=
  ∀ (label : Label) (i : Fin 5),
    centreEntry label i = Seed0024ClusterTube20261007.roundedCentreCoordinates label i

theorem labelLower_eq_square (level : Nat) :
    labelLower level = squareBallLower level := rfl
#print axioms labelLower_eq_square

theorem labelProducts_eq_ball (table : SupplierTable) (h : TableRepresents table)
    (hc : CentresRepresent) (s : CellCode) (label : Label) (i : Fin 5) :
    labelProducts s label i = ballLabelProducts table (toPhaseCell s) label i := by
  unfold labelProducts ballLabelProducts
  rw [conjugateProductQuotient_eq_integerConjProductQuotient,
    hc label i, midpointEntry_eq_leaf table h]
#print axioms labelProducts_eq_ball

theorem labelPair_eq_ball (table : SupplierTable) (h : TableRepresents table)
    (hc : CentresRepresent) (s : CellCode) (label : Label) :
    labelPair s label = ballLabelSum table (toPhaseCell s) label := by
  unfold labelPair ballLabelSum
  rw [fiveSumWithQ_eq_integerFiveSum]
  exact congrArg (integerFiveSum 67108864)
    (funext (fun i => labelProducts_eq_ball table h hc s label i))
#print axioms labelPair_eq_ball

theorem labelAccept_eq_square (table : SupplierTable) (h : TableRepresents table)
    (hc : CentresRepresent) (s : CellCode) (label : Label) :
    labelAccept s label = squareBallLabelCheck table (toPhaseCell s) label := by
  simp only [labelAccept, squareBallLabelCheck, labelLower_eq_square,
    labelPair_eq_ball table h hc, pairSquare_eq_integerPairSquare]
  rfl
#print axioms labelAccept_eq_square


end Seed0024DirectLabel20261007


/-! Direct physical interpretation of the exact typed tape.
The domain is literally the six-column ClosedPhaseDomain formula.
No byte-tape transport or final 36-box exclusion proof is imported. -/
set_option autoImplicit false
open Seed0024PhaseCore20261007 Seed0024PhaseCoreBridge20261007
open Seed0024ClusterTube20261007 Seed0024ClusterTubeTable20261007
open Seed0024DirectLabel20261007
namespace Seed0024DirectPhysical20261007

def leafFeasible (theta : Seed0024ClusterTubeCover20261007.Turns) : Prop :=
  ∀ k : Fin 6, |‖phaseSum (fourierTarget theta k)‖ - Real.sqrt 6| ≤ (1 : ℝ) / 5

def coveredCell (s : CellCode) : Prop :=
  ∀ theta, Seed0024ClusterTubeCover20261007.MemCell (toPhaseCell s) theta →
    leafFeasible theta → ∃ k : Fin 48, centreProjectorLabel k (turnRay theta)

theorem physical_rules (table : SupplierTable) (hTable : SupplierNeededTableSound table)
    (h : TableRepresents table) (hc : CentresRepresent) :
    WitnessSemanticRules coveredCell := by
  constructor
  · intro s k hv hm theta ht hf
    have hs : s.level ≤ 7 := (of_decide_eq_true hv : Valid s).1
    have he : squareMidpointRejectCheck table (toPhaseCell s) k = true :=
      (midpointReject_eq_square table h s k).symm.trans hm
    exact False.elim (squareMidpointRejectCheck_sound table hTable
      (toPhaseCell s) hs k theta ht he (hf k))
  · intro s k r hv hm theta ht hf
    have hs : s.level ≤ 7 := (of_decide_eq_true hv : Valid s).1
    have he : squareEndpointRejectCheck table (toPhaseCell s) k r = true :=
      (endpointReject_eq_square table h s k r).symm.trans hm
    exact False.elim (squareEndpointRejectCheck_sound table hTable
      (toPhaseCell s) hs k r theta ht he (hf k))
  · intro s label hv hm theta ht hf
    have he : squareBallLabelCheck table (toPhaseCell s) label = true :=
      (labelAccept_eq_square table h hc s label).symm.trans hm
    exact ⟨label, squareBallLabelCheck_sound table hTable (toPhaseCell s) label theta ht he⟩
  · intro s hv hl hh theta ht hf
    obtain ⟨m, hm⟩ := Seed0024ClusterTubeCover20261007.all_children_cover (toPhaseCell s) theta ht
    have hmemb : childCell s m ∈ childList s := List.mem_ofFn.mpr ⟨m, rfl⟩
    exact hh (childCell s m) hmemb theta hm hf

#print axioms physical_rules

theorem accepted_pending_physical (table : SupplierTable)
    (hTable : SupplierNeededTableSound table) (h : TableRepresents table)
    (hc : CentresRepresent) (pending : List CellCode) (tags : List WitnessTag)
    (hcheck : checkWitnessTape pending tags = true) :
    ∀ s ∈ pending, coveredCell s :=
  checkWitnessTape_semantic_induction coveredCell (physical_rules table hTable h hc)
    pending tags hcheck

#print axioms accepted_pending_physical
end Seed0024DirectPhysical20261007

namespace Seed0024DirectPhysical20261007

theorem certified_pending_physical (pending : List CellCode) (tags : List WitnessTag)
    (hcheck : checkWitnessTape pending tags = true) :
    ∀ s ∈ pending, coveredCell s :=
  accepted_pending_physical compactSupplierTable compactSupplierTable_needed_accuracy
    tableEntry_eq centreEntry_eq pending tags hcheck

#print axioms certified_pending_physical

theorem certified_cell_physical (s : CellCode) (tags : List WitnessTag)
    (hcheck : checkWitnessTape [s] tags = true) : coveredCell s :=
  certified_pending_physical [s] tags hcheck s (by simp)

#print axioms certified_cell_physical

/-- One literal auxiliary five-phase root, not a physical T4 Hadamard box. -/
theorem root2241383_covered : coveredCell (ordinalCellCode 2241383) :=
  certified_cell_physical (ordinalCellCode 2241383)
    PureCentre385Compositional.tags_000 PureCentre385Compositional.checked

#print axioms root2241383_covered
end Seed0024DirectPhysical20261007
