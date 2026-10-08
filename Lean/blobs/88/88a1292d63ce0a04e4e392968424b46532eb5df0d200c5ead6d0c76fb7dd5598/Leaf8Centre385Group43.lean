import SeedPhaseTape

/- Only arithmetic acceptance; no split or erasure check. -/
set_option autoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 8000000
namespace Seed0024PhaseCore20261007.Leaf8Centre385Group43

theorem checked :
    let pending : List CellCode := [childCell (childCell (ordinalCellCode 2241383) 24) 24, childCell (childCell (ordinalCellCode 2241383) 24) 25, childCell (childCell (ordinalCellCode 2241383) 24) 26, childCell (childCell (ordinalCellCode 2241383) 24) 27, childCell (childCell (ordinalCellCode 2241383) 24) 28, childCell (childCell (ordinalCellCode 2241383) 24) 29, childCell (childCell (ordinalCellCode 2241383) 24) 30, childCell (childCell (ordinalCellCode 2241383) 24) 31]
    let tags : List WitnessTag := [.midpoint 3, .midpoint 3, .midpoint 3, .endpoint 3 190834161, .endpoint 0 189820161, .endpoint 0 188707005, .midpoint 3, .accept 0]
    checkWitnessTape pending tags = true := by
  decide +kernel

#print axioms checked
end Seed0024PhaseCore20261007.Leaf8Centre385Group43
