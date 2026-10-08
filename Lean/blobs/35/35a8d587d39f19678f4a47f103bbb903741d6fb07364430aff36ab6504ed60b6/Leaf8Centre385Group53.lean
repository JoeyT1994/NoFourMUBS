import SeedPhaseTape

/- Only arithmetic acceptance; no split or erasure check. -/
set_option autoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 8000000
namespace Seed0024PhaseCore20261007.Leaf8Centre385Group53

theorem checked :
    let pending : List CellCode := [childCell (childCell (ordinalCellCode 2241383) 30) 24, childCell (childCell (ordinalCellCode 2241383) 30) 25, childCell (childCell (ordinalCellCode 2241383) 30) 26, childCell (childCell (ordinalCellCode 2241383) 30) 27, childCell (childCell (ordinalCellCode 2241383) 30) 28, childCell (childCell (ordinalCellCode 2241383) 30) 29, childCell (childCell (ordinalCellCode 2241383) 30) 30, childCell (childCell (ordinalCellCode 2241383) 30) 31]
    let tags : List WitnessTag := [.midpoint 1, .accept 0, .midpoint 5, .endpoint 5 139535942, .midpoint 1, .endpoint 1 137367876, .midpoint 1, .accept 0]
    checkWitnessTape pending tags = true := by
  decide +kernel

#print axioms checked
end Seed0024PhaseCore20261007.Leaf8Centre385Group53
