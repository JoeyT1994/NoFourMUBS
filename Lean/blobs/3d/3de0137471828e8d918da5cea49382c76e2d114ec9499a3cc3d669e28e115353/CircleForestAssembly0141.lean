import CircleFullInterface
import CircleForestAssembly0131
import CircleForestAssembly0139
import CircleForestAssembly0140
import CircleForestChunk0554
import CircleForestChunk0555
import CircleForestChunk0556
import CircleForestChunk0557
import CircleForestChunk0558
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_294530 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_294530 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_294530 := by
  apply coveredState_split_literal (state := state_294530) 0
    state_294531 state_294566
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_294531
  · exact cover_294566
#print axioms cover_294530

def state_293964 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 1)))
theorem cover_293964 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_293964 := by
  apply coveredState_split_literal (state := state_293964) 4
    state_293965 state_294530
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_293965
  · exact cover_294530
#print axioms cover_293964

def state_293432 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
theorem cover_293432 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_293432 := by
  apply coveredState_split_literal (state := state_293432) 3
    state_293433 state_293964
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_293433
  · exact cover_293964
#print axioms cover_293432

def state_292302 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_292302 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_292302 := by
  apply coveredState_split_literal (state := state_292302) 2
    state_292303 state_293432
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_292303
  · exact cover_293432
#print axioms cover_292302

def state_285916 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 1) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_285916 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_285916 := by
  apply coveredState_split_literal (state := state_285916) 1
    state_285917 state_292302
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_285917
  · exact cover_292302
#print axioms cover_285916

def state_272556 : State := rootState
theorem cover_272556 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_272556 := by
  apply coveredState_split_literal (state := state_272556) 0
    state_272557 state_285916
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_272557
  · exact cover_285916
#print axioms cover_272556

def state_372002 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 11)))
theorem cover_372002 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_372002 := by
  apply coveredState_split_literal (state := state_372002) 0
    state_372003 state_372026
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_372003
  · exact cover_372026
#print axioms cover_372002

def state_371998 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 5)))
theorem cover_371998 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_371998 := by
  apply coveredState_split_literal (state := state_371998) 4
    state_371999 state_372002
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_371999
  · exact cover_372002
#print axioms cover_371998

def state_371990 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 5)))
theorem cover_371990 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_371990 := by
  apply coveredState_split_literal (state := state_371990) 3
    state_371991 state_371998
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_371991
  · exact cover_371998
#print axioms cover_371990

def state_371988 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 2)))
theorem cover_371988 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_371988 := by
  apply coveredState_split_literal (state := state_371988) 4
    state_371989 state_371990
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_371989
  · exact cover_371990
#print axioms cover_371988

def state_371980 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 2)))
theorem cover_371980 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_371980 := by
  apply coveredState_split_literal (state := state_371980) 3
    state_371981 state_371988
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_371981
  · exact cover_371988
#print axioms cover_371980

def state_372067 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 2)))
theorem cover_372067 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_372067 := by
  apply coveredState_split_literal (state := state_372067) 3
    state_372068 state_372073
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_372068
  · exact cover_372073
#print axioms cover_372067

def state_371979 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_371979 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_371979 := by
  apply coveredState_split_literal (state := state_371979) 2
    state_371980 state_372067
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_371980
  · exact cover_372067
#print axioms cover_371979

def state_372150 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 11) else (if j.val < 3 then 4 else (if j.val < 4 then 4 else 5)))
theorem cover_372150 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_372150 := by
  apply coveredState_split_literal (state := state_372150) 4
    state_372151 state_372156
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_372151
  · exact cover_372156
#print axioms cover_372150

def state_372140 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 4 else 5)))
theorem cover_372140 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_372140 := by
  apply coveredState_split_literal (state := state_372140) 1
    state_372141 state_372150
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_372141
  · exact cover_372150
#print axioms cover_372140

def state_372138 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 4 else 2)))
theorem cover_372138 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_372138 := by
  apply coveredState_split_literal (state := state_372138) 4
    state_372139 state_372140
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_372139
  · exact cover_372140
#print axioms cover_372138

def state_372350 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 10) else (if j.val < 3 then 9 else (if j.val < 4 then 11 else 11)))
theorem cover_372350 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_372350 := by
  apply coveredState_split_literal (state := state_372350) 3
    state_372351 state_372398
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_372351
  · exact cover_372398
