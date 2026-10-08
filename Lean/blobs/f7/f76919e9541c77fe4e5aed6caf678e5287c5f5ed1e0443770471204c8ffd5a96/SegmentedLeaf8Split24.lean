import TapeCompositionTransport
import Leaf8Centre385Group40
import Leaf8Centre385Group41
import Leaf8Centre385Group42
import Leaf8Centre385Group43

set_option autoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 8000000

namespace Seed0024PhaseCore20261007.SegmentedLeaf8Split24

/- Prevent elaboration from evaluating the leaf checker while matching lists. Kernel checking remains enabled. -/
attribute [local irreducible] checkWitnessTape

def pending1 : List CellCode := ([childCell (childCell (ordinalCellCode 2241383) 24) 0, childCell (childCell (ordinalCellCode 2241383) 24) 1, childCell (childCell (ordinalCellCode 2241383) 24) 2, childCell (childCell (ordinalCellCode 2241383) 24) 3, childCell (childCell (ordinalCellCode 2241383) 24) 4, childCell (childCell (ordinalCellCode 2241383) 24) 5, childCell (childCell (ordinalCellCode 2241383) 24) 6, childCell (childCell (ordinalCellCode 2241383) 24) 7]) ++ ([childCell (childCell (ordinalCellCode 2241383) 24) 8, childCell (childCell (ordinalCellCode 2241383) 24) 9, childCell (childCell (ordinalCellCode 2241383) 24) 10, childCell (childCell (ordinalCellCode 2241383) 24) 11, childCell (childCell (ordinalCellCode 2241383) 24) 12, childCell (childCell (ordinalCellCode 2241383) 24) 13, childCell (childCell (ordinalCellCode 2241383) 24) 14, childCell (childCell (ordinalCellCode 2241383) 24) 15])
def tags1 : List WitnessTag := ([.endpoint 3 190752662, .accept 0, .endpoint 3 188972338, .accept 0, .midpoint 1, .accept 0, .accept 0, .accept 0]) ++ ([.midpoint 1, .endpoint 3 190798975, .midpoint 3, .endpoint 3 188943493, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0])
theorem checked1 : checkWitnessTape pending1 tags1 = true := by
  exact checkWitnessTape_append_transport ([childCell (childCell (ordinalCellCode 2241383) 24) 0, childCell (childCell (ordinalCellCode 2241383) 24) 1, childCell (childCell (ordinalCellCode 2241383) 24) 2, childCell (childCell (ordinalCellCode 2241383) 24) 3, childCell (childCell (ordinalCellCode 2241383) 24) 4, childCell (childCell (ordinalCellCode 2241383) 24) 5, childCell (childCell (ordinalCellCode 2241383) 24) 6, childCell (childCell (ordinalCellCode 2241383) 24) 7]) ([childCell (childCell (ordinalCellCode 2241383) 24) 8, childCell (childCell (ordinalCellCode 2241383) 24) 9, childCell (childCell (ordinalCellCode 2241383) 24) 10, childCell (childCell (ordinalCellCode 2241383) 24) 11, childCell (childCell (ordinalCellCode 2241383) 24) 12, childCell (childCell (ordinalCellCode 2241383) 24) 13, childCell (childCell (ordinalCellCode 2241383) 24) 14, childCell (childCell (ordinalCellCode 2241383) 24) 15]) pending1
    ([.endpoint 3 190752662, .accept 0, .endpoint 3 188972338, .accept 0, .midpoint 1, .accept 0, .accept 0, .accept 0]) ([.midpoint 1, .endpoint 3 190798975, .midpoint 3, .endpoint 3 188943493, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0]) tags1
    rfl rfl (Seed0024PhaseCore20261007.Leaf8Centre385Group40.checked) (Seed0024PhaseCore20261007.Leaf8Centre385Group41.checked)
#print axioms checked1

