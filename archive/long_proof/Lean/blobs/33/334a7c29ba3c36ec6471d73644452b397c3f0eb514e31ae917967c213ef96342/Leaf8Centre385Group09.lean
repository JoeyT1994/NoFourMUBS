import SeedPhaseTape

/- Only arithmetic acceptance; no split or erasure check. -/
set_option autoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 8000000
namespace Seed0024PhaseCore20261007.Leaf8Centre385Group09

theorem checked :
    let pending : List CellCode := [childCell (childCell (ordinalCellCode 2241383) 6) 24, childCell (childCell (ordinalCellCode 2241383) 6) 25, childCell (childCell (ordinalCellCode 2241383) 6) 26, childCell (childCell (ordinalCellCode 2241383) 6) 27, childCell (childCell (ordinalCellCode 2241383) 6) 28, childCell (childCell (ordinalCellCode 2241383) 6) 29, childCell (childCell (ordinalCellCode 2241383) 6) 30, childCell (childCell (ordinalCellCode 2241383) 6) 31]
    let tags : List WitnessTag := [.endpoint 1 137281071, .accept 0, .midpoint 4, .midpoint 4, .midpoint 1, .endpoint 1 137925253, .midpoint 1, .midpoint 4]
    checkWitnessTape pending tags = true := by
  decide +kernel

#print axioms checked
end Seed0024PhaseCore20261007.Leaf8Centre385Group09
