import SeedPhaseTape

/- Only arithmetic acceptance; no split or erasure check. -/
set_option autoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 8000000
namespace Seed0024PhaseCore20261007.Leaf8Centre385Group23

theorem checked :
    let pending : List CellCode := [childCell (childCell (ordinalCellCode 2241383) 13) 16, childCell (childCell (ordinalCellCode 2241383) 13) 17, childCell (childCell (ordinalCellCode 2241383) 13) 18, childCell (childCell (ordinalCellCode 2241383) 13) 19, childCell (childCell (ordinalCellCode 2241383) 13) 20, childCell (childCell (ordinalCellCode 2241383) 13) 21, childCell (childCell (ordinalCellCode 2241383) 13) 22, childCell (childCell (ordinalCellCode 2241383) 13) 23]
    let tags : List WitnessTag := [.midpoint 1, .accept 0, .accept 0, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0]
    checkWitnessTape pending tags = true := by
  decide +kernel

#print axioms checked
end Seed0024PhaseCore20261007.Leaf8Centre385Group23
