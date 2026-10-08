import D0FullInterface
import D0ForestAssembly0013
import D0ForestChunk0030
import D0ForestChunk0031
import D0ForestChunk0032
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1584652 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 26 else 26)))
theorem cover_1584652 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1584652 := by
  apply coveredState_split_literal (state := state_1584652) 0
    state_1584653 state_1584704
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1584653
  · exact cover_1584704
#print axioms cover_1584652

def state_1584651 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 26 else 13)))
theorem cover_1584651 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1584651 := by
  apply coveredState_split_literal (state := state_1584651) 4
    state_1584652 state_1585983
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1584652
  · exact cover_1585983
#print axioms cover_1584651

def state_1584650 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 13 else 13)))
theorem cover_1584650 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1584650 := by
  apply coveredState_split_literal (state := state_1584650) 3
    state_1584651 state_1586006
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1584651
  · exact cover_1586006
#print axioms cover_1584650

def state_1584649 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 13)))
theorem cover_1584649 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1584649 := by
  apply coveredState_split_literal (state := state_1584649) 2
    state_1584650 state_1586121
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1584650
  · exact cover_1586121
#print axioms cover_1584649

def state_1584648 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 13)))
theorem cover_1584648 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1584648 := by
  apply coveredState_split_literal (state := state_1584648) 1
    state_1584649 state_1586166
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1584649
  · exact cover_1586166
#print axioms cover_1584648

def state_1584622 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 13)))
theorem cover_1584622 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1584622 := by
  apply coveredState_split_literal (state := state_1584622) 0
    state_1584623 state_1584648
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1584623
  · exact cover_1584648
#print axioms cover_1584622

def state_1577176 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 6)))
theorem cover_1577176 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1577176 := by
  apply coveredState_split_literal (state := state_1577176) 4
    state_1577177 state_1584622
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1577177
  · exact cover_1584622
#print axioms cover_1577176

def state_1576120 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 6 else 6)))
theorem cover_1576120 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1576120 := by
  apply coveredState_split_literal (state := state_1576120) 3
    state_1576121 state_1577176
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1576121
  · exact cover_1577176
#print axioms cover_1576120

def state_1576119 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 6)))
theorem cover_1576119 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1576119 := by
  apply coveredState_split_literal (state := state_1576119) 2
    state_1576120 state_1586445
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1576120
  · exact cover_1586445
#print axioms cover_1576119

def state_1576118 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 3)))
theorem cover_1576118 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1576118 := by
  apply coveredState_split_literal (state := state_1576118) 4
    state_1576119 state_1586508
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1576119
  · exact cover_1586508
#print axioms cover_1576118

def state_1576117 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 3)))
theorem cover_1576117 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1576117 := by
  apply coveredState_split_literal (state := state_1576117) 3
    state_1576118 state_1586555
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1576118
  · exact cover_1586555
#print axioms cover_1576117

def state_1576116 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_1576116 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1576116 := by
  apply coveredState_split_literal (state := state_1576116) 2
    state_1576117 state_1586810
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1576117
  · exact cover_1586810
#print axioms cover_1576116

def state_1576115 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_1576115 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1576115 := by
  apply coveredState_split_literal (state := state_1576115) 1
    state_1576116 state_1586821
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1576116
  · exact cover_1586821
#print axioms cover_1576115

def state_1587881 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 9) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 12)))
theorem cover_1587881 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1587881 := by
  apply coveredState_split_literal (state := state_1587881) 2
    state_1587882 state_1588789
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1587882
  · exact cover_1588789
#print axioms cover_1587881

def state_1587241 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 12)))
theorem cover_1587241 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1587241 := by
  apply coveredState_split_literal (state := state_1587241) 1
    state_1587242 state_1587881
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1587242
  · exact cover_1587881
#print axioms cover_1587241

def state_1587240 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 6)))
theorem cover_1587240 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1587240 := by
  apply coveredState_split_literal (state := state_1587240) 4
    state_1587241 state_1589612
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1587241
  · exact cover_1589612
#print axioms cover_1587240

