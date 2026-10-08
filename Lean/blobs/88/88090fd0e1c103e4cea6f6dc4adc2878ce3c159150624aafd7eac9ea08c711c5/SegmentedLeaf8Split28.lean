import TapeCompositionTransport
import Leaf8Centre385Group45
import Leaf8Centre385Group46
import Leaf8Centre385Group47
import Leaf8Centre385Group48

set_option autoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 8000000

namespace Seed0024PhaseCore20261007.SegmentedLeaf8Split28

/- Prevent elaboration from evaluating the leaf checker while matching lists. Kernel checking remains enabled. -/
attribute [local irreducible] checkWitnessTape

def pending1 : List CellCode := ([childCell (childCell (ordinalCellCode 2241383) 28) 0, childCell (childCell (ordinalCellCode 2241383) 28) 1, childCell (childCell (ordinalCellCode 2241383) 28) 2, childCell (childCell (ordinalCellCode 2241383) 28) 3, childCell (childCell (ordinalCellCode 2241383) 28) 4, childCell (childCell (ordinalCellCode 2241383) 28) 5, childCell (childCell (ordinalCellCode 2241383) 28) 6, childCell (childCell (ordinalCellCode 2241383) 28) 7]) ++ ([childCell (childCell (ordinalCellCode 2241383) 28) 8, childCell (childCell (ordinalCellCode 2241383) 28) 9, childCell (childCell (ordinalCellCode 2241383) 28) 10, childCell (childCell (ordinalCellCode 2241383) 28) 11, childCell (childCell (ordinalCellCode 2241383) 28) 12, childCell (childCell (ordinalCellCode 2241383) 28) 13, childCell (childCell (ordinalCellCode 2241383) 28) 14, childCell (childCell (ordinalCellCode 2241383) 28) 15])
def tags1 : List WitnessTag := ([.midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .endpoint 0 189903327, .endpoint 0 188946864, .midpoint 1, .midpoint 1]) ++ ([.endpoint 0 188280338, .midpoint 1, .midpoint 1, .midpoint 1, .endpoint 0 191659395, .endpoint 0 190853557, .midpoint 1, .midpoint 1])
theorem checked1 : checkWitnessTape pending1 tags1 = true := by
  exact checkWitnessTape_append_transport ([childCell (childCell (ordinalCellCode 2241383) 28) 0, childCell (childCell (ordinalCellCode 2241383) 28) 1, childCell (childCell (ordinalCellCode 2241383) 28) 2, childCell (childCell (ordinalCellCode 2241383) 28) 3, childCell (childCell (ordinalCellCode 2241383) 28) 4, childCell (childCell (ordinalCellCode 2241383) 28) 5, childCell (childCell (ordinalCellCode 2241383) 28) 6, childCell (childCell (ordinalCellCode 2241383) 28) 7]) ([childCell (childCell (ordinalCellCode 2241383) 28) 8, childCell (childCell (ordinalCellCode 2241383) 28) 9, childCell (childCell (ordinalCellCode 2241383) 28) 10, childCell (childCell (ordinalCellCode 2241383) 28) 11, childCell (childCell (ordinalCellCode 2241383) 28) 12, childCell (childCell (ordinalCellCode 2241383) 28) 13, childCell (childCell (ordinalCellCode 2241383) 28) 14, childCell (childCell (ordinalCellCode 2241383) 28) 15]) pending1
    ([.midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .endpoint 0 189903327, .endpoint 0 188946864, .midpoint 1, .midpoint 1]) ([.endpoint 0 188280338, .midpoint 1, .midpoint 1, .midpoint 1, .endpoint 0 191659395, .endpoint 0 190853557, .midpoint 1, .midpoint 1]) tags1
    rfl rfl (Seed0024PhaseCore20261007.Leaf8Centre385Group45.checked) (Seed0024PhaseCore20261007.Leaf8Centre385Group46.checked)
#print axioms checked1

