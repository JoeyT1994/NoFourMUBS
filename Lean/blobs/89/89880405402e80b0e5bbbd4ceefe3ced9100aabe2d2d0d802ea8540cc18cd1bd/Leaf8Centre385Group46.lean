import SeedPhaseTape

/- Only arithmetic acceptance; no split or erasure check. -/
set_option autoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 8000000
namespace Seed0024PhaseCore20261007.Leaf8Centre385Group46

theorem checked :
    let pending : List CellCode := [childCell (childCell (ordinalCellCode 2241383) 28) 8, childCell (childCell (ordinalCellCode 2241383) 28) 9, childCell (childCell (ordinalCellCode 2241383) 28) 10, childCell (childCell (ordinalCellCode 2241383) 28) 11, childCell (childCell (ordinalCellCode 2241383) 28) 12, childCell (childCell (ordinalCellCode 2241383) 28) 13, childCell (childCell (ordinalCellCode 2241383) 28) 14, childCell (childCell (ordinalCellCode 2241383) 28) 15]
    let tags : List WitnessTag := [.endpoint 0 188280338, .midpoint 1, .midpoint 1, .midpoint 1, .endpoint 0 191659395, .endpoint 0 190853557, .midpoint 1, .midpoint 1]
    checkWitnessTape pending tags = true := by
  decide +kernel

#print axioms checked
end Seed0024PhaseCore20261007.Leaf8Centre385Group46
