import D0FullInterface
import D0ForestAssembly0476
import D0ForestChunk1878
import D0ForestChunk1879
import D0ForestChunk1880
import D0ForestChunk1881
import D0ForestChunk1882
import D0ForestChunk1883
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2323536 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 42 else (if j.val < 4 then 31 else 44)))
theorem cover_2323536 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2323536 := by
  apply coveredState_split_literal (state := state_2323536) 1
    state_2323537 state_2323736
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2323537
  · exact cover_2323736
#print axioms cover_2323536

def state_2323893 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 56) else (if j.val < 3 then 43 else (if j.val < 4 then 62 else 88)))
theorem cover_2323893 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2323893 := by
  apply coveredState_split_literal (state := state_2323893) 2
    state_2323894 state_2323955
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2323894
  · exact cover_2323955
#print axioms cover_2323893

def state_2323892 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 56) else (if j.val < 3 then 43 else (if j.val < 4 then 62 else 44)))
theorem cover_2323892 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2323892 := by
  apply coveredState_split_literal (state := state_2323892) 4
    state_2323893 state_2323968
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2323893
  · exact cover_2323968
#print axioms cover_2323892

def state_2323985 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 56) else (if j.val < 3 then 43 else (if j.val < 4 then 62 else 44)))
theorem cover_2323985 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2323985 := by
  apply coveredState_split_literal (state := state_2323985) 4
    state_2323986 state_2324045
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2323986
  · exact cover_2324045
#print axioms cover_2323985

def state_2323891 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 56) else (if j.val < 3 then 43 else (if j.val < 4 then 62 else 44)))
theorem cover_2323891 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2323891 := by
  apply coveredState_split_literal (state := state_2323891) 0
    state_2323892 state_2323985
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2323892
  · exact cover_2323985
#print axioms cover_2323891

def state_2323890 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 56) else (if j.val < 3 then 43 else (if j.val < 4 then 31 else 44)))
theorem cover_2323890 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2323890 := by
  apply coveredState_split_literal (state := state_2323890) 3
    state_2323891 state_2324060
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2323891
  · exact cover_2324060
#print axioms cover_2323890

def state_2324124 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 189 else 114) else (if j.val < 3 then 86 else (if j.val < 4 then 124 else 176)))
theorem cover_2324124 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2324124 := by
  apply coveredState_split_literal (state := state_2324124) 2
    state_2324125 state_2324174
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2324125
  · exact cover_2324174
#print axioms cover_2324124

def state_2324193 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 189 else 114) else (if j.val < 3 then 86 else (if j.val < 4 then 124 else 177)))
theorem cover_2324193 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2324193 := by
  apply coveredState_split_literal (state := state_2324193) 2
    state_2324194 state_2324239
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2324194
  · exact cover_2324239
#print axioms cover_2324193

def state_2324123 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 189 else 114) else (if j.val < 3 then 86 else (if j.val < 4 then 124 else 88)))
theorem cover_2324123 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2324123 := by
  apply coveredState_split_literal (state := state_2324123) 4
    state_2324124 state_2324193
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2324124
  · exact cover_2324193
#print axioms cover_2324123

def state_2324111 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 114) else (if j.val < 3 then 86 else (if j.val < 4 then 124 else 88)))
theorem cover_2324111 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2324111 := by
  apply coveredState_split_literal (state := state_2324111) 0
    state_2324112 state_2324123
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2324112
  · exact cover_2324123
#print axioms cover_2324111

def state_2324276 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 189 else 114) else (if j.val < 3 then 86 else (if j.val < 4 then 125 else 88)))
theorem cover_2324276 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2324276 := by
  apply coveredState_split_literal (state := state_2324276) 4
    state_2324277 state_2324318
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2324277
  · exact cover_2324318
#print axioms cover_2324276

def state_2324268 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 114) else (if j.val < 3 then 86 else (if j.val < 4 then 125 else 88)))
theorem cover_2324268 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2324268 := by
  apply coveredState_split_literal (state := state_2324268) 0
    state_2324269 state_2324276
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2324269
  · exact cover_2324276
#print axioms cover_2324268

def state_2324110 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 114) else (if j.val < 3 then 86 else (if j.val < 4 then 62 else 88)))
theorem cover_2324110 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2324110 := by
  apply coveredState_split_literal (state := state_2324110) 3
    state_2324111 state_2324268
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2324111
  · exact cover_2324268
#print axioms cover_2324110

def state_2324109 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 57) else (if j.val < 3 then 86 else (if j.val < 4 then 62 else 88)))
theorem cover_2324109 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2324109 := by
  apply coveredState_split_literal (state := state_2324109) 1
    state_2324110 state_2324349
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2324110
  · exact cover_2324349
#print axioms cover_2324109

def state_2324369 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 114) else (if j.val < 3 then 87 else (if j.val < 4 then 62 else 88)))
theorem cover_2324369 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2324369 := by
  apply coveredState_split_literal (state := state_2324369) 3
    state_2324370 state_2324395
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2324370
  · exact cover_2324395
#print axioms cover_2324369

def state_2324368 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 57) else (if j.val < 3 then 87 else (if j.val < 4 then 62 else 88)))
theorem cover_2324368 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2324368 := by
  apply coveredState_split_literal (state := state_2324368) 1
    state_2324369 state_2324444
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2324369
  · exact cover_2324444
