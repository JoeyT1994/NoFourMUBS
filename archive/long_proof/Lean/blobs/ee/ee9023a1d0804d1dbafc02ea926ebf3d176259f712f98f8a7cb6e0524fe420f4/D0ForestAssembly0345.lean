import D0FullInterface
import D0ForestAssembly0344
import D0ForestChunk1330
import D0ForestChunk1331
import D0ForestChunk1333
import D0ForestChunk1334
import D0ForestChunk1335
import D0ForestChunk1336
import D0ForestChunk1337
import D0ForestChunk1338
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1620151 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 8)))
theorem cover_1620151 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620151 := by
  apply coveredState_split_literal (state := state_1620151) 2
    state_1620152 state_1620157
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1620152
  · exact cover_1620157
#print axioms cover_1620151

def state_1620135 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 8)))
theorem cover_1620135 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620135 := by
  apply coveredState_split_literal (state := state_1620135) 1
    state_1620136 state_1620151
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1620136
  · exact cover_1620151
#print axioms cover_1620135

def state_1620134 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 4)))
theorem cover_1620134 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620134 := by
  apply coveredState_split_literal (state := state_1620134) 4
    state_1620135 state_1620680
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1620135
  · exact cover_1620680
#print axioms cover_1620134

def state_1620092 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 4)))
theorem cover_1620092 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620092 := by
  apply coveredState_split_literal (state := state_1620092) 0
    state_1620093 state_1620134
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1620093
  · exact cover_1620134
#print axioms cover_1620092

def state_1620091 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 6 else 4)))
theorem cover_1620091 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620091 := by
  apply coveredState_split_literal (state := state_1620091) 3
    state_1620092 state_1620723
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1620092
  · exact cover_1620723
#print axioms cover_1620091

def state_1620726 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 4)))
theorem cover_1620726 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620726 := by
  apply coveredState_split_literal (state := state_1620726) 4
    state_1620727 state_1620778
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1620727
  · exact cover_1620778
#print axioms cover_1620726

def state_1620794 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 24) else (if j.val < 3 then 13 else (if j.val < 4 then 24 else 8)))
theorem cover_1620794 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620794 := by
  apply coveredState_split_literal (state := state_1620794) 2
    state_1620795 state_1620830
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1620795
  · exact cover_1620830
#print axioms cover_1620794

def state_1620793 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 24) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 8)))
theorem cover_1620793 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620793 := by
  apply coveredState_split_literal (state := state_1620793) 3
    state_1620794 state_1620867
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1620794
  · exact cover_1620867
#print axioms cover_1620793

def state_1620932 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 51) else (if j.val < 3 then 52 else (if j.val < 4 then 96 else 32)))
theorem cover_1620932 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620932 := by
  apply coveredState_split_literal (state := state_1620932) 1
    state_1620933 state_1620976
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1620933
  · exact cover_1620976
#print axioms cover_1620932

def state_1620931 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 51) else (if j.val < 3 then 52 else (if j.val < 4 then 48 else 32)))
theorem cover_1620931 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620931 := by
  apply coveredState_split_literal (state := state_1620931) 3
    state_1620932 state_1621013
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1620932
  · exact cover_1621013
#print axioms cover_1620931

def state_1621028 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 51) else (if j.val < 3 then 52 else (if j.val < 4 then 48 else 33)))
theorem cover_1621028 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1621028 := by
  apply coveredState_split_literal (state := state_1621028) 3
    state_1621029 state_1621074
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1621029
  · exact cover_1621074
#print axioms cover_1621028

def state_1620930 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 51) else (if j.val < 3 then 52 else (if j.val < 4 then 48 else 16)))
theorem cover_1620930 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620930 := by
  apply coveredState_split_literal (state := state_1620930) 4
    state_1620931 state_1621028
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1620931
  · exact cover_1621028
#print axioms cover_1620930

def state_1620920 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 51) else (if j.val < 3 then 52 else (if j.val < 4 then 48 else 16)))
theorem cover_1620920 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620920 := by
  apply coveredState_split_literal (state := state_1620920) 0
    state_1620921 state_1620930
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1620921
  · exact cover_1620930
#print axioms cover_1620920

def state_1620919 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 51) else (if j.val < 3 then 26 else (if j.val < 4 then 48 else 16)))
theorem cover_1620919 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620919 := by
  apply coveredState_split_literal (state := state_1620919) 2
    state_1620920 state_1621095
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1620920
  · exact cover_1621095
#print axioms cover_1620919

def state_1620875 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 26 else (if j.val < 4 then 48 else 16)))
theorem cover_1620875 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620875 := by
  apply coveredState_split_literal (state := state_1620875) 1
    state_1620876 state_1620919
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1620876
  · exact cover_1620919
#print axioms cover_1620875

def state_1620874 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 26 else (if j.val < 4 then 24 else 16)))
theorem cover_1620874 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620874 := by
  apply coveredState_split_literal (state := state_1620874) 3
    state_1620875 state_1621112
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1620875
  · exact cover_1621112
#print axioms cover_1620874

