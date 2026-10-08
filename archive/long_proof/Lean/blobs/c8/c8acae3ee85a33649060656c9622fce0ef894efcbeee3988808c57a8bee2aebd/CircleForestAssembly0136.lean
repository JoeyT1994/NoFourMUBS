import CircleFullInterface
import CircleForestAssembly0135
import CircleForestChunk0533
import CircleForestChunk0534
import CircleForestChunk0535
import CircleForestChunk0536
import CircleForestChunk0537
import CircleForestChunk0538
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_289319 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_289319 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_289319 := by
  apply coveredState_split_literal (state := state_289319) 2
    state_289320 state_289637
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_289320
  · exact cover_289637
#print axioms cover_289319

def state_289686 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 8)))
theorem cover_289686 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_289686 := by
  apply coveredState_split_literal (state := state_289686) 1
    state_289687 state_289720
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_289687
  · exact cover_289720
#print axioms cover_289686

def state_289761 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 9)))
theorem cover_289761 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_289761 := by
  apply coveredState_split_literal (state := state_289761) 1
    state_289762 state_289797
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_289762
  · exact cover_289797
#print axioms cover_289761

def state_289685 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 4)))
theorem cover_289685 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_289685 := by
  apply coveredState_split_literal (state := state_289685) 4
    state_289686 state_289761
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_289686
  · exact cover_289761
#print axioms cover_289685

def state_289684 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 4)))
theorem cover_289684 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_289684 := by
  apply coveredState_split_literal (state := state_289684) 0
    state_289685 state_289834
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_289685
  · exact cover_289834
#print axioms cover_289684

def state_289672 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 6 else 4)))
theorem cover_289672 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_289672 := by
  apply coveredState_split_literal (state := state_289672) 3
    state_289673 state_289684
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_289673
  · exact cover_289684
#print axioms cover_289672

def state_289671 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 11) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 4)))
theorem cover_289671 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_289671 := by
  apply coveredState_split_literal (state := state_289671) 2
    state_289672 state_289871
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_289672
  · exact cover_289871
#print axioms cover_289671

def state_289649 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 4)))
theorem cover_289649 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_289649 := by
  apply coveredState_split_literal (state := state_289649) 1
    state_289650 state_289671
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_289650
  · exact cover_289671
#print axioms cover_289649

def state_289648 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 2)))
theorem cover_289648 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_289648 := by
  apply coveredState_split_literal (state := state_289648) 4
    state_289649 state_289890
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_289649
  · exact cover_289890
#print axioms cover_289648

def state_289945 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 4)))
theorem cover_289945 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_289945 := by
  apply coveredState_split_literal (state := state_289945) 3
    state_289946 state_289997
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_289946
  · exact cover_289997
#print axioms cover_289945

def state_289944 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 4)))
theorem cover_289944 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_289944 := by
  apply coveredState_split_literal (state := state_289944) 0
    state_289945 state_290016
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_289945
  · exact cover_290016
#print axioms cover_289944

def state_289943 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 10) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 4)))
theorem cover_289943 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_289943 := by
  apply coveredState_split_literal (state := state_289943) 2
    state_289944 state_290027
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_289944
  · exact cover_290027
#print axioms cover_289943

def state_290059 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 45) else (if j.val < 3 then 48 else (if j.val < 4 then 28 else 17)))
theorem cover_290059 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_290059 := by
  apply coveredState_split_literal (state := state_290059) 0
    state_290060 state_290097
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_290060
  · exact cover_290097
#print axioms cover_290059

def state_290055 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 22) else (if j.val < 3 then 48 else (if j.val < 4 then 28 else 17)))
theorem cover_290055 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_290055 := by
  apply coveredState_split_literal (state := state_290055) 1
    state_290056 state_290059
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_290056
  · exact cover_290059
#print axioms cover_290055

def state_290054 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 22) else (if j.val < 3 then 24 else (if j.val < 4 then 28 else 17)))
theorem cover_290054 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_290054 := by
  apply coveredState_split_literal (state := state_290054) 2
    state_290055 state_290148
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_290055
  · exact cover_290148
#print axioms cover_290054

def state_290036 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 22) else (if j.val < 3 then 24 else (if j.val < 4 then 28 else 8)))
theorem cover_290036 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_290036 := by
  apply coveredState_split_literal (state := state_290036) 4
    state_290037 state_290054
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_290037
  · exact cover_290054
#print axioms cover_290036

def state_290035 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 22) else (if j.val < 3 then 24 else (if j.val < 4 then 14 else 8)))
theorem cover_290035 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_290035 := by
  apply coveredState_split_literal (state := state_290035) 3
    state_290036 state_290153
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_290036
  · exact cover_290153
