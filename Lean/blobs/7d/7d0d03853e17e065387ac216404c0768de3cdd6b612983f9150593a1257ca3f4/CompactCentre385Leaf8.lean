import SeedPhaseTapeComposition
import Leaf8Raw385Erasure
import Leaf8Centre385Group00
import Leaf8Centre385Group01
import Leaf8Centre385Group02
import Leaf8Centre385Group03
import Leaf8Centre385Group04
import Leaf8Centre385Group05
import Leaf8Centre385Group06
import Leaf8Centre385Group07
import Leaf8Centre385Group08
import Leaf8Centre385Group09
import Leaf8Centre385Group10
import Leaf8Centre385Group11
import Leaf8Centre385Group12
import Leaf8Centre385Group13
import Leaf8Centre385Group14
import Leaf8Centre385Group15
import Leaf8Centre385Group16
import Leaf8Centre385Group17
import Leaf8Centre385Group18
import Leaf8Centre385Group19
import Leaf8Centre385Group20
import Leaf8Centre385Group21
import Leaf8Centre385Group22
import Leaf8Centre385Group23
import Leaf8Centre385Group24
import Leaf8Centre385Group25
import Leaf8Centre385Group26
import Leaf8Centre385Group27
import Leaf8Centre385Group28
import Leaf8Centre385Group29
import Leaf8Centre385Group30
import Leaf8Centre385Group31
import Leaf8Centre385Group32
import Leaf8Centre385Group33
import Leaf8Centre385Group34
import Leaf8Centre385Group35
import Leaf8Centre385Group36
import Leaf8Centre385Group37
import Leaf8Centre385Group38
import Leaf8Centre385Group39
import Leaf8Centre385Group40
import Leaf8Centre385Group41
import Leaf8Centre385Group42
import Leaf8Centre385Group43
import Leaf8Centre385Group44
import Leaf8Centre385Group45
import Leaf8Centre385Group46
import Leaf8Centre385Group47
import Leaf8Centre385Group48
import Leaf8Centre385Group49
import Leaf8Centre385Group50
import Leaf8Centre385Group51
import Leaf8Centre385Group52
import Leaf8Centre385Group53
import Leaf8Centre385Group54

/- All arithmetic lives in bounded leaf groups; all32 children are retained. -/
set_option autoImplicit false
set_option maxRecDepth 65536
set_option maxHeartbeats 8000000

namespace Seed0024PhaseCore20261007.CompactCentre385Leaf8

theorem split_4_checked :
    let pending : List CellCode := [childCell (ordinalCellCode 2241383) 4]
    let tags : List WitnessTag := [.split, .midpoint 1, .endpoint 1 137523506, .midpoint 1, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .endpoint 1 138007504, .accept 0, .accept 0, .accept 0, .midpoint 1, .accept 0, .midpoint 1, .endpoint 4 190599154, .midpoint 1, .endpoint 1 137367736, .midpoint 1, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1]
    checkWitnessTape pending tags = true := by
  dsimp only
  exact checkWitnessTape_split (childCell (ordinalCellCode 2241383) 4)
    [.midpoint 1, .endpoint 1 137523506, .midpoint 1, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .endpoint 1 138007504, .accept 0, .accept 0, .accept 0, .midpoint 1, .accept 0, .midpoint 1, .endpoint 4 190599154, .midpoint 1, .endpoint 1 137367736, .midpoint 1, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1]
    (by decide +kernel) (by decide +kernel)
    ((checkWitnessTape_append _ _ _ _ ((checkWitnessTape_append _ _ _ _ ((checkWitnessTape_append _ _ _ _ (Seed0024PhaseCore20261007.Leaf8Centre385Group01.checked) (Seed0024PhaseCore20261007.Leaf8Centre385Group02.checked))) (Seed0024PhaseCore20261007.Leaf8Centre385Group03.checked))) (Seed0024PhaseCore20261007.Leaf8Centre385Group04.checked)))
#print axioms split_4_checked

theorem split_6_checked :
    let pending : List CellCode := [childCell (ordinalCellCode 2241383) 6]
    let tags : List WitnessTag := [.split, .endpoint 1 137305337, .midpoint 4, .midpoint 4, .midpoint 4, .midpoint 1, .endpoint 1 137967686, .midpoint 1, .midpoint 4, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 4, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 4, .endpoint 4 190409113, .midpoint 4, .midpoint 4, .endpoint 1 138398846, .midpoint 4, .midpoint 4, .midpoint 4, .endpoint 1 137281071, .accept 0, .midpoint 4, .midpoint 4, .midpoint 1, .endpoint 1 137925253, .midpoint 1, .midpoint 4]
    checkWitnessTape pending tags = true := by
  dsimp only
  exact checkWitnessTape_split (childCell (ordinalCellCode 2241383) 6)
    [.endpoint 1 137305337, .midpoint 4, .midpoint 4, .midpoint 4, .midpoint 1, .endpoint 1 137967686, .midpoint 1, .midpoint 4, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 4, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 4, .endpoint 4 190409113, .midpoint 4, .midpoint 4, .endpoint 1 138398846, .midpoint 4, .midpoint 4, .midpoint 4, .endpoint 1 137281071, .accept 0, .midpoint 4, .midpoint 4, .midpoint 1, .endpoint 1 137925253, .midpoint 1, .midpoint 4]
    (by decide +kernel) (by decide +kernel)
    ((checkWitnessTape_append _ _ _ _ ((checkWitnessTape_append _ _ _ _ ((checkWitnessTape_append _ _ _ _ (Seed0024PhaseCore20261007.Leaf8Centre385Group06.checked) (Seed0024PhaseCore20261007.Leaf8Centre385Group07.checked))) (Seed0024PhaseCore20261007.Leaf8Centre385Group08.checked))) (Seed0024PhaseCore20261007.Leaf8Centre385Group09.checked)))
