import TapeCompositionTransport
import Leaf8Centre385Group11
import Leaf8Centre385Group12
import Leaf8Centre385Group13
import Leaf8Centre385Group14

set_option autoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 8000000

namespace Seed0024PhaseCore20261007.SegmentedLeaf8Split8

/- Prevent elaboration from evaluating the leaf checker while matching lists. Kernel checking remains enabled. -/
attribute [local irreducible] checkWitnessTape

def pending1 : List CellCode := ([childCell (childCell (ordinalCellCode 2241383) 8) 0, childCell (childCell (ordinalCellCode 2241383) 8) 1, childCell (childCell (ordinalCellCode 2241383) 8) 2, childCell (childCell (ordinalCellCode 2241383) 8) 3, childCell (childCell (ordinalCellCode 2241383) 8) 4, childCell (childCell (ordinalCellCode 2241383) 8) 5, childCell (childCell (ordinalCellCode 2241383) 8) 6, childCell (childCell (ordinalCellCode 2241383) 8) 7]) ++ ([childCell (childCell (ordinalCellCode 2241383) 8) 8, childCell (childCell (ordinalCellCode 2241383) 8) 9, childCell (childCell (ordinalCellCode 2241383) 8) 10, childCell (childCell (ordinalCellCode 2241383) 8) 11, childCell (childCell (ordinalCellCode 2241383) 8) 12, childCell (childCell (ordinalCellCode 2241383) 8) 13, childCell (childCell (ordinalCellCode 2241383) 8) 14, childCell (childCell (ordinalCellCode 2241383) 8) 15])
def tags1 : List WitnessTag := ([.midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1]) ++ ([.midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1])
theorem checked1 : checkWitnessTape pending1 tags1 = true := by
  exact checkWitnessTape_append_transport ([childCell (childCell (ordinalCellCode 2241383) 8) 0, childCell (childCell (ordinalCellCode 2241383) 8) 1, childCell (childCell (ordinalCellCode 2241383) 8) 2, childCell (childCell (ordinalCellCode 2241383) 8) 3, childCell (childCell (ordinalCellCode 2241383) 8) 4, childCell (childCell (ordinalCellCode 2241383) 8) 5, childCell (childCell (ordinalCellCode 2241383) 8) 6, childCell (childCell (ordinalCellCode 2241383) 8) 7]) ([childCell (childCell (ordinalCellCode 2241383) 8) 8, childCell (childCell (ordinalCellCode 2241383) 8) 9, childCell (childCell (ordinalCellCode 2241383) 8) 10, childCell (childCell (ordinalCellCode 2241383) 8) 11, childCell (childCell (ordinalCellCode 2241383) 8) 12, childCell (childCell (ordinalCellCode 2241383) 8) 13, childCell (childCell (ordinalCellCode 2241383) 8) 14, childCell (childCell (ordinalCellCode 2241383) 8) 15]) pending1
    ([.midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1]) ([.midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1]) tags1
    rfl rfl (Seed0024PhaseCore20261007.Leaf8Centre385Group11.checked) (Seed0024PhaseCore20261007.Leaf8Centre385Group12.checked)
#print axioms checked1

def pending2 : List CellCode := (pending1) ++ ([childCell (childCell (ordinalCellCode 2241383) 8) 16, childCell (childCell (ordinalCellCode 2241383) 8) 17, childCell (childCell (ordinalCellCode 2241383) 8) 18, childCell (childCell (ordinalCellCode 2241383) 8) 19, childCell (childCell (ordinalCellCode 2241383) 8) 20, childCell (childCell (ordinalCellCode 2241383) 8) 21, childCell (childCell (ordinalCellCode 2241383) 8) 22, childCell (childCell (ordinalCellCode 2241383) 8) 23])
def tags2 : List WitnessTag := (tags1) ++ ([.midpoint 1, .accept 0, .accept 0, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0])
theorem checked2 : checkWitnessTape pending2 tags2 = true := by
  exact checkWitnessTape_append_transport (pending1) ([childCell (childCell (ordinalCellCode 2241383) 8) 16, childCell (childCell (ordinalCellCode 2241383) 8) 17, childCell (childCell (ordinalCellCode 2241383) 8) 18, childCell (childCell (ordinalCellCode 2241383) 8) 19, childCell (childCell (ordinalCellCode 2241383) 8) 20, childCell (childCell (ordinalCellCode 2241383) 8) 21, childCell (childCell (ordinalCellCode 2241383) 8) 22, childCell (childCell (ordinalCellCode 2241383) 8) 23]) pending2
    (tags1) ([.midpoint 1, .accept 0, .accept 0, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0]) tags2
    rfl rfl (checked1) (Seed0024PhaseCore20261007.Leaf8Centre385Group13.checked)
#print axioms checked2

def pending3 : List CellCode := (pending2) ++ ([childCell (childCell (ordinalCellCode 2241383) 8) 24, childCell (childCell (ordinalCellCode 2241383) 8) 25, childCell (childCell (ordinalCellCode 2241383) 8) 26, childCell (childCell (ordinalCellCode 2241383) 8) 27, childCell (childCell (ordinalCellCode 2241383) 8) 28, childCell (childCell (ordinalCellCode 2241383) 8) 29, childCell (childCell (ordinalCellCode 2241383) 8) 30, childCell (childCell (ordinalCellCode 2241383) 8) 31])
def tags3 : List WitnessTag := (tags2) ++ ([.midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1])
theorem checked3 : checkWitnessTape pending3 tags3 = true := by
  exact checkWitnessTape_append_transport (pending2) ([childCell (childCell (ordinalCellCode 2241383) 8) 24, childCell (childCell (ordinalCellCode 2241383) 8) 25, childCell (childCell (ordinalCellCode 2241383) 8) 26, childCell (childCell (ordinalCellCode 2241383) 8) 27, childCell (childCell (ordinalCellCode 2241383) 8) 28, childCell (childCell (ordinalCellCode 2241383) 8) 29, childCell (childCell (ordinalCellCode 2241383) 8) 30, childCell (childCell (ordinalCellCode 2241383) 8) 31]) pending3
    (tags2) ([.midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1]) tags3
    rfl rfl (checked2) (Seed0024PhaseCore20261007.Leaf8Centre385Group14.checked)
#print axioms checked3

def pending : List CellCode := [childCell (ordinalCellCode 2241383) 8]
def tags : List WitnessTag := [.split, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .accept 0, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1]
theorem checked : checkWitnessTape pending tags = true := by
  exact checkWitnessTape_split_transport (childCell (ordinalCellCode 2241383) 8) pending3 tags3
    (by rfl) (by decide +kernel) (by decide +kernel) checked3
#print axioms checked

end Seed0024PhaseCore20261007.SegmentedLeaf8Split8
