import TapeCompositionTransport
import Leaf8Centre385Group16
import Leaf8Centre385Group17
import Leaf8Centre385Group18
import Leaf8Centre385Group19

set_option autoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 8000000

namespace Seed0024PhaseCore20261007.SegmentedLeaf8Split10

/- Prevent elaboration from evaluating the leaf checker while matching lists. Kernel checking remains enabled. -/
attribute [local irreducible] checkWitnessTape

def pending1 : List CellCode := ([childCell (childCell (ordinalCellCode 2241383) 10) 0, childCell (childCell (ordinalCellCode 2241383) 10) 1, childCell (childCell (ordinalCellCode 2241383) 10) 2, childCell (childCell (ordinalCellCode 2241383) 10) 3, childCell (childCell (ordinalCellCode 2241383) 10) 4, childCell (childCell (ordinalCellCode 2241383) 10) 5, childCell (childCell (ordinalCellCode 2241383) 10) 6, childCell (childCell (ordinalCellCode 2241383) 10) 7]) ++ ([childCell (childCell (ordinalCellCode 2241383) 10) 8, childCell (childCell (ordinalCellCode 2241383) 10) 9, childCell (childCell (ordinalCellCode 2241383) 10) 10, childCell (childCell (ordinalCellCode 2241383) 10) 11, childCell (childCell (ordinalCellCode 2241383) 10) 12, childCell (childCell (ordinalCellCode 2241383) 10) 13, childCell (childCell (ordinalCellCode 2241383) 10) 14, childCell (childCell (ordinalCellCode 2241383) 10) 15])
def tags1 : List WitnessTag := ([.midpoint 1, .accept 0, .endpoint 1 138222005, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .endpoint 1 138339692]) ++ ([.midpoint 1, .midpoint 1, .midpoint 1, .endpoint 1 137926208, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1])
theorem checked1 : checkWitnessTape pending1 tags1 = true := by
  exact checkWitnessTape_append_transport ([childCell (childCell (ordinalCellCode 2241383) 10) 0, childCell (childCell (ordinalCellCode 2241383) 10) 1, childCell (childCell (ordinalCellCode 2241383) 10) 2, childCell (childCell (ordinalCellCode 2241383) 10) 3, childCell (childCell (ordinalCellCode 2241383) 10) 4, childCell (childCell (ordinalCellCode 2241383) 10) 5, childCell (childCell (ordinalCellCode 2241383) 10) 6, childCell (childCell (ordinalCellCode 2241383) 10) 7]) ([childCell (childCell (ordinalCellCode 2241383) 10) 8, childCell (childCell (ordinalCellCode 2241383) 10) 9, childCell (childCell (ordinalCellCode 2241383) 10) 10, childCell (childCell (ordinalCellCode 2241383) 10) 11, childCell (childCell (ordinalCellCode 2241383) 10) 12, childCell (childCell (ordinalCellCode 2241383) 10) 13, childCell (childCell (ordinalCellCode 2241383) 10) 14, childCell (childCell (ordinalCellCode 2241383) 10) 15]) pending1
    ([.midpoint 1, .accept 0, .endpoint 1 138222005, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .endpoint 1 138339692]) ([.midpoint 1, .midpoint 1, .midpoint 1, .endpoint 1 137926208, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1]) tags1
    rfl rfl (Seed0024PhaseCore20261007.Leaf8Centre385Group16.checked) (Seed0024PhaseCore20261007.Leaf8Centre385Group17.checked)
#print axioms checked1

