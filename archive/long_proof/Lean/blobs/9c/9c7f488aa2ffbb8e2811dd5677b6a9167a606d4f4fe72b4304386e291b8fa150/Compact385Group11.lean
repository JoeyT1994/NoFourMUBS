import SeedPhaseTape

/- Same frozen385 witness; one bounded group, at most32 arithmetic leaves. -/
set_option autoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 8000000
namespace Seed0024PhaseCore20261007.Compact385Group11

theorem checked_and_erased :
    let pending : List CellCode := [childCell (ordinalCellCode 2241383) 15, childCell (ordinalCellCode 2241383) 16, childCell (ordinalCellCode 2241383) 17, childCell (ordinalCellCode 2241383) 18, childCell (ordinalCellCode 2241383) 19]
    let tags : List WitnessTag := [
      .accept 0,
      .accept 0,
      .accept 0,
      .accept 0,
      .accept 0]
    checkWitnessTape pending tags = true ∧ eraseTape tags = [6, 6, 6, 6, 6] := by
  decide +kernel

#print axioms checked_and_erased
end Seed0024PhaseCore20261007.Compact385Group11