#print axioms split_6_checked

theorem split_8_checked :
    let pending : List CellCode := [childCell (ordinalCellCode 2241383) 8]
    let tags : List WitnessTag := [.split, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .accept 0, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1]
    checkWitnessTape pending tags = true := by
  dsimp only
  exact checkWitnessTape_split (childCell (ordinalCellCode 2241383) 8)
    [.midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .accept 0, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1]
    (by decide +kernel) (by decide +kernel)
    ((checkWitnessTape_append _ _ _ _ ((checkWitnessTape_append _ _ _ _ ((checkWitnessTape_append _ _ _ _ (Seed0024PhaseCore20261007.Leaf8Centre385Group11.checked) (Seed0024PhaseCore20261007.Leaf8Centre385Group12.checked))) (Seed0024PhaseCore20261007.Leaf8Centre385Group13.checked))) (Seed0024PhaseCore20261007.Leaf8Centre385Group14.checked)))
#print axioms split_8_checked

theorem split_10_checked :
    let pending : List CellCode := [childCell (ordinalCellCode 2241383) 10]
    let tags : List WitnessTag := [.split, .midpoint 1, .accept 0, .endpoint 1 138222005, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .endpoint 1 138339692, .midpoint 1, .midpoint 1, .midpoint 1, .endpoint 1 137926208, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .accept 0, .endpoint 5 139308934, .accept 0, .midpoint 1, .accept 0, .accept 0, .accept 0, .midpoint 1, .accept 0, .endpoint 1 138217599, .endpoint 5 139732957, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0]
    checkWitnessTape pending tags = true := by
  dsimp only
  exact checkWitnessTape_split (childCell (ordinalCellCode 2241383) 10)
    [.midpoint 1, .accept 0, .endpoint 1 138222005, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .endpoint 1 138339692, .midpoint 1, .midpoint 1, .midpoint 1, .endpoint 1 137926208, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .accept 0, .endpoint 5 139308934, .accept 0, .midpoint 1, .accept 0, .accept 0, .accept 0, .midpoint 1, .accept 0, .endpoint 1 138217599, .endpoint 5 139732957, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0]
    (by decide +kernel) (by decide +kernel)
    ((checkWitnessTape_append _ _ _ _ ((checkWitnessTape_append _ _ _ _ ((checkWitnessTape_append _ _ _ _ (Seed0024PhaseCore20261007.Leaf8Centre385Group16.checked) (Seed0024PhaseCore20261007.Leaf8Centre385Group17.checked))) (Seed0024PhaseCore20261007.Leaf8Centre385Group18.checked))) (Seed0024PhaseCore20261007.Leaf8Centre385Group19.checked)))
#print axioms split_10_checked

theorem split_13_checked :
    let pending : List CellCode := [childCell (ordinalCellCode 2241383) 13]
    let tags : List WitnessTag := [.split, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .accept 0, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1]
    checkWitnessTape pending tags = true := by
  dsimp only
  exact checkWitnessTape_split (childCell (ordinalCellCode 2241383) 13)
    [.midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .accept 0, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1]
    (by decide +kernel) (by decide +kernel)
    ((checkWitnessTape_append _ _ _ _ ((checkWitnessTape_append _ _ _ _ ((checkWitnessTape_append _ _ _ _ (Seed0024PhaseCore20261007.Leaf8Centre385Group21.checked) (Seed0024PhaseCore20261007.Leaf8Centre385Group22.checked))) (Seed0024PhaseCore20261007.Leaf8Centre385Group23.checked))) (Seed0024PhaseCore20261007.Leaf8Centre385Group24.checked)))
#print axioms split_13_checked

theorem split_14_checked :
    let pending : List CellCode := [childCell (ordinalCellCode 2241383) 14]
    let tags : List WitnessTag := [.split, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1]
    checkWitnessTape pending tags = true := by
  dsimp only
  exact checkWitnessTape_split (childCell (ordinalCellCode 2241383) 14)
    [.midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1]
    (by decide +kernel) (by decide +kernel)
    ((checkWitnessTape_append _ _ _ _ ((checkWitnessTape_append _ _ _ _ ((checkWitnessTape_append _ _ _ _ (Seed0024PhaseCore20261007.Leaf8Centre385Group25.checked) (Seed0024PhaseCore20261007.Leaf8Centre385Group26.checked))) (Seed0024PhaseCore20261007.Leaf8Centre385Group27.checked))) (Seed0024PhaseCore20261007.Leaf8Centre385Group28.checked)))
