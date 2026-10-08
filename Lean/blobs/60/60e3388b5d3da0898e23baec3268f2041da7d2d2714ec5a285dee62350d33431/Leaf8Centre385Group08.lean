import SeedPhaseTape

/- Only arithmetic acceptance; no split or erasure check. -/
set_option autoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 8000000
namespace Seed0024PhaseCore20261007.Leaf8Centre385Group08

theorem checked :
    let pending : List CellCode := [childCell (childCell (ordinalCellCode 2241383) 6) 16, childCell (childCell (ordinalCellCode 2241383) 6) 17, childCell (childCell (ordinalCellCode 2241383) 6) 18, childCell (childCell (ordinalCellCode 2241383) 6) 19, childCell (childCell (ordinalCellCode 2241383) 6) 20, childCell (childCell (ordinalCellCode 2241383) 6) 21, childCell (childCell (ordinalCellCode 2241383) 6) 22, childCell (childCell (ordinalCellCode 2241383) 6) 23]
    let tags : List WitnessTag := [.midpoint 4, .endpoint 4 190409113, .midpoint 4, .midpoint 4, .endpoint 1 138398846, .midpoint 4, .midpoint 4, .midpoint 4]
    checkWitnessTape pending tags = true := by
  decide +kernel

#print axioms checked
end Seed0024PhaseCore20261007.Leaf8Centre385Group08
