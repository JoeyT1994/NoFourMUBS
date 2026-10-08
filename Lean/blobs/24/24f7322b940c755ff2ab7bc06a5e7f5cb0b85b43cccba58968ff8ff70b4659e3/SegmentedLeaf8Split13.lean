import TapeCompositionTransport
import Leaf8Centre385Group21
import Leaf8Centre385Group22
import Leaf8Centre385Group23
import Leaf8Centre385Group24

set_option autoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 8000000

namespace Seed0024PhaseCore20261007.SegmentedLeaf8Split13

/- Prevent elaboration from evaluating the leaf checker while matching lists. Kernel checking remains enabled. -/
attribute [local irreducible] checkWitnessTape

def pending1 : List CellCode := ([childCell (childCell (ordinalCellCode 2241383) 13) 0, childCell (childCell (ordinalCellCode 2241383) 13) 1, childCell (childCell (ordinalCellCode 2241383) 13) 2, childCell (childCell (ordinalCellCode 2241383) 13) 3, childCell (childCell (ordinalCellCode 2241383) 13) 4, childCell (childCell (ordinalCellCode 2241383) 13) 5, childCell (childCell (ordinalCellCode 2241383) 13) 6, childCell (childCell (ordinalCellCode 2241383) 13) 7]) ++ ([childCell (childCell (ordinalCellCode 2241383) 13) 8, childCell (childCell (ordinalCellCode 2241383) 13) 9, childCell (childCell (ordinalCellCode 2241383) 13) 10, childCell (childCell (ordinalCellCode 2241383) 13) 11, childCell (childCell (ordinalCellCode 2241383) 13) 12, childCell (childCell (ordinalCellCode 2241383) 13) 13, childCell (childCell (ordinalCellCode 2241383) 13) 14, childCell (childCell (ordinalCellCode 2241383) 13) 15])
def tags1 : List WitnessTag := ([.midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1]) ++ ([.midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1])
theorem checked1 : checkWitnessTape pending1 tags1 = true := by
  exact checkWitnessTape_append_transport ([childCell (childCell (ordinalCellCode 2241383) 13) 0, childCell (childCell (ordinalCellCode 2241383) 13) 1, childCell (childCell (ordinalCellCode 2241383) 13) 2, childCell (childCell (ordinalCellCode 2241383) 13) 3, childCell (childCell (ordinalCellCode 2241383) 13) 4, childCell (childCell (ordinalCellCode 2241383) 13) 5, childCell (childCell (ordinalCellCode 2241383) 13) 6, childCell (childCell (ordinalCellCode 2241383) 13) 7]) ([childCell (childCell (ordinalCellCode 2241383) 13) 8, childCell (childCell (ordinalCellCode 2241383) 13) 9, childCell (childCell (ordinalCellCode 2241383) 13) 10, childCell (childCell (ordinalCellCode 2241383) 13) 11, childCell (childCell (ordinalCellCode 2241383) 13) 12, childCell (childCell (ordinalCellCode 2241383) 13) 13, childCell (childCell (ordinalCellCode 2241383) 13) 14, childCell (childCell (ordinalCellCode 2241383) 13) 15]) pending1
    ([.midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1]) ([.midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1]) tags1
    rfl rfl (Seed0024PhaseCore20261007.Leaf8Centre385Group21.checked) (Seed0024PhaseCore20261007.Leaf8Centre385Group22.checked)
#print axioms checked1

def pending2 : List CellCode := (pending1) ++ ([childCell (childCell (ordinalCellCode 2241383) 13) 16, childCell (childCell (ordinalCellCode 2241383) 13) 17, childCell (childCell (ordinalCellCode 2241383) 13) 18, childCell (childCell (ordinalCellCode 2241383) 13) 19, childCell (childCell (ordinalCellCode 2241383) 13) 20, childCell (childCell (ordinalCellCode 2241383) 13) 21, childCell (childCell (ordinalCellCode 2241383) 13) 22, childCell (childCell (ordinalCellCode 2241383) 13) 23])
def tags2 : List WitnessTag := (tags1) ++ ([.midpoint 1, .accept 0, .accept 0, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0])
theorem checked2 : checkWitnessTape pending2 tags2 = true := by
  exact checkWitnessTape_append_transport (pending1) ([childCell (childCell (ordinalCellCode 2241383) 13) 16, childCell (childCell (ordinalCellCode 2241383) 13) 17, childCell (childCell (ordinalCellCode 2241383) 13) 18, childCell (childCell (ordinalCellCode 2241383) 13) 19, childCell (childCell (ordinalCellCode 2241383) 13) 20, childCell (childCell (ordinalCellCode 2241383) 13) 21, childCell (childCell (ordinalCellCode 2241383) 13) 22, childCell (childCell (ordinalCellCode 2241383) 13) 23]) pending2
    (tags1) ([.midpoint 1, .accept 0, .accept 0, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0]) tags2
    rfl rfl (checked1) (Seed0024PhaseCore20261007.Leaf8Centre385Group23.checked)
#print axioms checked2

def pending3 : List CellCode := (pending2) ++ ([childCell (childCell (ordinalCellCode 2241383) 13) 24, childCell (childCell (ordinalCellCode 2241383) 13) 25, childCell (childCell (ordinalCellCode 2241383) 13) 26, childCell (childCell (ordinalCellCode 2241383) 13) 27, childCell (childCell (ordinalCellCode 2241383) 13) 28, childCell (childCell (ordinalCellCode 2241383) 13) 29, childCell (childCell (ordinalCellCode 2241383) 13) 30, childCell (childCell (ordinalCellCode 2241383) 13) 31])
def tags3 : List WitnessTag := (tags2) ++ ([.midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1])
theorem checked3 : checkWitnessTape pending3 tags3 = true := by
  exact checkWitnessTape_append_transport (pending2) ([childCell (childCell (ordinalCellCode 2241383) 13) 24, childCell (childCell (ordinalCellCode 2241383) 13) 25, childCell (childCell (ordinalCellCode 2241383) 13) 26, childCell (childCell (ordinalCellCode 2241383) 13) 27, childCell (childCell (ordinalCellCode 2241383) 13) 28, childCell (childCell (ordinalCellCode 2241383) 13) 29, childCell (childCell (ordinalCellCode 2241383) 13) 30, childCell (childCell (ordinalCellCode 2241383) 13) 31]) pending3
    (tags2) ([.midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1]) tags3
    rfl rfl (checked2) (Seed0024PhaseCore20261007.Leaf8Centre385Group24.checked)
#print axioms checked3

def pending : List CellCode := [childCell (ordinalCellCode 2241383) 13]
def tags : List WitnessTag := [.split, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .accept 0, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1]
theorem checked : checkWitnessTape pending tags = true := by
  exact checkWitnessTape_split_transport (childCell (ordinalCellCode 2241383) 13) pending3 tags3
    (by rfl) (by decide +kernel) (by decide +kernel) checked3
#print axioms checked

end Seed0024PhaseCore20261007.SegmentedLeaf8Split13
