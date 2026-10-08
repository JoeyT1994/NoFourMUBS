import TapeCompositionTransport
import Leaf8Centre385Group01
import Leaf8Centre385Group02
import Leaf8Centre385Group03
import Leaf8Centre385Group04

set_option autoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 8000000

namespace Seed0024PhaseCore20261007.SegmentedLeaf8Split4

/- Prevent elaboration from evaluating the leaf checker while matching lists. Kernel checking remains enabled. -/
attribute [local irreducible] checkWitnessTape

def pending1 : List CellCode := ([childCell (childCell (ordinalCellCode 2241383) 4) 0, childCell (childCell (ordinalCellCode 2241383) 4) 1, childCell (childCell (ordinalCellCode 2241383) 4) 2, childCell (childCell (ordinalCellCode 2241383) 4) 3, childCell (childCell (ordinalCellCode 2241383) 4) 4, childCell (childCell (ordinalCellCode 2241383) 4) 5, childCell (childCell (ordinalCellCode 2241383) 4) 6, childCell (childCell (ordinalCellCode 2241383) 4) 7]) ++ ([childCell (childCell (ordinalCellCode 2241383) 4) 8, childCell (childCell (ordinalCellCode 2241383) 4) 9, childCell (childCell (ordinalCellCode 2241383) 4) 10, childCell (childCell (ordinalCellCode 2241383) 4) 11, childCell (childCell (ordinalCellCode 2241383) 4) 12, childCell (childCell (ordinalCellCode 2241383) 4) 13, childCell (childCell (ordinalCellCode 2241383) 4) 14, childCell (childCell (ordinalCellCode 2241383) 4) 15])
def tags1 : List WitnessTag := ([.midpoint 1, .endpoint 1 137523506, .midpoint 1, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1]) ++ ([.midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1])
theorem checked1 : checkWitnessTape pending1 tags1 = true := by
  exact checkWitnessTape_append_transport ([childCell (childCell (ordinalCellCode 2241383) 4) 0, childCell (childCell (ordinalCellCode 2241383) 4) 1, childCell (childCell (ordinalCellCode 2241383) 4) 2, childCell (childCell (ordinalCellCode 2241383) 4) 3, childCell (childCell (ordinalCellCode 2241383) 4) 4, childCell (childCell (ordinalCellCode 2241383) 4) 5, childCell (childCell (ordinalCellCode 2241383) 4) 6, childCell (childCell (ordinalCellCode 2241383) 4) 7]) ([childCell (childCell (ordinalCellCode 2241383) 4) 8, childCell (childCell (ordinalCellCode 2241383) 4) 9, childCell (childCell (ordinalCellCode 2241383) 4) 10, childCell (childCell (ordinalCellCode 2241383) 4) 11, childCell (childCell (ordinalCellCode 2241383) 4) 12, childCell (childCell (ordinalCellCode 2241383) 4) 13, childCell (childCell (ordinalCellCode 2241383) 4) 14, childCell (childCell (ordinalCellCode 2241383) 4) 15]) pending1
    ([.midpoint 1, .endpoint 1 137523506, .midpoint 1, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1]) ([.midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1]) tags1
    rfl rfl (Seed0024PhaseCore20261007.Leaf8Centre385Group01.checked) (Seed0024PhaseCore20261007.Leaf8Centre385Group02.checked)
#print axioms checked1

def pending2 : List CellCode := (pending1) ++ ([childCell (childCell (ordinalCellCode 2241383) 4) 16, childCell (childCell (ordinalCellCode 2241383) 4) 17, childCell (childCell (ordinalCellCode 2241383) 4) 18, childCell (childCell (ordinalCellCode 2241383) 4) 19, childCell (childCell (ordinalCellCode 2241383) 4) 20, childCell (childCell (ordinalCellCode 2241383) 4) 21, childCell (childCell (ordinalCellCode 2241383) 4) 22, childCell (childCell (ordinalCellCode 2241383) 4) 23])
def tags2 : List WitnessTag := (tags1) ++ ([.endpoint 1 138007504, .accept 0, .accept 0, .accept 0, .midpoint 1, .accept 0, .midpoint 1, .endpoint 4 190599154])
theorem checked2 : checkWitnessTape pending2 tags2 = true := by
  exact checkWitnessTape_append_transport (pending1) ([childCell (childCell (ordinalCellCode 2241383) 4) 16, childCell (childCell (ordinalCellCode 2241383) 4) 17, childCell (childCell (ordinalCellCode 2241383) 4) 18, childCell (childCell (ordinalCellCode 2241383) 4) 19, childCell (childCell (ordinalCellCode 2241383) 4) 20, childCell (childCell (ordinalCellCode 2241383) 4) 21, childCell (childCell (ordinalCellCode 2241383) 4) 22, childCell (childCell (ordinalCellCode 2241383) 4) 23]) pending2
    (tags1) ([.endpoint 1 138007504, .accept 0, .accept 0, .accept 0, .midpoint 1, .accept 0, .midpoint 1, .endpoint 4 190599154]) tags2
    rfl rfl (checked1) (Seed0024PhaseCore20261007.Leaf8Centre385Group03.checked)
#print axioms checked2

def pending3 : List CellCode := (pending2) ++ ([childCell (childCell (ordinalCellCode 2241383) 4) 24, childCell (childCell (ordinalCellCode 2241383) 4) 25, childCell (childCell (ordinalCellCode 2241383) 4) 26, childCell (childCell (ordinalCellCode 2241383) 4) 27, childCell (childCell (ordinalCellCode 2241383) 4) 28, childCell (childCell (ordinalCellCode 2241383) 4) 29, childCell (childCell (ordinalCellCode 2241383) 4) 30, childCell (childCell (ordinalCellCode 2241383) 4) 31])
def tags3 : List WitnessTag := (tags2) ++ ([.midpoint 1, .endpoint 1 137367736, .midpoint 1, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1])
theorem checked3 : checkWitnessTape pending3 tags3 = true := by
  exact checkWitnessTape_append_transport (pending2) ([childCell (childCell (ordinalCellCode 2241383) 4) 24, childCell (childCell (ordinalCellCode 2241383) 4) 25, childCell (childCell (ordinalCellCode 2241383) 4) 26, childCell (childCell (ordinalCellCode 2241383) 4) 27, childCell (childCell (ordinalCellCode 2241383) 4) 28, childCell (childCell (ordinalCellCode 2241383) 4) 29, childCell (childCell (ordinalCellCode 2241383) 4) 30, childCell (childCell (ordinalCellCode 2241383) 4) 31]) pending3
    (tags2) ([.midpoint 1, .endpoint 1 137367736, .midpoint 1, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1]) tags3
    rfl rfl (checked2) (Seed0024PhaseCore20261007.Leaf8Centre385Group04.checked)
#print axioms checked3

def pending : List CellCode := [childCell (ordinalCellCode 2241383) 4]
def tags : List WitnessTag := [.split, .midpoint 1, .endpoint 1 137523506, .midpoint 1, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .endpoint 1 138007504, .accept 0, .accept 0, .accept 0, .midpoint 1, .accept 0, .midpoint 1, .endpoint 4 190599154, .midpoint 1, .endpoint 1 137367736, .midpoint 1, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1]
theorem checked : checkWitnessTape pending tags = true := by
  exact checkWitnessTape_split_transport (childCell (ordinalCellCode 2241383) 4) pending3 tags3
    (by rfl) (by decide +kernel) (by decide +kernel) checked3
#print axioms checked

end Seed0024PhaseCore20261007.SegmentedLeaf8Split4
