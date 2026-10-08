import SeedPhaseTape

/- Only arithmetic acceptance; no split or erasure check. -/
set_option autoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 8000000
namespace Seed0024PhaseCore20261007.Leaf8Centre385Group31

theorem checked :
    let pending : List CellCode := [childCell (childCell (ordinalCellCode 2241383) 20) 8, childCell (childCell (ordinalCellCode 2241383) 20) 9, childCell (childCell (ordinalCellCode 2241383) 20) 10, childCell (childCell (ordinalCellCode 2241383) 20) 11, childCell (childCell (ordinalCellCode 2241383) 20) 12, childCell (childCell (ordinalCellCode 2241383) 20) 13, childCell (childCell (ordinalCellCode 2241383) 20) 14, childCell (childCell (ordinalCellCode 2241383) 20) 15]
    let tags : List WitnessTag := [.endpoint 1 137686082, .accept 0, .accept 0, .accept 0, .midpoint 1, .accept 0, .midpoint 1, .accept 0]
    checkWitnessTape pending tags = true := by
  decide +kernel

#print axioms checked
end Seed0024PhaseCore20261007.Leaf8Centre385Group31
