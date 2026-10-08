import SeedPhaseTape

/- Only arithmetic acceptance; no split or erasure check. -/
set_option autoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 8000000
namespace Seed0024PhaseCore20261007.Leaf8Centre385Group30

theorem checked :
    let pending : List CellCode := [childCell (childCell (ordinalCellCode 2241383) 20) 0, childCell (childCell (ordinalCellCode 2241383) 20) 1, childCell (childCell (ordinalCellCode 2241383) 20) 2, childCell (childCell (ordinalCellCode 2241383) 20) 3, childCell (childCell (ordinalCellCode 2241383) 20) 4, childCell (childCell (ordinalCellCode 2241383) 20) 5, childCell (childCell (ordinalCellCode 2241383) 20) 6, childCell (childCell (ordinalCellCode 2241383) 20) 7]
    let tags : List WitnessTag := [.midpoint 2, .accept 0, .accept 0, .accept 0, .midpoint 2, .midpoint 2, .endpoint 2 138194020, .accept 0]
    checkWitnessTape pending tags = true := by
  decide +kernel

#print axioms checked
end Seed0024PhaseCore20261007.Leaf8Centre385Group30
