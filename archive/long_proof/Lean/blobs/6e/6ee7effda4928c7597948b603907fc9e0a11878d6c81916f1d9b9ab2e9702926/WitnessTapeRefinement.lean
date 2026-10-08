import SeedPhaseTape
import CoreCellBridge
import PhaseTape
import Mathlib.Tactic.FinCases

/-! A typed witness tape refines the existing byte-tape verifier. The three
arithmetic refinement fields are explicit here and must be proved for the
actual checker before this generic theorem is used for physical coverage.
No table, leaf certificate, ordinal interval or full forest is asserted. -/
set_option autoImplicit false
set_option maxRecDepth 16384
set_option maxHeartbeats 1500000

namespace Seed0024PhaseTapeBridge20261007

open Seed0024PhaseCore20261007 Seed0024PhaseCoreBridge20261007

structure LeafRefinement
    (checks : Seed0024ClusterTubeCover20261007.LeafChecks 48) : Prop where
  midpoint : ∀ (s : CellCode) (k : Column), midpointReject s k = true →
    checks.reject (toPhaseCell s) k = true
  endpoint : ∀ (s : CellCode) (k : Column) (r : Nat), endpointReject s k r = true →
    checks.reject (toPhaseCell s) k = true
  inclusion : ∀ (s : CellCode) (label : Label), labelAccept s label = true →
    checks.accept (toPhaseCell s) label = true

theorem erase_midpoint_value (k : Column) :
    (eraseTag (.midpoint k)).toNat = k.val := by
  fin_cases k <;> rfl
#print axioms erase_midpoint_value

theorem erase_endpoint_value (k : Column) (r : Nat) :
    (eraseTag (.endpoint k r)).toNat = k.val := by
  change (eraseTag (.midpoint k)).toNat = k.val
  exact erase_midpoint_value k
#print axioms erase_endpoint_value

theorem erase_accept_value (label : Label) :
    (eraseTag (.accept label)).toNat = 6 + label.val := by
  fin_cases label <;> rfl
#print axioms erase_accept_value

theorem erase_split_value : (eraseTag .split).toNat = 54 := rfl
#print axioms erase_split_value

theorem map_childList (s : CellCode) :
    (childList s).map toPhaseCell =
      Seed0024ClusterTubeCover20261007.childList (toPhaseCell s) := by
  simp only [childList, Seed0024ClusterTubeCover20261007.childList, List.map_ofFn] <;> rfl
#print axioms map_childList

theorem byte_rejection_step
    (checks : Seed0024ClusterTubeCover20261007.LeafChecks 48)
    (s : Seed0024ClusterTubeCover20261007.Cell)
    (pending : List Seed0024ClusterTubeCover20261007.Cell)
    (tag : UInt8) (tags : List UInt8) (k : Column)
    (htag : tag.toNat = k.val) :
    Seed0024ClusterTubeCover20261007.checkTape checks (s :: pending) (tag :: tags) =
      (Seed0024ClusterTubeCover20261007.validCheck s && checks.reject s k &&
        Seed0024ClusterTubeCover20261007.checkTape checks pending tags) := by
  have h6 : tag.toNat < 6 := by rw [htag]; exact k.isLt
  have hk : (⟨tag.toNat, h6⟩ : Fin 6) = k := Fin.ext htag
  simp only [Seed0024ClusterTubeCover20261007.checkTape, dif_pos h6, hk]
#print axioms byte_rejection_step

theorem byte_inclusion_step
    (checks : Seed0024ClusterTubeCover20261007.LeafChecks 48)
    (s : Seed0024ClusterTubeCover20261007.Cell)
    (pending : List Seed0024ClusterTubeCover20261007.Cell)
    (tag : UInt8) (tags : List UInt8) (label : Label)
    (htag : tag.toNat = 6 + label.val) :
    Seed0024ClusterTubeCover20261007.checkTape checks (s :: pending) (tag :: tags) =
      (Seed0024ClusterTubeCover20261007.validCheck s && checks.accept s label &&
        Seed0024ClusterTubeCover20261007.checkTape checks pending tags) := by
  have hl := label.isLt
  have h6 : ¬ tag.toNat < 6 := by omega
  have h54 : tag.toNat < 54 := by omega
  have hlabel : (⟨tag.toNat - 6, by omega⟩ : Fin 48) = label := by
    apply Fin.ext
    dsimp
    omega
  simp only [Seed0024ClusterTubeCover20261007.checkTape,
    dif_neg h6, dif_pos h54, hlabel]
