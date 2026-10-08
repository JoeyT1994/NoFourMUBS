import CircleFullInterface
import CircleForestAssembly0145
import CircleForestAssembly0146
import CircleForestAssembly0147
import CircleForestChunk0566
import CircleForestChunk0567
import CircleForestChunk0568
import CircleForestChunk0569
import CircleForestChunk0570
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1324214 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 13)))
theorem cover_1324214 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1324214 := by
  apply coveredState_split_literal (state := state_1324214) 0
    state_1324215 state_1324772
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1324215
  · exact cover_1324772
#print axioms cover_1324214

def state_1324000 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 6)))
theorem cover_1324000 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1324000 := by
  apply coveredState_split_literal (state := state_1324000) 4
    state_1324001 state_1324214
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1324001
  · exact cover_1324214
#print axioms cover_1324000

def state_1323696 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 6)))
theorem cover_1323696 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323696 := by
  apply coveredState_split_literal (state := state_1323696) 2
    state_1323697 state_1324000
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1323697
  · exact cover_1324000
#print axioms cover_1323696

def state_1323060 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 6)))
theorem cover_1323060 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323060 := by
  apply coveredState_split_literal (state := state_1323060) 1
    state_1323061 state_1323696
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1323061
  · exact cover_1323696
#print axioms cover_1323060

def state_1323059 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 3)))
theorem cover_1323059 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323059 := by
  apply coveredState_split_literal (state := state_1323059) 4
    state_1323060 state_1324873
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1323060
  · exact cover_1324873
#print axioms cover_1323059

def state_1323058 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 3)))
theorem cover_1323058 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323058 := by
  apply coveredState_split_literal (state := state_1323058) 3
    state_1323059 state_1324922
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1323059
  · exact cover_1324922
#print axioms cover_1323058

def state_1324985 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 6)))
theorem cover_1324985 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1324985 := by
  apply coveredState_split_literal (state := state_1324985) 4
    state_1324986 state_1325011
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1324986
  · exact cover_1325011
#print axioms cover_1324985

def state_1324967 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 6)))
theorem cover_1324967 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1324967 := by
  apply coveredState_split_literal (state := state_1324967) 1
    state_1324968 state_1324985
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1324968
  · exact cover_1324985
#print axioms cover_1324967

def state_1324966 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 3)))
theorem cover_1324966 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1324966 := by
  apply coveredState_split_literal (state := state_1324966) 4
    state_1324967 state_1325054
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1324967
  · exact cover_1325054
#print axioms cover_1324966

def state_1324965 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 3)))
theorem cover_1324965 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1324965 := by
  apply coveredState_split_literal (state := state_1324965) 3
    state_1324966 state_1325067
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1324966
  · exact cover_1325067
#print axioms cover_1324965

def state_1323057 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_1323057 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323057 := by
  apply coveredState_split_literal (state := state_1323057) 2
    state_1323058 state_1324965
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1323058
  · exact cover_1324965
#print axioms cover_1323057

def state_1325117 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 6)))
theorem cover_1325117 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1325117 := by
  apply coveredState_split_literal (state := state_1325117) 4
    state_1325118 state_1325143
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1325118
  · exact cover_1325143
#print axioms cover_1325117

def state_1325103 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 6)))
theorem cover_1325103 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1325103 := by
  apply coveredState_split_literal (state := state_1325103) 2
    state_1325104 state_1325117
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1325104
  · exact cover_1325117
#print axioms cover_1325103

def state_1325102 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 3)))
theorem cover_1325102 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1325102 := by
  apply coveredState_split_literal (state := state_1325102) 4
    state_1325103 state_1325188
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1325103
  · exact cover_1325188
#print axioms cover_1325102

def state_1325101 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 3)))
theorem cover_1325101 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1325101 := by
  apply coveredState_split_literal (state := state_1325101) 3
    state_1325102 state_1325201
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1325102
  · exact cover_1325201