#print axioms split_14_checked

theorem split_20_checked :
    let pending : List CellCode := [childCell (ordinalCellCode 2241383) 20]
    let tags : List WitnessTag := [.split, .midpoint 2, .accept 0, .accept 0, .accept 0, .midpoint 2, .midpoint 2, .endpoint 2 138194020, .accept 0, .endpoint 1 137686082, .accept 0, .accept 0, .accept 0, .midpoint 1, .accept 0, .midpoint 1, .accept 0, .midpoint 2, .midpoint 2, .midpoint 2, .endpoint 2 139312885, .endpoint 0 190776340, .endpoint 0 189471737, .midpoint 2, .midpoint 2, .endpoint 0 189969633, .endpoint 0 188677691, .accept 0, .accept 0, .midpoint 0, .midpoint 0, .endpoint 2 138127825, .accept 0]
    checkWitnessTape pending tags = true := by
  dsimp only
  exact checkWitnessTape_split (childCell (ordinalCellCode 2241383) 20)
    [.midpoint 2, .accept 0, .accept 0, .accept 0, .midpoint 2, .midpoint 2, .endpoint 2 138194020, .accept 0, .endpoint 1 137686082, .accept 0, .accept 0, .accept 0, .midpoint 1, .accept 0, .midpoint 1, .accept 0, .midpoint 2, .midpoint 2, .midpoint 2, .endpoint 2 139312885, .endpoint 0 190776340, .endpoint 0 189471737, .midpoint 2, .midpoint 2, .endpoint 0 189969633, .endpoint 0 188677691, .accept 0, .accept 0, .midpoint 0, .midpoint 0, .endpoint 2 138127825, .accept 0]
    (by decide +kernel) (by decide +kernel)
    ((checkWitnessTape_append _ _ _ _ ((checkWitnessTape_append _ _ _ _ ((checkWitnessTape_append _ _ _ _ (Seed0024PhaseCore20261007.Leaf8Centre385Group30.checked) (Seed0024PhaseCore20261007.Leaf8Centre385Group31.checked))) (Seed0024PhaseCore20261007.Leaf8Centre385Group32.checked))) (Seed0024PhaseCore20261007.Leaf8Centre385Group33.checked)))
#print axioms split_20_checked

theorem split_22_checked :
    let pending : List CellCode := [childCell (ordinalCellCode 2241383) 22]
    let tags : List WitnessTag := [.split, .endpoint 4 190746942, .accept 0, .midpoint 4, .endpoint 4 190814952, .midpoint 4, .endpoint 4 191088876, .midpoint 4, .midpoint 4, .accept 0, .accept 0, .midpoint 4, .accept 0, .endpoint 1 138210844, .accept 0, .midpoint 4, .midpoint 4, .accept 0, .accept 0, .endpoint 4 190945512, .accept 0, .endpoint 2 137498916, .accept 0, .midpoint 4, .endpoint 4 191314646, .accept 0, .accept 0, .accept 0, .accept 0, .accept 0, .accept 0, .midpoint 4, .accept 0]
    checkWitnessTape pending tags = true := by
  dsimp only
  exact checkWitnessTape_split (childCell (ordinalCellCode 2241383) 22)
    [.endpoint 4 190746942, .accept 0, .midpoint 4, .endpoint 4 190814952, .midpoint 4, .endpoint 4 191088876, .midpoint 4, .midpoint 4, .accept 0, .accept 0, .midpoint 4, .accept 0, .endpoint 1 138210844, .accept 0, .midpoint 4, .midpoint 4, .accept 0, .accept 0, .endpoint 4 190945512, .accept 0, .endpoint 2 137498916, .accept 0, .midpoint 4, .endpoint 4 191314646, .accept 0, .accept 0, .accept 0, .accept 0, .accept 0, .accept 0, .midpoint 4, .accept 0]
    (by decide +kernel) (by decide +kernel)
    ((checkWitnessTape_append _ _ _ _ ((checkWitnessTape_append _ _ _ _ ((checkWitnessTape_append _ _ _ _ (Seed0024PhaseCore20261007.Leaf8Centre385Group35.checked) (Seed0024PhaseCore20261007.Leaf8Centre385Group36.checked))) (Seed0024PhaseCore20261007.Leaf8Centre385Group37.checked))) (Seed0024PhaseCore20261007.Leaf8Centre385Group38.checked)))
#print axioms split_22_checked

