import SeedPhaseTape

/- Only arithmetic acceptance; no split or erasure check. -/
set_option autoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 8000000
namespace Seed0024PhaseCore20261007.Leaf8Centre385Group07

theorem checked :
    let pending : List CellCode := [childCell (childCell (ordinalCellCode 2241383) 6) 8, childCell (childCell (ordinalCellCode 2241383) 6) 9, childCell (childCell (ordinalCellCode 2241383) 6) 10, childCell (childCell (ordinalCellCode 2241383) 6) 11, childCell (childCell (ordinalCellCode 2241383) 6) 12, childCell (childCell (ordinalCellCode 2241383) 6) 13, childCell (childCell (ordinalCellCode 2241383) 6) 14, childCell (childCell (ordinalCellCode 2241383) 6) 15]
    let tags : List WitnessTag := [.midpoint 1, .midpoint 1, .midpoint 1, .midpoint 4, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1]
    checkWitnessTape pending tags = true := by
  decide +kernel

#print axioms checked
end Seed0024PhaseCore20261007.Leaf8Centre385Group07
