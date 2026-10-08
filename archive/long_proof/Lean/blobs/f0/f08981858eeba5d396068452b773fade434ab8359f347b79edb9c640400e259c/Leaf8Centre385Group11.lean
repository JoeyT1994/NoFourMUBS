import SeedPhaseTape

/- Only arithmetic acceptance; no split or erasure check. -/
set_option autoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 8000000
namespace Seed0024PhaseCore20261007.Leaf8Centre385Group11

theorem checked :
    let pending : List CellCode := [childCell (childCell (ordinalCellCode 2241383) 8) 0, childCell (childCell (ordinalCellCode 2241383) 8) 1, childCell (childCell (ordinalCellCode 2241383) 8) 2, childCell (childCell (ordinalCellCode 2241383) 8) 3, childCell (childCell (ordinalCellCode 2241383) 8) 4, childCell (childCell (ordinalCellCode 2241383) 8) 5, childCell (childCell (ordinalCellCode 2241383) 8) 6, childCell (childCell (ordinalCellCode 2241383) 8) 7]
    let tags : List WitnessTag := [.midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1]
    checkWitnessTape pending tags = true := by
  decide +kernel

#print axioms checked
end Seed0024PhaseCore20261007.Leaf8Centre385Group11
