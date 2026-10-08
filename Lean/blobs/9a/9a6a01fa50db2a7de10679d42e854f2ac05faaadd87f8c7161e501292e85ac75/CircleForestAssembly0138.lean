import CircleFullInterface
import CircleForestAssembly0135
import CircleForestAssembly0136
import CircleForestAssembly0137
import CircleForestChunk0540
import CircleForestChunk0541
import CircleForestChunk0542
import CircleForestChunk0543
import CircleForestChunk0544
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_291415 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 58 else 46) else (if j.val < 3 then 48 else (if j.val < 4 then 57 else 18)))
theorem cover_291415 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_291415 := by
  apply coveredState_split_literal (state := state_291415) 4
    state_291416 state_291505
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_291416
  · exact cover_291505
#print axioms cover_291415

def state_291414 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 46) else (if j.val < 3 then 48 else (if j.val < 4 then 57 else 18)))
theorem cover_291414 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_291414 := by
  apply coveredState_split_literal (state := state_291414) 0
    state_291415 state_291520
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_291415
  · exact cover_291520
#print axioms cover_291414

def state_291400 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 46) else (if j.val < 3 then 48 else (if j.val < 4 then 28 else 18)))
theorem cover_291400 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_291400 := by
  apply coveredState_split_literal (state := state_291400) 3
    state_291401 state_291414
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_291401
  · exact cover_291414
#print axioms cover_291400

def state_291399 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 46) else (if j.val < 3 then 24 else (if j.val < 4 then 28 else 18)))
theorem cover_291399 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_291399 := by
  apply coveredState_split_literal (state := state_291399) 2
    state_291400 state_291541
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_291400
  · exact cover_291541
#print axioms cover_291399

def state_291398 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 23) else (if j.val < 3 then 24 else (if j.val < 4 then 28 else 18)))
theorem cover_291398 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_291398 := by
  apply coveredState_split_literal (state := state_291398) 1
    state_291399 state_291576
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_291399
  · exact cover_291576
#print axioms cover_291398

def state_291397 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 23) else (if j.val < 3 then 24 else (if j.val < 4 then 28 else 9)))
theorem cover_291397 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_291397 := by
  apply coveredState_split_literal (state := state_291397) 4
    state_291398 state_291589
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_291398
  · exact cover_291589
#print axioms cover_291397

def state_291598 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 46) else (if j.val < 3 then 24 else (if j.val < 4 then 29 else 18)))
theorem cover_291598 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_291598 := by
  apply coveredState_split_literal (state := state_291598) 2
    state_291599 state_291654
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_291599
  · exact cover_291654
#print axioms cover_291598

def state_291597 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 23) else (if j.val < 3 then 24 else (if j.val < 4 then 29 else 18)))
theorem cover_291597 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_291597 := by
  apply coveredState_split_literal (state := state_291597) 1
    state_291598 state_291691
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_291598
  · exact cover_291691
#print axioms cover_291597

def state_291596 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 23) else (if j.val < 3 then 24 else (if j.val < 4 then 29 else 9)))
theorem cover_291596 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_291596 := by
  apply coveredState_split_literal (state := state_291596) 4
    state_291597 state_291718
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_291597
  · exact cover_291718
#print axioms cover_291596

def state_291396 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 23) else (if j.val < 3 then 24 else (if j.val < 4 then 14 else 9)))
theorem cover_291396 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_291396 := by
  apply coveredState_split_literal (state := state_291396) 3
    state_291397 state_291596
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_291397
  · exact cover_291596
#print axioms cover_291396

def state_291140 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 23) else (if j.val < 3 then 24 else (if j.val < 4 then 14 else 9)))
theorem cover_291140 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_291140 := by
  apply coveredState_split_literal (state := state_291140) 0
    state_291141 state_291396
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_291141
  · exact cover_291396
#print axioms cover_291140

def state_291139 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 23) else (if j.val < 3 then 12 else (if j.val < 4 then 14 else 9)))
theorem cover_291139 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_291139 := by
  apply coveredState_split_literal (state := state_291139) 2
    state_291140 state_291737
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_291140
  · exact cover_291737
#print axioms cover_291139

def state_290709 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 14 else 9)))
theorem cover_290709 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_290709 := by
  apply coveredState_split_literal (state := state_290709) 1
    state_290710 state_291139
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_290710
  · exact cover_291139
#print axioms cover_290709

