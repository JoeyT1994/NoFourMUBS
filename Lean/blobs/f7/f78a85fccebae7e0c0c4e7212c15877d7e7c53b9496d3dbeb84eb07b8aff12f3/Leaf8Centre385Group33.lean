import SeedPhaseTape

/- Only arithmetic acceptance; no split or erasure check. -/
set_option autoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 8000000
namespace Seed0024PhaseCore20261007.Leaf8Centre385Group33

theorem checked :
    let pending : List CellCode := [childCell (childCell (ordinalCellCode 2241383) 20) 24, childCell (childCell (ordinalCellCode 2241383) 20) 25, childCell (childCell (ordinalCellCode 2241383) 20) 26, childCell (childCell (ordinalCellCode 2241383) 20) 27, childCell (childCell (ordinalCellCode 2241383) 20) 28, childCell (childCell (ordinalCellCode 2241383) 20) 29, childCell (childCell (ordinalCellCode 2241383) 20) 30, childCell (childCell (ordinalCellCode 2241383) 20) 31]
    let tags : List WitnessTag := [.endpoint 0 189969633, .endpoint 0 188677691, .accept 0, .accept 0, .midpoint 0, .midpoint 0, .endpoint 2 138127825, .accept 0]
    checkWitnessTape pending tags = true := by
  decide +kernel

#print axioms checked
end Seed0024PhaseCore20261007.Leaf8Centre385Group33