def state_1587132 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 6 else 6)))
theorem cover_1587132 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1587132 := by
  apply coveredState_split_literal (state := state_1587132) 3
    state_1587133 state_1587240
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1587133
  · exact cover_1587240
#print axioms cover_1587132

def state_1587131 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 6)))
theorem cover_1587131 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1587131 := by
  apply coveredState_split_literal (state := state_1587131) 2
    state_1587132 state_1590391
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1587132
  · exact cover_1590391
#print axioms cover_1587131

def state_1587130 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 6)))
theorem cover_1587130 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1587130 := by
  apply coveredState_split_literal (state := state_1587130) 0
    state_1587131 state_1590510
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1587131
  · exact cover_1590510
#print axioms cover_1587130

def state_1587129 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 3)))
theorem cover_1587129 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1587129 := by
  apply coveredState_split_literal (state := state_1587129) 4
    state_1587130 state_1590579
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1587130
  · exact cover_1590579
#print axioms cover_1587129

def state_1592248 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 19) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 25)))
theorem cover_1592248 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1592248 := by
  apply coveredState_split_literal (state := state_1592248) 3
    state_1592249 state_1593162
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1592249
  · exact cover_1593162
#print axioms cover_1592248

def state_1591904 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 25)))
theorem cover_1591904 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1591904 := by
  apply coveredState_split_literal (state := state_1591904) 1
    state_1591905 state_1592248
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1591905
  · exact cover_1592248
#print axioms cover_1591904

def state_1593421 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 19) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 25)))
theorem cover_1593421 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1593421 := by
  apply coveredState_split_literal (state := state_1593421) 3
    state_1593422 state_1593843
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1593422
  · exact cover_1593843
#print axioms cover_1593421

def state_1593273 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 25)))
theorem cover_1593273 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1593273 := by
  apply coveredState_split_literal (state := state_1593273) 1
    state_1593274 state_1593421
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1593274
  · exact cover_1593421
#print axioms cover_1593273

def state_1591903 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 25)))
theorem cover_1591903 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1591903 := by
  apply coveredState_split_literal (state := state_1591903) 0
    state_1591904 state_1593273
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1591904
  · exact cover_1593273
#print axioms cover_1591903

def state_1591495 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 12)))
theorem cover_1591495 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1591495 := by
  apply coveredState_split_literal (state := state_1591495) 4
    state_1591496 state_1591903
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1591496
  · exact cover_1591903
#print axioms cover_1591495

def state_1590969 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 9) else (if j.val < 3 then 12 else (if j.val < 4 then 14 else 12)))
theorem cover_1590969 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1590969 := by
  apply coveredState_split_literal (state := state_1590969) 2
    state_1590970 state_1591495
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1590970
  · exact cover_1591495
#print axioms cover_1590969

def state_1590968 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 9) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 12)))
theorem cover_1590968 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1590968 := by
  apply coveredState_split_literal (state := state_1590968) 3
    state_1590969 state_1594646
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1590969
  · exact cover_1594646
#print axioms cover_1590968

def state_1590780 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 12)))
theorem cover_1590780 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1590780 := by
  apply coveredState_split_literal (state := state_1590780) 1
    state_1590781 state_1590968
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1590781
  · exact cover_1590968
#print axioms cover_1590780

def state_1590779 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 6)))
theorem cover_1590779 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1590779 := by
  apply coveredState_split_literal (state := state_1590779) 4
    state_1590780 state_1595125
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1590780
  · exact cover_1595125
#print axioms cover_1590779

def state_1590778 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 6)))
theorem cover_1590778 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1590778 := by
  apply coveredState_split_literal (state := state_1590778) 2
    state_1590779 state_1595482
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1590779
  · exact cover_1595482
#print axioms cover_1590778

def state_1590777 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 6)))
theorem cover_1590777 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1590777 := by
  apply coveredState_split_literal (state := state_1590777) 0
    state_1590778 state_1595729
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1590778
  · exact cover_1595729
#print axioms cover_1590777

def state_1590776 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 3)))
theorem cover_1590776 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1590776 := by
  apply coveredState_split_literal (state := state_1590776) 4
    state_1590777 state_1596626
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1590777
  · exact cover_1596626
