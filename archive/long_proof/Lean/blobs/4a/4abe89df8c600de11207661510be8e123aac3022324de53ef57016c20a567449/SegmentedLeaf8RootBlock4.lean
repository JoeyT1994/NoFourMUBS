import TapeCompositionTransport
import SegmentedLeaf8Split24
import Leaf8Centre385Group44
import SegmentedLeaf8Split28
import Leaf8Centre385Group49

set_option autoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 8000000

namespace Seed0024PhaseCore20261007.SegmentedLeaf8RootBlock4

/- Prevent elaboration from evaluating the leaf checker while matching lists. Kernel checking remains enabled. -/
attribute [local irreducible] checkWitnessTape

def pending1 : List CellCode := (Seed0024PhaseCore20261007.SegmentedLeaf8Split24.pending) ++ ([childCell (ordinalCellCode 2241383) 25, childCell (ordinalCellCode 2241383) 26, childCell (ordinalCellCode 2241383) 27])
def tags1 : List WitnessTag := (Seed0024PhaseCore20261007.SegmentedLeaf8Split24.tags) ++ ([.accept 0, .accept 0, .accept 0])
theorem checked1 : checkWitnessTape pending1 tags1 = true := by
  exact checkWitnessTape_append_transport (Seed0024PhaseCore20261007.SegmentedLeaf8Split24.pending) ([childCell (ordinalCellCode 2241383) 25, childCell (ordinalCellCode 2241383) 26, childCell (ordinalCellCode 2241383) 27]) pending1
    (Seed0024PhaseCore20261007.SegmentedLeaf8Split24.tags) ([.accept 0, .accept 0, .accept 0]) tags1
    rfl rfl (Seed0024PhaseCore20261007.SegmentedLeaf8Split24.checked) (Seed0024PhaseCore20261007.Leaf8Centre385Group44.checked)
#print axioms checked1

def pending2 : List CellCode := (pending1) ++ (Seed0024PhaseCore20261007.SegmentedLeaf8Split28.pending)
def tags2 : List WitnessTag := (tags1) ++ (Seed0024PhaseCore20261007.SegmentedLeaf8Split28.tags)
theorem checked2 : checkWitnessTape pending2 tags2 = true := by
  exact checkWitnessTape_append_transport (pending1) (Seed0024PhaseCore20261007.SegmentedLeaf8Split28.pending) pending2
    (tags1) (Seed0024PhaseCore20261007.SegmentedLeaf8Split28.tags) tags2
    rfl rfl (checked1) (Seed0024PhaseCore20261007.SegmentedLeaf8Split28.checked)
#print axioms checked2

def pending3 : List CellCode := (pending2) ++ ([childCell (ordinalCellCode 2241383) 29])
def tags3 : List WitnessTag := (tags2) ++ ([.accept 0])
theorem checked3 : checkWitnessTape pending3 tags3 = true := by
  exact checkWitnessTape_append_transport (pending2) ([childCell (ordinalCellCode 2241383) 29]) pending3
    (tags2) ([.accept 0]) tags3
    rfl rfl (checked2) (Seed0024PhaseCore20261007.Leaf8Centre385Group49.checked)
#print axioms checked3

end Seed0024PhaseCore20261007.SegmentedLeaf8RootBlock4
