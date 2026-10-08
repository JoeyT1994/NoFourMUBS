import D0FullInterface
import D0ForestAssembly0538
import D0ForestAssembly0539
import D0ForestChunk2126
import D0ForestChunk2129
import D0ForestChunk2130
import D0ForestChunk2131
import D0ForestChunk2132
import D0ForestChunk2133
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2591483 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 23 else 20)))
theorem cover_2591483 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2591483 := by
  apply coveredState_split_literal (state := state_2591483) 1
    state_2591484 state_2591569
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2591484
  · exact cover_2591569
#print axioms cover_2591483

def state_2591482 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 23 else 10)))
theorem cover_2591482 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2591482 := by
  apply coveredState_split_literal (state := state_2591482) 4
    state_2591483 state_2591776
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2591483
  · exact cover_2591776
#print axioms cover_2591482

def state_2591481 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 23 else 10)))
theorem cover_2591481 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2591481 := by
  apply coveredState_split_literal (state := state_2591481) 0
    state_2591482 state_2591777
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2591482
  · exact cover_2591777
#print axioms cover_2591481

def state_2591083 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 11 else 10)))
theorem cover_2591083 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2591083 := by
  apply coveredState_split_literal (state := state_2591083) 3
    state_2591084 state_2591481
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2591084
  · exact cover_2591481
#print axioms cover_2591083

def state_2591827 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 8) else (if j.val < 3 then 25 else (if j.val < 4 then 22 else 20)))
theorem cover_2591827 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2591827 := by
  apply coveredState_split_literal (state := state_2591827) 1
    state_2591828 state_2591881
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2591828
  · exact cover_2591881
#print axioms cover_2591827

def state_2591826 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 8) else (if j.val < 3 then 25 else (if j.val < 4 then 22 else 10)))
theorem cover_2591826 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2591826 := by
  apply coveredState_split_literal (state := state_2591826) 4
    state_2591827 state_2591892
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2591827
  · exact cover_2591892
#print axioms cover_2591826

def state_2591825 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 8) else (if j.val < 3 then 25 else (if j.val < 4 then 22 else 10)))
theorem cover_2591825 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2591825 := by
  apply coveredState_split_literal (state := state_2591825) 0
    state_2591826 state_2591913
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2591826
  · exact cover_2591913
#print axioms cover_2591825

def state_2591926 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 8) else (if j.val < 3 then 25 else (if j.val < 4 then 23 else 20)))
theorem cover_2591926 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2591926 := by
  apply coveredState_split_literal (state := state_2591926) 1
    state_2591927 state_2591962
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2591927
  · exact cover_2591962
#print axioms cover_2591926

def state_2591925 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 8) else (if j.val < 3 then 25 else (if j.val < 4 then 23 else 10)))
theorem cover_2591925 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2591925 := by
  apply coveredState_split_literal (state := state_2591925) 4
    state_2591926 state_2592019
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2591926
  · exact cover_2592019
#print axioms cover_2591925

def state_2591924 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 8) else (if j.val < 3 then 25 else (if j.val < 4 then 23 else 10)))
theorem cover_2591924 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2591924 := by
  apply coveredState_split_literal (state := state_2591924) 0
    state_2591925 state_2592020
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2591925
  · exact cover_2592020
#print axioms cover_2591924

def state_2591824 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 8) else (if j.val < 3 then 25 else (if j.val < 4 then 11 else 10)))
theorem cover_2591824 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2591824 := by
  apply coveredState_split_literal (state := state_2591824) 3
    state_2591825 state_2591924
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2591825
  · exact cover_2591924
#print axioms cover_2591824

def state_2591082 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 8) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 10)))
theorem cover_2591082 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2591082 := by
  apply coveredState_split_literal (state := state_2591082) 2
    state_2591083 state_2591824
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2591083
  · exact cover_2591824
#print axioms cover_2591082

def state_2592096 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 18) else (if j.val < 3 then 48 else (if j.val < 4 then 23 else 20)))
theorem cover_2592096 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2592096 := by
  apply coveredState_split_literal (state := state_2592096) 3
    state_2592097 state_2592134
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2592097
  · exact cover_2592134
#print axioms cover_2592096

def state_2592167 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 18) else (if j.val < 3 then 49 else (if j.val < 4 then 23 else 20)))
theorem cover_2592167 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2592167 := by
  apply coveredState_split_literal (state := state_2592167) 3
    state_2592168 state_2592197
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2592168
  · exact cover_2592197
#print axioms cover_2592167

