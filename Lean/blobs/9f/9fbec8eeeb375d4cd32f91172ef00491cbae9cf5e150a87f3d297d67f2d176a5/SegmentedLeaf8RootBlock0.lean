import TapeCompositionTransport
import Leaf8Centre385Group00
import SegmentedLeaf8Split4
import Leaf8Centre385Group05
import SegmentedLeaf8Split6

set_option autoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 8000000

namespace Seed0024PhaseCore20261007.SegmentedLeaf8RootBlock0

/- Prevent elaboration from evaluating the leaf checker while matching lists. Kernel checking remains enabled. -/
attribute [local irreducible] checkWitnessTape

def pending1 : List CellCode := ([childCell (ordinalCellCode 2241383) 0, childCell (ordinalCellCode 2241383) 1, childCell (ordinalCellCode 2241383) 2, childCell (ordinalCellCode 2241383) 3]) ++ (Seed0024PhaseCore20261007.SegmentedLeaf8Split4.pending)
def tags1 : List WitnessTag := ([.accept 0, .accept 0, .accept 0, .accept 0]) ++ (Seed0024PhaseCore20261007.SegmentedLeaf8Split4.tags)
theorem checked1 : checkWitnessTape pending1 tags1 = true := by
  exact checkWitnessTape_append_transport ([childCell (ordinalCellCode 2241383) 0, childCell (ordinalCellCode 2241383) 1, childCell (ordinalCellCode 2241383) 2, childCell (ordinalCellCode 2241383) 3]) (Seed0024PhaseCore20261007.SegmentedLeaf8Split4.pending) pending1
    ([.accept 0, .accept 0, .accept 0, .accept 0]) (Seed0024PhaseCore20261007.SegmentedLeaf8Split4.tags) tags1
    rfl rfl (Seed0024PhaseCore20261007.Leaf8Centre385Group00.checked) (Seed0024PhaseCore20261007.SegmentedLeaf8Split4.checked)
#print axioms checked1

def pending2 : List CellCode := (pending1) ++ ([childCell (ordinalCellCode 2241383) 5])
def tags2 : List WitnessTag := (tags1) ++ ([.accept 0])
theorem checked2 : checkWitnessTape pending2 tags2 = true := by
  exact checkWitnessTape_append_transport (pending1) ([childCell (ordinalCellCode 2241383) 5]) pending2
    (tags1) ([.accept 0]) tags2
    rfl rfl (checked1) (Seed0024PhaseCore20261007.Leaf8Centre385Group05.checked)
#print axioms checked2

def pending3 : List CellCode := (pending2) ++ (Seed0024PhaseCore20261007.SegmentedLeaf8Split6.pending)
def tags3 : List WitnessTag := (tags2) ++ (Seed0024PhaseCore20261007.SegmentedLeaf8Split6.tags)
theorem checked3 : checkWitnessTape pending3 tags3 = true := by
  exact checkWitnessTape_append_transport (pending2) (Seed0024PhaseCore20261007.SegmentedLeaf8Split6.pending) pending3
    (tags2) (Seed0024PhaseCore20261007.SegmentedLeaf8Split6.tags) tags3
    rfl rfl (checked2) (Seed0024PhaseCore20261007.SegmentedLeaf8Split6.checked)
#print axioms checked3

end Seed0024PhaseCore20261007.SegmentedLeaf8RootBlock0