def state_1621129 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 26 else (if j.val < 4 then 24 else 17)))
theorem cover_1621129 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1621129 := by
  apply coveredState_split_literal (state := state_1621129) 3
    state_1621130 state_1621185
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1621130
  · exact cover_1621185
#print axioms cover_1621129

def state_1620873 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 26 else (if j.val < 4 then 24 else 8)))
theorem cover_1620873 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620873 := by
  apply coveredState_split_literal (state := state_1620873) 4
    state_1620874 state_1621129
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1620874
  · exact cover_1621129
#print axioms cover_1620873

def state_1621209 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 50) else (if j.val < 3 then 26 else (if j.val < 4 then 48 else 16)))
theorem cover_1621209 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1621209 := by
  apply coveredState_split_literal (state := state_1621209) 2
    state_1621210 state_1621255
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1621210
  · exact cover_1621255
#print axioms cover_1621209

def state_1621306 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 102) else (if j.val < 3 then 104 else (if j.val < 4 then 96 else 32)))
theorem cover_1621306 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1621306 := by
  apply coveredState_split_literal (state := state_1621306) 0
    state_1621307 state_1621350
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1621307
  · exact cover_1621350
#print axioms cover_1621306

def state_1621305 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 102) else (if j.val < 3 then 52 else (if j.val < 4 then 96 else 32)))
theorem cover_1621305 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1621305 := by
  apply coveredState_split_literal (state := state_1621305) 2
    state_1621306 state_1621371
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1621306
  · exact cover_1621371
#print axioms cover_1621305

def state_1621413 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 206) else (if j.val < 3 then 208 else (if j.val < 4 then 192 else 65)))
theorem cover_1621413 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1621413 := by
  apply coveredState_split_literal (state := state_1621413) 0
    state_1621414 state_1621439
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1621414
  · exact cover_1621439
#print axioms cover_1621413

def state_1621490 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 206) else (if j.val < 3 then 209 else (if j.val < 4 then 192 else 65)))
theorem cover_1621490 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1621490 := by
  apply coveredState_split_literal (state := state_1621490) 0
    state_1621491 state_1621512
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1621491
  · exact cover_1621512
#print axioms cover_1621490

def state_1621412 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 206) else (if j.val < 3 then 104 else (if j.val < 4 then 192 else 65)))
theorem cover_1621412 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1621412 := by
  apply coveredState_split_literal (state := state_1621412) 2
    state_1621413 state_1621490
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1621413
  · exact cover_1621490
#print axioms cover_1621412

def state_1621565 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 207) else (if j.val < 3 then 104 else (if j.val < 4 then 192 else 65)))
theorem cover_1621565 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1621565 := by
  apply coveredState_split_literal (state := state_1621565) 2
    state_1621566 state_1621611
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1621566
  · exact cover_1621611
#print axioms cover_1621565

def state_1621411 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 103) else (if j.val < 3 then 104 else (if j.val < 4 then 192 else 65)))
theorem cover_1621411 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1621411 := by
  apply coveredState_split_literal (state := state_1621411) 1
    state_1621412 state_1621565
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1621412
  · exact cover_1621565
#print axioms cover_1621411

def state_1621673 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 206) else (if j.val < 3 then 104 else (if j.val < 4 then 193 else 65)))
theorem cover_1621673 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1621673 := by
  apply coveredState_split_literal (state := state_1621673) 2
    state_1621674 state_1621709
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1621674
  · exact cover_1621709
#print axioms cover_1621673

def state_1621754 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 207) else (if j.val < 3 then 104 else (if j.val < 4 then 193 else 65)))
theorem cover_1621754 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1621754 := by
  apply coveredState_split_literal (state := state_1621754) 2
    state_1621755 state_1621776
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1621755
  · exact cover_1621776
#print axioms cover_1621754

def state_1621672 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 103) else (if j.val < 3 then 104 else (if j.val < 4 then 193 else 65)))
theorem cover_1621672 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1621672 := by
  apply coveredState_split_literal (state := state_1621672) 1
    state_1621673 state_1621754
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1621673
  · exact cover_1621754
#print axioms cover_1621672

def state_1621410 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 103) else (if j.val < 3 then 104 else (if j.val < 4 then 96 else 65)))
theorem cover_1621410 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1621410 := by
  apply coveredState_split_literal (state := state_1621410) 3
    state_1621411 state_1621672
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1621411
  · exact cover_1621672
#print axioms cover_1621410

def state_1621408 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 76 else 103) else (if j.val < 3 then 104 else (if j.val < 4 then 96 else 32)))
theorem cover_1621408 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1621408 := by
  apply coveredState_split_literal (state := state_1621408) 4
    state_1621409 state_1621410
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1621409
  · exact cover_1621410
#print axioms cover_1621408

def state_1621822 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 77 else 103) else (if j.val < 3 then 104 else (if j.val < 4 then 192 else 65)))
theorem cover_1621822 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1621822 := by
  apply coveredState_split_literal (state := state_1621822) 1
    state_1621823 state_1621866
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1621823
  · exact cover_1621866
#print axioms cover_1621822
end Mub6.Numerical.CircleFullD0.Forest
