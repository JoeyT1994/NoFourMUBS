import TapeCompositionTransport
import Leaf8Centre385Group35
import Leaf8Centre385Group36
import Leaf8Centre385Group37
import Leaf8Centre385Group38

set_option autoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 8000000

namespace Seed0024PhaseCore20261007.SegmentedLeaf8Split22

/- Prevent elaboration from evaluating the leaf checker while matching lists. Kernel checking remains enabled. -/
attribute [local irreducible] checkWitnessTape

def pending1 : List CellCode := ([childCell (childCell (ordinalCellCode 2241383) 22) 0, childCell (childCell (ordinalCellCode 2241383) 22) 1, childCell (childCell (ordinalCellCode 2241383) 22) 2, childCell (childCell (ordinalCellCode 2241383) 22) 3, childCell (childCell (ordinalCellCode 2241383) 22) 4, childCell (childCell (ordinalCellCode 2241383) 22) 5, childCell (childCell (ordinalCellCode 2241383) 22) 6, childCell (childCell (ordinalCellCode 2241383) 22) 7]) ++ ([childCell (childCell (ordinalCellCode 2241383) 22) 8, childCell (childCell (ordinalCellCode 2241383) 22) 9, childCell (childCell (ordinalCellCode 2241383) 22) 10, childCell (childCell (ordinalCellCode 2241383) 22) 11, childCell (childCell (ordinalCellCode 2241383) 22) 12, childCell (childCell (ordinalCellCode 2241383) 22) 13, childCell (childCell (ordinalCellCode 2241383) 22) 14, childCell (childCell (ordinalCellCode 2241383) 22) 15])
def tags1 : List WitnessTag := ([.endpoint 4 190746942, .accept 0, .midpoint 4, .endpoint 4 190814952, .midpoint 4, .endpoint 4 191088876, .midpoint 4, .midpoint 4]) ++ ([.accept 0, .accept 0, .midpoint 4, .accept 0, .endpoint 1 138210844, .accept 0, .midpoint 4, .midpoint 4])
theorem checked1 : checkWitnessTape pending1 tags1 = true := by
  exact checkWitnessTape_append_transport ([childCell (childCell (ordinalCellCode 2241383) 22) 0, childCell (childCell (ordinalCellCode 2241383) 22) 1, childCell (childCell (ordinalCellCode 2241383) 22) 2, childCell (childCell (ordinalCellCode 2241383) 22) 3, childCell (childCell (ordinalCellCode 2241383) 22) 4, childCell (childCell (ordinalCellCode 2241383) 22) 5, childCell (childCell (ordinalCellCode 2241383) 22) 6, childCell (childCell (ordinalCellCode 2241383) 22) 7]) ([childCell (childCell (ordinalCellCode 2241383) 22) 8, childCell (childCell (ordinalCellCode 2241383) 22) 9, childCell (childCell (ordinalCellCode 2241383) 22) 10, childCell (childCell (ordinalCellCode 2241383) 22) 11, childCell (childCell (ordinalCellCode 2241383) 22) 12, childCell (childCell (ordinalCellCode 2241383) 22) 13, childCell (childCell (ordinalCellCode 2241383) 22) 14, childCell (childCell (ordinalCellCode 2241383) 22) 15]) pending1
    ([.endpoint 4 190746942, .accept 0, .midpoint 4, .endpoint 4 190814952, .midpoint 4, .endpoint 4 191088876, .midpoint 4, .midpoint 4]) ([.accept 0, .accept 0, .midpoint 4, .accept 0, .endpoint 1 138210844, .accept 0, .midpoint 4, .midpoint 4]) tags1
    rfl rfl (Seed0024PhaseCore20261007.Leaf8Centre385Group35.checked) (Seed0024PhaseCore20261007.Leaf8Centre385Group36.checked)
#print axioms checked1

