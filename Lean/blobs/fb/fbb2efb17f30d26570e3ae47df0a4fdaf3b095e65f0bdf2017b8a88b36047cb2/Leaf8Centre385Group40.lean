import SeedPhaseTape

/- Only arithmetic acceptance; no split or erasure check. -/
set_option autoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 8000000
namespace Seed0024PhaseCore20261007.Leaf8Centre385Group40

theorem checked :
    let pending : List CellCode := [childCell (childCell (ordinalCellCode 2241383) 24) 0, childCell (childCell (ordinalCellCode 2241383) 24) 1, childCell (childCell (ordinalCellCode 2241383) 24) 2, childCell (childCell (ordinalCellCode 2241383) 24) 3, childCell (childCell (ordinalCellCode 2241383) 24) 4, childCell (childCell (ordinalCellCode 2241383) 24) 5, childCell (childCell (ordinalCellCode 2241383) 24) 6, childCell (childCell (ordinalCellCode 2241383) 24) 7]
    let tags : List WitnessTag := [.endpoint 3 190752662, .accept 0, .endpoint 3 188972338, .accept 0, .midpoint 1, .accept 0, .accept 0, .accept 0]
    checkWitnessTape pending tags = true := by
  decide +kernel

#print axioms checked
end Seed0024PhaseCore20261007.Leaf8Centre385Group40
