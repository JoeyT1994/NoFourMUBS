import SeedPhaseTape

/- Only arithmetic acceptance; no split or erasure check. -/
set_option autoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 8000000
namespace Seed0024PhaseCore20261007.Leaf8Centre385Group45

theorem checked :
    let pending : List CellCode := [childCell (childCell (ordinalCellCode 2241383) 28) 0, childCell (childCell (ordinalCellCode 2241383) 28) 1, childCell (childCell (ordinalCellCode 2241383) 28) 2, childCell (childCell (ordinalCellCode 2241383) 28) 3, childCell (childCell (ordinalCellCode 2241383) 28) 4, childCell (childCell (ordinalCellCode 2241383) 28) 5, childCell (childCell (ordinalCellCode 2241383) 28) 6, childCell (childCell (ordinalCellCode 2241383) 28) 7]
    let tags : List WitnessTag := [.midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .endpoint 0 189903327, .endpoint 0 188946864, .midpoint 1, .midpoint 1]
    checkWitnessTape pending tags = true := by
  decide +kernel

#print axioms checked
end Seed0024PhaseCore20261007.Leaf8Centre385Group45