#print axioms cover_1590776

def state_1587128 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 3)))
theorem cover_1587128 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1587128 := by
  apply coveredState_split_literal (state := state_1587128) 3
    state_1587129 state_1590776
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1587129
  · exact cover_1590776
#print axioms cover_1587128

def state_1587127 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_1587127 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1587127 := by
  apply coveredState_split_literal (state := state_1587127) 2
    state_1587128 state_1596683
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1587128
  · exact cover_1596683
#print axioms cover_1587127

def state_1598361 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 20) else (if j.val < 3 then 51 else (if j.val < 4 then 29 else 50)))
theorem cover_1598361 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1598361 := by
  apply coveredState_split_literal (state := state_1598361) 0
    state_1598362 state_1599139
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1598362
  · exact cover_1599139
#print axioms cover_1598361

def state_1598360 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 20) else (if j.val < 3 then 51 else (if j.val < 4 then 29 else 25)))
theorem cover_1598360 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1598360 := by
  apply coveredState_split_literal (state := state_1598360) 4
    state_1598361 state_1600022
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1598361
  · exact cover_1600022
#print axioms cover_1598360

def state_1598312 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 20) else (if j.val < 3 then 25 else (if j.val < 4 then 29 else 25)))
theorem cover_1598312 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1598312 := by
  apply coveredState_split_literal (state := state_1598312) 2
    state_1598313 state_1598360
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1598313
  · exact cover_1598360
#print axioms cover_1598312

def state_1598098 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 20) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 25)))
theorem cover_1598098 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1598098 := by
  apply coveredState_split_literal (state := state_1598098) 3
    state_1598099 state_1598312
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1598099
  · exact cover_1598312
#print axioms cover_1598098

def state_1598097 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 10) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 25)))
theorem cover_1598097 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1598097 := by
  apply coveredState_split_literal (state := state_1598097) 1
    state_1598098 state_1600101
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1598098
  · exact cover_1600101
#print axioms cover_1598097

def state_1597797 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 25)))
theorem cover_1597797 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1597797 := by
  apply coveredState_split_literal (state := state_1597797) 0
    state_1597798 state_1598097
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1597798
  · exact cover_1598097
#print axioms cover_1597797

def state_1597165 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 12)))
theorem cover_1597165 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1597165 := by
  apply coveredState_split_literal (state := state_1597165) 4
    state_1597166 state_1597797
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1597166
  · exact cover_1597797
#print axioms cover_1597165

def state_1597137 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 14 else 12)))
theorem cover_1597137 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1597137 := by
  apply coveredState_split_literal (state := state_1597137) 2
    state_1597138 state_1597165
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1597138
  · exact cover_1597165
#print axioms cover_1597137

def state_1600146 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 25 else (if j.val < 4 then 15 else 12)))
theorem cover_1600146 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1600146 := by
  apply coveredState_split_literal (state := state_1600146) 4
    state_1600147 state_1600700
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1600147
  · exact cover_1600700
#print axioms cover_1600146

def state_1600138 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 15 else 12)))
theorem cover_1600138 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1600138 := by
  apply coveredState_split_literal (state := state_1600138) 2
    state_1600139 state_1600146
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1600139
  · exact cover_1600146
#print axioms cover_1600138

def state_1597136 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 12)))
theorem cover_1597136 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1597136 := by
  apply coveredState_split_literal (state := state_1597136) 3
    state_1597137 state_1600138
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1597137
  · exact cover_1600138
#print axioms cover_1597136

def state_1597135 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 6)))
theorem cover_1597135 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1597135 := by
  apply coveredState_split_literal (state := state_1597135) 4
    state_1597136 state_1601315
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1597136
  · exact cover_1601315
#print axioms cover_1597135

def state_1601483 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 24)))
theorem cover_1601483 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1601483 := by
  apply coveredState_split_literal (state := state_1601483) 1
    state_1601484 state_1601957
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1601484
  · exact cover_1601957
#print axioms cover_1601483

