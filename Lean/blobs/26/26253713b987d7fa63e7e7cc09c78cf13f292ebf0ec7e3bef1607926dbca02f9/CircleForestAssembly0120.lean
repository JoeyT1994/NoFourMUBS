import CircleFullInterface
import CircleForestAssembly0119
import CircleForestChunk0476
import CircleForestChunk0477
import CircleForestChunk0478
import CircleForestChunk0479
import CircleForestChunk0480
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_275885 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 45) else (if j.val < 3 then 35 else (if j.val < 4 then 57 else 36)))
theorem cover_275885 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_275885 := by
  apply coveredState_split_literal (state := state_275885) 0
    state_275886 state_275905
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_275886
  · exact cover_275905
#print axioms cover_275885

def state_275863 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 45) else (if j.val < 3 then 17 else (if j.val < 4 then 57 else 36)))
theorem cover_275863 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_275863 := by
  apply coveredState_split_literal (state := state_275863) 2
    state_275864 state_275885
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_275864
  · exact cover_275885
#print axioms cover_275863

def state_275862 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 45) else (if j.val < 3 then 17 else (if j.val < 4 then 57 else 18)))
theorem cover_275862 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_275862 := by
  apply coveredState_split_literal (state := state_275862) 4
    state_275863 state_275982
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_275863
  · exact cover_275982
#print axioms cover_275862

def state_275810 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 45) else (if j.val < 3 then 17 else (if j.val < 4 then 28 else 18)))
theorem cover_275810 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_275810 := by
  apply coveredState_split_literal (state := state_275810) 3
    state_275811 state_275862
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_275811
  · exact cover_275862
#print axioms cover_275810

def state_275798 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 22) else (if j.val < 3 then 17 else (if j.val < 4 then 28 else 18)))
theorem cover_275798 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_275798 := by
  apply coveredState_split_literal (state := state_275798) 1
    state_275799 state_275810
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_275799
  · exact cover_275810
#print axioms cover_275798

def state_275778 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 17 else (if j.val < 4 then 28 else 18)))
theorem cover_275778 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_275778 := by
  apply coveredState_split_literal (state := state_275778) 0
    state_275779 state_275798
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_275779
  · exact cover_275798
#print axioms cover_275778

def state_275754 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 8 else (if j.val < 4 then 28 else 18)))
theorem cover_275754 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_275754 := by
  apply coveredState_split_literal (state := state_275754) 2
    state_275755 state_275778
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_275755
  · exact cover_275778
#print axioms cover_275754

def state_275753 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 8 else (if j.val < 4 then 28 else 9)))
theorem cover_275753 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_275753 := by
  apply coveredState_split_literal (state := state_275753) 4
    state_275754 state_275987
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_275754
  · exact cover_275987
#print axioms cover_275753

def state_275752 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 8 else (if j.val < 4 then 14 else 9)))
theorem cover_275752 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_275752 := by
  apply coveredState_split_literal (state := state_275752) 3
    state_275753 state_275998
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_275753
  · exact cover_275998
#print axioms cover_275752

def state_276156 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 92) else (if j.val < 3 then 35 else (if j.val < 4 then 57 else 36)))
theorem cover_276156 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_276156 := by
  apply coveredState_split_literal (state := state_276156) 3
    state_276157 state_276182
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_276157
  · exact cover_276182
#print axioms cover_276156

def state_276134 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 92) else (if j.val < 3 then 35 else (if j.val < 4 then 57 else 36)))
theorem cover_276134 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_276134 := by
  apply coveredState_split_literal (state := state_276134) 0
    state_276135 state_276156
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_276135
  · exact cover_276156
#print axioms cover_276134

def state_276133 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 46) else (if j.val < 3 then 35 else (if j.val < 4 then 57 else 36)))
theorem cover_276133 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_276133 := by
  apply coveredState_split_literal (state := state_276133) 1
    state_276134 state_276239
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_276134
  · exact cover_276239
#print axioms cover_276133

def state_276109 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 46) else (if j.val < 3 then 17 else (if j.val < 4 then 57 else 36)))
theorem cover_276109 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_276109 := by
  apply coveredState_split_literal (state := state_276109) 2
    state_276110 state_276133
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_276110
  · exact cover_276133
#print axioms cover_276109

def state_276108 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 46) else (if j.val < 3 then 17 else (if j.val < 4 then 57 else 18)))
theorem cover_276108 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_276108 := by
  apply coveredState_split_literal (state := state_276108) 4
    state_276109 state_276252
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_276109
  · exact cover_276252
#print axioms cover_276108

def state_276094 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 46) else (if j.val < 3 then 17 else (if j.val < 4 then 28 else 18)))
theorem cover_276094 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_276094 := by
  apply coveredState_split_literal (state := state_276094) 3
    state_276095 state_276108
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_276095
  · exact cover_276108
#print axioms cover_276094

