import D0FullInterface
import D0ForestAssembly0039
import D0ForestChunk0159
import D0ForestChunk0160
import D0ForestChunk0161
import D0ForestChunk0162
import D0ForestChunk0163
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_975777 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 15 else (if j.val < 4 then 22 else 14)))
theorem cover_975777 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_975777 := by
  apply coveredState_split_literal (state := state_975777) 4
    state_975778 state_975853
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_975778
  · exact cover_975853
#print axioms cover_975777

def state_975773 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 10) else (if j.val < 3 then 15 else (if j.val < 4 then 22 else 14)))
theorem cover_975773 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_975773 := by
  apply coveredState_split_literal (state := state_975773) 1
    state_975774 state_975777
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_975774
  · exact cover_975777
#print axioms cover_975773

def state_975772 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 10) else (if j.val < 3 then 15 else (if j.val < 4 then 11 else 14)))
theorem cover_975772 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_975772 := by
  apply coveredState_split_literal (state := state_975772) 3
    state_975773 state_975876
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_975773
  · exact cover_975876
#print axioms cover_975772

def state_975766 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 15 else (if j.val < 4 then 11 else 14)))
theorem cover_975766 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_975766 := by
  apply coveredState_split_literal (state := state_975766) 0
    state_975767 state_975772
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_975767
  · exact cover_975772
#print axioms cover_975766

def state_975765 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 15 else (if j.val < 4 then 11 else 7)))
theorem cover_975765 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_975765 := by
  apply coveredState_split_literal (state := state_975765) 4
    state_975766 state_975881
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_975766
  · exact cover_975881
#print axioms cover_975765

def state_975749 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 7)))
theorem cover_975749 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_975749 := by
  apply coveredState_split_literal (state := state_975749) 2
    state_975750 state_975765
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_975750
  · exact cover_975765
#print axioms cover_975749

def state_974195 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 7)))
theorem cover_974195 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_974195 := by
  apply coveredState_split_literal (state := state_974195) 3
    state_974196 state_975749
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_974196
  · exact cover_975749
#print axioms cover_974195

def state_975932 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 22) else (if j.val < 3 then 28 else (if j.val < 4 then 20 else 28)))
theorem cover_975932 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_975932 := by
  apply coveredState_split_literal (state := state_975932) 1
    state_975933 state_975964
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_975933
  · exact cover_975964
#print axioms cover_975932

def state_975999 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 22) else (if j.val < 3 then 28 else (if j.val < 4 then 20 else 28)))
theorem cover_975999 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_975999 := by
  apply coveredState_split_literal (state := state_975999) 1
    state_976000 state_976043
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_976000
  · exact cover_976043
#print axioms cover_975999

def state_975931 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 28 else (if j.val < 4 then 20 else 28)))
theorem cover_975931 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_975931 := by
  apply coveredState_split_literal (state := state_975931) 0
    state_975932 state_975999
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_975932
  · exact cover_975999
#print axioms cover_975931

def state_975930 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 28 else (if j.val < 4 then 20 else 14)))
theorem cover_975930 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_975930 := by
  apply coveredState_split_literal (state := state_975930) 4
    state_975931 state_976080
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_975931
  · exact cover_976080
#print axioms cover_975930

def state_976097 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 44) else (if j.val < 3 then 29 else (if j.val < 4 then 20 else 56)))
theorem cover_976097 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_976097 := by
  apply coveredState_split_literal (state := state_976097) 2
    state_976098 state_976155
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_976098
  · exact cover_976155
#print axioms cover_976097

def state_976096 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 44) else (if j.val < 3 then 29 else (if j.val < 4 then 20 else 28)))
theorem cover_976096 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_976096 := by
  apply coveredState_split_literal (state := state_976096) 4
    state_976097 state_976200
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_976097
  · exact cover_976200
#print axioms cover_976096

def state_976095 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 22) else (if j.val < 3 then 29 else (if j.val < 4 then 20 else 28)))
theorem cover_976095 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_976095 := by
  apply coveredState_split_literal (state := state_976095) 1
    state_976096 state_976205
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_976096
  · exact cover_976205
#print axioms cover_976095

def state_976220 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 44) else (if j.val < 3 then 29 else (if j.val < 4 then 20 else 56)))
theorem cover_976220 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_976220 := by
  apply coveredState_split_literal (state := state_976220) 2
    state_976221 state_976266
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_976221
  · exact cover_976266
#print axioms cover_976220

