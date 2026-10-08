import SeedPhaseTape

/- Only arithmetic acceptance; no split or erasure check. -/
set_option autoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 8000000
namespace Seed0024PhaseCore20261007.Leaf8Centre385Group35

theorem checked :
    let pending : List CellCode := [childCell (childCell (ordinalCellCode 2241383) 22) 0, childCell (childCell (ordinalCellCode 2241383) 22) 1, childCell (childCell (ordinalCellCode 2241383) 22) 2, childCell (childCell (ordinalCellCode 2241383) 22) 3, childCell (childCell (ordinalCellCode 2241383) 22) 4, childCell (childCell (ordinalCellCode 2241383) 22) 5, childCell (childCell (ordinalCellCode 2241383) 22) 6, childCell (childCell (ordinalCellCode 2241383) 22) 7]
    let tags : List WitnessTag := [.endpoint 4 190746942, .accept 0, .midpoint 4, .endpoint 4 190814952, .midpoint 4, .endpoint 4 191088876, .midpoint 4, .midpoint 4]
    checkWitnessTape pending tags = true := by
  decide +kernel

#print axioms checked
end Seed0024PhaseCore20261007.Leaf8Centre385Group35
