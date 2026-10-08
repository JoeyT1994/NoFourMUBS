import SeedPhaseLeaves

/-! Pure streaming witness tape. A split always enqueues all 32 masks in the
same order as List.ofFn. A successful run consumes every pending cell and every
tag. Physical meaning requires the separate exact-refinement theorem. -/
namespace Seed0024PhaseCore20261007

def childList (s : CellCode) : List CellCode := List.ofFn (childCell s)

def checkWitnessTape : List CellCode → List WitnessTag → Bool
  | [], [] => true
  | _::_, [] => false
  | [], _::_ => false
  | s::pending, tag::tags =>
    match tag with
    | .split =>
      validCheck s && decide (s.level < 7) &&
        checkWitnessTape (childList s++pending) tags
    | .midpoint k =>
      validCheck s && midpointReject s k && checkWitnessTape pending tags
    | .endpoint k r =>
      validCheck s && endpointReject s k r && checkWitnessTape pending tags
    | .accept label =>
      validCheck s && labelAccept s label && checkWitnessTape pending tags

def eraseTape (tags : List WitnessTag) : List UInt8 := tags.map eraseTag

theorem check_empty : checkWitnessTape [] [] = true := rfl
#print axioms check_empty

theorem check_missing (s : CellCode) (pending : List CellCode) :
    checkWitnessTape (s::pending) [] = false := rfl
#print axioms check_missing

theorem check_extra (tag : WitnessTag) (tags : List WitnessTag) :
    checkWitnessTape [] (tag::tags) = false := rfl
#print axioms check_extra

theorem childList_length (s : CellCode) : (childList s).length = 32 := by
  simp [childList]
#print axioms childList_length

end Seed0024PhaseCore20261007
