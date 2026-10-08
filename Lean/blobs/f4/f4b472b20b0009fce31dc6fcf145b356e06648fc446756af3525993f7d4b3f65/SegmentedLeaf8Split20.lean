import TapeCompositionTransport
import Leaf8Centre385Group30
import Leaf8Centre385Group31
import Leaf8Centre385Group32
import Leaf8Centre385Group33

set_option autoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 8000000

namespace Seed0024PhaseCore20261007.SegmentedLeaf8Split20

/- Prevent elaboration from evaluating the leaf checker while matching lists. Kernel checking remains enabled. -/
attribute [local irreducible] checkWitnessTape

def pending1 : List CellCode := ([childCell (childCell (ordinalCellCode 2241383) 20) 0, childCell (childCell (ordinalCellCode 2241383) 20) 1, childCell (childCell (ordinalCellCode 2241383) 20) 2, childCell (childCell (ordinalCellCode 2241383) 20) 3, childCell (childCell (ordinalCellCode 2241383) 20) 4, childCell (childCell (ordinalCellCode 2241383) 20) 5, childCell (childCell (ordinalCellCode 2241383) 20) 6, childCell (childCell (ordinalCellCode 2241383) 20) 7]) ++ ([childCell (childCell (ordinalCellCode 2241383) 20) 8, childCell (childCell (ordinalCellCode 2241383) 20) 9, childCell (childCell (ordinalCellCode 2241383) 20) 10, childCell (childCell (ordinalCellCode 2241383) 20) 11, childCell (childCell (ordinalCellCode 2241383) 20) 12, childCell (childCell (ordinalCellCode 2241383) 20) 13, childCell (childCell (ordinalCellCode 2241383) 20) 14, childCell (childCell (ordinalCellCode 2241383) 20) 15])
def tags1 : List WitnessTag := ([.midpoint 2, .accept 0, .accept 0, .accept 0, .midpoint 2, .midpoint 2, .endpoint 2 138194020, .accept 0]) ++ ([.endpoint 1 137686082, .accept 0, .accept 0, .accept 0, .midpoint 1, .accept 0, .midpoint 1, .accept 0])
theorem checked1 : checkWitnessTape pending1 tags1 = true := by
  exact checkWitnessTape_append_transport ([childCell (childCell (ordinalCellCode 2241383) 20) 0, childCell (childCell (ordinalCellCode 2241383) 20) 1, childCell (childCell (ordinalCellCode 2241383) 20) 2, childCell (childCell (ordinalCellCode 2241383) 20) 3, childCell (childCell (ordinalCellCode 2241383) 20) 4, childCell (childCell (ordinalCellCode 2241383) 20) 5, childCell (childCell (ordinalCellCode 2241383) 20) 6, childCell (childCell (ordinalCellCode 2241383) 20) 7]) ([childCell (childCell (ordinalCellCode 2241383) 20) 8, childCell (childCell (ordinalCellCode 2241383) 20) 9, childCell (childCell (ordinalCellCode 2241383) 20) 10, childCell (childCell (ordinalCellCode 2241383) 20) 11, childCell (childCell (ordinalCellCode 2241383) 20) 12, childCell (childCell (ordinalCellCode 2241383) 20) 13, childCell (childCell (ordinalCellCode 2241383) 20) 14, childCell (childCell (ordinalCellCode 2241383) 20) 15]) pending1
    ([.midpoint 2, .accept 0, .accept 0, .accept 0, .midpoint 2, .midpoint 2, .endpoint 2 138194020, .accept 0]) ([.endpoint 1 137686082, .accept 0, .accept 0, .accept 0, .midpoint 1, .accept 0, .midpoint 1, .accept 0]) tags1
    rfl rfl (Seed0024PhaseCore20261007.Leaf8Centre385Group30.checked) (Seed0024PhaseCore20261007.Leaf8Centre385Group31.checked)
#print axioms checked1

