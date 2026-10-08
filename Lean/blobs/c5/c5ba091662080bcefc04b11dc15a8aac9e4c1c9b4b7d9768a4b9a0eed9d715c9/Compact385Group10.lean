import SeedPhaseTape

/- Same frozen385 witness; one bounded group, at most32 arithmetic leaves. -/
set_option autoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 8000000
namespace Seed0024PhaseCore20261007.Compact385Group10

theorem checked_and_erased :
    let pending : List CellCode := [childCell (ordinalCellCode 2241383) 14]
    let tags : List WitnessTag := [
      .split,
      .midpoint 1,
      .midpoint 1,
      .midpoint 1,
      .midpoint 1,
      .midpoint 1,
      .midpoint 1,
      .midpoint 1,
      .midpoint 1,
      .midpoint 1,
      .midpoint 1,
      .midpoint 1,
      .midpoint 1,
      .midpoint 1,
      .midpoint 1,
      .midpoint 1,
      .midpoint 1,
      .midpoint 1,
      .midpoint 1,
      .midpoint 1,
      .accept 0,
      .midpoint 1,
      .midpoint 1,
      .midpoint 1,
      .midpoint 1,
      .midpoint 1,
      .midpoint 1,
      .midpoint 1,
      .midpoint 1,
      .midpoint 1,
      .midpoint 1,
      .midpoint 1,
      .midpoint 1]
    checkWitnessTape pending tags = true ∧ eraseTape tags = [54, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1] := by
  decide +kernel

#print axioms checked_and_erased
end Seed0024PhaseCore20261007.Compact385Group10
