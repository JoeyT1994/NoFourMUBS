import TapeCompositionTransport
import Leaf8Centre385Group06
import Leaf8Centre385Group07
import Leaf8Centre385Group08
import Leaf8Centre385Group09

set_option autoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 8000000

namespace Seed0024PhaseCore20261007.SegmentedLeaf8Split6

/- Prevent elaboration from evaluating the leaf checker while matching lists. Kernel checking remains enabled. -/
attribute [local irreducible] checkWitnessTape

def pending1 : List CellCode := ([childCell (childCell (ordinalCellCode 2241383) 6) 0, childCell (childCell (ordinalCellCode 2241383) 6) 1, childCell (childCell (ordinalCellCode 2241383) 6) 2, childCell (childCell (ordinalCellCode 2241383) 6) 3, childCell (childCell (ordinalCellCode 2241383) 6) 4, childCell (childCell (ordinalCellCode 2241383) 6) 5, childCell (childCell (ordinalCellCode 2241383) 6) 6, childCell (childCell (ordinalCellCode 2241383) 6) 7]) ++ ([childCell (childCell (ordinalCellCode 2241383) 6) 8, childCell (childCell (ordinalCellCode 2241383) 6) 9, childCell (childCell (ordinalCellCode 2241383) 6) 10, childCell (childCell (ordinalCellCode 2241383) 6) 11, childCell (childCell (ordinalCellCode 2241383) 6) 12, childCell (childCell (ordinalCellCode 2241383) 6) 13, childCell (childCell (ordinalCellCode 2241383) 6) 14, childCell (childCell (ordinalCellCode 2241383) 6) 15])
def tags1 : List WitnessTag := ([.endpoint 1 137305337, .midpoint 4, .midpoint 4, .midpoint 4, .midpoint 1, .endpoint 1 137967686, .midpoint 1, .midpoint 4]) ++ ([.midpoint 1, .midpoint 1, .midpoint 1, .midpoint 4, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1])
theorem checked1 : checkWitnessTape pending1 tags1 = true := by
  exact checkWitnessTape_append_transport ([childCell (childCell (ordinalCellCode 2241383) 6) 0, childCell (childCell (ordinalCellCode 2241383) 6) 1, childCell (childCell (ordinalCellCode 2241383) 6) 2, childCell (childCell (ordinalCellCode 2241383) 6) 3, childCell (childCell (ordinalCellCode 2241383) 6) 4, childCell (childCell (ordinalCellCode 2241383) 6) 5, childCell (childCell (ordinalCellCode 2241383) 6) 6, childCell (childCell (ordinalCellCode 2241383) 6) 7]) ([childCell (childCell (ordinalCellCode 2241383) 6) 8, childCell (childCell (ordinalCellCode 2241383) 6) 9, childCell (childCell (ordinalCellCode 2241383) 6) 10, childCell (childCell (ordinalCellCode 2241383) 6) 11, childCell (childCell (ordinalCellCode 2241383) 6) 12, childCell (childCell (ordinalCellCode 2241383) 6) 13, childCell (childCell (ordinalCellCode 2241383) 6) 14, childCell (childCell (ordinalCellCode 2241383) 6) 15]) pending1
    ([.endpoint 1 137305337, .midpoint 4, .midpoint 4, .midpoint 4, .midpoint 1, .endpoint 1 137967686, .midpoint 1, .midpoint 4]) ([.midpoint 1, .midpoint 1, .midpoint 1, .midpoint 4, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1]) tags1
    rfl rfl (Seed0024PhaseCore20261007.Leaf8Centre385Group06.checked) (Seed0024PhaseCore20261007.Leaf8Centre385Group07.checked)
#print axioms checked1

