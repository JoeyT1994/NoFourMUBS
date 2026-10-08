import SeedPhaseTape

/- Only arithmetic acceptance; no split or erasure check. -/
set_option autoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 8000000
namespace Seed0024PhaseCore20261007.Leaf8Centre385Group38

theorem checked :
    let pending : List CellCode := [childCell (childCell (ordinalCellCode 2241383) 22) 24, childCell (childCell (ordinalCellCode 2241383) 22) 25, childCell (childCell (ordinalCellCode 2241383) 22) 26, childCell (childCell (ordinalCellCode 2241383) 22) 27, childCell (childCell (ordinalCellCode 2241383) 22) 28, childCell (childCell (ordinalCellCode 2241383) 22) 29, childCell (childCell (ordinalCellCode 2241383) 22) 30, childCell (childCell (ordinalCellCode 2241383) 22) 31]
    let tags : List WitnessTag := [.accept 0, .accept 0, .accept 0, .accept 0, .accept 0, .accept 0, .midpoint 4, .accept 0]
    checkWitnessTape pending tags = true := by
  decide +kernel

#print axioms checked
end Seed0024PhaseCore20261007.Leaf8Centre385Group38
