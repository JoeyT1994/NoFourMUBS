import SeedPhaseTape

/- Only arithmetic acceptance; no split or erasure check. -/
set_option autoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 8000000
namespace Seed0024PhaseCore20261007.Leaf8Centre385Group47

theorem checked :
    let pending : List CellCode := [childCell (childCell (ordinalCellCode 2241383) 28) 16, childCell (childCell (ordinalCellCode 2241383) 28) 17, childCell (childCell (ordinalCellCode 2241383) 28) 18, childCell (childCell (ordinalCellCode 2241383) 28) 19, childCell (childCell (ordinalCellCode 2241383) 28) 20, childCell (childCell (ordinalCellCode 2241383) 28) 21, childCell (childCell (ordinalCellCode 2241383) 28) 22, childCell (childCell (ordinalCellCode 2241383) 28) 23]
    let tags : List WitnessTag := [.midpoint 0, .endpoint 0 190691459, .accept 0, .accept 0, .midpoint 0, .midpoint 0, .endpoint 0 189720306, .endpoint 0 188660289]
    checkWitnessTape pending tags = true := by
  decide +kernel

#print axioms checked
end Seed0024PhaseCore20261007.Leaf8Centre385Group47
