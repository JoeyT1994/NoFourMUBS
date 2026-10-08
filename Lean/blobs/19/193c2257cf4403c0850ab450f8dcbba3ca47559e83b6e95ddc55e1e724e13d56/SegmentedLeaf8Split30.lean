import TapeCompositionTransport
import Leaf8Centre385Group50
import Leaf8Centre385Group51
import Leaf8Centre385Group52
import Leaf8Centre385Group53

set_option autoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 8000000

namespace Seed0024PhaseCore20261007.SegmentedLeaf8Split30

/- Prevent elaboration from evaluating the leaf checker while matching lists. Kernel checking remains enabled. -/
attribute [local irreducible] checkWitnessTape

def pending1 : List CellCode := ([childCell (childCell (ordinalCellCode 2241383) 30) 0, childCell (childCell (ordinalCellCode 2241383) 30) 1, childCell (childCell (ordinalCellCode 2241383) 30) 2, childCell (childCell (ordinalCellCode 2241383) 30) 3, childCell (childCell (ordinalCellCode 2241383) 30) 4, childCell (childCell (ordinalCellCode 2241383) 30) 5, childCell (childCell (ordinalCellCode 2241383) 30) 6, childCell (childCell (ordinalCellCode 2241383) 30) 7]) ++ ([childCell (childCell (ordinalCellCode 2241383) 30) 8, childCell (childCell (ordinalCellCode 2241383) 30) 9, childCell (childCell (ordinalCellCode 2241383) 30) 10, childCell (childCell (ordinalCellCode 2241383) 30) 11, childCell (childCell (ordinalCellCode 2241383) 30) 12, childCell (childCell (ordinalCellCode 2241383) 30) 13, childCell (childCell (ordinalCellCode 2241383) 30) 14, childCell (childCell (ordinalCellCode 2241383) 30) 15])
def tags1 : List WitnessTag := ([.endpoint 1 137099235, .accept 0, .accept 0, .accept 0, .midpoint 1, .endpoint 1 137725090, .midpoint 1, .endpoint 4 190769906]) ++ ([.midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1])
theorem checked1 : checkWitnessTape pending1 tags1 = true := by
  exact checkWitnessTape_append_transport ([childCell (childCell (ordinalCellCode 2241383) 30) 0, childCell (childCell (ordinalCellCode 2241383) 30) 1, childCell (childCell (ordinalCellCode 2241383) 30) 2, childCell (childCell (ordinalCellCode 2241383) 30) 3, childCell (childCell (ordinalCellCode 2241383) 30) 4, childCell (childCell (ordinalCellCode 2241383) 30) 5, childCell (childCell (ordinalCellCode 2241383) 30) 6, childCell (childCell (ordinalCellCode 2241383) 30) 7]) ([childCell (childCell (ordinalCellCode 2241383) 30) 8, childCell (childCell (ordinalCellCode 2241383) 30) 9, childCell (childCell (ordinalCellCode 2241383) 30) 10, childCell (childCell (ordinalCellCode 2241383) 30) 11, childCell (childCell (ordinalCellCode 2241383) 30) 12, childCell (childCell (ordinalCellCode 2241383) 30) 13, childCell (childCell (ordinalCellCode 2241383) 30) 14, childCell (childCell (ordinalCellCode 2241383) 30) 15]) pending1
    ([.endpoint 1 137099235, .accept 0, .accept 0, .accept 0, .midpoint 1, .endpoint 1 137725090, .midpoint 1, .endpoint 4 190769906]) ([.midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1]) tags1
    rfl rfl (Seed0024PhaseCore20261007.Leaf8Centre385Group50.checked) (Seed0024PhaseCore20261007.Leaf8Centre385Group51.checked)
#print axioms checked1

