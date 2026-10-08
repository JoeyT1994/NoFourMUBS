import TapeCompositionTransport
import SegmentedLeaf8Split30
import Leaf8Centre385Group54

set_option autoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 8000000

namespace Seed0024PhaseCore20261007.SegmentedLeaf8RootBlock5

/- Prevent elaboration from evaluating the leaf checker while matching lists. Kernel checking remains enabled. -/
attribute [local irreducible] checkWitnessTape

def pending1 : List CellCode := (Seed0024PhaseCore20261007.SegmentedLeaf8Split30.pending) ++ ([childCell (ordinalCellCode 2241383) 31])
def tags1 : List WitnessTag := (Seed0024PhaseCore20261007.SegmentedLeaf8Split30.tags) ++ ([.accept 0])
theorem checked1 : checkWitnessTape pending1 tags1 = true := by
  exact checkWitnessTape_append_transport (Seed0024PhaseCore20261007.SegmentedLeaf8Split30.pending) ([childCell (ordinalCellCode 2241383) 31]) pending1
    (Seed0024PhaseCore20261007.SegmentedLeaf8Split30.tags) ([.accept 0]) tags1
    rfl rfl (Seed0024PhaseCore20261007.SegmentedLeaf8Split30.checked) (Seed0024PhaseCore20261007.Leaf8Centre385Group54.checked)
#print axioms checked1

end Seed0024PhaseCore20261007.SegmentedLeaf8RootBlock5