def state_290031 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 14 else 4)))
theorem cover_290031 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_290031 := by
  apply coveredState_split_literal (state := state_290031) 4
    state_290032 state_290709
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_290032
  · exact cover_290709
#print axioms cover_290031

def state_290030 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 4)))
theorem cover_290030 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_290030 := by
  apply coveredState_split_literal (state := state_290030) 3
    state_290031 state_291786
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_290031
  · exact cover_291786
#print axioms cover_290030

def state_291891 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 23) else (if j.val < 3 then 24 else (if j.val < 4 then 14 else 9)))
theorem cover_291891 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_291891 := by
  apply coveredState_split_literal (state := state_291891) 3
    state_291892 state_291927
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_291892
  · exact cover_291927
#print axioms cover_291891

def state_291890 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 23) else (if j.val < 3 then 12 else (if j.val < 4 then 14 else 9)))
theorem cover_291890 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_291890 := by
  apply coveredState_split_literal (state := state_291890) 2
    state_291891 state_291958
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_291891
  · exact cover_291958
#print axioms cover_291890

def state_291870 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 14 else 9)))
theorem cover_291870 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_291870 := by
  apply coveredState_split_literal (state := state_291870) 1
    state_291871 state_291890
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_291871
  · exact cover_291890
#print axioms cover_291870

def state_291848 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 14 else 4)))
theorem cover_291848 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_291848 := by
  apply coveredState_split_literal (state := state_291848) 4
    state_291849 state_291870
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_291849
  · exact cover_291870
#print axioms cover_291848

def state_291847 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 4)))
theorem cover_291847 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_291847 := by
  apply coveredState_split_literal (state := state_291847) 3
    state_291848 state_291987
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_291848
  · exact cover_291987
#print axioms cover_291847

def state_290029 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 4)))
theorem cover_290029 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_290029 := by
  apply coveredState_split_literal (state := state_290029) 0
    state_290030 state_291847
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_290030
  · exact cover_291847
#print axioms cover_290029

def state_290028 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 11) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 4)))
theorem cover_290028 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_290028 := by
  apply coveredState_split_literal (state := state_290028) 2
    state_290029 state_292030
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_290029
  · exact cover_292030
#print axioms cover_290028

def state_289942 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 4)))
theorem cover_289942 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_289942 := by
  apply coveredState_split_literal (state := state_289942) 1
    state_289943 state_290028
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_289943
  · exact cover_290028
#print axioms cover_289942

def state_292091 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 11) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 5)))
theorem cover_292091 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_292091 := by
  apply coveredState_split_literal (state := state_292091) 2
    state_292092 state_292147
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_292092
  · exact cover_292147
#print axioms cover_292091

def state_292067 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 5)))
theorem cover_292067 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_292067 := by
  apply coveredState_split_literal (state := state_292067) 1
    state_292068 state_292091
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_292068
  · exact cover_292091
#print axioms cover_292067

def state_289941 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 2)))
theorem cover_289941 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_289941 := by
  apply coveredState_split_literal (state := state_289941) 4
    state_289942 state_292067
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_289942
  · exact cover_292067
#print axioms cover_289941

def state_289647 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 2)))
theorem cover_289647 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_289647 := by
  apply coveredState_split_literal (state := state_289647) 3
    state_289648 state_289941
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_289648
  · exact cover_289941
#print axioms cover_289647

def state_289646 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_289646 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_289646 := by
  apply coveredState_split_literal (state := state_289646) 2
    state_289647 state_292164
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_289647
  · exact cover_292164
#print axioms cover_289646

def state_289318 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_289318 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_289318 := by
  apply coveredState_split_literal (state := state_289318) 1
    state_289319 state_289646
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_289319
  · exact cover_289646
#print axioms cover_289318

def state_289098 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_289098 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_289098 := by
  apply coveredState_split_literal (state := state_289098) 0
    state_289099 state_289318
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_289099
  · exact cover_289318
#print axioms cover_289098

def state_292190 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_292190 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_292190 := by
  apply coveredState_split_literal (state := state_292190) 1
    state_292191 state_292248
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_292191
  · exact cover_292248
#print axioms cover_292190

def state_292189 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_292189 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_292189 := by
  apply coveredState_split_literal (state := state_292189) 0
    state_292190 state_292261
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_292190
  · exact cover_292261
#print axioms cover_292189
end Mub6.Numerical.CircleFullPrototype.Forest
