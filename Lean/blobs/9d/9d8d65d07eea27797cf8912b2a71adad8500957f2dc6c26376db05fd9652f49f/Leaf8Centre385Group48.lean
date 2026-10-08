import SeedPhaseTape

/- Only arithmetic acceptance; no split or erasure check. -/
set_option autoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 8000000
namespace Seed0024PhaseCore20261007.Leaf8Centre385Group48

theorem checked :
    let pending : List CellCode := [childCell (childCell (ordinalCellCode 2241383) 28) 24, childCell (childCell (ordinalCellCode 2241383) 28) 25, childCell (childCell (ordinalCellCode 2241383) 28) 26, childCell (childCell (ordinalCellCode 2241383) 28) 27, childCell (childCell (ordinalCellCode 2241383) 28) 28, childCell (childCell (ordinalCellCode 2241383) 28) 29, childCell (childCell (ordinalCellCode 2241383) 28) 30, childCell (childCell (ordinalCellCode 2241383) 28) 31]
    let tags : List WitnessTag := [.midpoint 0, .midpoint 0, .midpoint 1, .accept 0, .midpoint 0, .midpoint 0, .endpoint 0 191376882, .endpoint 0 190468196]
    checkWitnessTape pending tags = true := by
  decide +kernel

#print axioms checked
end Seed0024PhaseCore20261007.Leaf8Centre385Group48
