import D0FullInterface
import D0ForestAssembly0123
import D0ForestAssembly0129
import D0ForestAssembly0131
import D0ForestChunk0509
import D0ForestChunk0511
import D0ForestChunk0513
import D0ForestChunk0514
import D0ForestChunk0515
import D0ForestChunk0516
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1311492 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 22) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 12)))
theorem cover_1311492 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1311492 := by
  apply coveredState_split_literal (state := state_1311492) 4
    state_1311493 state_1311784
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1311493
  · exact cover_1311784
#print axioms cover_1311492

def state_1311853 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 23) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 12)))
theorem cover_1311853 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1311853 := by
  apply coveredState_split_literal (state := state_1311853) 4
    state_1311854 state_1311897
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1311854
  · exact cover_1311897
#print axioms cover_1311853

def state_1311491 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 12)))
theorem cover_1311491 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1311491 := by
  apply coveredState_split_literal (state := state_1311491) 1
    state_1311492 state_1311853
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1311492
  · exact cover_1311853
#print axioms cover_1311491

def state_1311477 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 12)))
theorem cover_1311477 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1311477 := by
  apply coveredState_split_literal (state := state_1311477) 3
    state_1311478 state_1311491
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1311478
  · exact cover_1311491
#print axioms cover_1311477

def state_1311476 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 6)))
theorem cover_1311476 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1311476 := by
  apply coveredState_split_literal (state := state_1311476) 4
    state_1311477 state_1311924
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1311477
  · exact cover_1311924
#print axioms cover_1311476

def state_1311230 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 6)))
theorem cover_1311230 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1311230 := by
  apply coveredState_split_literal (state := state_1311230) 2
    state_1311231 state_1311476
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1311231
  · exact cover_1311476
#print axioms cover_1311230

def state_1311096 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 6)))
theorem cover_1311096 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1311096 := by
  apply coveredState_split_literal (state := state_1311096) 1
    state_1311097 state_1311230
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1311097
  · exact cover_1311230
#print axioms cover_1311096

def state_1311947 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 6)))
theorem cover_1311947 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1311947 := by
  apply coveredState_split_literal (state := state_1311947) 1
    state_1311948 state_1311979
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1311948
  · exact cover_1311979
#print axioms cover_1311947

def state_1311095 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 6)))
theorem cover_1311095 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1311095 := by
  apply coveredState_split_literal (state := state_1311095) 0
    state_1311096 state_1311947
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1311096
  · exact cover_1311947
#print axioms cover_1311095

def state_1311094 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 3)))
theorem cover_1311094 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1311094 := by
  apply coveredState_split_literal (state := state_1311094) 4
    state_1311095 state_1312014
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1311095
  · exact cover_1312014
#print axioms cover_1311094

def state_1311086 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 3)))
theorem cover_1311086 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1311086 := by
  apply coveredState_split_literal (state := state_1311086) 3
    state_1311087 state_1311094
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1311087
  · exact cover_1311094
#print axioms cover_1311086

def state_1312040 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 6)))
theorem cover_1312040 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1312040 := by
  apply coveredState_split_literal (state := state_1312040) 0
    state_1312041 state_1312056
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1312041
  · exact cover_1312056
#print axioms cover_1312040

def state_1312039 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 3)))
theorem cover_1312039 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1312039 := by
  apply coveredState_split_literal (state := state_1312039) 4
    state_1312040 state_1312119
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1312040
  · exact cover_1312119
#print axioms cover_1312039

def state_1312019 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 3)))
theorem cover_1312019 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1312019 := by
  apply coveredState_split_literal (state := state_1312019) 3
    state_1312020 state_1312039
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1312020
  · exact cover_1312039
#print axioms cover_1312019

def state_1311085 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_1311085 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1311085 := by
  apply coveredState_split_literal (state := state_1311085) 2
    state_1311086 state_1312019
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1311086
  · exact cover_1312019
