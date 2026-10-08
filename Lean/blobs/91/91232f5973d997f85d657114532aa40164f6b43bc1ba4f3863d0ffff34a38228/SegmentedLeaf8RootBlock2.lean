import TapeCompositionTransport
import Leaf8Centre385Group20
import SegmentedLeaf8Split13
import SegmentedLeaf8Split14
import Leaf8Centre385Group29

set_option autoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 8000000

namespace Seed0024PhaseCore20261007.SegmentedLeaf8RootBlock2

/- Prevent elaboration from evaluating the leaf checker while matching lists. Kernel checking remains enabled. -/
attribute [local irreducible] checkWitnessTape

def pending1 : List CellCode := ([childCell (ordinalCellCode 2241383) 11, childCell (ordinalCellCode 2241383) 12]) ++ (Seed0024PhaseCore20261007.SegmentedLeaf8Split13.pending)
def tags1 : List WitnessTag := ([.accept 0, .midpoint 1]) ++ (Seed0024PhaseCore20261007.SegmentedLeaf8Split13.tags)
theorem checked1 : checkWitnessTape pending1 tags1 = true := by
  exact checkWitnessTape_append_transport ([childCell (ordinalCellCode 2241383) 11, childCell (ordinalCellCode 2241383) 12]) (Seed0024PhaseCore20261007.SegmentedLeaf8Split13.pending) pending1
    ([.accept 0, .midpoint 1]) (Seed0024PhaseCore20261007.SegmentedLeaf8Split13.tags) tags1
    rfl rfl (Seed0024PhaseCore20261007.Leaf8Centre385Group20.checked) (Seed0024PhaseCore20261007.SegmentedLeaf8Split13.checked)
#print axioms checked1

def pending2 : List CellCode := (pending1) ++ (Seed0024PhaseCore20261007.SegmentedLeaf8Split14.pending)
def tags2 : List WitnessTag := (tags1) ++ (Seed0024PhaseCore20261007.SegmentedLeaf8Split14.tags)
theorem checked2 : checkWitnessTape pending2 tags2 = true := by
  exact checkWitnessTape_append_transport (pending1) (Seed0024PhaseCore20261007.SegmentedLeaf8Split14.pending) pending2
    (tags1) (Seed0024PhaseCore20261007.SegmentedLeaf8Split14.tags) tags2
    rfl rfl (checked1) (Seed0024PhaseCore20261007.SegmentedLeaf8Split14.checked)
#print axioms checked2

def pending3 : List CellCode := (pending2) ++ ([childCell (ordinalCellCode 2241383) 15, childCell (ordinalCellCode 2241383) 16, childCell (ordinalCellCode 2241383) 17, childCell (ordinalCellCode 2241383) 18, childCell (ordinalCellCode 2241383) 19])
def tags3 : List WitnessTag := (tags2) ++ ([.accept 0, .accept 0, .accept 0, .accept 0, .accept 0])
theorem checked3 : checkWitnessTape pending3 tags3 = true := by
  exact checkWitnessTape_append_transport (pending2) ([childCell (ordinalCellCode 2241383) 15, childCell (ordinalCellCode 2241383) 16, childCell (ordinalCellCode 2241383) 17, childCell (ordinalCellCode 2241383) 18, childCell (ordinalCellCode 2241383) 19]) pending3
    (tags2) ([.accept 0, .accept 0, .accept 0, .accept 0, .accept 0]) tags3
    rfl rfl (checked2) (Seed0024PhaseCore20261007.Leaf8Centre385Group29.checked)
#print axioms checked3

end Seed0024PhaseCore20261007.SegmentedLeaf8RootBlock2