def pending2 : List CellCode := (pending1) ++ ([childCell (childCell (ordinalCellCode 2241383) 22) 16, childCell (childCell (ordinalCellCode 2241383) 22) 17, childCell (childCell (ordinalCellCode 2241383) 22) 18, childCell (childCell (ordinalCellCode 2241383) 22) 19, childCell (childCell (ordinalCellCode 2241383) 22) 20, childCell (childCell (ordinalCellCode 2241383) 22) 21, childCell (childCell (ordinalCellCode 2241383) 22) 22, childCell (childCell (ordinalCellCode 2241383) 22) 23])
def tags2 : List WitnessTag := (tags1) ++ ([.accept 0, .accept 0, .endpoint 4 190945512, .accept 0, .endpoint 2 137498916, .accept 0, .midpoint 4, .endpoint 4 191314646])
theorem checked2 : checkWitnessTape pending2 tags2 = true := by
  exact checkWitnessTape_append_transport (pending1) ([childCell (childCell (ordinalCellCode 2241383) 22) 16, childCell (childCell (ordinalCellCode 2241383) 22) 17, childCell (childCell (ordinalCellCode 2241383) 22) 18, childCell (childCell (ordinalCellCode 2241383) 22) 19, childCell (childCell (ordinalCellCode 2241383) 22) 20, childCell (childCell (ordinalCellCode 2241383) 22) 21, childCell (childCell (ordinalCellCode 2241383) 22) 22, childCell (childCell (ordinalCellCode 2241383) 22) 23]) pending2
    (tags1) ([.accept 0, .accept 0, .endpoint 4 190945512, .accept 0, .endpoint 2 137498916, .accept 0, .midpoint 4, .endpoint 4 191314646]) tags2
    rfl rfl (checked1) (Seed0024PhaseCore20261007.Leaf8Centre385Group37.checked)
#print axioms checked2

def pending3 : List CellCode := (pending2) ++ ([childCell (childCell (ordinalCellCode 2241383) 22) 24, childCell (childCell (ordinalCellCode 2241383) 22) 25, childCell (childCell (ordinalCellCode 2241383) 22) 26, childCell (childCell (ordinalCellCode 2241383) 22) 27, childCell (childCell (ordinalCellCode 2241383) 22) 28, childCell (childCell (ordinalCellCode 2241383) 22) 29, childCell (childCell (ordinalCellCode 2241383) 22) 30, childCell (childCell (ordinalCellCode 2241383) 22) 31])
def tags3 : List WitnessTag := (tags2) ++ ([.accept 0, .accept 0, .accept 0, .accept 0, .accept 0, .accept 0, .midpoint 4, .accept 0])
theorem checked3 : checkWitnessTape pending3 tags3 = true := by
  exact checkWitnessTape_append_transport (pending2) ([childCell (childCell (ordinalCellCode 2241383) 22) 24, childCell (childCell (ordinalCellCode 2241383) 22) 25, childCell (childCell (ordinalCellCode 2241383) 22) 26, childCell (childCell (ordinalCellCode 2241383) 22) 27, childCell (childCell (ordinalCellCode 2241383) 22) 28, childCell (childCell (ordinalCellCode 2241383) 22) 29, childCell (childCell (ordinalCellCode 2241383) 22) 30, childCell (childCell (ordinalCellCode 2241383) 22) 31]) pending3
    (tags2) ([.accept 0, .accept 0, .accept 0, .accept 0, .accept 0, .accept 0, .midpoint 4, .accept 0]) tags3
    rfl rfl (checked2) (Seed0024PhaseCore20261007.Leaf8Centre385Group38.checked)
#print axioms checked3

def pending : List CellCode := [childCell (ordinalCellCode 2241383) 22]
def tags : List WitnessTag := [.split, .endpoint 4 190746942, .accept 0, .midpoint 4, .endpoint 4 190814952, .midpoint 4, .endpoint 4 191088876, .midpoint 4, .midpoint 4, .accept 0, .accept 0, .midpoint 4, .accept 0, .endpoint 1 138210844, .accept 0, .midpoint 4, .midpoint 4, .accept 0, .accept 0, .endpoint 4 190945512, .accept 0, .endpoint 2 137498916, .accept 0, .midpoint 4, .endpoint 4 191314646, .accept 0, .accept 0, .accept 0, .accept 0, .accept 0, .accept 0, .midpoint 4, .accept 0]
theorem checked : checkWitnessTape pending tags = true := by
  exact checkWitnessTape_split_transport (childCell (ordinalCellCode 2241383) 22) pending3 tags3
    (by rfl) (by decide +kernel) (by decide +kernel) checked3
#print axioms checked

end Seed0024PhaseCore20261007.SegmentedLeaf8Split22
