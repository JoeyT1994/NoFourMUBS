import SeedPhaseTape

/- Same frozen385 witness; one bounded group, at most32 arithmetic leaves. -/
set_option autoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 8000000
namespace Seed0024PhaseCore20261007.Compact385Group08

theorem checked_and_erased :
    let pending : List CellCode := [childCell (ordinalCellCode 2241383) 11, childCell (ordinalCellCode 2241383) 12]
    let tags : List WitnessTag := [
      .accept 0,
      .midpoint 1]
    checkWitnessTape pending tags = true ∧ eraseTape tags = [6, 1] := by
  decide +kernel

#print axioms checked_and_erased
end Seed0024PhaseCore20261007.Compact385Group08