def pending2 : List CellCode := (pending1) ++ ([childCell (childCell (ordinalCellCode 2241383) 30) 16, childCell (childCell (ordinalCellCode 2241383) 30) 17, childCell (childCell (ordinalCellCode 2241383) 30) 18, childCell (childCell (ordinalCellCode 2241383) 30) 19, childCell (childCell (ordinalCellCode 2241383) 30) 20, childCell (childCell (ordinalCellCode 2241383) 30) 21, childCell (childCell (ordinalCellCode 2241383) 30) 22, childCell (childCell (ordinalCellCode 2241383) 30) 23])
def tags2 : List WitnessTag := (tags1) ++ ([.accept 0, .accept 0, .endpoint 5 138727926, .accept 0, .endpoint 1 137845679, .accept 0, .endpoint 4 190912587, .accept 0])
theorem checked2 : checkWitnessTape pending2 tags2 = true := by
  exact checkWitnessTape_append_transport (pending1) ([childCell (childCell (ordinalCellCode 2241383) 30) 16, childCell (childCell (ordinalCellCode 2241383) 30) 17, childCell (childCell (ordinalCellCode 2241383) 30) 18, childCell (childCell (ordinalCellCode 2241383) 30) 19, childCell (childCell (ordinalCellCode 2241383) 30) 20, childCell (childCell (ordinalCellCode 2241383) 30) 21, childCell (childCell (ordinalCellCode 2241383) 30) 22, childCell (childCell (ordinalCellCode 2241383) 30) 23]) pending2
    (tags1) ([.accept 0, .accept 0, .endpoint 5 138727926, .accept 0, .endpoint 1 137845679, .accept 0, .endpoint 4 190912587, .accept 0]) tags2
    rfl rfl (checked1) (Seed0024PhaseCore20261007.Leaf8Centre385Group52.checked)
#print axioms checked2

def pending3 : List CellCode := (pending2) ++ ([childCell (childCell (ordinalCellCode 2241383) 30) 24, childCell (childCell (ordinalCellCode 2241383) 30) 25, childCell (childCell (ordinalCellCode 2241383) 30) 26, childCell (childCell (ordinalCellCode 2241383) 30) 27, childCell (childCell (ordinalCellCode 2241383) 30) 28, childCell (childCell (ordinalCellCode 2241383) 30) 29, childCell (childCell (ordinalCellCode 2241383) 30) 30, childCell (childCell (ordinalCellCode 2241383) 30) 31])
def tags3 : List WitnessTag := (tags2) ++ ([.midpoint 1, .accept 0, .midpoint 5, .endpoint 5 139535942, .midpoint 1, .endpoint 1 137367876, .midpoint 1, .accept 0])
theorem checked3 : checkWitnessTape pending3 tags3 = true := by
  exact checkWitnessTape_append_transport (pending2) ([childCell (childCell (ordinalCellCode 2241383) 30) 24, childCell (childCell (ordinalCellCode 2241383) 30) 25, childCell (childCell (ordinalCellCode 2241383) 30) 26, childCell (childCell (ordinalCellCode 2241383) 30) 27, childCell (childCell (ordinalCellCode 2241383) 30) 28, childCell (childCell (ordinalCellCode 2241383) 30) 29, childCell (childCell (ordinalCellCode 2241383) 30) 30, childCell (childCell (ordinalCellCode 2241383) 30) 31]) pending3
    (tags2) ([.midpoint 1, .accept 0, .midpoint 5, .endpoint 5 139535942, .midpoint 1, .endpoint 1 137367876, .midpoint 1, .accept 0]) tags3
    rfl rfl (checked2) (Seed0024PhaseCore20261007.Leaf8Centre385Group53.checked)
#print axioms checked3

def pending : List CellCode := [childCell (ordinalCellCode 2241383) 30]
def tags : List WitnessTag := [.split, .endpoint 1 137099235, .accept 0, .accept 0, .accept 0, .midpoint 1, .endpoint 1 137725090, .midpoint 1, .endpoint 4 190769906, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .accept 0, .endpoint 5 138727926, .accept 0, .endpoint 1 137845679, .accept 0, .endpoint 4 190912587, .accept 0, .midpoint 1, .accept 0, .midpoint 5, .endpoint 5 139535942, .midpoint 1, .endpoint 1 137367876, .midpoint 1, .accept 0]
theorem checked : checkWitnessTape pending tags = true := by
  exact checkWitnessTape_split_transport (childCell (ordinalCellCode 2241383) 30) pending3 tags3
    (by rfl) (by decide +kernel) (by decide +kernel) checked3
#print axioms checked

end Seed0024PhaseCore20261007.SegmentedLeaf8Split30
