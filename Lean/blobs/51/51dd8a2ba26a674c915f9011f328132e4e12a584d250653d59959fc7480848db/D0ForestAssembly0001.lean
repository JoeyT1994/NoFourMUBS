import D0FullInterface
import D0ForestChunk0001
import D0ForestChunk0002
import D0ForestChunk0003
import D0ForestChunk0004
import D0ForestChunk0005
import D0ForestChunk0006
import D0ForestChunk0007
import D0ForestChunk0008
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_19 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 1)))
theorem cover_19 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_19 := by
  apply coveredState_split_literal (state := state_19) 4
    state_20 state_47
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_20
  · exact cover_47
#print axioms cover_19

def state_100 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 1)))
theorem cover_100 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_100 := by
  apply coveredState_split_literal (state := state_100) 4
    state_101 state_154
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_101
  · exact cover_154
#print axioms cover_100

def state_18 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_18 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_18 := by
  apply coveredState_split_literal (state := state_18) 3
    state_19 state_100
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_19
  · exact cover_100
#print axioms cover_18

def state_212 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 1)))
theorem cover_212 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_212 := by
  apply coveredState_split_literal (state := state_212) 4
    state_213 state_268
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_213
  · exact cover_268
#print axioms cover_212

def state_319 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 1)))
theorem cover_319 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_319 := by
  apply coveredState_split_literal (state := state_319) 4
    state_320 state_377
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_320
  · exact cover_377
#print axioms cover_319

def state_211 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
theorem cover_211 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_211 := by
  apply coveredState_split_literal (state := state_211) 3
    state_212 state_319
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_212
  · exact cover_319
#print axioms cover_211

def state_17 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_17 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_17 := by
  apply coveredState_split_literal (state := state_17) 2
    state_18 state_211
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_18
  · exact cover_211
#print axioms cover_17

def state_430 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 1)))
theorem cover_430 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_430 := by
  apply coveredState_split_literal (state := state_430) 4
    state_431 state_486
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_431
  · exact cover_486
#print axioms cover_430

def state_537 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 1)))
theorem cover_537 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_537 := by
  apply coveredState_split_literal (state := state_537) 4
    state_538 state_589
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_538
  · exact cover_589
#print axioms cover_537

def state_429 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_429 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_429 := by
  apply coveredState_split_literal (state := state_429) 3
    state_430 state_537
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_430
  · exact cover_537
#print axioms cover_429

def state_645 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 1)))
theorem cover_645 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_645 := by
  apply coveredState_split_literal (state := state_645) 4
    state_646 state_703
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_646
  · exact cover_703
#print axioms cover_645

def state_760 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 1)))
theorem cover_760 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_760 := by
  apply coveredState_split_literal (state := state_760) 4
    state_761 state_812
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_761
  · exact cover_812
#print axioms cover_760

def state_644 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
theorem cover_644 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_644 := by
  apply coveredState_split_literal (state := state_644) 3
    state_645 state_760
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_645
  · exact cover_760
#print axioms cover_644

def state_428 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_428 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_428 := by
  apply coveredState_split_literal (state := state_428) 2
    state_429 state_644
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_429
  · exact cover_644
#print axioms cover_428

def state_16 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 1) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_16 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_16 := by
  apply coveredState_split_literal (state := state_16) 1
    state_17 state_428
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_17
  · exact cover_428
#print axioms cover_16

def state_872 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 1)))
theorem cover_872 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_872 := by
  apply coveredState_split_literal (state := state_872) 4
    state_873 state_928
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_873
  · exact cover_928
#print axioms cover_872

def state_985 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 1)))
theorem cover_985 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_985 := by
  apply coveredState_split_literal (state := state_985) 4
    state_986 state_1035
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_986
  · exact cover_1035
#print axioms cover_985

def state_871 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_871 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_871 := by
  apply coveredState_split_literal (state := state_871) 3
    state_872 state_985
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_872
  · exact cover_985
#print axioms cover_871

def state_1085 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 1)))
theorem cover_1085 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_1085 := by
  apply coveredState_split_literal (state := state_1085) 4
    state_1086 state_1137
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1086
  · exact cover_1137
#print axioms cover_1085

def state_1192 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 1)))
theorem cover_1192 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_1192 := by
  apply coveredState_split_literal (state := state_1192) 4
    state_1193 state_1252
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1193
  · exact cover_1252
#print axioms cover_1192

def state_1084 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
theorem cover_1084 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_1084 := by
  apply coveredState_split_literal (state := state_1084) 3
    state_1085 state_1192
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1085
  · exact cover_1192
#print axioms cover_1084

def state_870 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_870 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_870 := by
  apply coveredState_split_literal (state := state_870) 2
    state_871 state_1084
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_871
  · exact cover_1084
#print axioms cover_870

def state_1307 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 1)))
theorem cover_1307 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_1307 := by
  apply coveredState_split_literal (state := state_1307) 4
    state_1308 state_1363
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1308
  · exact cover_1363
#print axioms cover_1307

def state_1414 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 1)))
theorem cover_1414 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_1414 := by
  apply coveredState_split_literal (state := state_1414) 4
    state_1415 state_1472
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1415
  · exact cover_1472
#print axioms cover_1414

def state_1306 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_1306 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_1306 := by
  apply coveredState_split_literal (state := state_1306) 3
    state_1307 state_1414
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1307
  · exact cover_1414
#print axioms cover_1306

def state_1526 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 1)))
theorem cover_1526 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_1526 := by
  apply coveredState_split_literal (state := state_1526) 4
    state_1527 state_1578
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1527
  · exact cover_1578
#print axioms cover_1526

def state_1633 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 1)))
theorem cover_1633 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_1633 := by
  apply coveredState_split_literal (state := state_1633) 4
    state_1634 state_1687
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1634
  · exact cover_1687
#print axioms cover_1633

def state_1525 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
theorem cover_1525 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_1525 := by
  apply coveredState_split_literal (state := state_1525) 3
    state_1526 state_1633
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1526
  · exact cover_1633
#print axioms cover_1525

def state_1305 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_1305 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_1305 := by
  apply coveredState_split_literal (state := state_1305) 2
    state_1306 state_1525
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1306
  · exact cover_1525
#print axioms cover_1305

def state_869 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 1) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_869 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_869 := by
  apply coveredState_split_literal (state := state_869) 1
    state_870 state_1305
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_870
  · exact cover_1305
#print axioms cover_869

def state_15 : State := rootState
theorem cover_15 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_15 := by
  apply coveredState_split_literal (state := state_15) 0
    state_16 state_869
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_16
  · exact cover_869
#print axioms cover_15

def state_939569 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_939569 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_939569 := by
  apply coveredState_split_literal (state := state_939569) 2
    state_939570 state_939581
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_939570
  · exact cover_939581
#print axioms cover_939569
end Mub6.Numerical.CircleFullD0.Forest
