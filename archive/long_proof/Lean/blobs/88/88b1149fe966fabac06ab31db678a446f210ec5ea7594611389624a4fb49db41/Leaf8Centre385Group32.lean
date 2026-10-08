import SeedPhaseTape

/- Only arithmetic acceptance; no split or erasure check. -/
set_option autoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 8000000
namespace Seed0024PhaseCore20261007.Leaf8Centre385Group32

theorem checked :
    let pending : List CellCode := [childCell (childCell (ordinalCellCode 2241383) 20) 16, childCell (childCell (ordinalCellCode 2241383) 20) 17, childCell (childCell (ordinalCellCode 2241383) 20) 18, childCell (childCell (ordinalCellCode 2241383) 20) 19, childCell (childCell (ordinalCellCode 2241383) 20) 20, childCell (childCell (ordinalCellCode 2241383) 20) 21, childCell (childCell (ordinalCellCode 2241383) 20) 22, childCell (childCell (ordinalCellCode 2241383) 20) 23]
    let tags : List WitnessTag := [.midpoint 2, .midpoint 2, .midpoint 2, .endpoint 2 139312885, .endpoint 0 190776340, .endpoint 0 189471737, .midpoint 2, .midpoint 2]
    checkWitnessTape pending tags = true := by
  decide +kernel

#print axioms checked
end Seed0024PhaseCore20261007.Leaf8Centre385Group32
