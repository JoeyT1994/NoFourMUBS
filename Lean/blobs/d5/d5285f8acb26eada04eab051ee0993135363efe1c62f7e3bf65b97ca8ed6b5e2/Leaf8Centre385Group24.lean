import SeedPhaseTape

/- Only arithmetic acceptance; no split or erasure check. -/
set_option autoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 8000000
namespace Seed0024PhaseCore20261007.Leaf8Centre385Group24

theorem checked :
    let pending : List CellCode := [childCell (childCell (ordinalCellCode 2241383) 13) 24, childCell (childCell (ordinalCellCode 2241383) 13) 25, childCell (childCell (ordinalCellCode 2241383) 13) 26, childCell (childCell (ordinalCellCode 2241383) 13) 27, childCell (childCell (ordinalCellCode 2241383) 13) 28, childCell (childCell (ordinalCellCode 2241383) 13) 29, childCell (childCell (ordinalCellCode 2241383) 13) 30, childCell (childCell (ordinalCellCode 2241383) 13) 31]
    let tags : List WitnessTag := [.midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1]
    checkWitnessTape pending tags = true := by
  decide +kernel

#print axioms checked
end Seed0024PhaseCore20261007.Leaf8Centre385Group24
