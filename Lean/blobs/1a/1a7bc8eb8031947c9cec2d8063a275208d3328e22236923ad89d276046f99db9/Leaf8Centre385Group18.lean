import SeedPhaseTape

/- Only arithmetic acceptance; no split or erasure check. -/
set_option autoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 8000000
namespace Seed0024PhaseCore20261007.Leaf8Centre385Group18

theorem checked :
    let pending : List CellCode := [childCell (childCell (ordinalCellCode 2241383) 10) 16, childCell (childCell (ordinalCellCode 2241383) 10) 17, childCell (childCell (ordinalCellCode 2241383) 10) 18, childCell (childCell (ordinalCellCode 2241383) 10) 19, childCell (childCell (ordinalCellCode 2241383) 10) 20, childCell (childCell (ordinalCellCode 2241383) 10) 21, childCell (childCell (ordinalCellCode 2241383) 10) 22, childCell (childCell (ordinalCellCode 2241383) 10) 23]
    let tags : List WitnessTag := [.accept 0, .accept 0, .endpoint 5 139308934, .accept 0, .midpoint 1, .accept 0, .accept 0, .accept 0]
    checkWitnessTape pending tags = true := by
  decide +kernel

#print axioms checked
end Seed0024PhaseCore20261007.Leaf8Centre385Group18
