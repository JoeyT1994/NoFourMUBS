import D0FullInterface
import D0ForestAssembly0162
import D0ForestAssembly0165
import D0ForestChunk0633
import D0ForestChunk0634
import D0ForestChunk0635
import D0ForestChunk0636
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1340891 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 60 else 49) else (if j.val < 3 then 44 else (if j.val < 4 then 36 else 46)))
theorem cover_1340891 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1340891 := by
  apply coveredState_split_literal (state := state_1340891) 1
    state_1340892 state_1340909
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1340892
  · exact cover_1340909
#print axioms cover_1340891

def state_1340890 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 30 else 49) else (if j.val < 3 then 44 else (if j.val < 4 then 36 else 46)))
theorem cover_1340890 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1340890 := by
  apply coveredState_split_literal (state := state_1340890) 0
    state_1340891 state_1340962
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1340891
  · exact cover_1340962
#print axioms cover_1340890

def state_1340889 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 30 else 49) else (if j.val < 3 then 44 else (if j.val < 4 then 18 else 46)))
theorem cover_1340889 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1340889 := by
  apply coveredState_split_literal (state := state_1340889) 3
    state_1340890 state_1340965
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1340890
  · exact cover_1340965
#print axioms cover_1340889

def state_1340888 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 30 else 49) else (if j.val < 3 then 22 else (if j.val < 4 then 18 else 46)))
theorem cover_1340888 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1340888 := by
  apply coveredState_split_literal (state := state_1340888) 2
    state_1340889 state_1341004
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1340889
  · exact cover_1341004
#print axioms cover_1340888

def state_1341008 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 30 else 49) else (if j.val < 3 then 44 else (if j.val < 4 then 18 else 47)))
theorem cover_1341008 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1341008 := by
  apply coveredState_split_literal (state := state_1341008) 3
    state_1341009 state_1341064
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1341009
  · exact cover_1341064
#print axioms cover_1341008

def state_1341007 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 30 else 49) else (if j.val < 3 then 22 else (if j.val < 4 then 18 else 47)))
theorem cover_1341007 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1341007 := by
  apply coveredState_split_literal (state := state_1341007) 2
    state_1341008 state_1341107
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1341008
  · exact cover_1341107
#print axioms cover_1341007

def state_1340887 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 30 else 49) else (if j.val < 3 then 22 else (if j.val < 4 then 18 else 23)))
theorem cover_1340887 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1340887 := by
  apply coveredState_split_literal (state := state_1340887) 4
    state_1340888 state_1341007
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1340888
  · exact cover_1341007
#print axioms cover_1340887

def state_1340863 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 30 else 24) else (if j.val < 3 then 22 else (if j.val < 4 then 18 else 23)))
theorem cover_1340863 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1340863 := by
  apply coveredState_split_literal (state := state_1340863) 1
    state_1340864 state_1340887
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1340864
  · exact cover_1340887
#print axioms cover_1340863

def state_1340862 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 24) else (if j.val < 3 then 22 else (if j.val < 4 then 18 else 23)))
theorem cover_1340862 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1340862 := by
  apply coveredState_split_literal (state := state_1340862) 0
    state_1340863 state_1341124
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1340863
  · exact cover_1341124
#print axioms cover_1340862

def state_1340861 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 24) else (if j.val < 3 then 22 else (if j.val < 4 then 9 else 23)))
theorem cover_1340861 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1340861 := by
  apply coveredState_split_literal (state := state_1340861) 3
    state_1340862 state_1341133
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1340862
  · exact cover_1341133
#print axioms cover_1340861

def state_1340831 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 24) else (if j.val < 3 then 22 else (if j.val < 4 then 9 else 11)))
theorem cover_1340831 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1340831 := by
  apply coveredState_split_literal (state := state_1340831) 4
    state_1340832 state_1340861
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1340832
  · exact cover_1340861
#print axioms cover_1340831

def state_1340830 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 24) else (if j.val < 3 then 11 else (if j.val < 4 then 9 else 11)))
theorem cover_1340830 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1340830 := by
  apply coveredState_split_literal (state := state_1340830) 2
    state_1340831 state_1341172
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1340831
  · exact cover_1341172
#print axioms cover_1340830

def state_1341214 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 30 else 50) else (if j.val < 3 then 22 else (if j.val < 4 then 18 else 46)))
theorem cover_1341214 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1341214 := by
  apply coveredState_split_literal (state := state_1341214) 2
    state_1341215 state_1341272
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1341215
  · exact cover_1341272
#print axioms cover_1341214

def state_1341213 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 30 else 25) else (if j.val < 3 then 22 else (if j.val < 4 then 18 else 46)))
theorem cover_1341213 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1341213 := by
  apply coveredState_split_literal (state := state_1341213) 1
    state_1341214 state_1341287
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1341214
  · exact cover_1341287
#print axioms cover_1341213

def state_1341328 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 30 else 50) else (if j.val < 3 then 44 else (if j.val < 4 then 37 else 47)))
theorem cover_1341328 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1341328 := by
  apply coveredState_split_literal (state := state_1341328) 0
    state_1341329 state_1341370
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1341329
  · exact cover_1341370
#print axioms cover_1341328

