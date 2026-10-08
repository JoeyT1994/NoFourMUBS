import SeedPhaseTape

/- Same frozen385 witness; one bounded group, at most32 arithmetic leaves. -/
set_option autoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 8000000
namespace Seed0024PhaseCore20261007.Compact385Group03

theorem checked_and_erased :
    let pending : List CellCode := [childCell (ordinalCellCode 2241383) 6]
    let tags : List WitnessTag := [
      .split,
      .endpoint 1 137305337,
      .midpoint 4,
      .midpoint 4,
      .midpoint 4,
      .midpoint 1,
      .endpoint 1 137967686,
      .midpoint 1,
      .midpoint 4,
      .midpoint 1,
      .midpoint 1,
      .midpoint 1,
      .midpoint 4,
      .midpoint 1,
      .midpoint 1,
      .midpoint 1,
      .midpoint 1,
      .midpoint 4,
      .endpoint 4 190409113,
      .midpoint 4,
      .midpoint 4,
      .endpoint 1 138398846,
      .midpoint 4,
      .midpoint 4,
      .midpoint 4,
      .endpoint 1 137281071,
      .accept 0,
      .midpoint 4,
      .midpoint 4,
      .midpoint 1,
      .endpoint 1 137925253,
      .midpoint 1,
      .midpoint 4]
    checkWitnessTape pending tags = true ∧ eraseTape tags = [54, 1, 4, 4, 4, 1, 1, 1, 4, 1, 1, 1, 4, 1, 1, 1, 1, 4, 4, 4, 4, 1, 4, 4, 4, 1, 6, 4, 4, 1, 1, 1, 4] := by
  decide +kernel

#print axioms checked_and_erased
end Seed0024PhaseCore20261007.Compact385Group03
