import SeedPhaseTape

/- Only arithmetic acceptance; no split or erasure check. -/
set_option autoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 8000000
namespace Seed0024PhaseCore20261007.Leaf8Centre385Group19

theorem checked :
    let pending : List CellCode := [childCell (childCell (ordinalCellCode 2241383) 10) 24, childCell (childCell (ordinalCellCode 2241383) 10) 25, childCell (childCell (ordinalCellCode 2241383) 10) 26, childCell (childCell (ordinalCellCode 2241383) 10) 27, childCell (childCell (ordinalCellCode 2241383) 10) 28, childCell (childCell (ordinalCellCode 2241383) 10) 29, childCell (childCell (ordinalCellCode 2241383) 10) 30, childCell (childCell (ordinalCellCode 2241383) 10) 31]
    let tags : List WitnessTag := [.midpoint 1, .accept 0, .endpoint 1 138217599, .endpoint 5 139732957, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0]
    checkWitnessTape pending tags = true := by
  decide +kernel

#print axioms checked
end Seed0024PhaseCore20261007.Leaf8Centre385Group19
