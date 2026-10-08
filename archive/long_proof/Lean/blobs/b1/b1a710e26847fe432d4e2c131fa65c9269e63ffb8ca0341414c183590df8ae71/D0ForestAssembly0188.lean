import D0FullInterface
import D0ForestAssembly0187
import D0ForestChunk0700
import D0ForestChunk0701
import D0ForestChunk0703
import D0ForestChunk0704
import D0ForestChunk0705
import D0ForestChunk0706
import D0ForestChunk0707
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1469345 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 4)))
theorem cover_1469345 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1469345 := by
  apply coveredState_split_literal (state := state_1469345) 3
    state_1469346 state_1469369
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1469346
  · exact cover_1469369
#print axioms cover_1469345

def state_1469815 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 26) else (if j.val < 3 then 26 else (if j.val < 4 then 19 else 8)))
theorem cover_1469815 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1469815 := by
  apply coveredState_split_literal (state := state_1469815) 4
    state_1469816 state_1469859
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1469816
  · exact cover_1469859
#print axioms cover_1469815

def state_1469813 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 26) else (if j.val < 3 then 26 else (if j.val < 4 then 9 else 8)))
theorem cover_1469813 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1469813 := by
  apply coveredState_split_literal (state := state_1469813) 3
    state_1469814 state_1469815
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1469814
  · exact cover_1469815
#print axioms cover_1469813

def state_1469812 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 26) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 8)))
theorem cover_1469812 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1469812 := by
  apply coveredState_split_literal (state := state_1469812) 2
    state_1469813 state_1469892
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1469813
  · exact cover_1469892
#print axioms cover_1469812

def state_1469811 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 8)))
theorem cover_1469811 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1469811 := by
  apply coveredState_split_literal (state := state_1469811) 1
    state_1469812 state_1469893
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1469812
  · exact cover_1469893
#print axioms cover_1469811

def state_1469809 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 8)))
theorem cover_1469809 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1469809 := by
  apply coveredState_split_literal (state := state_1469809) 0
    state_1469810 state_1469811
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1469810
  · exact cover_1469811
#print axioms cover_1469809

def state_1469808 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 4)))
theorem cover_1469808 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1469808 := by
  apply coveredState_split_literal (state := state_1469808) 4
    state_1469809 state_1469894
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1469809
  · exact cover_1469894
#print axioms cover_1469808

def state_1469806 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 4)))
theorem cover_1469806 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1469806 := by
  apply coveredState_split_literal (state := state_1469806) 3
    state_1469807 state_1469808
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1469807
  · exact cover_1469808
#print axioms cover_1469806

def state_1469344 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 4)))
theorem cover_1469344 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1469344 := by
  apply coveredState_split_literal (state := state_1469344) 2
    state_1469345 state_1469806
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1469345
  · exact cover_1469806
#print axioms cover_1469344

def state_1469060 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 4)))
theorem cover_1469060 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1469060 := by
  apply coveredState_split_literal (state := state_1469060) 1
    state_1469061 state_1469344
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1469061
  · exact cover_1469344
#print axioms cover_1469060

def state_1469044 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 4)))
theorem cover_1469044 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1469044 := by
  apply coveredState_split_literal (state := state_1469044) 0
    state_1469045 state_1469060
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1469045
  · exact cover_1469060
#print axioms cover_1469044

def state_1469043 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 2)))
theorem cover_1469043 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1469043 := by
  apply coveredState_split_literal (state := state_1469043) 4
    state_1469044 state_1469929
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1469044
  · exact cover_1469929
#print axioms cover_1469043

def state_1470011 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 4)))
theorem cover_1470011 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1470011 := by
  apply coveredState_split_literal (state := state_1470011) 2
    state_1470012 state_1470043
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1470012
  · exact cover_1470043
#print axioms cover_1470011

def state_1469995 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 4)))
theorem cover_1469995 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1469995 := by
  apply coveredState_split_literal (state := state_1469995) 1
    state_1469996 state_1470011
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1469996
  · exact cover_1470011
#print axioms cover_1469995

def state_1469991 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 4)))
theorem cover_1469991 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1469991 := by
  apply coveredState_split_literal (state := state_1469991) 0
    state_1469992 state_1469995
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1469992
  · exact cover_1469995
