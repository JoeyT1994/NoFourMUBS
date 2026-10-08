import AngularLeaf
import Root0CoverData
import Root0Tile00
import Root0Tile01
import Root0Tile02
import Root0Tile03
import Root0Tile04
import Root0Tile05
import Root0Tile06
import Root0Tile07
import Root0Tile08
import Root0Tile09
import Root0Tile10
import Root0Tile11
import Root0Tile12
import Root0Tile13
import Root0Tile14
import Root0Tile15
import Root0Tile16
import Root0Tile17
import Root0Tile18
import Root0Tile19
import Root0Tile20
import Root0Tile21
import Root0Tile22
import Root0Tile23
import Root0Tile24
import Root0Tile25
import Root0Tile26
import Root0Tile27
import Root0Tile28
import Root0Tile29
import Root0Tile30
import Root0Tile31
import Root0Tile32
import Root0Tile33
import Root0Tile34
import Root0Tile35
import Root0Tile36
import Root0Tile37
import Root0Tile38
import Root0Tile39
import Root0Tile40
import Root0Tile41
import Root0Tile42
import Root0Tile43
import Root0Tile44
import Root0Tile45
import Root0Tile46
import Root0Tile47
import Root0Tile48
import Root0Tile49
import Root0Tile50
import Root0Tile51
import Root0Tile52
import Root0Tile53
import Root0Tile54
import Root0Tile55
import Root0Tile56
import Root0Tile57
import Root0Tile58
import Root0Tile59
import Root0Tile60
import Root0Tile61
import Root0Tile62
import Root0Tile63
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 4000000
namespace Root0Angular20261003
open Mub6.Numerical Mub6.Numerical.IntervalKernel ShoulderRadian20261003
open Mub6.Classification Mub6.Classification.SideColumns SharedSeedIntervals
theorem full_square : LeafStatement moments EX EY hull0 hull1 ⟨0,1⟩ ⟨0,1⟩ := by
  intro s t r ex ey hm hex hey
  let P := fun a b => ColumnNecessary s t r (turnPhase a) (turnPhase b) → CornerCaps ex ey (turnPhase a) (turnPhase b) → HullsMem hull0 hull1 (turnPhase a) (turnPhase b)
  have row0_6 : Holds P ⟨0,(1/8)⟩ ⟨(3/4),1⟩ := split_y ⟨0,(1/8)⟩ ⟨(3/4),1⟩ (7/8) (tile06 s t r ex ey hm hex hey) (tile07 s t r ex ey hm hex hey)
  have row0_5 : Holds P ⟨0,(1/8)⟩ ⟨(5/8),1⟩ := split_y ⟨0,(1/8)⟩ ⟨(5/8),1⟩ (3/4) (tile05 s t r ex ey hm hex hey) row0_6
  have row0_4 : Holds P ⟨0,(1/8)⟩ ⟨(1/2),1⟩ := split_y ⟨0,(1/8)⟩ ⟨(1/2),1⟩ (5/8) (tile04 s t r ex ey hm hex hey) row0_5
  have row0_3 : Holds P ⟨0,(1/8)⟩ ⟨(3/8),1⟩ := split_y ⟨0,(1/8)⟩ ⟨(3/8),1⟩ (1/2) (tile03 s t r ex ey hm hex hey) row0_4
  have row0_2 : Holds P ⟨0,(1/8)⟩ ⟨(1/4),1⟩ := split_y ⟨0,(1/8)⟩ ⟨(1/4),1⟩ (3/8) (tile02 s t r ex ey hm hex hey) row0_3
  have row0_1 : Holds P ⟨0,(1/8)⟩ ⟨(1/8),1⟩ := split_y ⟨0,(1/8)⟩ ⟨(1/8),1⟩ (1/4) (tile01 s t r ex ey hm hex hey) row0_2
  have row0_0 : Holds P ⟨0,(1/8)⟩ ⟨0,1⟩ := split_y ⟨0,(1/8)⟩ ⟨0,1⟩ (1/8) (tile00 s t r ex ey hm hex hey) row0_1
  have row1_6 : Holds P ⟨(1/8),(1/4)⟩ ⟨(3/4),1⟩ := split_y ⟨(1/8),(1/4)⟩ ⟨(3/4),1⟩ (7/8) (tile14 s t r ex ey hm hex hey) (tile15 s t r ex ey hm hex hey)
  have row1_5 : Holds P ⟨(1/8),(1/4)⟩ ⟨(5/8),1⟩ := split_y ⟨(1/8),(1/4)⟩ ⟨(5/8),1⟩ (3/4) (tile13 s t r ex ey hm hex hey) row1_6
  have row1_4 : Holds P ⟨(1/8),(1/4)⟩ ⟨(1/2),1⟩ := split_y ⟨(1/8),(1/4)⟩ ⟨(1/2),1⟩ (5/8) (tile12 s t r ex ey hm hex hey) row1_5
  have row1_3 : Holds P ⟨(1/8),(1/4)⟩ ⟨(3/8),1⟩ := split_y ⟨(1/8),(1/4)⟩ ⟨(3/8),1⟩ (1/2) (tile11 s t r ex ey hm hex hey) row1_4
  have row1_2 : Holds P ⟨(1/8),(1/4)⟩ ⟨(1/4),1⟩ := split_y ⟨(1/8),(1/4)⟩ ⟨(1/4),1⟩ (3/8) (tile10 s t r ex ey hm hex hey) row1_3
  have row1_1 : Holds P ⟨(1/8),(1/4)⟩ ⟨(1/8),1⟩ := split_y ⟨(1/8),(1/4)⟩ ⟨(1/8),1⟩ (1/4) (tile09 s t r ex ey hm hex hey) row1_2
  have row1_0 : Holds P ⟨(1/8),(1/4)⟩ ⟨0,1⟩ := split_y ⟨(1/8),(1/4)⟩ ⟨0,1⟩ (1/8) (tile08 s t r ex ey hm hex hey) row1_1
  have row2_6 : Holds P ⟨(1/4),(3/8)⟩ ⟨(3/4),1⟩ := split_y ⟨(1/4),(3/8)⟩ ⟨(3/4),1⟩ (7/8) (tile22 s t r ex ey hm hex hey) (tile23 s t r ex ey hm hex hey)
  have row2_5 : Holds P ⟨(1/4),(3/8)⟩ ⟨(5/8),1⟩ := split_y ⟨(1/4),(3/8)⟩ ⟨(5/8),1⟩ (3/4) (tile21 s t r ex ey hm hex hey) row2_6
  have row2_4 : Holds P ⟨(1/4),(3/8)⟩ ⟨(1/2),1⟩ := split_y ⟨(1/4),(3/8)⟩ ⟨(1/2),1⟩ (5/8) (tile20 s t r ex ey hm hex hey) row2_5
  have row2_3 : Holds P ⟨(1/4),(3/8)⟩ ⟨(3/8),1⟩ := split_y ⟨(1/4),(3/8)⟩ ⟨(3/8),1⟩ (1/2) (tile19 s t r ex ey hm hex hey) row2_4
  have row2_2 : Holds P ⟨(1/4),(3/8)⟩ ⟨(1/4),1⟩ := split_y ⟨(1/4),(3/8)⟩ ⟨(1/4),1⟩ (3/8) (tile18 s t r ex ey hm hex hey) row2_3
  have row2_1 : Holds P ⟨(1/4),(3/8)⟩ ⟨(1/8),1⟩ := split_y ⟨(1/4),(3/8)⟩ ⟨(1/8),1⟩ (1/4) (tile17 s t r ex ey hm hex hey) row2_2
  have row2_0 : Holds P ⟨(1/4),(3/8)⟩ ⟨0,1⟩ := split_y ⟨(1/4),(3/8)⟩ ⟨0,1⟩ (1/8) (tile16 s t r ex ey hm hex hey) row2_1
  have row3_6 : Holds P ⟨(3/8),(1/2)⟩ ⟨(3/4),1⟩ := split_y ⟨(3/8),(1/2)⟩ ⟨(3/4),1⟩ (7/8) (tile30 s t r ex ey hm hex hey) (tile31 s t r ex ey hm hex hey)
  have row3_5 : Holds P ⟨(3/8),(1/2)⟩ ⟨(5/8),1⟩ := split_y ⟨(3/8),(1/2)⟩ ⟨(5/8),1⟩ (3/4) (tile29 s t r ex ey hm hex hey) row3_6
  have row3_4 : Holds P ⟨(3/8),(1/2)⟩ ⟨(1/2),1⟩ := split_y ⟨(3/8),(1/2)⟩ ⟨(1/2),1⟩ (5/8) (tile28 s t r ex ey hm hex hey) row3_5
  have row3_3 : Holds P ⟨(3/8),(1/2)⟩ ⟨(3/8),1⟩ := split_y ⟨(3/8),(1/2)⟩ ⟨(3/8),1⟩ (1/2) (tile27 s t r ex ey hm hex hey) row3_4
  have row3_2 : Holds P ⟨(3/8),(1/2)⟩ ⟨(1/4),1⟩ := split_y ⟨(3/8),(1/2)⟩ ⟨(1/4),1⟩ (3/8) (tile26 s t r ex ey hm hex hey) row3_3
  have row3_1 : Holds P ⟨(3/8),(1/2)⟩ ⟨(1/8),1⟩ := split_y ⟨(3/8),(1/2)⟩ ⟨(1/8),1⟩ (1/4) (tile25 s t r ex ey hm hex hey) row3_2
  have row3_0 : Holds P ⟨(3/8),(1/2)⟩ ⟨0,1⟩ := split_y ⟨(3/8),(1/2)⟩ ⟨0,1⟩ (1/8) (tile24 s t r ex ey hm hex hey) row3_1
  have row4_6 : Holds P ⟨(1/2),(5/8)⟩ ⟨(3/4),1⟩ := split_y ⟨(1/2),(5/8)⟩ ⟨(3/4),1⟩ (7/8) (tile38 s t r ex ey hm hex hey) (tile39 s t r ex ey hm hex hey)
  have row4_5 : Holds P ⟨(1/2),(5/8)⟩ ⟨(5/8),1⟩ := split_y ⟨(1/2),(5/8)⟩ ⟨(5/8),1⟩ (3/4) (tile37 s t r ex ey hm hex hey) row4_6
  have row4_4 : Holds P ⟨(1/2),(5/8)⟩ ⟨(1/2),1⟩ := split_y ⟨(1/2),(5/8)⟩ ⟨(1/2),1⟩ (5/8) (tile36 s t r ex ey hm hex hey) row4_5
  have row4_3 : Holds P ⟨(1/2),(5/8)⟩ ⟨(3/8),1⟩ := split_y ⟨(1/2),(5/8)⟩ ⟨(3/8),1⟩ (1/2) (tile35 s t r ex ey hm hex hey) row4_4
  have row4_2 : Holds P ⟨(1/2),(5/8)⟩ ⟨(1/4),1⟩ := split_y ⟨(1/2),(5/8)⟩ ⟨(1/4),1⟩ (3/8) (tile34 s t r ex ey hm hex hey) row4_3
  have row4_1 : Holds P ⟨(1/2),(5/8)⟩ ⟨(1/8),1⟩ := split_y ⟨(1/2),(5/8)⟩ ⟨(1/8),1⟩ (1/4) (tile33 s t r ex ey hm hex hey) row4_2
  have row4_0 : Holds P ⟨(1/2),(5/8)⟩ ⟨0,1⟩ := split_y ⟨(1/2),(5/8)⟩ ⟨0,1⟩ (1/8) (tile32 s t r ex ey hm hex hey) row4_1
  have row5_6 : Holds P ⟨(5/8),(3/4)⟩ ⟨(3/4),1⟩ := split_y ⟨(5/8),(3/4)⟩ ⟨(3/4),1⟩ (7/8) (tile46 s t r ex ey hm hex hey) (tile47 s t r ex ey hm hex hey)
  have row5_5 : Holds P ⟨(5/8),(3/4)⟩ ⟨(5/8),1⟩ := split_y ⟨(5/8),(3/4)⟩ ⟨(5/8),1⟩ (3/4) (tile45 s t r ex ey hm hex hey) row5_6
  have row5_4 : Holds P ⟨(5/8),(3/4)⟩ ⟨(1/2),1⟩ := split_y ⟨(5/8),(3/4)⟩ ⟨(1/2),1⟩ (5/8) (tile44 s t r ex ey hm hex hey) row5_5
  have row5_3 : Holds P ⟨(5/8),(3/4)⟩ ⟨(3/8),1⟩ := split_y ⟨(5/8),(3/4)⟩ ⟨(3/8),1⟩ (1/2) (tile43 s t r ex ey hm hex hey) row5_4
  have row5_2 : Holds P ⟨(5/8),(3/4)⟩ ⟨(1/4),1⟩ := split_y ⟨(5/8),(3/4)⟩ ⟨(1/4),1⟩ (3/8) (tile42 s t r ex ey hm hex hey) row5_3
  have row5_1 : Holds P ⟨(5/8),(3/4)⟩ ⟨(1/8),1⟩ := split_y ⟨(5/8),(3/4)⟩ ⟨(1/8),1⟩ (1/4) (tile41 s t r ex ey hm hex hey) row5_2
  have row5_0 : Holds P ⟨(5/8),(3/4)⟩ ⟨0,1⟩ := split_y ⟨(5/8),(3/4)⟩ ⟨0,1⟩ (1/8) (tile40 s t r ex ey hm hex hey) row5_1
  have row6_6 : Holds P ⟨(3/4),(7/8)⟩ ⟨(3/4),1⟩ := split_y ⟨(3/4),(7/8)⟩ ⟨(3/4),1⟩ (7/8) (tile54 s t r ex ey hm hex hey) (tile55 s t r ex ey hm hex hey)
  have row6_5 : Holds P ⟨(3/4),(7/8)⟩ ⟨(5/8),1⟩ := split_y ⟨(3/4),(7/8)⟩ ⟨(5/8),1⟩ (3/4) (tile53 s t r ex ey hm hex hey) row6_6
  have row6_4 : Holds P ⟨(3/4),(7/8)⟩ ⟨(1/2),1⟩ := split_y ⟨(3/4),(7/8)⟩ ⟨(1/2),1⟩ (5/8) (tile52 s t r ex ey hm hex hey) row6_5
  have row6_3 : Holds P ⟨(3/4),(7/8)⟩ ⟨(3/8),1⟩ := split_y ⟨(3/4),(7/8)⟩ ⟨(3/8),1⟩ (1/2) (tile51 s t r ex ey hm hex hey) row6_4
  have row6_2 : Holds P ⟨(3/4),(7/8)⟩ ⟨(1/4),1⟩ := split_y ⟨(3/4),(7/8)⟩ ⟨(1/4),1⟩ (3/8) (tile50 s t r ex ey hm hex hey) row6_3
  have row6_1 : Holds P ⟨(3/4),(7/8)⟩ ⟨(1/8),1⟩ := split_y ⟨(3/4),(7/8)⟩ ⟨(1/8),1⟩ (1/4) (tile49 s t r ex ey hm hex hey) row6_2
  have row6_0 : Holds P ⟨(3/4),(7/8)⟩ ⟨0,1⟩ := split_y ⟨(3/4),(7/8)⟩ ⟨0,1⟩ (1/8) (tile48 s t r ex ey hm hex hey) row6_1
  have row7_6 : Holds P ⟨(7/8),1⟩ ⟨(3/4),1⟩ := split_y ⟨(7/8),1⟩ ⟨(3/4),1⟩ (7/8) (tile62 s t r ex ey hm hex hey) (tile63 s t r ex ey hm hex hey)
  have row7_5 : Holds P ⟨(7/8),1⟩ ⟨(5/8),1⟩ := split_y ⟨(7/8),1⟩ ⟨(5/8),1⟩ (3/4) (tile61 s t r ex ey hm hex hey) row7_6
  have row7_4 : Holds P ⟨(7/8),1⟩ ⟨(1/2),1⟩ := split_y ⟨(7/8),1⟩ ⟨(1/2),1⟩ (5/8) (tile60 s t r ex ey hm hex hey) row7_5
  have row7_3 : Holds P ⟨(7/8),1⟩ ⟨(3/8),1⟩ := split_y ⟨(7/8),1⟩ ⟨(3/8),1⟩ (1/2) (tile59 s t r ex ey hm hex hey) row7_4
  have row7_2 : Holds P ⟨(7/8),1⟩ ⟨(1/4),1⟩ := split_y ⟨(7/8),1⟩ ⟨(1/4),1⟩ (3/8) (tile58 s t r ex ey hm hex hey) row7_3
  have row7_1 : Holds P ⟨(7/8),1⟩ ⟨(1/8),1⟩ := split_y ⟨(7/8),1⟩ ⟨(1/8),1⟩ (1/4) (tile57 s t r ex ey hm hex hey) row7_2
  have row7_0 : Holds P ⟨(7/8),1⟩ ⟨0,1⟩ := split_y ⟨(7/8),1⟩ ⟨0,1⟩ (1/8) (tile56 s t r ex ey hm hex hey) row7_1
  have rows6 : Holds P ⟨(3/4),1⟩ ⟨0,1⟩ := split_x ⟨(3/4),1⟩ ⟨0,1⟩ (7/8) row6_0 row7_0
  have rows5 : Holds P ⟨(5/8),1⟩ ⟨0,1⟩ := split_x ⟨(5/8),1⟩ ⟨0,1⟩ (3/4) row5_0 rows6
  have rows4 : Holds P ⟨(1/2),1⟩ ⟨0,1⟩ := split_x ⟨(1/2),1⟩ ⟨0,1⟩ (5/8) row4_0 rows5
  have rows3 : Holds P ⟨(3/8),1⟩ ⟨0,1⟩ := split_x ⟨(3/8),1⟩ ⟨0,1⟩ (1/2) row3_0 rows4
  have rows2 : Holds P ⟨(1/4),1⟩ ⟨0,1⟩ := split_x ⟨(1/4),1⟩ ⟨0,1⟩ (3/8) row2_0 rows3
  have rows1 : Holds P ⟨(1/8),1⟩ ⟨0,1⟩ := split_x ⟨(1/8),1⟩ ⟨0,1⟩ (1/4) row1_0 rows2
  have rows0 : Holds P ⟨0,1⟩ ⟨0,1⟩ := split_x ⟨0,1⟩ ⟨0,1⟩ (1/8) row0_0 rows1
  exact rows0

