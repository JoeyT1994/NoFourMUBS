import SeedPhaseTape

/- Same frozen385 witness; one bounded group, at most32 arithmetic leaves. -/
set_option autoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 8000000
namespace Seed0024PhaseCore20261007.Compact385Group20

theorem checked_and_erased :
    let pending : List CellCode := [childCell (ordinalCellCode 2241383) 30]
    let tags : List WitnessTag := [
      .split,
      .endpoint 1 137099235,
      .accept 0,
      .accept 0,
      .accept 0,
      .midpoint 1,
      .endpoint 1 137725090,
      .midpoint 1,
      .endpoint 4 190769906,
      .midpoint 1,
      .midpoint 1,
      .midpoint 1,
      .accept 0,
      .midpoint 1,
      .midpoint 1,
      .midpoint 1,
      .midpoint 1,
      .accept 0,
      .accept 0,
      .endpoint 5 138727926,
      .accept 0,
      .endpoint 1 137845679,
      .accept 0,
      .endpoint 4 190912587,
      .accept 0,
      .midpoint 1,
      .accept 0,
      .midpoint 5,
      .endpoint 5 139535942,
      .midpoint 1,
      .endpoint 1 137367876,
      .midpoint 1,
      .accept 0]
    checkWitnessTape pending tags = true ∧ eraseTape tags = [54, 1, 6, 6, 6, 1, 1, 1, 4, 1, 1, 1, 6, 1, 1, 1, 1, 6, 6, 5, 6, 1, 6, 4, 6, 1, 6, 5, 5, 1, 1, 1, 6] := by
  decide +kernel

#print axioms checked_and_erased
end Seed0024PhaseCore20261007.Compact385Group20