#print axioms cover_2324368

def state_2324108 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 57) else (if j.val < 3 then 43 else (if j.val < 4 then 62 else 88)))
theorem cover_2324108 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2324108 := by
  apply coveredState_split_literal (state := state_2324108) 2
    state_2324109 state_2324368
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2324109
  · exact cover_2324368
#print axioms cover_2324108

def state_2324107 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 57) else (if j.val < 3 then 43 else (if j.val < 4 then 62 else 44)))
theorem cover_2324107 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2324107 := by
  apply coveredState_split_literal (state := state_2324107) 4
    state_2324108 state_2324457
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2324108
  · exact cover_2324457
#print axioms cover_2324107

def state_2324549 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 114) else (if j.val < 3 then 86 else (if j.val < 4 then 124 else 177)))
theorem cover_2324549 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2324549 := by
  apply coveredState_split_literal (state := state_2324549) 2
    state_2324550 state_2324607
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2324550
  · exact cover_2324607
#print axioms cover_2324549

def state_2324501 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 114) else (if j.val < 3 then 86 else (if j.val < 4 then 124 else 88)))
theorem cover_2324501 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2324501 := by
  apply coveredState_split_literal (state := state_2324501) 4
    state_2324502 state_2324549
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2324502
  · exact cover_2324549
#print axioms cover_2324501

def state_2324500 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 114) else (if j.val < 3 then 86 else (if j.val < 4 then 124 else 88)))
theorem cover_2324500 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2324500 := by
  apply coveredState_split_literal (state := state_2324500) 0
    state_2324501 state_2324668
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2324501
  · exact cover_2324668
#print axioms cover_2324500

def state_2324737 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 229) else (if j.val < 3 then 173 else (if j.val < 4 then 125 else 176)))
theorem cover_2324737 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2324737 := by
  apply coveredState_split_literal (state := state_2324737) 3
    state_2324738 state_2324775
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2324738
  · exact cover_2324775
#print axioms cover_2324737

def state_2324713 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 114) else (if j.val < 3 then 173 else (if j.val < 4 then 125 else 176)))
theorem cover_2324713 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2324713 := by
  apply coveredState_split_literal (state := state_2324713) 1
    state_2324714 state_2324737
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2324714
  · exact cover_2324737
#print axioms cover_2324713

def state_2324689 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 114) else (if j.val < 3 then 86 else (if j.val < 4 then 125 else 176)))
theorem cover_2324689 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2324689 := by
  apply coveredState_split_literal (state := state_2324689) 2
    state_2324690 state_2324713
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2324690
  · exact cover_2324713
#print axioms cover_2324689

def state_2324884 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 229) else (if j.val < 3 then 173 else (if j.val < 4 then 125 else 177)))
theorem cover_2324884 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2324884 := by
  apply coveredState_split_literal (state := state_2324884) 3
    state_2324885 state_2324940
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2324885
  · exact cover_2324940
#print axioms cover_2324884

def state_2324844 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 114) else (if j.val < 3 then 173 else (if j.val < 4 then 125 else 177)))
theorem cover_2324844 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2324844 := by
  apply coveredState_split_literal (state := state_2324844) 1
    state_2324845 state_2324884
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2324845
  · exact cover_2324884
#print axioms cover_2324844

def state_2324820 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 114) else (if j.val < 3 then 86 else (if j.val < 4 then 125 else 177)))
theorem cover_2324820 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2324820 := by
  apply coveredState_split_literal (state := state_2324820) 2
    state_2324821 state_2324844
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2324821
  · exact cover_2324844
#print axioms cover_2324820

def state_2324688 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 114) else (if j.val < 3 then 86 else (if j.val < 4 then 125 else 88)))
theorem cover_2324688 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2324688 := by
  apply coveredState_split_literal (state := state_2324688) 4
    state_2324689 state_2324820
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2324689
  · exact cover_2324820
#print axioms cover_2324688

def state_2324687 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 114) else (if j.val < 3 then 86 else (if j.val < 4 then 125 else 88)))
theorem cover_2324687 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2324687 := by
  apply coveredState_split_literal (state := state_2324687) 0
    state_2324688 state_2324973
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2324688
  · exact cover_2324973
#print axioms cover_2324687

def state_2324499 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 114) else (if j.val < 3 then 86 else (if j.val < 4 then 62 else 88)))
theorem cover_2324499 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2324499 := by
  apply coveredState_split_literal (state := state_2324499) 3
    state_2324500 state_2324687
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2324500
  · exact cover_2324687
#print axioms cover_2324499

def state_2325059 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 115) else (if j.val < 3 then 86 else (if j.val < 4 then 125 else 177)))
theorem cover_2325059 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2325059 := by
  apply coveredState_split_literal (state := state_2325059) 2
    state_2325060 state_2325069
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2325060
  · exact cover_2325069
#print axioms cover_2325059

def state_2325045 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 115) else (if j.val < 3 then 86 else (if j.val < 4 then 125 else 88)))
theorem cover_2325045 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2325045 := by
  apply coveredState_split_literal (state := state_2325045) 4
    state_2325046 state_2325059
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2325046
  · exact cover_2325059
#print axioms cover_2325045
end Mub6.Numerical.CircleFullD0.Forest
