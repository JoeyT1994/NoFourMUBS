import SeedPhaseTape

/- Same frozen385 witness; one bounded group, at most32 arithmetic leaves. -/
set_option autoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 8000000
namespace Seed0024PhaseCore20261007.Compact385Group14

theorem checked_and_erased :
    let pending : List CellCode := [childCell (ordinalCellCode 2241383) 22]
    let tags : List WitnessTag := [
      .split,
      .endpoint 4 190746942,
      .accept 0,
      .midpoint 4,
      .endpoint 4 190814952,
      .midpoint 4,
      .endpoint 4 191088876,
      .midpoint 4,
      .midpoint 4,
      .accept 0,
      .accept 0,
      .midpoint 4,
      .accept 0,
      .endpoint 1 138210844,
      .accept 0,
      .midpoint 4,
      .midpoint 4,
      .accept 0,
      .accept 0,
      .endpoint 4 190945512,
      .accept 0,
      .endpoint 2 137498916,
      .accept 0,
      .midpoint 4,
      .endpoint 4 191314646,
      .accept 0,
      .accept 0,
      .accept 0,
      .accept 0,
      .accept 0,
      .accept 0,
      .midpoint 4,
      .accept 0]
    checkWitnessTape pending tags = true ∧ eraseTape tags = [54, 4, 6, 4, 4, 4, 4, 4, 4, 6, 6, 4, 6, 1, 6, 4, 4, 6, 6, 4, 6, 2, 6, 4, 4, 6, 6, 6, 6, 6, 6, 4, 6] := by
  decide +kernel

#print axioms checked_and_erased
end Seed0024PhaseCore20261007.Compact385Group14
