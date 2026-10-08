import SeedPhaseTape

/- Only arithmetic acceptance; no split or erasure check. -/
set_option autoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 8000000
namespace Seed0024PhaseCore20261007.Leaf8Centre385Group03

theorem checked :
    let pending : List CellCode := [childCell (childCell (ordinalCellCode 2241383) 4) 16, childCell (childCell (ordinalCellCode 2241383) 4) 17, childCell (childCell (ordinalCellCode 2241383) 4) 18, childCell (childCell (ordinalCellCode 2241383) 4) 19, childCell (childCell (ordinalCellCode 2241383) 4) 20, childCell (childCell (ordinalCellCode 2241383) 4) 21, childCell (childCell (ordinalCellCode 2241383) 4) 22, childCell (childCell (ordinalCellCode 2241383) 4) 23]
    let tags : List WitnessTag := [.endpoint 1 138007504, .accept 0, .accept 0, .accept 0, .midpoint 1, .accept 0, .midpoint 1, .endpoint 4 190599154]
    checkWitnessTape pending tags = true := by
  decide +kernel

#print axioms checked
end Seed0024PhaseCore20261007.Leaf8Centre385Group03
