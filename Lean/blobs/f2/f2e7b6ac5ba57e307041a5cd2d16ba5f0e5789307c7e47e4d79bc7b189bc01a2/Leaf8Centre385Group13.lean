import SeedPhaseTape

/- Only arithmetic acceptance; no split or erasure check. -/
set_option autoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 8000000
namespace Seed0024PhaseCore20261007.Leaf8Centre385Group13

theorem checked :
    let pending : List CellCode := [childCell (childCell (ordinalCellCode 2241383) 8) 16, childCell (childCell (ordinalCellCode 2241383) 8) 17, childCell (childCell (ordinalCellCode 2241383) 8) 18, childCell (childCell (ordinalCellCode 2241383) 8) 19, childCell (childCell (ordinalCellCode 2241383) 8) 20, childCell (childCell (ordinalCellCode 2241383) 8) 21, childCell (childCell (ordinalCellCode 2241383) 8) 22, childCell (childCell (ordinalCellCode 2241383) 8) 23]
    let tags : List WitnessTag := [.midpoint 1, .accept 0, .accept 0, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0]
    checkWitnessTape pending tags = true := by
  decide +kernel

#print axioms checked
end Seed0024PhaseCore20261007.Leaf8Centre385Group13