#print axioms cover_1311085

def state_1310973 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_1310973 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1310973 := by
  apply coveredState_split_literal (state := state_1310973) 1
    state_1310974 state_1311085
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1310974
  · exact cover_1311085
#print axioms cover_1310973

def state_1309593 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_1309593 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1309593 := by
  apply coveredState_split_literal (state := state_1309593) 0
    state_1309594 state_1310973
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1309594
  · exact cover_1310973
#print axioms cover_1309593

def state_1304153 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 1)))
theorem cover_1304153 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1304153 := by
  apply coveredState_split_literal (state := state_1304153) 4
    state_1304154 state_1309593
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1304154
  · exact cover_1309593
#print axioms cover_1304153

def state_1303681 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
theorem cover_1303681 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1303681 := by
  apply coveredState_split_literal (state := state_1303681) 3
    state_1303682 state_1304153
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1303682
  · exact cover_1304153
#print axioms cover_1303681

def state_1301979 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_1301979 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1301979 := by
  apply coveredState_split_literal (state := state_1301979) 2
    state_1301980 state_1303681
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1301980
  · exact cover_1303681
#print axioms cover_1301979

def state_1312196 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_1312196 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1312196 := by
  apply coveredState_split_literal (state := state_1312196) 2
    state_1312197 state_1312258
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1312197
  · exact cover_1312258
#print axioms cover_1312196

def state_1312195 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_1312195 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1312195 := by
  apply coveredState_split_literal (state := state_1312195) 1
    state_1312196 state_1312267
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1312196
  · exact cover_1312267
#print axioms cover_1312195

def state_1312135 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_1312135 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1312135 := by
  apply coveredState_split_literal (state := state_1312135) 0
    state_1312136 state_1312195
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1312136
  · exact cover_1312195
#print axioms cover_1312135

def state_1312352 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 3)))
theorem cover_1312352 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1312352 := by
  apply coveredState_split_literal (state := state_1312352) 3
    state_1312353 state_1312404
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1312353
  · exact cover_1312404
#print axioms cover_1312352

def state_1312326 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_1312326 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1312326 := by
  apply coveredState_split_literal (state := state_1312326) 2
    state_1312327 state_1312352
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1312327
  · exact cover_1312352
#print axioms cover_1312326

def state_1312325 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_1312325 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1312325 := by
  apply coveredState_split_literal (state := state_1312325) 1
    state_1312326 state_1312425
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1312326
  · exact cover_1312425
#print axioms cover_1312325

def state_1312520 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 6)))
theorem cover_1312520 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1312520 := by
  apply coveredState_split_literal (state := state_1312520) 0
    state_1312521 state_1312530
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1312521
  · exact cover_1312530
#print axioms cover_1312520

def state_1312519 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 3)))
theorem cover_1312519 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1312519 := by
  apply coveredState_split_literal (state := state_1312519) 4
    state_1312520 state_1312591
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1312520
  · exact cover_1312591
#print axioms cover_1312519

def state_1312517 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 3)))
theorem cover_1312517 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1312517 := by
  apply coveredState_split_literal (state := state_1312517) 3
    state_1312518 state_1312519
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1312518
  · exact cover_1312519
#print axioms cover_1312517

def state_1312516 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_1312516 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1312516 := by
  apply coveredState_split_literal (state := state_1312516) 2
    state_1312517 state_1312592
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1312517
  · exact cover_1312592
#print axioms cover_1312516

def state_1312458 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_1312458 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1312458 := by
  apply coveredState_split_literal (state := state_1312458) 1
    state_1312459 state_1312516
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1312459
  · exact cover_1312516
#print axioms cover_1312458

def state_1312324 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_1312324 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1312324 := by
  apply coveredState_split_literal (state := state_1312324) 0
    state_1312325 state_1312458
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1312325
  · exact cover_1312458
#print axioms cover_1312324
end Mub6.Numerical.CircleFullD0.Forest
