import SeedPhaseTape

/- Only arithmetic acceptance; no split or erasure check. -/
set_option autoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 8000000
namespace Seed0024PhaseCore20261007.Leaf8Centre385Group04

theorem checked :
    let pending : List CellCode := [childCell (childCell (ordinalCellCode 2241383) 4) 24, childCell (childCell (ordinalCellCode 2241383) 4) 25, childCell (childCell (ordinalCellCode 2241383) 4) 26, childCell (childCell (ordinalCellCode 2241383) 4) 27, childCell (childCell (ordinalCellCode 2241383) 4) 28, childCell (childCell (ordinalCellCode 2241383) 4) 29, childCell (childCell (ordinalCellCode 2241383) 4) 30, childCell (childCell (ordinalCellCode 2241383) 4) 31]
    let tags : List WitnessTag := [.midpoint 1, .endpoint 1 137367736, .midpoint 1, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1]
    checkWitnessTape pending tags = true := by
  decide +kernel

#print axioms checked
end Seed0024PhaseCore20261007.Leaf8Centre385Group04
