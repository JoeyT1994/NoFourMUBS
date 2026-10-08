import SeedPhaseTape

/- Only arithmetic acceptance; no split or erasure check. -/
set_option autoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 8000000
namespace Seed0024PhaseCore20261007.Leaf8Centre385Group50

theorem checked :
    let pending : List CellCode := [childCell (childCell (ordinalCellCode 2241383) 30) 0, childCell (childCell (ordinalCellCode 2241383) 30) 1, childCell (childCell (ordinalCellCode 2241383) 30) 2, childCell (childCell (ordinalCellCode 2241383) 30) 3, childCell (childCell (ordinalCellCode 2241383) 30) 4, childCell (childCell (ordinalCellCode 2241383) 30) 5, childCell (childCell (ordinalCellCode 2241383) 30) 6, childCell (childCell (ordinalCellCode 2241383) 30) 7]
    let tags : List WitnessTag := [.endpoint 1 137099235, .accept 0, .accept 0, .accept 0, .midpoint 1, .endpoint 1 137725090, .midpoint 1, .endpoint 4 190769906]
    checkWitnessTape pending tags = true := by
  decide +kernel

#print axioms checked
end Seed0024PhaseCore20261007.Leaf8Centre385Group50