theorem split_24_checked :
    let pending : List CellCode := [childCell (ordinalCellCode 2241383) 24]
    let tags : List WitnessTag := [.split, .endpoint 3 190752662, .accept 0, .endpoint 3 188972338, .accept 0, .midpoint 1, .accept 0, .accept 0, .accept 0, .midpoint 1, .endpoint 3 190798975, .midpoint 3, .endpoint 3 188943493, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .midpoint 3, .accept 0, .endpoint 3 190937555, .accept 0, .endpoint 0 188364711, .accept 0, .accept 0, .accept 0, .midpoint 3, .midpoint 3, .midpoint 3, .endpoint 3 190834161, .endpoint 0 189820161, .endpoint 0 188707005, .midpoint 3, .accept 0]
    checkWitnessTape pending tags = true := by
  dsimp only
  exact checkWitnessTape_split (childCell (ordinalCellCode 2241383) 24)
    [.endpoint 3 190752662, .accept 0, .endpoint 3 188972338, .accept 0, .midpoint 1, .accept 0, .accept 0, .accept 0, .midpoint 1, .endpoint 3 190798975, .midpoint 3, .endpoint 3 188943493, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .midpoint 3, .accept 0, .endpoint 3 190937555, .accept 0, .endpoint 0 188364711, .accept 0, .accept 0, .accept 0, .midpoint 3, .midpoint 3, .midpoint 3, .endpoint 3 190834161, .endpoint 0 189820161, .endpoint 0 188707005, .midpoint 3, .accept 0]
    (by decide +kernel) (by decide +kernel)
    ((checkWitnessTape_append _ _ _ _ ((checkWitnessTape_append _ _ _ _ ((checkWitnessTape_append _ _ _ _ (Seed0024PhaseCore20261007.Leaf8Centre385Group40.checked) (Seed0024PhaseCore20261007.Leaf8Centre385Group41.checked))) (Seed0024PhaseCore20261007.Leaf8Centre385Group42.checked))) (Seed0024PhaseCore20261007.Leaf8Centre385Group43.checked)))
#print axioms split_24_checked

theorem split_28_checked :
    let pending : List CellCode := [childCell (ordinalCellCode 2241383) 28]
    let tags : List WitnessTag := [.split, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .endpoint 0 189903327, .endpoint 0 188946864, .midpoint 1, .midpoint 1, .endpoint 0 188280338, .midpoint 1, .midpoint 1, .midpoint 1, .endpoint 0 191659395, .endpoint 0 190853557, .midpoint 1, .midpoint 1, .midpoint 0, .endpoint 0 190691459, .accept 0, .accept 0, .midpoint 0, .midpoint 0, .endpoint 0 189720306, .endpoint 0 188660289, .midpoint 0, .midpoint 0, .midpoint 1, .accept 0, .midpoint 0, .midpoint 0, .endpoint 0 191376882, .endpoint 0 190468196]
    checkWitnessTape pending tags = true := by
  dsimp only
  exact checkWitnessTape_split (childCell (ordinalCellCode 2241383) 28)
    [.midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .endpoint 0 189903327, .endpoint 0 188946864, .midpoint 1, .midpoint 1, .endpoint 0 188280338, .midpoint 1, .midpoint 1, .midpoint 1, .endpoint 0 191659395, .endpoint 0 190853557, .midpoint 1, .midpoint 1, .midpoint 0, .endpoint 0 190691459, .accept 0, .accept 0, .midpoint 0, .midpoint 0, .endpoint 0 189720306, .endpoint 0 188660289, .midpoint 0, .midpoint 0, .midpoint 1, .accept 0, .midpoint 0, .midpoint 0, .endpoint 0 191376882, .endpoint 0 190468196]
    (by decide +kernel) (by decide +kernel)
    ((checkWitnessTape_append _ _ _ _ ((checkWitnessTape_append _ _ _ _ ((checkWitnessTape_append _ _ _ _ (Seed0024PhaseCore20261007.Leaf8Centre385Group45.checked) (Seed0024PhaseCore20261007.Leaf8Centre385Group46.checked))) (Seed0024PhaseCore20261007.Leaf8Centre385Group47.checked))) (Seed0024PhaseCore20261007.Leaf8Centre385Group48.checked)))
#print axioms split_28_checked

theorem split_30_checked :
    let pending : List CellCode := [childCell (ordinalCellCode 2241383) 30]
    let tags : List WitnessTag := [.split, .endpoint 1 137099235, .accept 0, .accept 0, .accept 0, .midpoint 1, .endpoint 1 137725090, .midpoint 1, .endpoint 4 190769906, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .accept 0, .endpoint 5 138727926, .accept 0, .endpoint 1 137845679, .accept 0, .endpoint 4 190912587, .accept 0, .midpoint 1, .accept 0, .midpoint 5, .endpoint 5 139535942, .midpoint 1, .endpoint 1 137367876, .midpoint 1, .accept 0]
    checkWitnessTape pending tags = true := by
  dsimp only
  exact checkWitnessTape_split (childCell (ordinalCellCode 2241383) 30)
    [.endpoint 1 137099235, .accept 0, .accept 0, .accept 0, .midpoint 1, .endpoint 1 137725090, .midpoint 1, .endpoint 4 190769906, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .accept 0, .endpoint 5 138727926, .accept 0, .endpoint 1 137845679, .accept 0, .endpoint 4 190912587, .accept 0, .midpoint 1, .accept 0, .midpoint 5, .endpoint 5 139535942, .midpoint 1, .endpoint 1 137367876, .midpoint 1, .accept 0]
    (by decide +kernel) (by decide +kernel)
    ((checkWitnessTape_append _ _ _ _ ((checkWitnessTape_append _ _ _ _ ((checkWitnessTape_append _ _ _ _ (Seed0024PhaseCore20261007.Leaf8Centre385Group50.checked) (Seed0024PhaseCore20261007.Leaf8Centre385Group51.checked))) (Seed0024PhaseCore20261007.Leaf8Centre385Group52.checked))) (Seed0024PhaseCore20261007.Leaf8Centre385Group53.checked)))
