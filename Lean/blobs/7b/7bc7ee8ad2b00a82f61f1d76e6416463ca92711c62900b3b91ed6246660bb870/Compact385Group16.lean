import SeedPhaseTape

/- Same frozen385 witness; one bounded group, at most32 arithmetic leaves. -/
set_option autoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 8000000
namespace Seed0024PhaseCore20261007.Compact385Group16

theorem checked_and_erased :
    let pending : List CellCode := [childCell (ordinalCellCode 2241383) 24]
    let tags : List WitnessTag := [
      .split,
      .endpoint 3 190752662,
      .accept 0,
      .endpoint 3 188972338,
      .accept 0,
      .midpoint 1,
      .accept 0,
      .accept 0,
      .accept 0,
      .midpoint 1,
      .endpoint 3 190798975,
      .midpoint 3,
      .endpoint 3 188943493,
      .midpoint 1,
      .midpoint 1,
      .midpoint 1,
      .accept 0,
      .midpoint 3,
      .accept 0,
      .endpoint 3 190937555,
      .accept 0,
      .endpoint 0 188364711,
      .accept 0,
      .accept 0,
      .accept 0,
      .midpoint 3,
      .midpoint 3,
      .midpoint 3,
      .endpoint 3 190834161,
      .endpoint 0 189820161,
      .endpoint 0 188707005,
      .midpoint 3,
      .accept 0]
    checkWitnessTape pending tags = true ∧ eraseTape tags = [54, 3, 6, 3, 6, 1, 6, 6, 6, 1, 3, 3, 3, 1, 1, 1, 6, 3, 6, 3, 6, 0, 6, 6, 6, 3, 3, 3, 3, 0, 0, 3, 6] := by
  decide +kernel

#print axioms checked_and_erased
end Seed0024PhaseCore20261007.Compact385Group16
