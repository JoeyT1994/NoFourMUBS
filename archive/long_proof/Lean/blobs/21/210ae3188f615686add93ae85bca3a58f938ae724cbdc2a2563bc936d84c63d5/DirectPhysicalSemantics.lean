import CoreLabelBridge
import SeedWitnessSemanticInduction

/-! Direct physical interpretation of the exact typed tape.
The domain is literally the six-column ClosedPhaseDomain formula.
No byte-tape transport or final 36-box exclusion proof is imported. -/
set_option autoImplicit false
open Seed0024PhaseCore20261007 Seed0024PhaseCoreBridge20261007
open Seed0024ClusterTube20261007 Seed0024ClusterTubeTable20261007
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