#print axioms cover_372350

def state_372346 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 10) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 11)))
theorem cover_372346 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_372346 := by
  apply coveredState_split_literal (state := state_372346) 2
    state_372347 state_372350
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_372347
  · exact cover_372350
#print axioms cover_372346

def state_372286 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 11)))
theorem cover_372286 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_372286 := by
  apply coveredState_split_literal (state := state_372286) 0
    state_372287 state_372346
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_372287
  · exact cover_372346
#print axioms cover_372286

def state_372282 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 5)))
theorem cover_372282 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_372282 := by
  apply coveredState_split_literal (state := state_372282) 4
    state_372283 state_372286
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_372283
  · exact cover_372286
#print axioms cover_372282

def state_372224 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 5)))
theorem cover_372224 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_372224 := by
  apply coveredState_split_literal (state := state_372224) 3
    state_372225 state_372282
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_372225
  · exact cover_372282
#print axioms cover_372224

def state_372520 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 11) else (if j.val < 3 then 9 else (if j.val < 4 then 10 else 11)))
theorem cover_372520 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_372520 := by
  apply coveredState_split_literal (state := state_372520) 1
    state_372521 state_372568
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_372521
  · exact cover_372568
#print axioms cover_372520

def state_372486 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 11) else (if j.val < 3 then 4 else (if j.val < 4 then 10 else 11)))
theorem cover_372486 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_372486 := by
  apply coveredState_split_literal (state := state_372486) 2
    state_372487 state_372520
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_372487
  · exact cover_372520
#print axioms cover_372486

def state_372450 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 11) else (if j.val < 3 then 4 else (if j.val < 4 then 10 else 11)))
theorem cover_372450 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_372450 := by
  apply coveredState_split_literal (state := state_372450) 0
    state_372451 state_372486
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_372451
  · exact cover_372486
#print axioms cover_372450

def state_372444 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 11) else (if j.val < 3 then 4 else (if j.val < 4 then 10 else 5)))
theorem cover_372444 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_372444 := by
  apply coveredState_split_literal (state := state_372444) 4
    state_372445 state_372450
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_372445
  · exact cover_372450
#print axioms cover_372444

def state_372819 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 45) else (if j.val < 3 then 18 else (if j.val < 4 then 22 else 47)))
theorem cover_372819 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_372819 := by
  apply coveredState_split_literal (state := state_372819) 3
    state_372820 state_372853
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_372820
  · exact cover_372853
#print axioms cover_372819

def state_372777 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 22) else (if j.val < 3 then 18 else (if j.val < 4 then 22 else 47)))
theorem cover_372777 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_372777 := by
  apply coveredState_split_literal (state := state_372777) 1
    state_372778 state_372819
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_372778
  · exact cover_372819
#print axioms cover_372777

def state_372739 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 22) else (if j.val < 3 then 18 else (if j.val < 4 then 22 else 23)))
theorem cover_372739 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_372739 := by
  apply coveredState_split_literal (state := state_372739) 4
    state_372740 state_372777
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_372740
  · exact cover_372777
#print axioms cover_372739

def state_372929 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 45) else (if j.val < 3 then 38 else (if j.val < 4 then 45 else 47)))
theorem cover_372929 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_372929 := by
  apply coveredState_split_literal (state := state_372929) 0
    state_372930 state_372937
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_372930
  · exact cover_372937
#print axioms cover_372929

def state_372928 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 45) else (if j.val < 3 then 19 else (if j.val < 4 then 45 else 47)))
theorem cover_372928 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_372928 := by
  apply coveredState_split_literal (state := state_372928) 2
    state_372929 state_372998
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_372929
  · exact cover_372998
#print axioms cover_372928

def state_372926 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 45) else (if j.val < 3 then 19 else (if j.val < 4 then 22 else 47)))
theorem cover_372926 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_372926 := by
  apply coveredState_split_literal (state := state_372926) 3
    state_372927 state_372928
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_372927
  · exact cover_372928
#print axioms cover_372926

def state_372896 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 22) else (if j.val < 3 then 19 else (if j.val < 4 then 22 else 47)))
theorem cover_372896 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_372896 := by
  apply coveredState_split_literal (state := state_372896) 1
    state_372897 state_372926
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_372897
  · exact cover_372926
#print axioms cover_372896
end Mub6.Numerical.CircleFullPrototype.Forest