def pending2 : List CellCode := (pending1) ++ ([childCell (childCell (ordinalCellCode 2241383) 6) 16, childCell (childCell (ordinalCellCode 2241383) 6) 17, childCell (childCell (ordinalCellCode 2241383) 6) 18, childCell (childCell (ordinalCellCode 2241383) 6) 19, childCell (childCell (ordinalCellCode 2241383) 6) 20, childCell (childCell (ordinalCellCode 2241383) 6) 21, childCell (childCell (ordinalCellCode 2241383) 6) 22, childCell (childCell (ordinalCellCode 2241383) 6) 23])
def tags2 : List WitnessTag := (tags1) ++ ([.midpoint 4, .endpoint 4 190409113, .midpoint 4, .midpoint 4, .endpoint 1 138398846, .midpoint 4, .midpoint 4, .midpoint 4])
theorem checked2 : checkWitnessTape pending2 tags2 = true := by
  exact checkWitnessTape_append_transport (pending1) ([childCell (childCell (ordinalCellCode 2241383) 6) 16, childCell (childCell (ordinalCellCode 2241383) 6) 17, childCell (childCell (ordinalCellCode 2241383) 6) 18, childCell (childCell (ordinalCellCode 2241383) 6) 19, childCell (childCell (ordinalCellCode 2241383) 6) 20, childCell (childCell (ordinalCellCode 2241383) 6) 21, childCell (childCell (ordinalCellCode 2241383) 6) 22, childCell (childCell (ordinalCellCode 2241383) 6) 23]) pending2
    (tags1) ([.midpoint 4, .endpoint 4 190409113, .midpoint 4, .midpoint 4, .endpoint 1 138398846, .midpoint 4, .midpoint 4, .midpoint 4]) tags2
    rfl rfl (checked1) (Seed0024PhaseCore20261007.Leaf8Centre385Group08.checked)
#print axioms checked2

def pending3 : List CellCode := (pending2) ++ ([childCell (childCell (ordinalCellCode 2241383) 6) 24, childCell (childCell (ordinalCellCode 2241383) 6) 25, childCell (childCell (ordinalCellCode 2241383) 6) 26, childCell (childCell (ordinalCellCode 2241383) 6) 27, childCell (childCell (ordinalCellCode 2241383) 6) 28, childCell (childCell (ordinalCellCode 2241383) 6) 29, childCell (childCell (ordinalCellCode 2241383) 6) 30, childCell (childCell (ordinalCellCode 2241383) 6) 31])
def tags3 : List WitnessTag := (tags2) ++ ([.endpoint 1 137281071, .accept 0, .midpoint 4, .midpoint 4, .midpoint 1, .endpoint 1 137925253, .midpoint 1, .midpoint 4])
theorem checked3 : checkWitnessTape pending3 tags3 = true := by
  exact checkWitnessTape_append_transport (pending2) ([childCell (childCell (ordinalCellCode 2241383) 6) 24, childCell (childCell (ordinalCellCode 2241383) 6) 25, childCell (childCell (ordinalCellCode 2241383) 6) 26, childCell (childCell (ordinalCellCode 2241383) 6) 27, childCell (childCell (ordinalCellCode 2241383) 6) 28, childCell (childCell (ordinalCellCode 2241383) 6) 29, childCell (childCell (ordinalCellCode 2241383) 6) 30, childCell (childCell (ordinalCellCode 2241383) 6) 31]) pending3
    (tags2) ([.endpoint 1 137281071, .accept 0, .midpoint 4, .midpoint 4, .midpoint 1, .endpoint 1 137925253, .midpoint 1, .midpoint 4]) tags3
    rfl rfl (checked2) (Seed0024PhaseCore20261007.Leaf8Centre385Group09.checked)
#print axioms checked3

def pending : List CellCode := [childCell (ordinalCellCode 2241383) 6]
def tags : List WitnessTag := [.split, .endpoint 1 137305337, .midpoint 4, .midpoint 4, .midpoint 4, .midpoint 1, .endpoint 1 137967686, .midpoint 1, .midpoint 4, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 4, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 4, .endpoint 4 190409113, .midpoint 4, .midpoint 4, .endpoint 1 138398846, .midpoint 4, .midpoint 4, .midpoint 4, .endpoint 1 137281071, .accept 0, .midpoint 4, .midpoint 4, .midpoint 1, .endpoint 1 137925253, .midpoint 1, .midpoint 4]
theorem checked : checkWitnessTape pending tags = true := by
  exact checkWitnessTape_split_transport (childCell (ordinalCellCode 2241383) 6) pending3 tags3
    (by rfl) (by decide +kernel) (by decide +kernel) checked3
#print axioms checked

end Seed0024PhaseCore20261007.SegmentedLeaf8Split6
