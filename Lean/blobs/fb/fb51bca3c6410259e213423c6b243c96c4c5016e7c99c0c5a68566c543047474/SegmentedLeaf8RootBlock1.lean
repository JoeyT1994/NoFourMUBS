import TapeCompositionTransport
import Leaf8Centre385Group10
import SegmentedLeaf8Split8
import Leaf8Centre385Group15
import SegmentedLeaf8Split10

set_option autoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 8000000

namespace Seed0024PhaseCore20261007.SegmentedLeaf8RootBlock1

/- Prevent elaboration from evaluating the leaf checker while matching lists. Kernel checking remains enabled. -/
attribute [local irreducible] checkWitnessTape

def pending1 : List CellCode := ([childCell (ordinalCellCode 2241383) 7]) ++ (Seed0024PhaseCore20261007.SegmentedLeaf8Split8.pending)
def tags1 : List WitnessTag := ([.accept 0]) ++ (Seed0024PhaseCore20261007.SegmentedLeaf8Split8.tags)
theorem checked1 : checkWitnessTape pending1 tags1 = true := by
  exact checkWitnessTape_append_transport ([childCell (ordinalCellCode 2241383) 7]) (Seed0024PhaseCore20261007.SegmentedLeaf8Split8.pending) pending1
    ([.accept 0]) (Seed0024PhaseCore20261007.SegmentedLeaf8Split8.tags) tags1
    rfl rfl (Seed0024PhaseCore20261007.Leaf8Centre385Group10.checked) (Seed0024PhaseCore20261007.SegmentedLeaf8Split8.checked)
#print axioms checked1

def pending2 : List CellCode := (pending1) ++ ([childCell (ordinalCellCode 2241383) 9])
def tags2 : List WitnessTag := (tags1) ++ ([.accept 0])
theorem checked2 : checkWitnessTape pending2 tags2 = true := by
  exact checkWitnessTape_append_transport (pending1) ([childCell (ordinalCellCode 2241383) 9]) pending2
    (tags1) ([.accept 0]) tags2
    rfl rfl (checked1) (Seed0024PhaseCore20261007.Leaf8Centre385Group15.checked)
#print axioms checked2

def pending3 : List CellCode := (pending2) ++ (Seed0024PhaseCore20261007.SegmentedLeaf8Split10.pending)
def tags3 : List WitnessTag := (tags2) ++ (Seed0024PhaseCore20261007.SegmentedLeaf8Split10.tags)
theorem checked3 : checkWitnessTape pending3 tags3 = true := by
  exact checkWitnessTape_append_transport (pending2) (Seed0024PhaseCore20261007.SegmentedLeaf8Split10.pending) pending3
    (tags2) (Seed0024PhaseCore20261007.SegmentedLeaf8Split10.tags) tags3
    rfl rfl (checked2) (Seed0024PhaseCore20261007.SegmentedLeaf8Split10.checked)
#print axioms checked3

end Seed0024PhaseCore20261007.SegmentedLeaf8RootBlock1