theorem physical_column_cover {s t r x y : ℂ} {ex ey : Fin 3 → ℂ}
    (hm : CoversSidePolynomials moments s t r)
    (hex : ∀ j, MemRectangle (EX j) (ex j))
    (hey : ∀ j, MemRectangle (EY j) (ey j))
    (hx : Complex.normSq x=1) (hy : Complex.normSq y=1)
    (hcol : ColumnNecessary s t r x y) (hcap : CornerCaps ex ey x y) :
    HullsMem hull0 hull1 x y := by
  obtain ⟨a,ha0,ha1,hxa⟩ := unit_turnPhase hx
  obtain ⟨b,hb0,hb1,hyb⟩ := unit_turnPhase hy
  subst x; subst y
  exact full_square s t r ex ey hm hex hey a b
    (by simpa [Mem] using And.intro ha0 ha1)
    (by simpa [Mem] using And.intro hb0 hb1) hcol hcap

theorem side_exclusion {s t r : ℂ} {x y ex ey : Fin 3 → ℂ}
    (hm : CoversSidePolynomials moments s t r)
    (hex : ∀ j, MemRectangle (EX j) (ex j))
    (hey : ∀ j, MemRectangle (EY j) (ey j))
    (h : System s t r x y)
    (hcap : ∀ j, CornerCaps ex ey (x j) (y j)) : False := by
  apply two_regions_exclude moments hull0 hull1 hull0_reject hull1_reject hm h
  intro j
  exact physical_column_cover hm hex hey (h.1 j) (h.2.1 j) (system_column h j) (hcap j)

#print axioms full_square
#print axioms physical_column_cover
#print axioms side_exclusion
end Root0Angular20261003
