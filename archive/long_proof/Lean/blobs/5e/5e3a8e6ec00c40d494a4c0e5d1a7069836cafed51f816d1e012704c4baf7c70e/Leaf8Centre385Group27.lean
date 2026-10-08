import SeedPhaseTape

/- Only arithmetic acceptance; no split or erasure check. -/
set_option autoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 8000000
namespace Seed0024PhaseCore20261007.Leaf8Centre385Group27

theorem checked :
    let pending : List CellCode := [childCell (childCell (ordinalCellCode 2241383) 14) 16, childCell (childCell (ordinalCellCode 2241383) 14) 17, childCell (childCell (ordinalCellCode 2241383) 14) 18, childCell (childCell (ordinalCellCode 2241383) 14) 19, childCell (childCell (ordinalCellCode 2241383) 14) 20, childCell (childCell (ordinalCellCode 2241383) 14) 21, childCell (childCell (ordinalCellCode 2241383) 14) 22, childCell (childCell (ordinalCellCode 2241383) 14) 23]
    let tags : List WitnessTag := [.midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1]
    checkWitnessTape pending tags = true := by
  decide +kernel

#print axioms checked
end Seed0024PhaseCore20261007.Leaf8Centre385Group27