#print axioms cover_1325101

def state_1325213 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 3)))
theorem cover_1325213 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1325213 := by
  apply coveredState_split_literal (state := state_1325213) 4
    state_1325214 state_1325275
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1325214
  · exact cover_1325275
#print axioms cover_1325213

def state_1325212 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 3)))
theorem cover_1325212 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1325212 := by
  apply coveredState_split_literal (state := state_1325212) 3
    state_1325213 state_1325316
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1325213
  · exact cover_1325316
#print axioms cover_1325212

def state_1325100 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_1325100 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1325100 := by
  apply coveredState_split_literal (state := state_1325100) 2
    state_1325101 state_1325212
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1325101
  · exact cover_1325212
#print axioms cover_1325100

def state_1323056 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_1323056 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323056 := by
  apply coveredState_split_literal (state := state_1323056) 1
    state_1323057 state_1325100
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1323057
  · exact cover_1325100
#print axioms cover_1323056

def state_1325336 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_1325336 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1325336 := by
  apply coveredState_split_literal (state := state_1325336) 2
    state_1325337 state_1325382
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1325337
  · exact cover_1325382
#print axioms cover_1325336

def state_1325407 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_1325407 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1325407 := by
  apply coveredState_split_literal (state := state_1325407) 2
    state_1325408 state_1325455
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1325408
  · exact cover_1325455
#print axioms cover_1325407

def state_1325335 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_1325335 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1325335 := by
  apply coveredState_split_literal (state := state_1325335) 1
    state_1325336 state_1325407
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1325336
  · exact cover_1325407
#print axioms cover_1325335

def state_1323055 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_1323055 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1323055 := by
  apply coveredState_split_literal (state := state_1323055) 0
    state_1323056 state_1325335
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1323056
  · exact cover_1325335
#print axioms cover_1323055

def state_1320585 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 1)))
theorem cover_1320585 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1320585 := by
  apply coveredState_split_literal (state := state_1320585) 4
    state_1320586 state_1323055
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1320586
  · exact cover_1323055
#print axioms cover_1320585

def state_1325526 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 5)))
theorem cover_1325526 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1325526 := by
  apply coveredState_split_literal (state := state_1325526) 1
    state_1325527 state_1325582
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1325527
  · exact cover_1325582
#print axioms cover_1325526

def state_1325524 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 2)))
theorem cover_1325524 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1325524 := by
  apply coveredState_split_literal (state := state_1325524) 4
    state_1325525 state_1325526
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1325525
  · exact cover_1325526
#print axioms cover_1325524

def state_1325522 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 2)))
theorem cover_1325522 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1325522 := by
  apply coveredState_split_literal (state := state_1325522) 3
    state_1325523 state_1325524
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1325523
  · exact cover_1325524
#print axioms cover_1325522

def state_1325521 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_1325521 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1325521 := by
  apply coveredState_split_literal (state := state_1325521) 2
    state_1325522 state_1325593
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1325522
  · exact cover_1325593
#print axioms cover_1325521

def state_1325520 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_1325520 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1325520 := by
  apply coveredState_split_literal (state := state_1325520) 1
    state_1325521 state_1325602
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1325521
  · exact cover_1325602
#print axioms cover_1325520

def state_1325650 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_1325650 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1325650 := by
  apply coveredState_split_literal (state := state_1325650) 2
    state_1325651 state_1325684
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1325651
  · exact cover_1325684
#print axioms cover_1325650

def state_1325717 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_1325717 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1325717 := by
  apply coveredState_split_literal (state := state_1325717) 2
    state_1325718 state_1325745
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1325718
  · exact cover_1325745
#print axioms cover_1325717

def state_1325649 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_1325649 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1325649 := by
  apply coveredState_split_literal (state := state_1325649) 1
    state_1325650 state_1325717
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1325650
  · exact cover_1325717
#print axioms cover_1325649
end Mub6.Numerical.CircleFullD0.Forest