#print axioms byte_inclusion_step

theorem byte_split_step
    (checks : Seed0024ClusterTubeCover20261007.LeafChecks 48)
    (s : Seed0024ClusterTubeCover20261007.Cell)
    (pending : List Seed0024ClusterTubeCover20261007.Cell)
    (tag : UInt8) (tags : List UInt8) (htag : tag.toNat = 54) :
    Seed0024ClusterTubeCover20261007.checkTape checks (s :: pending) (tag :: tags) =
      (Seed0024ClusterTubeCover20261007.validCheck s && decide (s.level < 7) &&
        Seed0024ClusterTubeCover20261007.checkTape checks
          (Seed0024ClusterTubeCover20261007.childList s ++ pending) tags) := by
  have h6 : ¬ tag.toNat < 6 := by omega
  have h54 : ¬ tag.toNat < 54 := by omega
  simp only [Seed0024ClusterTubeCover20261007.checkTape,
    dif_neg h6, dif_neg h54, if_pos htag]
#print axioms byte_split_step

/-- Successful typed tapes consume the entire same ordered pending forest
and refine to successful byte tapes. In particular no suffix or missing child
can be ignored: both empty-list cases are inherited exactly. -/
theorem checkWitnessTape_refines
    (checks : Seed0024ClusterTubeCover20261007.LeafChecks 48)
    (hrefine : LeafRefinement checks)
    (pending : List CellCode) (tags : List WitnessTag)
    (hcheck : checkWitnessTape pending tags = true) :
    Seed0024ClusterTubeCover20261007.checkTape checks
      (pending.map toPhaseCell) (eraseTape tags) = true := by
  induction tags generalizing pending with
  | nil =>
      cases pending with
      | nil => rfl
      | cons s pending => simp only [checkWitnessTape, Bool.false_eq_true] at hcheck
  | cons tag tags ih =>
      cases pending with
      | nil => simp only [checkWitnessTape, Bool.false_eq_true] at hcheck
      | cons s pending =>
          cases tag with
          | midpoint k =>
              have hh : (validCheck s = true ∧ midpointReject s k = true) ∧
                  checkWitnessTape pending tags = true := by
                simpa only [checkWitnessTape, Bool.and_eq_true] using hcheck
              change Seed0024ClusterTubeCover20261007.checkTape checks
                (toPhaseCell s :: pending.map toPhaseCell)
                (eraseTag (.midpoint k) :: eraseTape tags) = true
              rw [byte_rejection_step checks _ _ _ _ k (erase_midpoint_value k)]
              simp only [Bool.and_eq_true]
              exact ⟨⟨(validCheck_eq s) ▸ hh.1.1, hrefine.midpoint s k hh.1.2⟩,
                ih pending hh.2⟩
          | endpoint k r =>
              have hh : (validCheck s = true ∧ endpointReject s k r = true) ∧
                  checkWitnessTape pending tags = true := by
                simpa only [checkWitnessTape, Bool.and_eq_true] using hcheck
              change Seed0024ClusterTubeCover20261007.checkTape checks
                (toPhaseCell s :: pending.map toPhaseCell)
                (eraseTag (.endpoint k r) :: eraseTape tags) = true
              rw [byte_rejection_step checks _ _ _ _ k (erase_endpoint_value k r)]
              simp only [Bool.and_eq_true]
              exact ⟨⟨(validCheck_eq s) ▸ hh.1.1, hrefine.endpoint s k r hh.1.2⟩,
                ih pending hh.2⟩
          | accept label =>
              have hh : (validCheck s = true ∧ labelAccept s label = true) ∧
                  checkWitnessTape pending tags = true := by
                simpa only [checkWitnessTape, Bool.and_eq_true] using hcheck
              change Seed0024ClusterTubeCover20261007.checkTape checks
                (toPhaseCell s :: pending.map toPhaseCell)
                (eraseTag (.accept label) :: eraseTape tags) = true
              rw [byte_inclusion_step checks _ _ _ _ label (erase_accept_value label)]
              simp only [Bool.and_eq_true]
              exact ⟨⟨(validCheck_eq s) ▸ hh.1.1, hrefine.inclusion s label hh.1.2⟩,
                ih pending hh.2⟩
          | split =>
              have hh : (validCheck s = true ∧ decide (s.level < 7) = true) ∧
                  checkWitnessTape (childList s ++ pending) tags = true := by
                simpa only [checkWitnessTape, Bool.and_eq_true] using hcheck
              have htail := ih (childList s ++ pending) hh.2
              rw [List.map_append, map_childList] at htail
              change Seed0024ClusterTubeCover20261007.checkTape checks
                (toPhaseCell s :: pending.map toPhaseCell)
                (eraseTag .split :: eraseTape tags) = true
              rw [byte_split_step checks _ _ _ _ erase_split_value]
              simp only [Bool.and_eq_true]
              exact ⟨⟨(validCheck_eq s) ▸ hh.1.1, hh.1.2⟩, htail⟩