def pending2 : List CellCode := (pending1) ++ ([childCell (childCell (ordinalCellCode 2241383) 10) 16, childCell (childCell (ordinalCellCode 2241383) 10) 17, childCell (childCell (ordinalCellCode 2241383) 10) 18, childCell (childCell (ordinalCellCode 2241383) 10) 19, childCell (childCell (ordinalCellCode 2241383) 10) 20, childCell (childCell (ordinalCellCode 2241383) 10) 21, childCell (childCell (ordinalCellCode 2241383) 10) 22, childCell (childCell (ordinalCellCode 2241383) 10) 23])
def tags2 : List WitnessTag := (tags1) ++ ([.accept 0, .accept 0, .endpoint 5 139308934, .accept 0, .midpoint 1, .accept 0, .accept 0, .accept 0])
theorem checked2 : checkWitnessTape pending2 tags2 = true := by
  exact checkWitnessTape_append_transport (pending1) ([childCell (childCell (ordinalCellCode 2241383) 10) 16, childCell (childCell (ordinalCellCode 2241383) 10) 17, childCell (childCell (ordinalCellCode 2241383) 10) 18, childCell (childCell (ordinalCellCode 2241383) 10) 19, childCell (childCell (ordinalCellCode 2241383) 10) 20, childCell (childCell (ordinalCellCode 2241383) 10) 21, childCell (childCell (ordinalCellCode 2241383) 10) 22, childCell (childCell (ordinalCellCode 2241383) 10) 23]) pending2
    (tags1) ([.accept 0, .accept 0, .endpoint 5 139308934, .accept 0, .midpoint 1, .accept 0, .accept 0, .accept 0]) tags2
    rfl rfl (checked1) (Seed0024PhaseCore20261007.Leaf8Centre385Group18.checked)
#print axioms checked2

def pending3 : List CellCode := (pending2) ++ ([childCell (childCell (ordinalCellCode 2241383) 10) 24, childCell (childCell (ordinalCellCode 2241383) 10) 25, childCell (childCell (ordinalCellCode 2241383) 10) 26, childCell (childCell (ordinalCellCode 2241383) 10) 27, childCell (childCell (ordinalCellCode 2241383) 10) 28, childCell (childCell (ordinalCellCode 2241383) 10) 29, childCell (childCell (ordinalCellCode 2241383) 10) 30, childCell (childCell (ordinalCellCode 2241383) 10) 31])
def tags3 : List WitnessTag := (tags2) ++ ([.midpoint 1, .accept 0, .endpoint 1 138217599, .endpoint 5 139732957, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0])
theorem checked3 : checkWitnessTape pending3 tags3 = true := by
  exact checkWitnessTape_append_transport (pending2) ([childCell (childCell (ordinalCellCode 2241383) 10) 24, childCell (childCell (ordinalCellCode 2241383) 10) 25, childCell (childCell (ordinalCellCode 2241383) 10) 26, childCell (childCell (ordinalCellCode 2241383) 10) 27, childCell (childCell (ordinalCellCode 2241383) 10) 28, childCell (childCell (ordinalCellCode 2241383) 10) 29, childCell (childCell (ordinalCellCode 2241383) 10) 30, childCell (childCell (ordinalCellCode 2241383) 10) 31]) pending3
    (tags2) ([.midpoint 1, .accept 0, .endpoint 1 138217599, .endpoint 5 139732957, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0]) tags3
    rfl rfl (checked2) (Seed0024PhaseCore20261007.Leaf8Centre385Group19.checked)
#print axioms checked3

def pending : List CellCode := [childCell (ordinalCellCode 2241383) 10]
def tags : List WitnessTag := [.split, .midpoint 1, .accept 0, .endpoint 1 138222005, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .endpoint 1 138339692, .midpoint 1, .midpoint 1, .midpoint 1, .endpoint 1 137926208, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .accept 0, .endpoint 5 139308934, .accept 0, .midpoint 1, .accept 0, .accept 0, .accept 0, .midpoint 1, .accept 0, .endpoint 1 138217599, .endpoint 5 139732957, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0]
theorem checked : checkWitnessTape pending tags = true := by
  exact checkWitnessTape_split_transport (childCell (ordinalCellCode 2241383) 10) pending3 tags3
    (by rfl) (by decide +kernel) (by decide +kernel) checked3
#print axioms checked

end Seed0024PhaseCore20261007.SegmentedLeaf8Split10
