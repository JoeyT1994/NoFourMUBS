import SeedPhaseTape

/- Only arithmetic acceptance; no split or erasure check. -/
set_option autoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 8000000
namespace Seed0024PhaseCore20261007.Leaf8Centre385Group42

theorem checked :
    let pending : List CellCode := [childCell (childCell (ordinalCellCode 2241383) 24) 16, childCell (childCell (ordinalCellCode 2241383) 24) 17, childCell (childCell (ordinalCellCode 2241383) 24) 18, childCell (childCell (ordinalCellCode 2241383) 24) 19, childCell (childCell (ordinalCellCode 2241383) 24) 20, childCell (childCell (ordinalCellCode 2241383) 24) 21, childCell (childCell (ordinalCellCode 2241383) 24) 22, childCell (childCell (ordinalCellCode 2241383) 24) 23]
    let tags : List WitnessTag := [.midpoint 3, .accept 0, .endpoint 3 190937555, .accept 0, .endpoint 0 188364711, .accept 0, .accept 0, .accept 0]
    checkWitnessTape pending tags = true := by
  decide +kernel

#print axioms checked
end Seed0024PhaseCore20261007.Leaf8Centre385Group42
