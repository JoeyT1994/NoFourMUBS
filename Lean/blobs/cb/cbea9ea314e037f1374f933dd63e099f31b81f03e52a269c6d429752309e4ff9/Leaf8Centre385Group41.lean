import SeedPhaseTape

/- Only arithmetic acceptance; no split or erasure check. -/
set_option autoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 8000000
namespace Seed0024PhaseCore20261007.Leaf8Centre385Group41

theorem checked :
    let pending : List CellCode := [childCell (childCell (ordinalCellCode 2241383) 24) 8, childCell (childCell (ordinalCellCode 2241383) 24) 9, childCell (childCell (ordinalCellCode 2241383) 24) 10, childCell (childCell (ordinalCellCode 2241383) 24) 11, childCell (childCell (ordinalCellCode 2241383) 24) 12, childCell (childCell (ordinalCellCode 2241383) 24) 13, childCell (childCell (ordinalCellCode 2241383) 24) 14, childCell (childCell (ordinalCellCode 2241383) 24) 15]
    let tags : List WitnessTag := [.midpoint 1, .endpoint 3 190798975, .midpoint 3, .endpoint 3 188943493, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0]
    checkWitnessTape pending tags = true := by
  decide +kernel

#print axioms checked
end Seed0024PhaseCore20261007.Leaf8Centre385Group41
