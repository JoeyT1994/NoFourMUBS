import SeedPhaseTape

/- Same frozen385 witness; one bounded group, at most32 arithmetic leaves. -/
set_option autoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 8000000
namespace Seed0024PhaseCore20261007.Compact385Group07

theorem checked_and_erased :
    let pending : List CellCode := [childCell (ordinalCellCode 2241383) 10]
    let tags : List WitnessTag := [
      .split,
      .midpoint 1,
      .accept 0,
      .endpoint 1 138222005,
      .accept 0,
      .midpoint 1,
      .midpoint 1,
      .midpoint 1,
      .endpoint 1 138339692,
      .midpoint 1,
      .midpoint 1,
      .midpoint 1,
      .endpoint 1 137926208,
      .midpoint 1,
      .midpoint 1,
      .midpoint 1,
      .midpoint 1,
      .accept 0,
      .accept 0,
      .endpoint 5 139308934,
      .accept 0,
      .midpoint 1,
      .accept 0,
      .accept 0,
      .accept 0,
      .midpoint 1,
      .accept 0,
      .endpoint 1 138217599,
      .endpoint 5 139732957,
      .midpoint 1,
      .midpoint 1,
      .midpoint 1,
      .accept 0]
    checkWitnessTape pending tags = true ∧ eraseTape tags = [54, 1, 6, 1, 6, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, 6, 5, 6, 1, 6, 6, 6, 1, 6, 1, 5, 1, 1, 1, 6] := by
  decide +kernel

#print axioms checked_and_erased
end Seed0024PhaseCore20261007.Compact385Group07