#print axioms cover_1469991

def state_1469990 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 2)))
theorem cover_1469990 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1469990 := by
  apply coveredState_split_literal (state := state_1469990) 4
    state_1469991 state_1470078
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1469991
  · exact cover_1470078
#print axioms cover_1469990

def state_1469042 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 2)))
theorem cover_1469042 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1469042 := by
  apply coveredState_split_literal (state := state_1469042) 3
    state_1469043 state_1469990
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1469043
  · exact cover_1469990
#print axioms cover_1469042

def state_1469041 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_1469041 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1469041 := by
  apply coveredState_split_literal (state := state_1469041) 2
    state_1469042 state_1470095
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1469042
  · exact cover_1470095
#print axioms cover_1469041

def state_1470223 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 10)))
theorem cover_1470223 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1470223 := by
  apply coveredState_split_literal (state := state_1470223) 2
    state_1470224 state_1470273
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1470224
  · exact cover_1470273
#print axioms cover_1470223

def state_1470213 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 10)))
theorem cover_1470213 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1470213 := by
  apply coveredState_split_literal (state := state_1470213) 0
    state_1470214 state_1470223
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1470214
  · exact cover_1470223
#print axioms cover_1470213

def state_1470201 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 10)))
theorem cover_1470201 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1470201 := by
  apply coveredState_split_literal (state := state_1470201) 3
    state_1470202 state_1470213
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1470202
  · exact cover_1470213
#print axioms cover_1470201

def state_1470200 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 10)))
theorem cover_1470200 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1470200 := by
  apply coveredState_split_literal (state := state_1470200) 1
    state_1470201 state_1470322
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1470201
  · exact cover_1470322
#print axioms cover_1470200

def state_1470199 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 5)))
theorem cover_1470199 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1470199 := by
  apply coveredState_split_literal (state := state_1470199) 4
    state_1470200 state_1470351
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1470200
  · exact cover_1470351
#print axioms cover_1470199

def state_1470198 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 5)))
theorem cover_1470198 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1470198 := by
  apply coveredState_split_literal (state := state_1470198) 2
    state_1470199 state_1470394
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1470199
  · exact cover_1470394
#print axioms cover_1470198

def state_1470186 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 5)))
theorem cover_1470186 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1470186 := by
  apply coveredState_split_literal (state := state_1470186) 0
    state_1470187 state_1470198
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1470187
  · exact cover_1470198
#print axioms cover_1470186

def state_1470128 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 2)))
theorem cover_1470128 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1470128 := by
  apply coveredState_split_literal (state := state_1470128) 4
    state_1470129 state_1470186
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1470129
  · exact cover_1470186
#print axioms cover_1470128

def state_1470510 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 5)))
theorem cover_1470510 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1470510 := by
  apply coveredState_split_literal (state := state_1470510) 4
    state_1470511 state_1470566
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1470511
  · exact cover_1470566
#print axioms cover_1470510

def state_1470509 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 5 else 5)))
theorem cover_1470509 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1470509 := by
  apply coveredState_split_literal (state := state_1470509) 3
    state_1470510 state_1470611
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1470510
  · exact cover_1470611
#print axioms cover_1470509

def state_1470469 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 5)))
theorem cover_1470469 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1470469 := by
  apply coveredState_split_literal (state := state_1470469) 2
    state_1470470 state_1470509
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1470470
  · exact cover_1470509
#print axioms cover_1470469

def state_1470459 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 5)))
theorem cover_1470459 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1470459 := by
  apply coveredState_split_literal (state := state_1470459) 0
    state_1470460 state_1470469
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1470460
  · exact cover_1470469
#print axioms cover_1470459

def state_1470431 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 2)))
theorem cover_1470431 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1470431 := by
  apply coveredState_split_literal (state := state_1470431) 4
    state_1470432 state_1470459
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1470432
  · exact cover_1470459
#print axioms cover_1470431

def state_1470127 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 2)))
theorem cover_1470127 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1470127 := by
  apply coveredState_split_literal (state := state_1470127) 3
    state_1470128 state_1470431
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1470128
  · exact cover_1470431
#print axioms cover_1470127
end Mub6.Numerical.CircleFullD0.Forest