def state_976219 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 44) else (if j.val < 3 then 29 else (if j.val < 4 then 20 else 28)))
theorem cover_976219 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_976219 := by
  apply coveredState_split_literal (state := state_976219) 4
    state_976220 state_976325
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_976220
  · exact cover_976325
#print axioms cover_976219

def state_976218 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 22) else (if j.val < 3 then 29 else (if j.val < 4 then 20 else 28)))
theorem cover_976218 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_976218 := by
  apply coveredState_split_literal (state := state_976218) 1
    state_976219 state_976362
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_976219
  · exact cover_976362
#print axioms cover_976218

def state_976094 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 29 else (if j.val < 4 then 20 else 28)))
theorem cover_976094 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_976094 := by
  apply coveredState_split_literal (state := state_976094) 0
    state_976095 state_976218
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_976095
  · exact cover_976218
#print axioms cover_976094

def state_976093 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 29 else (if j.val < 4 then 20 else 14)))
theorem cover_976093 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_976093 := by
  apply coveredState_split_literal (state := state_976093) 4
    state_976094 state_976405
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_976094
  · exact cover_976405
#print axioms cover_976093

def state_975929 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 14 else (if j.val < 4 then 20 else 14)))
theorem cover_975929 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_975929 := by
  apply coveredState_split_literal (state := state_975929) 2
    state_975930 state_976093
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_975930
  · exact cover_976093
#print axioms cover_975929

def state_976429 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 29 else (if j.val < 4 then 21 else 28)))
theorem cover_976429 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_976429 := by
  apply coveredState_split_literal (state := state_976429) 0
    state_976430 state_976467
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_976430
  · exact cover_976467
#print axioms cover_976429

def state_976428 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 29 else (if j.val < 4 then 21 else 14)))
theorem cover_976428 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_976428 := by
  apply coveredState_split_literal (state := state_976428) 4
    state_976429 state_976520
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_976429
  · exact cover_976520
#print axioms cover_976428

def state_976426 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 14 else (if j.val < 4 then 21 else 14)))
theorem cover_976426 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_976426 := by
  apply coveredState_split_literal (state := state_976426) 2
    state_976427 state_976428
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_976427
  · exact cover_976428
#print axioms cover_976426

def state_975928 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 14)))
theorem cover_975928 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_975928 := by
  apply coveredState_split_literal (state := state_975928) 3
    state_975929 state_976426
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_975929
  · exact cover_976426
#print axioms cover_975928

def state_976521 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 14)))
theorem cover_976521 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_976521 := by
  apply coveredState_split_literal (state := state_976521) 3
    state_976522 state_976581
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_976522
  · exact cover_976581
#print axioms cover_976521

def state_975927 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 11) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 14)))
theorem cover_975927 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_975927 := by
  apply coveredState_split_literal (state := state_975927) 1
    state_975928 state_976521
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_975928
  · exact cover_976521
#print axioms cover_975927

def state_975887 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 14)))
theorem cover_975887 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_975887 := by
  apply coveredState_split_literal (state := state_975887) 0
    state_975888 state_975927
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_975888
  · exact cover_975927
#print axioms cover_975887

def state_975886 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 7)))
theorem cover_975886 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_975886 := by
  apply coveredState_split_literal (state := state_975886) 4
    state_975887 state_976608
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_975887
  · exact cover_976608
#print axioms cover_975886

def state_976659 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 15 else (if j.val < 4 then 20 else 28)))
theorem cover_976659 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_976659 := by
  apply coveredState_split_literal (state := state_976659) 2
    state_976660 state_976717
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_976660
  · exact cover_976717
#print axioms cover_976659

def state_976658 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 15 else (if j.val < 4 then 20 else 14)))
theorem cover_976658 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_976658 := by
  apply coveredState_split_literal (state := state_976658) 4
    state_976659 state_976730
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_976659
  · exact cover_976730
#print axioms cover_976658

def state_976749 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 44) else (if j.val < 3 then 30 else (if j.val < 4 then 42 else 56)))
theorem cover_976749 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_976749 := by
  apply coveredState_split_literal (state := state_976749) 2
    state_976750 state_976795
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_976750
  · exact cover_976795
#print axioms cover_976749

def state_976748 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 44) else (if j.val < 3 then 30 else (if j.val < 4 then 42 else 28)))
theorem cover_976748 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_976748 := by
  apply coveredState_split_literal (state := state_976748) 4
    state_976749 state_976820
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_976749
  · exact cover_976820
#print axioms cover_976748
end Mub6.Numerical.CircleFullD0.Forest