def pending2 : List CellCode := (pending1) ++ ([childCell (childCell (ordinalCellCode 2241383) 28) 16, childCell (childCell (ordinalCellCode 2241383) 28) 17, childCell (childCell (ordinalCellCode 2241383) 28) 18, childCell (childCell (ordinalCellCode 2241383) 28) 19, childCell (childCell (ordinalCellCode 2241383) 28) 20, childCell (childCell (ordinalCellCode 2241383) 28) 21, childCell (childCell (ordinalCellCode 2241383) 28) 22, childCell (childCell (ordinalCellCode 2241383) 28) 23])
def tags2 : List WitnessTag := (tags1) ++ ([.midpoint 0, .endpoint 0 190691459, .accept 0, .accept 0, .midpoint 0, .midpoint 0, .endpoint 0 189720306, .endpoint 0 188660289])
theorem checked2 : checkWitnessTape pending2 tags2 = true := by
  exact checkWitnessTape_append_transport (pending1) ([childCell (childCell (ordinalCellCode 2241383) 28) 16, childCell (childCell (ordinalCellCode 2241383) 28) 17, childCell (childCell (ordinalCellCode 2241383) 28) 18, childCell (childCell (ordinalCellCode 2241383) 28) 19, childCell (childCell (ordinalCellCode 2241383) 28) 20, childCell (childCell (ordinalCellCode 2241383) 28) 21, childCell (childCell (ordinalCellCode 2241383) 28) 22, childCell (childCell (ordinalCellCode 2241383) 28) 23]) pending2
    (tags1) ([.midpoint 0, .endpoint 0 190691459, .accept 0, .accept 0, .midpoint 0, .midpoint 0, .endpoint 0 189720306, .endpoint 0 188660289]) tags2
    rfl rfl (checked1) (Seed0024PhaseCore20261007.Leaf8Centre385Group47.checked)
#print axioms checked2

def pending3 : List CellCode := (pending2) ++ ([childCell (childCell (ordinalCellCode 2241383) 28) 24, childCell (childCell (ordinalCellCode 2241383) 28) 25, childCell (childCell (ordinalCellCode 2241383) 28) 26, childCell (childCell (ordinalCellCode 2241383) 28) 27, childCell (childCell (ordinalCellCode 2241383) 28) 28, childCell (childCell (ordinalCellCode 2241383) 28) 29, childCell (childCell (ordinalCellCode 2241383) 28) 30, childCell (childCell (ordinalCellCode 2241383) 28) 31])
def tags3 : List WitnessTag := (tags2) ++ ([.midpoint 0, .midpoint 0, .midpoint 1, .accept 0, .midpoint 0, .midpoint 0, .endpoint 0 191376882, .endpoint 0 190468196])
theorem checked3 : checkWitnessTape pending3 tags3 = true := by
  exact checkWitnessTape_append_transport (pending2) ([childCell (childCell (ordinalCellCode 2241383) 28) 24, childCell (childCell (ordinalCellCode 2241383) 28) 25, childCell (childCell (ordinalCellCode 2241383) 28) 26, childCell (childCell (ordinalCellCode 2241383) 28) 27, childCell (childCell (ordinalCellCode 2241383) 28) 28, childCell (childCell (ordinalCellCode 2241383) 28) 29, childCell (childCell (ordinalCellCode 2241383) 28) 30, childCell (childCell (ordinalCellCode 2241383) 28) 31]) pending3
    (tags2) ([.midpoint 0, .midpoint 0, .midpoint 1, .accept 0, .midpoint 0, .midpoint 0, .endpoint 0 191376882, .endpoint 0 190468196]) tags3
    rfl rfl (checked2) (Seed0024PhaseCore20261007.Leaf8Centre385Group48.checked)
#print axioms checked3

def pending : List CellCode := [childCell (ordinalCellCode 2241383) 28]
def tags : List WitnessTag := [.split, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .endpoint 0 189903327, .endpoint 0 188946864, .midpoint 1, .midpoint 1, .endpoint 0 188280338, .midpoint 1, .midpoint 1, .midpoint 1, .endpoint 0 191659395, .endpoint 0 190853557, .midpoint 1, .midpoint 1, .midpoint 0, .endpoint 0 190691459, .accept 0, .accept 0, .midpoint 0, .midpoint 0, .endpoint 0 189720306, .endpoint 0 188660289, .midpoint 0, .midpoint 0, .midpoint 1, .accept 0, .midpoint 0, .midpoint 0, .endpoint 0 191376882, .endpoint 0 190468196]
theorem checked : checkWitnessTape pending tags = true := by
  exact checkWitnessTape_split_transport (childCell (ordinalCellCode 2241383) 28) pending3 tags3
    (by rfl) (by decide +kernel) (by decide +kernel) checked3
#print axioms checked

end Seed0024PhaseCore20261007.SegmentedLeaf8Split28
