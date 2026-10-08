import SeedPhaseTape

/- Same frozen385 witness; one bounded group, at most32 arithmetic leaves. -/
set_option autoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 8000000
namespace Seed0024PhaseCore20261007.Compact385Group17

theorem checked_and_erased :
    let pending : List CellCode := [childCell (ordinalCellCode 2241383) 25, childCell (ordinalCellCode 2241383) 26, childCell (ordinalCellCode 2241383) 27]
    let tags : List WitnessTag := [
      .accept 0,
      .accept 0,
      .accept 0]
    checkWitnessTape pending tags = true ∧ eraseTape tags = [6, 6, 6] := by
  decide +kernel

#print axioms checked_and_erased
end Seed0024PhaseCore20261007.Compact385Group17
