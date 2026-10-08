import SeedPhaseTape

/- Only arithmetic acceptance; no split or erasure check. -/
set_option autoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 8000000
namespace Seed0024PhaseCore20261007.Leaf8Centre385Group54

theorem checked :
    let pending : List CellCode := [childCell (ordinalCellCode 2241383) 31]
    let tags : List WitnessTag := [.accept 0]
    checkWitnessTape pending tags = true := by
  decide +kernel

#print axioms checked
end Seed0024PhaseCore20261007.Leaf8Centre385Group54
