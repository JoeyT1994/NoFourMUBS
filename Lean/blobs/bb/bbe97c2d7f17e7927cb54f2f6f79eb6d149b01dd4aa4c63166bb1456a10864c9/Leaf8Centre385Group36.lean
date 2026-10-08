import SeedPhaseTape

/- Only arithmetic acceptance; no split or erasure check. -/
set_option autoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 8000000
namespace Seed0024PhaseCore20261007.Leaf8Centre385Group36

theorem checked :
    let pending : List CellCode := [childCell (childCell (ordinalCellCode 2241383) 22) 8, childCell (childCell (ordinalCellCode 2241383) 22) 9, childCell (childCell (ordinalCellCode 2241383) 22) 10, childCell (childCell (ordinalCellCode 2241383) 22) 11, childCell (childCell (ordinalCellCode 2241383) 22) 12, childCell (childCell (ordinalCellCode 2241383) 22) 13, childCell (childCell (ordinalCellCode 2241383) 22) 14, childCell (childCell (ordinalCellCode 2241383) 22) 15]
    let tags : List WitnessTag := [.accept 0, .accept 0, .midpoint 4, .accept 0, .endpoint 1 138210844, .accept 0, .midpoint 4, .midpoint 4]
    checkWitnessTape pending tags = true := by
  decide +kernel

#print axioms checked
end Seed0024PhaseCore20261007.Leaf8Centre385Group36
