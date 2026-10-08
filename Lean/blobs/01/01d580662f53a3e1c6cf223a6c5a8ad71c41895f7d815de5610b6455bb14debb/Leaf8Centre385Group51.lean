import SeedPhaseTape

/- Only arithmetic acceptance; no split or erasure check. -/
set_option autoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 8000000
namespace Seed0024PhaseCore20261007.Leaf8Centre385Group51

theorem checked :
    let pending : List CellCode := [childCell (childCell (ordinalCellCode 2241383) 30) 8, childCell (childCell (ordinalCellCode 2241383) 30) 9, childCell (childCell (ordinalCellCode 2241383) 30) 10, childCell (childCell (ordinalCellCode 2241383) 30) 11, childCell (childCell (ordinalCellCode 2241383) 30) 12, childCell (childCell (ordinalCellCode 2241383) 30) 13, childCell (childCell (ordinalCellCode 2241383) 30) 14, childCell (childCell (ordinalCellCode 2241383) 30) 15]
    let tags : List WitnessTag := [.midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1]
    checkWitnessTape pending tags = true := by
  decide +kernel

#print axioms checked
end Seed0024PhaseCore20261007.Leaf8Centre385Group51