#print axioms checkWitnessTape_refines

theorem checkWitnessTape_pendingCovered
    (checks : Seed0024ClusterTubeCover20261007.LeafChecks 48)
    (hrefine : LeafRefinement checks)
    (Feasible : Seed0024ClusterTubeCover20261007.Turns → Prop)
    (LabelMem : Fin 48 → Seed0024ClusterTubeCover20261007.Turns → Prop)
    (hsound : Seed0024ClusterTubeCover20261007.LeafSound checks Feasible LabelMem)
    (pending : List CellCode) (tags : List WitnessTag)
    (hcheck : checkWitnessTape pending tags = true) :
    Seed0024ClusterTubeCover20261007.PendingCovered Feasible LabelMem
      (pending.map toPhaseCell) :=
  Seed0024ClusterTubeCover20261007.checkTape_sound checks Feasible LabelMem hsound
    (eraseTape tags) (pending.map toPhaseCell)
    (checkWitnessTape_refines checks hrefine pending tags hcheck)
#print axioms checkWitnessTape_pendingCovered

theorem checked_witness_tapes_cover_unit_cube {S : Type*}
    (checks : Seed0024ClusterTubeCover20261007.LeafChecks 48)
    (hrefine : LeafRefinement checks)
    (Feasible : Seed0024ClusterTubeCover20261007.Turns → Prop)
    (LabelMem : Fin 48 → Seed0024ClusterTubeCover20261007.Turns → Prop)
    (hsound : Seed0024ClusterTubeCover20261007.LeafSound checks Feasible LabelMem)
    (pending : S → List CellCode) (tags : S → List WitnessTag)
    (hchecks : ∀ s, checkWitnessTape (pending s) (tags s) = true)
    (hroots : ∀ r : Seed0024ClusterTubeCover20261007.RootIndex,
      ∃ s, Seed0024ClusterTubeCover20261007.rootCell r ∈ (pending s).map toPhaseCell) :
    ∀ theta, Seed0024ClusterTubeCover20261007.UnitCube theta →
      Feasible theta → ∃ k, LabelMem k theta := by
  exact Seed0024ClusterTubeCover20261007.checked_tapes_cover_unit_cube checks
    Feasible LabelMem hsound (fun s => (pending s).map toPhaseCell)
    (fun s => eraseTape (tags s))
    (fun s => checkWitnessTape_refines checks hrefine (pending s) (tags s) (hchecks s))
    hroots
#print axioms checked_witness_tapes_cover_unit_cube

end Seed0024PhaseTapeBridge20261007