#print axioms split_30_checked

theorem checked :
    let pending : List CellCode := [ordinalCellCode 2241383]
    let tags : List WitnessTag := [.split, .accept 0, .accept 0, .accept 0, .accept 0, .split, .midpoint 1, .endpoint 1 137523506, .midpoint 1, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .endpoint 1 138007504, .accept 0, .accept 0, .accept 0, .midpoint 1, .accept 0, .midpoint 1, .endpoint 4 190599154, .midpoint 1, .endpoint 1 137367736, .midpoint 1, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .split, .endpoint 1 137305337, .midpoint 4, .midpoint 4, .midpoint 4, .midpoint 1, .endpoint 1 137967686, .midpoint 1, .midpoint 4, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 4, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 4, .endpoint 4 190409113, .midpoint 4, .midpoint 4, .endpoint 1 138398846, .midpoint 4, .midpoint 4, .midpoint 4, .endpoint 1 137281071, .accept 0, .midpoint 4, .midpoint 4, .midpoint 1, .endpoint 1 137925253, .midpoint 1, .midpoint 4, .accept 0, .split, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .accept 0, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .split, .midpoint 1, .accept 0, .endpoint 1 138222005, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .endpoint 1 138339692, .midpoint 1, .midpoint 1, .midpoint 1, .endpoint 1 137926208, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .accept 0, .endpoint 5 139308934, .accept 0, .midpoint 1, .accept 0, .accept 0, .accept 0, .midpoint 1, .accept 0, .endpoint 1 138217599, .endpoint 5 139732957, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .accept 0, .midpoint 1, .split, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .accept 0, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .split, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .accept 0, .accept 0, .accept 0, .accept 0, .split, .midpoint 2, .accept 0, .accept 0, .accept 0, .midpoint 2, .midpoint 2, .endpoint 2 138194020, .accept 0, .endpoint 1 137686082, .accept 0, .accept 0, .accept 0, .midpoint 1, .accept 0, .midpoint 1, .accept 0, .midpoint 2, .midpoint 2, .midpoint 2, .endpoint 2 139312885, .endpoint 0 190776340, .endpoint 0 189471737, .midpoint 2, .midpoint 2, .endpoint 0 189969633, .endpoint 0 188677691, .accept 0, .accept 0, .midpoint 0, .midpoint 0, .endpoint 2 138127825, .accept 0, .accept 0, .split, .endpoint 4 190746942, .accept 0, .midpoint 4, .endpoint 4 190814952, .midpoint 4, .endpoint 4 191088876, .midpoint 4, .midpoint 4, .accept 0, .accept 0, .midpoint 4, .accept 0, .endpoint 1 138210844, .accept 0, .midpoint 4, .midpoint 4, .accept 0, .accept 0, .endpoint 4 190945512, .accept 0, .endpoint 2 137498916, .accept 0, .midpoint 4, .endpoint 4 191314646, .accept 0, .accept 0, .accept 0, .accept 0, .accept 0, .accept 0, .midpoint 4, .accept 0, .accept 0, .split, .endpoint 3 190752662, .accept 0, .endpoint 3 188972338, .accept 0, .midpoint 1, .accept 0, .accept 0, .accept 0, .midpoint 1, .endpoint 3 190798975, .midpoint 3, .endpoint 3 188943493, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .midpoint 3, .accept 0, .endpoint 3 190937555, .accept 0, .endpoint 0 188364711, .accept 0, .accept 0, .accept 0, .midpoint 3, .midpoint 3, .midpoint 3, .endpoint 3 190834161, .endpoint 0 189820161, .endpoint 0 188707005, .midpoint 3, .accept 0, .accept 0, .accept 0, .accept 0, .split, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .endpoint 0 189903327, .endpoint 0 188946864, .midpoint 1, .midpoint 1, .endpoint 0 188280338, .midpoint 1, .midpoint 1, .midpoint 1, .endpoint 0 191659395, .endpoint 0 190853557, .midpoint 1, .midpoint 1, .midpoint 0, .endpoint 0 190691459, .accept 0, .accept 0, .midpoint 0, .midpoint 0, .endpoint 0 189720306, .endpoint 0 188660289, .midpoint 0, .midpoint 0, .midpoint 1, .accept 0, .midpoint 0, .midpoint 0, .endpoint 0 191376882, .endpoint 0 190468196, .accept 0, .split, .endpoint 1 137099235, .accept 0, .accept 0, .accept 0, .midpoint 1, .endpoint 1 137725090, .midpoint 1, .endpoint 4 190769906, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .accept 0, .endpoint 5 138727926, .accept 0, .endpoint 1 137845679, .accept 0, .endpoint 4 190912587, .accept 0, .midpoint 1, .accept 0, .midpoint 5, .endpoint 5 139535942, .midpoint 1, .endpoint 1 137367876, .midpoint 1, .accept 0, .accept 0]
    checkWitnessTape pending tags = true := by
  dsimp only
  exact checkWitnessTape_split (ordinalCellCode 2241383)
    [.accept 0, .accept 0, .accept 0, .accept 0, .split, .midpoint 1, .endpoint 1 137523506, .midpoint 1, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .endpoint 1 138007504, .accept 0, .accept 0, .accept 0, .midpoint 1, .accept 0, .midpoint 1, .endpoint 4 190599154, .midpoint 1, .endpoint 1 137367736, .midpoint 1, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .split, .endpoint 1 137305337, .midpoint 4, .midpoint 4, .midpoint 4, .midpoint 1, .endpoint 1 137967686, .midpoint 1, .midpoint 4, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 4, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 4, .endpoint 4 190409113, .midpoint 4, .midpoint 4, .endpoint 1 138398846, .midpoint 4, .midpoint 4, .midpoint 4, .endpoint 1 137281071, .accept 0, .midpoint 4, .midpoint 4, .midpoint 1, .endpoint 1 137925253, .midpoint 1, .midpoint 4, .accept 0, .split, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .accept 0, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .split, .midpoint 1, .accept 0, .endpoint 1 138222005, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .endpoint 1 138339692, .midpoint 1, .midpoint 1, .midpoint 1, .endpoint 1 137926208, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .accept 0, .endpoint 5 139308934, .accept 0, .midpoint 1, .accept 0, .accept 0, .accept 0, .midpoint 1, .accept 0, .endpoint 1 138217599, .endpoint 5 139732957, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .accept 0, .midpoint 1, .split, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .accept 0, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .split, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .accept 0, .accept 0, .accept 0, .accept 0, .split, .midpoint 2, .accept 0, .accept 0, .accept 0, .midpoint 2, .midpoint 2, .endpoint 2 138194020, .accept 0, .endpoint 1 137686082, .accept 0, .accept 0, .accept 0, .midpoint 1, .accept 0, .midpoint 1, .accept 0, .midpoint 2, .midpoint 2, .midpoint 2, .endpoint 2 139312885, .endpoint 0 190776340, .endpoint 0 189471737, .midpoint 2, .midpoint 2, .endpoint 0 189969633, .endpoint 0 188677691, .accept 0, .accept 0, .midpoint 0, .midpoint 0, .endpoint 2 138127825, .accept 0, .accept 0, .split, .endpoint 4 190746942, .accept 0, .midpoint 4, .endpoint 4 190814952, .midpoint 4, .endpoint 4 191088876, .midpoint 4, .midpoint 4, .accept 0, .accept 0, .midpoint 4, .accept 0, .endpoint 1 138210844, .accept 0, .midpoint 4, .midpoint 4, .accept 0, .accept 0, .endpoint 4 190945512, .accept 0, .endpoint 2 137498916, .accept 0, .midpoint 4, .endpoint 4 191314646, .accept 0, .accept 0, .accept 0, .accept 0, .accept 0, .accept 0, .midpoint 4, .accept 0, .accept 0, .split, .endpoint 3 190752662, .accept 0, .endpoint 3 188972338, .accept 0, .midpoint 1, .accept 0, .accept 0, .accept 0, .midpoint 1, .endpoint 3 190798975, .midpoint 3, .endpoint 3 188943493, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .midpoint 3, .accept 0, .endpoint 3 190937555, .accept 0, .endpoint 0 188364711, .accept 0, .accept 0, .accept 0, .midpoint 3, .midpoint 3, .midpoint 3, .endpoint 3 190834161, .endpoint 0 189820161, .endpoint 0 188707005, .midpoint 3, .accept 0, .accept 0, .accept 0, .accept 0, .split, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .endpoint 0 189903327, .endpoint 0 188946864, .midpoint 1, .midpoint 1, .endpoint 0 188280338, .midpoint 1, .midpoint 1, .midpoint 1, .endpoint 0 191659395, .endpoint 0 190853557, .midpoint 1, .midpoint 1, .midpoint 0, .endpoint 0 190691459, .accept 0, .accept 0, .midpoint 0, .midpoint 0, .endpoint 0 189720306, .endpoint 0 188660289, .midpoint 0, .midpoint 0, .midpoint 1, .accept 0, .midpoint 0, .midpoint 0, .endpoint 0 191376882, .endpoint 0 190468196, .accept 0, .split, .endpoint 1 137099235, .accept 0, .accept 0, .accept 0, .midpoint 1, .endpoint 1 137725090, .midpoint 1, .endpoint 4 190769906, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .accept 0, .endpoint 5 138727926, .accept 0, .endpoint 1 137845679, .accept 0, .endpoint 4 190912587, .accept 0, .midpoint 1, .accept 0, .midpoint 5, .endpoint 5 139535942, .midpoint 1, .endpoint 1 137367876, .midpoint 1, .accept 0, .accept 0]
    (by decide +kernel) (by decide +kernel)
    ((checkWitnessTape_append _ _ _ _ ((checkWitnessTape_append _ _ _ _ ((checkWitnessTape_append _ _ _ _ ((checkWitnessTape_append _ _ _ _ ((checkWitnessTape_append _ _ _ _ ((checkWitnessTape_append _ _ _ _ ((checkWitnessTape_append _ _ _ _ ((checkWitnessTape_append _ _ _ _ ((checkWitnessTape_append _ _ _ _ ((checkWitnessTape_append _ _ _ _ ((checkWitnessTape_append _ _ _ _ ((checkWitnessTape_append _ _ _ _ ((checkWitnessTape_append _ _ _ _ ((checkWitnessTape_append _ _ _ _ ((checkWitnessTape_append _ _ _ _ ((checkWitnessTape_append _ _ _ _ ((checkWitnessTape_append _ _ _ _ ((checkWitnessTape_append _ _ _ _ ((checkWitnessTape_append _ _ _ _ ((checkWitnessTape_append _ _ _ _ ((checkWitnessTape_append _ _ _ _ (Seed0024PhaseCore20261007.Leaf8Centre385Group00.checked) (Seed0024PhaseCore20261007.CompactCentre385Leaf8.split_4_checked))) (Seed0024PhaseCore20261007.Leaf8Centre385Group05.checked))) (Seed0024PhaseCore20261007.CompactCentre385Leaf8.split_6_checked))) (Seed0024PhaseCore20261007.Leaf8Centre385Group10.checked))) (Seed0024PhaseCore20261007.CompactCentre385Leaf8.split_8_checked))) (Seed0024PhaseCore20261007.Leaf8Centre385Group15.checked))) (Seed0024PhaseCore20261007.CompactCentre385Leaf8.split_10_checked))) (Seed0024PhaseCore20261007.Leaf8Centre385Group20.checked))) (Seed0024PhaseCore20261007.CompactCentre385Leaf8.split_13_checked))) (Seed0024PhaseCore20261007.CompactCentre385Leaf8.split_14_checked))) (Seed0024PhaseCore20261007.Leaf8Centre385Group29.checked))) (Seed0024PhaseCore20261007.CompactCentre385Leaf8.split_20_checked))) (Seed0024PhaseCore20261007.Leaf8Centre385Group34.checked))) (Seed0024PhaseCore20261007.CompactCentre385Leaf8.split_22_checked))) (Seed0024PhaseCore20261007.Leaf8Centre385Group39.checked))) (Seed0024PhaseCore20261007.CompactCentre385Leaf8.split_24_checked))) (Seed0024PhaseCore20261007.Leaf8Centre385Group44.checked))) (Seed0024PhaseCore20261007.CompactCentre385Leaf8.split_28_checked))) (Seed0024PhaseCore20261007.Leaf8Centre385Group49.checked))) (Seed0024PhaseCore20261007.CompactCentre385Leaf8.split_30_checked))) (Seed0024PhaseCore20261007.Leaf8Centre385Group54.checked)))