#print axioms cover_290035

def state_290034 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 22) else (if j.val < 3 then 24 else (if j.val < 4 then 14 else 8)))
theorem cover_290034 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_290034 := by
  apply coveredState_split_literal (state := state_290034) 0
    state_290035 state_290196
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_290035
  · exact cover_290196
#print axioms cover_290034

def state_290033 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 22) else (if j.val < 3 then 12 else (if j.val < 4 then 14 else 8)))
theorem cover_290033 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_290033 := by
  apply coveredState_split_literal (state := state_290033) 2
    state_290034 state_290211
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_290034
  · exact cover_290211
#print axioms cover_290033

def state_290365 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 92) else (if j.val < 3 then 96 else (if j.val < 4 then 57 else 35)))
theorem cover_290365 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_290365 := by
  apply coveredState_split_literal (state := state_290365) 0
    state_290366 state_290407
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_290366
  · exact cover_290407
#print axioms cover_290365

def state_290364 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 46) else (if j.val < 3 then 96 else (if j.val < 4 then 57 else 35)))
theorem cover_290364 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_290364 := by
  apply coveredState_split_literal (state := state_290364) 1
    state_290365 state_290448
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_290365
  · exact cover_290448
#print axioms cover_290364

def state_290363 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 46) else (if j.val < 3 then 48 else (if j.val < 4 then 57 else 35)))
theorem cover_290363 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_290363 := by
  apply coveredState_split_literal (state := state_290363) 2
    state_290364 state_290455
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_290364
  · exact cover_290455
#print axioms cover_290363

def state_290335 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 46) else (if j.val < 3 then 48 else (if j.val < 4 then 57 else 17)))
theorem cover_290335 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_290335 := by
  apply coveredState_split_literal (state := state_290335) 4
    state_290336 state_290363
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_290336
  · exact cover_290363
#print axioms cover_290335

def state_290283 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 46) else (if j.val < 3 then 48 else (if j.val < 4 then 28 else 17)))
theorem cover_290283 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_290283 := by
  apply coveredState_split_literal (state := state_290283) 3
    state_290284 state_290335
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_290284
  · exact cover_290335
#print axioms cover_290283

def state_290245 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 46) else (if j.val < 3 then 48 else (if j.val < 4 then 28 else 17)))
theorem cover_290245 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_290245 := by
  apply coveredState_split_literal (state := state_290245) 0
    state_290246 state_290283
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_290246
  · exact cover_290283
#print axioms cover_290245

def state_290244 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 46) else (if j.val < 3 then 24 else (if j.val < 4 then 28 else 17)))
theorem cover_290244 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_290244 := by
  apply coveredState_split_literal (state := state_290244) 2
    state_290245 state_290498
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_290245
  · exact cover_290498
#print axioms cover_290244

def state_290243 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 23) else (if j.val < 3 then 24 else (if j.val < 4 then 28 else 17)))
theorem cover_290243 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_290243 := by
  apply coveredState_split_literal (state := state_290243) 1
    state_290244 state_290513
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_290244
  · exact cover_290513
#print axioms cover_290243

def state_290215 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 23) else (if j.val < 3 then 24 else (if j.val < 4 then 28 else 8)))
theorem cover_290215 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_290215 := by
  apply coveredState_split_literal (state := state_290215) 4
    state_290216 state_290243
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_290216
  · exact cover_290243
#print axioms cover_290215

def state_290214 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 23) else (if j.val < 3 then 24 else (if j.val < 4 then 14 else 8)))
theorem cover_290214 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_290214 := by
  apply coveredState_split_literal (state := state_290214) 3
    state_290215 state_290536
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_290215
  · exact cover_290536
#print axioms cover_290214

def state_290570 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 23) else (if j.val < 3 then 24 else (if j.val < 4 then 28 else 17)))
theorem cover_290570 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_290570 := by
  apply coveredState_split_literal (state := state_290570) 1
    state_290571 state_290632
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_290571
  · exact cover_290632
#print axioms cover_290570

def state_290564 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 23) else (if j.val < 3 then 24 else (if j.val < 4 then 28 else 8)))
theorem cover_290564 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_290564 := by
  apply coveredState_split_literal (state := state_290564) 4
    state_290565 state_290570
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_290565
  · exact cover_290570
#print axioms cover_290564

def state_290563 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 23) else (if j.val < 3 then 24 else (if j.val < 4 then 14 else 8)))
theorem cover_290563 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_290563 := by
  apply coveredState_split_literal (state := state_290563) 3
    state_290564 state_290657
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_290564
  · exact cover_290657
#print axioms cover_290563
end Mub6.Numerical.CircleFullPrototype.Forest
