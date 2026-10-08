import SeedPhaseTape

/- Only arithmetic acceptance; no split or erasure check. -/
set_option autoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 8000000
namespace Seed0024PhaseCore20261007.Leaf8Centre385Group37

theorem checked :
    let pending : List CellCode := [childCell (childCell (ordinalCellCode 2241383) 22) 16, childCell (childCell (ordinalCellCode 2241383) 22) 17, childCell (childCell (ordinalCellCode 2241383) 22) 18, childCell (childCell (ordinalCellCode 2241383) 22) 19, childCell (childCell (ordinalCellCode 2241383) 22) 20, childCell (childCell (ordinalCellCode 2241383) 22) 21, childCell (childCell (ordinalCellCode 2241383) 22) 22, childCell (childCell (ordinalCellCode 2241383) 22) 23]
    let tags : List WitnessTag := [.accept 0, .accept 0, .endpoint 4 190945512, .accept 0, .endpoint 2 137498916, .accept 0, .midpoint 4, .endpoint 4 191314646]
    checkWitnessTape pending tags = true := by
  decide +kernel

#print axioms checked
end Seed0024PhaseCore20261007.Leaf8Centre385Group37
