import SeedPhaseTape

/- Same frozen385 witness; one bounded group, at most32 arithmetic leaves. -/
set_option autoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 8000000
namespace Seed0024PhaseCore20261007.Compact385Group12

theorem checked_and_erased :
    let pending : List CellCode := [childCell (ordinalCellCode 2241383) 20]
    let tags : List WitnessTag := [
      .split,
      .midpoint 2,
      .accept 0,
      .accept 0,
      .accept 0,
      .midpoint 2,
      .midpoint 2,
      .endpoint 2 138194020,
      .accept 0,
      .endpoint 1 137686082,
      .accept 0,
      .accept 0,
      .accept 0,
      .midpoint 1,
      .accept 0,
      .midpoint 1,
      .accept 0,
      .midpoint 2,
      .midpoint 2,
      .midpoint 2,
      .endpoint 2 139312885,
      .endpoint 0 190776340,
      .endpoint 0 189471737,
      .midpoint 2,
      .midpoint 2,
      .endpoint 0 189969633,
      .endpoint 0 188677691,
      .accept 0,
      .accept 0,
      .midpoint 0,
      .midpoint 0,
      .endpoint 2 138127825,
      .accept 0]
    checkWitnessTape pending tags = true ∧ eraseTape tags = [54, 2, 6, 6, 6, 2, 2, 2, 6, 1, 6, 6, 6, 1, 6, 1, 6, 2, 2, 2, 2, 0, 0, 2, 2, 0, 0, 6, 6, 0, 0, 2, 6] := by
  decide +kernel

#print axioms checked_and_erased
end Seed0024PhaseCore20261007.Compact385Group12