def state_276066 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 46) else (if j.val < 3 then 17 else (if j.val < 4 then 28 else 18)))
theorem cover_276066 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_276066 := by
  apply coveredState_split_literal (state := state_276066) 0
    state_276067 state_276094
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_276067
  · exact cover_276094
#print axioms cover_276066

def state_276065 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 17 else (if j.val < 4 then 28 else 18)))
theorem cover_276065 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_276065 := by
  apply coveredState_split_literal (state := state_276065) 1
    state_276066 state_276263
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_276066
  · exact cover_276263
#print axioms cover_276065

def state_276041 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 8 else (if j.val < 4 then 28 else 18)))
theorem cover_276041 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_276041 := by
  apply coveredState_split_literal (state := state_276041) 2
    state_276042 state_276065
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_276042
  · exact cover_276065
#print axioms cover_276041

def state_276040 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 8 else (if j.val < 4 then 28 else 9)))
theorem cover_276040 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_276040 := by
  apply coveredState_split_literal (state := state_276040) 4
    state_276041 state_276272
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_276041
  · exact cover_276272
#print axioms cover_276040

def state_276294 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 46) else (if j.val < 3 then 17 else (if j.val < 4 then 58 else 18)))
theorem cover_276294 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_276294 := by
  apply coveredState_split_literal (state := state_276294) 4
    state_276295 state_276350
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_276295
  · exact cover_276350
#print axioms cover_276294

def state_276293 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 46) else (if j.val < 3 then 17 else (if j.val < 4 then 29 else 18)))
theorem cover_276293 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_276293 := by
  apply coveredState_split_literal (state := state_276293) 3
    state_276294 state_276367
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_276294
  · exact cover_276367
#print axioms cover_276293

def state_276289 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 46) else (if j.val < 3 then 17 else (if j.val < 4 then 29 else 18)))
theorem cover_276289 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_276289 := by
  apply coveredState_split_literal (state := state_276289) 0
    state_276290 state_276293
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_276290
  · exact cover_276293
#print axioms cover_276289

def state_276288 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 17 else (if j.val < 4 then 29 else 18)))
theorem cover_276288 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_276288 := by
  apply coveredState_split_literal (state := state_276288) 1
    state_276289 state_276378
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_276289
  · exact cover_276378
#print axioms cover_276288

def state_276284 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 8 else (if j.val < 4 then 29 else 18)))
theorem cover_276284 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_276284 := by
  apply coveredState_split_literal (state := state_276284) 2
    state_276285 state_276288
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_276285
  · exact cover_276288
#print axioms cover_276284

def state_276283 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 8 else (if j.val < 4 then 29 else 9)))
theorem cover_276283 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_276283 := by
  apply coveredState_split_literal (state := state_276283) 4
    state_276284 state_276395
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_276284
  · exact cover_276395
#print axioms cover_276283

def state_276039 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 8 else (if j.val < 4 then 14 else 9)))
theorem cover_276039 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_276039 := by
  apply coveredState_split_literal (state := state_276039) 3
    state_276040 state_276283
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_276040
  · exact cover_276283
#print axioms cover_276039

def state_275751 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 11) else (if j.val < 3 then 8 else (if j.val < 4 then 14 else 9)))
theorem cover_275751 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_275751 := by
  apply coveredState_split_literal (state := state_275751) 1
    state_275752 state_276039
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_275752
  · exact cover_276039
#print axioms cover_275751

def state_276513 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 92) else (if j.val < 3 then 35 else (if j.val < 4 then 57 else 36)))
theorem cover_276513 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_276513 := by
  apply coveredState_split_literal (state := state_276513) 3
    state_276514 state_276539
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_276514
  · exact cover_276539
#print axioms cover_276513

def state_276512 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 46) else (if j.val < 3 then 35 else (if j.val < 4 then 57 else 36)))
theorem cover_276512 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_276512 := by
  apply coveredState_split_literal (state := state_276512) 1
    state_276513 state_276580
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_276513
  · exact cover_276580
#print axioms cover_276512

def state_276511 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 46) else (if j.val < 3 then 35 else (if j.val < 4 then 57 else 36)))
theorem cover_276511 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_276511 := by
  apply coveredState_split_literal (state := state_276511) 0
    state_276512 state_276583
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_276512
  · exact cover_276583
#print axioms cover_276511

def state_276501 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 46) else (if j.val < 3 then 17 else (if j.val < 4 then 57 else 36)))
theorem cover_276501 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_276501 := by
  apply coveredState_split_literal (state := state_276501) 2
    state_276502 state_276511
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_276502
  · exact cover_276511
#print axioms cover_276501

def state_276500 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 46) else (if j.val < 3 then 17 else (if j.val < 4 then 57 else 18)))
theorem cover_276500 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_276500 := by
  apply coveredState_split_literal (state := state_276500) 4
    state_276501 state_276588
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_276501
  · exact cover_276588
#print axioms cover_276500
end Mub6.Numerical.CircleFullPrototype.Forest