def state_1601399 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 24)))
theorem cover_1601399 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1601399 := by
  apply coveredState_split_literal (state := state_1601399) 0
    state_1601400 state_1601483
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1601400
  · exact cover_1601483
#print axioms cover_1601399

def state_1603265 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 20) else (if j.val < 3 then 26 else (if j.val < 4 then 29 else 50)))
theorem cover_1603265 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1603265 := by
  apply coveredState_split_literal (state := state_1603265) 0
    state_1603266 state_1603567
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1603266
  · exact cover_1603567
#print axioms cover_1603265

def state_1603264 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 20) else (if j.val < 3 then 26 else (if j.val < 4 then 29 else 25)))
theorem cover_1603264 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1603264 := by
  apply coveredState_split_literal (state := state_1603264) 4
    state_1603265 state_1604414
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1603265
  · exact cover_1604414
#print axioms cover_1603264

def state_1603072 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 20) else (if j.val < 3 then 26 else (if j.val < 4 then 14 else 25)))
theorem cover_1603072 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1603072 := by
  apply coveredState_split_literal (state := state_1603072) 3
    state_1603073 state_1603264
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1603073
  · exact cover_1603264
#print axioms cover_1603072

def state_1603071 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 20) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 25)))
theorem cover_1603071 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1603071 := by
  apply coveredState_split_literal (state := state_1603071) 2
    state_1603072 state_1604565
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1603072
  · exact cover_1604565
#print axioms cover_1603071

def state_1603070 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 25)))
theorem cover_1603070 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1603070 := by
  apply coveredState_split_literal (state := state_1603070) 1
    state_1603071 state_1604578
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1603071
  · exact cover_1604578
#print axioms cover_1603070

def state_1602964 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 25)))
theorem cover_1602964 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1602964 := by
  apply coveredState_split_literal (state := state_1602964) 0
    state_1602965 state_1603070
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1602965
  · exact cover_1603070
#print axioms cover_1602964

def state_1601398 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 12)))
theorem cover_1601398 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1601398 := by
  apply coveredState_split_literal (state := state_1601398) 4
    state_1601399 state_1602964
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1601399
  · exact cover_1602964
#print axioms cover_1601398

def state_1605504 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 24)))
theorem cover_1605504 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1605504 := by
  apply coveredState_split_literal (state := state_1605504) 1
    state_1605505 state_1605996
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1605505
  · exact cover_1605996
#print axioms cover_1605504

def state_1605498 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 24)))
theorem cover_1605498 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1605498 := by
  apply coveredState_split_literal (state := state_1605498) 0
    state_1605499 state_1605504
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1605499
  · exact cover_1605504
#print axioms cover_1605498

def state_1606597 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 25)))
theorem cover_1606597 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1606597 := by
  apply coveredState_split_literal (state := state_1606597) 1
    state_1606598 state_1607183
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1606598
  · exact cover_1607183
#print axioms cover_1606597

def state_1606585 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 25)))
theorem cover_1606585 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1606585 := by
  apply coveredState_split_literal (state := state_1606585) 0
    state_1606586 state_1606597
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1606586
  · exact cover_1606597
#print axioms cover_1606585

def state_1605497 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 12)))
theorem cover_1605497 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1605497 := by
  apply coveredState_split_literal (state := state_1605497) 4
    state_1605498 state_1606585
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1605498
  · exact cover_1606585
#print axioms cover_1605497

def state_1601397 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 12)))
theorem cover_1601397 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1601397 := by
  apply coveredState_split_literal (state := state_1601397) 3
    state_1601398 state_1605497
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1601398
  · exact cover_1605497
#print axioms cover_1601397

def state_1601396 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 6)))
theorem cover_1601396 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1601396 := by
  apply coveredState_split_literal (state := state_1601396) 4
    state_1601397 state_1607700
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1601397
  · exact cover_1607700
#print axioms cover_1601396

def state_1597134 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 6)))
theorem cover_1597134 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1597134 := by
  apply coveredState_split_literal (state := state_1597134) 2
    state_1597135 state_1601396
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1597135
  · exact cover_1601396
#print axioms cover_1597134
end Mub6.Numerical.CircleFullD0.Forest