def state_2592095 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 18) else (if j.val < 3 then 24 else (if j.val < 4 then 23 else 20)))
theorem cover_2592095 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2592095 := by
  apply coveredState_split_literal (state := state_2592095) 2
    state_2592096 state_2592167
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2592096
  · exact cover_2592167
#print axioms cover_2592095

def state_2592248 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 19) else (if j.val < 3 then 24 else (if j.val < 4 then 23 else 20)))
theorem cover_2592248 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2592248 := by
  apply coveredState_split_literal (state := state_2592248) 2
    state_2592249 state_2592280
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2592249
  · exact cover_2592280
#print axioms cover_2592248

def state_2592094 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 23 else 20)))
theorem cover_2592094 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2592094 := by
  apply coveredState_split_literal (state := state_2592094) 1
    state_2592095 state_2592248
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2592095
  · exact cover_2592248
#print axioms cover_2592094

def state_2592093 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 23 else 10)))
theorem cover_2592093 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2592093 := by
  apply coveredState_split_literal (state := state_2592093) 4
    state_2592094 state_2592319
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2592094
  · exact cover_2592319
#print axioms cover_2592093

def state_2592092 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 23 else 10)))
theorem cover_2592092 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2592092 := by
  apply coveredState_split_literal (state := state_2592092) 0
    state_2592093 state_2592326
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2592093
  · exact cover_2592326
#print axioms cover_2592092

def state_2592058 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 11 else 10)))
theorem cover_2592058 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2592058 := by
  apply coveredState_split_literal (state := state_2592058) 3
    state_2592059 state_2592092
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2592059
  · exact cover_2592092
#print axioms cover_2592058

def state_2592378 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 23 else 10)))
theorem cover_2592378 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2592378 := by
  apply coveredState_split_literal (state := state_2592378) 4
    state_2592379 state_2592434
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2592379
  · exact cover_2592434
#print axioms cover_2592378

def state_2592377 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 23 else 10)))
theorem cover_2592377 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2592377 := by
  apply coveredState_split_literal (state := state_2592377) 0
    state_2592378 state_2592445
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2592378
  · exact cover_2592445
#print axioms cover_2592377

def state_2592369 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 11 else 10)))
theorem cover_2592369 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2592369 := by
  apply coveredState_split_literal (state := state_2592369) 3
    state_2592370 state_2592377
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2592370
  · exact cover_2592377
#print axioms cover_2592369

def state_2592057 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 9) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 10)))
theorem cover_2592057 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2592057 := by
  apply coveredState_split_literal (state := state_2592057) 2
    state_2592058 state_2592369
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2592058
  · exact cover_2592369
#print axioms cover_2592057

def state_2591081 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 10)))
theorem cover_2591081 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2591081 := by
  apply coveredState_split_literal (state := state_2591081) 1
    state_2591082 state_2592057
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2591082
  · exact cover_2592057
#print axioms cover_2591081

def state_2591080 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 5)))
theorem cover_2591080 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2591080 := by
  apply coveredState_split_literal (state := state_2591080) 4
    state_2591081 state_2592458
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2591081
  · exact cover_2592458
#print axioms cover_2591080

def state_2591042 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 5 else 5)))
theorem cover_2591042 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2591042 := by
  apply coveredState_split_literal (state := state_2591042) 3
    state_2591043 state_2591080
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2591043
  · exact cover_2591080
#print axioms cover_2591042

def state_2592525 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 11 else 5)))
theorem cover_2592525 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2592525 := by
  apply coveredState_split_literal (state := state_2592525) 4
    state_2592526 state_2592579
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2592526
  · exact cover_2592579
#print axioms cover_2592525

def state_2592515 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 5 else 5)))
theorem cover_2592515 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2592515 := by
  apply coveredState_split_literal (state := state_2592515) 3
    state_2592516 state_2592525
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2592516
  · exact cover_2592525
#print axioms cover_2592515

def state_2591041 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 5)))
theorem cover_2591041 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2591041 := by
  apply coveredState_split_literal (state := state_2591041) 2
    state_2591042 state_2592515
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2591042
  · exact cover_2592515
#print axioms cover_2591041

def state_2590385 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 5)))
theorem cover_2590385 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2590385 := by
  apply coveredState_split_literal (state := state_2590385) 0
    state_2590386 state_2591041
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2590386
  · exact cover_2591041
#print axioms cover_2590385

def state_2584889 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 2)))
theorem cover_2584889 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2584889 := by
  apply coveredState_split_literal (state := state_2584889) 4
    state_2584890 state_2590385
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2584890
  · exact cover_2590385
#print axioms cover_2584889
end Mub6.Numerical.CircleFullD0.Forest