#print axioms checked

theorem checked_and_erased :
    let pending : List CellCode := [ordinalCellCode 2241383]
    let tags : List WitnessTag := [.split, .accept 0, .accept 0, .accept 0, .accept 0, .split, .midpoint 1, .endpoint 1 137523506, .midpoint 1, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .endpoint 1 138007504, .accept 0, .accept 0, .accept 0, .midpoint 1, .accept 0, .midpoint 1, .endpoint 4 190599154, .midpoint 1, .endpoint 1 137367736, .midpoint 1, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .split, .endpoint 1 137305337, .midpoint 4, .midpoint 4, .midpoint 4, .midpoint 1, .endpoint 1 137967686, .midpoint 1, .midpoint 4, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 4, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 4, .endpoint 4 190409113, .midpoint 4, .midpoint 4, .endpoint 1 138398846, .midpoint 4, .midpoint 4, .midpoint 4, .endpoint 1 137281071, .accept 0, .midpoint 4, .midpoint 4, .midpoint 1, .endpoint 1 137925253, .midpoint 1, .midpoint 4, .accept 0, .split, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .accept 0, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .split, .midpoint 1, .accept 0, .endpoint 1 138222005, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .endpoint 1 138339692, .midpoint 1, .midpoint 1, .midpoint 1, .endpoint 1 137926208, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .accept 0, .endpoint 5 139308934, .accept 0, .midpoint 1, .accept 0, .accept 0, .accept 0, .midpoint 1, .accept 0, .endpoint 1 138217599, .endpoint 5 139732957, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .accept 0, .midpoint 1, .split, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .accept 0, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .split, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .accept 0, .accept 0, .accept 0, .accept 0, .split, .midpoint 2, .accept 0, .accept 0, .accept 0, .midpoint 2, .midpoint 2, .endpoint 2 138194020, .accept 0, .endpoint 1 137686082, .accept 0, .accept 0, .accept 0, .midpoint 1, .accept 0, .midpoint 1, .accept 0, .midpoint 2, .midpoint 2, .midpoint 2, .endpoint 2 139312885, .endpoint 0 190776340, .endpoint 0 189471737, .midpoint 2, .midpoint 2, .endpoint 0 189969633, .endpoint 0 188677691, .accept 0, .accept 0, .midpoint 0, .midpoint 0, .endpoint 2 138127825, .accept 0, .accept 0, .split, .endpoint 4 190746942, .accept 0, .midpoint 4, .endpoint 4 190814952, .midpoint 4, .endpoint 4 191088876, .midpoint 4, .midpoint 4, .accept 0, .accept 0, .midpoint 4, .accept 0, .endpoint 1 138210844, .accept 0, .midpoint 4, .midpoint 4, .accept 0, .accept 0, .endpoint 4 190945512, .accept 0, .endpoint 2 137498916, .accept 0, .midpoint 4, .endpoint 4 191314646, .accept 0, .accept 0, .accept 0, .accept 0, .accept 0, .accept 0, .midpoint 4, .accept 0, .accept 0, .split, .endpoint 3 190752662, .accept 0, .endpoint 3 188972338, .accept 0, .midpoint 1, .accept 0, .accept 0, .accept 0, .midpoint 1, .endpoint 3 190798975, .midpoint 3, .endpoint 3 188943493, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .midpoint 3, .accept 0, .endpoint 3 190937555, .accept 0, .endpoint 0 188364711, .accept 0, .accept 0, .accept 0, .midpoint 3, .midpoint 3, .midpoint 3, .endpoint 3 190834161, .endpoint 0 189820161, .endpoint 0 188707005, .midpoint 3, .accept 0, .accept 0, .accept 0, .accept 0, .split, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .endpoint 0 189903327, .endpoint 0 188946864, .midpoint 1, .midpoint 1, .endpoint 0 188280338, .midpoint 1, .midpoint 1, .midpoint 1, .endpoint 0 191659395, .endpoint 0 190853557, .midpoint 1, .midpoint 1, .midpoint 0, .endpoint 0 190691459, .accept 0, .accept 0, .midpoint 0, .midpoint 0, .endpoint 0 189720306, .endpoint 0 188660289, .midpoint 0, .midpoint 0, .midpoint 1, .accept 0, .midpoint 0, .midpoint 0, .endpoint 0 191376882, .endpoint 0 190468196, .accept 0, .split, .endpoint 1 137099235, .accept 0, .accept 0, .accept 0, .midpoint 1, .endpoint 1 137725090, .midpoint 1, .endpoint 4 190769906, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .midpoint 1, .midpoint 1, .midpoint 1, .midpoint 1, .accept 0, .accept 0, .endpoint 5 138727926, .accept 0, .endpoint 1 137845679, .accept 0, .endpoint 4 190912587, .accept 0, .midpoint 1, .accept 0, .midpoint 5, .endpoint 5 139535942, .midpoint 1, .endpoint 1 137367876, .midpoint 1, .accept 0, .accept 0]
    checkWitnessTape pending tags = true ∧ eraseTape tags = [54, 6, 6, 6, 6, 54, 1, 1, 1, 6, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, 6, 6, 1, 6, 1, 4, 1, 1, 1, 6, 1, 1, 1, 1, 6, 54, 1, 4, 4, 4, 1, 1, 1, 4, 1, 1, 1, 4, 1, 1, 1, 1, 4, 4, 4, 4, 1, 4, 4, 4, 1, 6, 4, 4, 1, 1, 1, 4, 6, 54, 1, 1, 1, 6, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, 6, 6, 1, 1, 1, 6, 1, 1, 1, 6, 1, 1, 1, 1, 6, 54, 1, 6, 1, 6, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, 6, 5, 6, 1, 6, 6, 6, 1, 6, 1, 5, 1, 1, 1, 6, 6, 1, 54, 1, 1, 1, 6, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, 6, 6, 1, 1, 1, 6, 1, 1, 1, 6, 1, 1, 1, 1, 54, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 6, 6, 6, 6, 6, 54, 2, 6, 6, 6, 2, 2, 2, 6, 1, 6, 6, 6, 1, 6, 1, 6, 2, 2, 2, 2, 0, 0, 2, 2, 0, 0, 6, 6, 0, 0, 2, 6, 6, 54, 4, 6, 4, 4, 4, 4, 4, 4, 6, 6, 4, 6, 1, 6, 4, 4, 6, 6, 4, 6, 2, 6, 4, 4, 6, 6, 6, 6, 6, 6, 4, 6, 6, 54, 3, 6, 3, 6, 1, 6, 6, 6, 1, 3, 3, 3, 1, 1, 1, 6, 3, 6, 3, 6, 0, 6, 6, 6, 3, 3, 3, 3, 0, 0, 3, 6, 6, 6, 6, 54, 1, 1, 1, 6, 0, 0, 1, 1, 0, 1, 1, 1, 0, 0, 1, 1, 0, 0, 6, 6, 0, 0, 0, 0, 0, 0, 1, 6, 0, 0, 0, 0, 6, 54, 1, 6, 6, 6, 1, 1, 1, 4, 1, 1, 1, 6, 1, 1, 1, 1, 6, 6, 5, 6, 1, 6, 4, 6, 1, 6, 5, 5, 1, 1, 1, 6, 6] := by
  exact ⟨checked, Seed0024PhaseCore20261007.Leaf8Raw385Erasure.erased⟩
#print axioms checked_and_erased
end Seed0024PhaseCore20261007.CompactCentre385Leaf8
