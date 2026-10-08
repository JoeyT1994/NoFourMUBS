import SeedPhaseTape

/- Same frozen385 witness; one bounded group, at most32 arithmetic leaves. -/
set_option autoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 8000000
namespace Seed0024PhaseCore20261007.Compact385Group18

theorem checked_and_erased :
    let pending : List CellCode := [childCell (ordinalCellCode 2241383) 28]
    let tags : List WitnessTag := [
      .split,
      .midpoint 1,
      .midpoint 1,
      .midpoint 1,
      .accept 0,
      .endpoint 0 189903327,
      .endpoint 0 188946864,
      .midpoint 1,
      .midpoint 1,
      .endpoint 0 188280338,
      .midpoint 1,
      .midpoint 1,
      .midpoint 1,
      .endpoint 0 191659395,
      .endpoint 0 190853557,
      .midpoint 1,
      .midpoint 1,
      .midpoint 0,
      .endpoint 0 190691459,
      .accept 0,
      .accept 0,
      .midpoint 0,
      .midpoint 0,
      .endpoint 0 189720306,
      .endpoint 0 188660289,
      .midpoint 0,
      .midpoint 0,
      .midpoint 1,
      .accept 0,
      .midpoint 0,
      .midpoint 0,
      .endpoint 0 191376882,
      .endpoint 0 190468196]
    checkWitnessTape pending tags = true ∧ eraseTape tags = [54, 1, 1, 1, 6, 0, 0, 1, 1, 0, 1, 1, 1, 0, 0, 1, 1, 0, 0, 6, 6, 0, 0, 0, 0, 0, 0, 1, 6, 0, 0, 0, 0] := by
  decide +kernel

#print axioms checked_and_erased
end Seed0024PhaseCore20261007.Compact385Group18