def state_1341296 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 30 else 50) else (if j.val < 3 then 44 else (if j.val < 4 then 18 else 47)))
theorem cover_1341296 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1341296 := by
  apply coveredState_split_literal (state := state_1341296) 3
    state_1341297 state_1341328
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1341297
  · exact cover_1341328
#print axioms cover_1341296

def state_1341295 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 30 else 50) else (if j.val < 3 then 22 else (if j.val < 4 then 18 else 47)))
theorem cover_1341295 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1341295 := by
  apply coveredState_split_literal (state := state_1341295) 2
    state_1341296 state_1341425
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1341296
  · exact cover_1341425
#print axioms cover_1341295

def state_1341294 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 30 else 25) else (if j.val < 3 then 22 else (if j.val < 4 then 18 else 47)))
theorem cover_1341294 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1341294 := by
  apply coveredState_split_literal (state := state_1341294) 1
    state_1341295 state_1341458
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1341295
  · exact cover_1341458
#print axioms cover_1341294

def state_1341212 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 30 else 25) else (if j.val < 3 then 22 else (if j.val < 4 then 18 else 23)))
theorem cover_1341212 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1341212 := by
  apply coveredState_split_literal (state := state_1341212) 4
    state_1341213 state_1341294
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1341213
  · exact cover_1341294
#print axioms cover_1341212

def state_1341211 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 25) else (if j.val < 3 then 22 else (if j.val < 4 then 18 else 23)))
theorem cover_1341211 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1341211 := by
  apply coveredState_split_literal (state := state_1341211) 0
    state_1341212 state_1341471
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1341212
  · exact cover_1341471
#print axioms cover_1341211

def state_1341525 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 30 else 50) else (if j.val < 3 then 44 else (if j.val < 4 then 19 else 47)))
theorem cover_1341525 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1341525 := by
  apply coveredState_split_literal (state := state_1341525) 3
    state_1341526 state_1341589
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1341526
  · exact cover_1341589
#print axioms cover_1341525

def state_1341524 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 30 else 50) else (if j.val < 3 then 22 else (if j.val < 4 then 19 else 47)))
theorem cover_1341524 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1341524 := by
  apply coveredState_split_literal (state := state_1341524) 2
    state_1341525 state_1341590
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1341525
  · exact cover_1341590
#print axioms cover_1341524

def state_1341523 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 30 else 25) else (if j.val < 3 then 22 else (if j.val < 4 then 19 else 47)))
theorem cover_1341523 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1341523 := by
  apply coveredState_split_literal (state := state_1341523) 1
    state_1341524 state_1341603
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1341524
  · exact cover_1341603
#print axioms cover_1341523

def state_1341495 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 30 else 25) else (if j.val < 3 then 22 else (if j.val < 4 then 19 else 23)))
theorem cover_1341495 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1341495 := by
  apply coveredState_split_literal (state := state_1341495) 4
    state_1341496 state_1341523
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1341496
  · exact cover_1341523
#print axioms cover_1341495

def state_1341494 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 25) else (if j.val < 3 then 22 else (if j.val < 4 then 19 else 23)))
theorem cover_1341494 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1341494 := by
  apply coveredState_split_literal (state := state_1341494) 0
    state_1341495 state_1341660
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1341495
  · exact cover_1341660
#print axioms cover_1341494

def state_1341210 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 25) else (if j.val < 3 then 22 else (if j.val < 4 then 9 else 23)))
theorem cover_1341210 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1341210 := by
  apply coveredState_split_literal (state := state_1341210) 3
    state_1341211 state_1341494
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1341211
  · exact cover_1341494
#print axioms cover_1341210

def state_1341184 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 25) else (if j.val < 3 then 22 else (if j.val < 4 then 9 else 11)))
theorem cover_1341184 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1341184 := by
  apply coveredState_split_literal (state := state_1341184) 4
    state_1341185 state_1341210
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1341185
  · exact cover_1341210
#print axioms cover_1341184

def state_1341183 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 25) else (if j.val < 3 then 11 else (if j.val < 4 then 9 else 11)))
theorem cover_1341183 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1341183 := by
  apply coveredState_split_literal (state := state_1341183) 2
    state_1341184 state_1341723
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1341184
  · exact cover_1341723
#print axioms cover_1341183

def state_1340829 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 9 else 11)))
theorem cover_1340829 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1340829 := by
  apply coveredState_split_literal (state := state_1340829) 1
    state_1340830 state_1341183
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1340830
  · exact cover_1341183
#print axioms cover_1340829

def state_1340665 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 4 else 11)))
theorem cover_1340665 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1340665 := by
  apply coveredState_split_literal (state := state_1340665) 3
    state_1340666 state_1340829
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1340666
  · exact cover_1340829
#print axioms cover_1340665

def state_1338005 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 4 else 11)))
theorem cover_1338005 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1338005 := by
  apply coveredState_split_literal (state := state_1338005) 0
    state_1338006 state_1340665
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1338006
  · exact cover_1340665
#print axioms cover_1338005

def state_1337921 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 4 else 5)))
theorem cover_1337921 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1337921 := by
  apply coveredState_split_literal (state := state_1337921) 4
    state_1337922 state_1338005
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1337922
  · exact cover_1338005
#print axioms cover_1337921
end Mub6.Numerical.CircleFullD0.Forest