def pending2 : List CellCode := (pending1) ++ ([childCell (childCell (ordinalCellCode 2241383) 20) 16, childCell (childCell (ordinalCellCode 2241383) 20) 17, childCell (childCell (ordinalCellCode 2241383) 20) 18, childCell (childCell (ordinalCellCode 2241383) 20) 19, childCell (childCell (ordinalCellCode 2241383) 20) 20, childCell (childCell (ordinalCellCode 2241383) 20) 21, childCell (childCell (ordinalCellCode 2241383) 20) 22, childCell (childCell (ordinalCellCode 2241383) 20) 23])
def tags2 : List WitnessTag := (tags1) ++ ([.midpoint 2, .midpoint 2, .midpoint 2, .endpoint 2 139312885, .endpoint 0 190776340, .endpoint 0 189471737, .midpoint 2, .midpoint 2])
theorem checked2 : checkWitnessTape pending2 tags2 = true := by
  exact checkWitnessTape_append_transport (pending1) ([childCell (childCell (ordinalCellCode 2241383) 20) 16, childCell (childCell (ordinalCellCode 2241383) 20) 17, childCell (childCell (ordinalCellCode 2241383) 20) 18, childCell (childCell (ordinalCellCode 2241383) 20) 19, childCell (childCell (ordinalCellCode 2241383) 20) 20, childCell (childCell (ordinalCellCode 2241383) 20) 21, childCell (childCell (ordinalCellCode 2241383) 20) 22, childCell (childCell (ordinalCellCode 2241383) 20) 23]) pending2
    (tags1) ([.midpoint 2, .midpoint 2, .midpoint 2, .endpoint 2 139312885, .endpoint 0 190776340, .endpoint 0 189471737, .midpoint 2, .midpoint 2]) tags2
    rfl rfl (checked1) (Seed0024PhaseCore20261007.Leaf8Centre385Group32.checked)
#print axioms checked2

def pending3 : List CellCode := (pending2) ++ ([childCell (childCell (ordinalCellCode 2241383) 20) 24, childCell (childCell (ordinalCellCode 2241383) 20) 25, childCell (childCell (ordinalCellCode 2241383) 20) 26, childCell (childCell (ordinalCellCode 2241383) 20) 27, childCell (childCell (ordinalCellCode 2241383) 20) 28, childCell (childCell (ordinalCellCode 2241383) 20) 29, childCell (childCell (ordinalCellCode 2241383) 20) 30, childCell (childCell (ordinalCellCode 2241383) 20) 31])
def tags3 : List WitnessTag := (tags2) ++ ([.endpoint 0 189969633, .endpoint 0 188677691, .accept 0, .accept 0, .midpoint 0, .midpoint 0, .endpoint 2 138127825, .accept 0])
theorem checked3 : checkWitnessTape pending3 tags3 = true := by
  exact checkWitnessTape_append_transport (pending2) ([childCell (childCell (ordinalCellCode 2241383) 20) 24, childCell (childCell (ordinalCellCode 2241383) 20) 25, childCell (childCell (ordinalCellCode 2241383) 20) 26, childCell (childCell (ordinalCellCode 2241383) 20) 27, childCell (childCell (ordinalCellCode 2241383) 20) 28, childCell (childCell (ordinalCellCode 2241383) 20) 29, childCell (childCell (ordinalCellCode 2241383) 20) 30, childCell (childCell (ordinalCellCode 2241383) 20) 31]) pending3
    (tags2) ([.endpoint 0 189969633, .endpoint 0 188677691, .accept 0, .accept 0, .midpoint 0, .midpoint 0, .endpoint 2 138127825, .accept 0]) tags3
    rfl rfl (checked2) (Seed0024PhaseCore20261007.Leaf8Centre385Group33.checked)
#print axioms checked3

def pending : List CellCode := [childCell (ordinalCellCode 2241383) 20]
def tags : List WitnessTag := [.split, .midpoint 2, .accept 0, .accept 0, .accept 0, .midpoint 2, .midpoint 2, .endpoint 2 138194020, .accept 0, .endpoint 1 137686082, .accept 0, .accept 0, .accept 0, .midpoint 1, .accept 0, .midpoint 1, .accept 0, .midpoint 2, .midpoint 2, .midpoint 2, .endpoint 2 139312885, .endpoint 0 190776340, .endpoint 0 189471737, .midpoint 2, .midpoint 2, .endpoint 0 189969633, .endpoint 0 188677691, .accept 0, .accept 0, .midpoint 0, .midpoint 0, .endpoint 2 138127825, .accept 0]
theorem checked : checkWitnessTape pending tags = true := by
  exact checkWitnessTape_split_transport (childCell (ordinalCellCode 2241383) 20) pending3 tags3
    (by rfl) (by decide +kernel) (by decide +kernel) checked3
#print axioms checked

end Seed0024PhaseCore20261007.SegmentedLeaf8Split20