def pending2 : List CellCode := (pending1) ++ ([childCell (childCell (ordinalCellCode 2241383) 24) 16, childCell (childCell (ordinalCellCode 2241383) 24) 17, childCell (childCell (ordinalCellCode 2241383) 24) 18, childCell (childCell (ordinalCellCode 2241383) 24) 19, childCell (childCell (ordinalCellCode 2241383) 24) 20, childCell (childCell (ordinalCellCode 2241383) 24) 21, childCell (childCell (ordinalCellCode 2241383) 24) 22, childCell (childCell (ordinalCellCode 2241383) 24) 23])
def tags2 : List WitnessTag := (tags1) ++ ([.midpoint 3, .accept 0, .endpoint 3 190937555, .accept 0, .endpoint 0 188364711, .accept 0, .accept 0, .accept 0])
theorem checked2 : checkWitnessTape pending2 tags2 = true := by
  exact checkWitnessTape_append_transport (pending1) ([childCell (childCell (ordinalCellCode 2241383) 24) 16, childCell (childCell (ordinalCellCode 2241383) 24) 17, childCell (childCell (ordinalCellCode 2241383) 24) 18, childCell (childCell (ordinalCellCode 2241383) 24) 19, childCell (childCell (ordinalCellCode 2241383) 24) 20, childCell (childCell (ordinalCellCode 2241383) 24) 21, childCell (childCell (ordinalCellCode 2241383) 24) 22, childCell (childCell (ordinalCellCode 2241383) 24) 23]) pending2
    (tags1) ([.midpoint 3, .accept 0, .endpoint 3 190937555, .accept 0, .endpoint 0 188364711, .accept 0, .accept 0, .accept 0]) tags2
    rfl rfl (checked1) (Seed0024PhaseCore20261007.Leaf8Centre385Group42.checked)
#print axioms checked2

def pending3 : List CellCode := (pending2) ++ ([childCell (childCell (ordinalCellCode 2241383) 24) 24, childCell (childCell (ordinalCellCode 2241383) 24) 25, childCell (childCell (ordinalCellCode 2241383) 24) 26, childCell (childCell (ordinalCellCode 2241383) 24) 27, childCell (childCell (ordinalCellCode 2241383) 24) 28, childCell (childCell (ordinalCellCode 2241383) 24) 29, childCell (childCell (ordinalCellCode 2241383) 24) 30, childCell (childCell (ordinalCellCode 2241383) 24) 31])
def tags3 : List WitnessTag := (tags2) ++ ([.midpoint 3, .midpoint 3, .midpoint 3, .endpoint 3 190834161, .endpoint 0 189820161, .endpoint 0 188707005, .midpoint 3, .accept 0])
theorem checked3 : checkWitnessTape pending3 tags3 = true := by
  exact checkWitnessTape_append_transport (pending2) ([childCell (childCell (ordinalCellCode 2241383) 24) 24, childCell (childCell (ordinalCellCode 2241383) 24) 25, childCell (childCell (ordinalCellCode 2241383) 24) 26, childCell (childCell (ordinalCellCode 2241383) 24) 27, childCell (childCell (ordinalCellCode 2241383) 24) 28, childCell (childCell (ordinalCellCode 2241383) 24) 29, childCell (childCell (ordinalCellCode 2241383) 24) 30, childCell (childCell (ordinalCellCode 2241383) 24) 31]) pending3
    (tags2) ([.midpoint 3, .midpoint 3, .midpoint 3, .endpoint 3 190834161, .endpoint 0 189820161, .endpoint 0 188707005, .midpoint 3, .accept 0]) tags3
    rfl rfl (checked2) (Seed0024PhaseCore20261007.Leaf8Centre385Group43.checked)
#print axioms checked3

def pending : List CellCode := [childCell (ordinalCellCode 2241383) 24]
def tags : List WitnessTag := [.split, .endpoint 3 190752662, .accept 0, .endpoint 3 188972338, .accept 0, .midpoint 1, .accept 0, .accept 0, .accept 0, .midpoint 1, .endpoint 3 190798975, .midpoint 3, .endpoint 3 188943493, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .midpoint 3, .accept 0, .endpoint 3 190937555, .accept 0, .endpoint 0 188364711, .accept 0, .accept 0, .accept 0, .midpoint 3, .midpoint 3, .midpoint 3, .endpoint 3 190834161, .endpoint 0 189820161, .endpoint 0 188707005, .midpoint 3, .accept 0]
theorem checked : checkWitnessTape pending tags = true := by
  exact checkWitnessTape_split_transport (childCell (ordinalCellCode 2241383) 24) pending3 tags3
    (by rfl) (by decide +kernel) (by decide +kernel) checked3
#print axioms checked

end Seed0024PhaseCore20261007.SegmentedLeaf8Split24
