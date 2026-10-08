import SeedPhaseTape

/- Only arithmetic acceptance; no split or erasure check. -/
set_option autoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 8000000
namespace Seed0024PhaseCore20261007.Leaf8Centre385Group52

theorem checked :
    let pending : List CellCode := [childCell (childCell (ordinalCellCode 2241383) 30) 16, childCell (childCell (ordinalCellCode 2241383) 30) 17, childCell (childCell (ordinalCellCode 2241383) 30) 18, childCell (childCell (ordinalCellCode 2241383) 30) 19, childCell (childCell (ordinalCellCode 2241383) 30) 20, childCell (childCell (ordinalCellCode 2241383) 30) 21, childCell (childCell (ordinalCellCode 2241383) 30) 22, childCell (childCell (ordinalCellCode 2241383) 30) 23]
    let tags : List WitnessTag := [.accept 0, .accept 0, .endpoint 5 138727926, .accept 0, .endpoint 1 137845679, .accept 0, .endpoint 4 190912587, .accept 0]
    checkWitnessTape pending tags = true := by
  decide +kernel

#print axioms checked
end Seed0024PhaseCore20261007.Leaf8Centre385Group52
