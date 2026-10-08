import D0FullInterface
import D0ForestAssembly0320
import D0ForestAssembly0321
import D0ForestChunk1236
import D0ForestChunk1241
import D0ForestChunk1246
import D0ForestChunk1247
import D0ForestChunk1248
import D0ForestChunk1249
import D0ForestChunk1250
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1599350 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 40) else (if j.val < 3 then 103 else (if j.val < 4 then 59 else 100)))
theorem cover_1599350 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1599350 := by
  apply coveredState_split_literal (state := state_1599350) 1
    state_1599351 state_1599440
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1599351
  · exact cover_1599440
#print axioms cover_1599350

def state_1599637 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 40) else (if j.val < 3 then 103 else (if j.val < 4 then 59 else 100)))
theorem cover_1599637 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1599637 := by
  apply coveredState_split_literal (state := state_1599637) 1
    state_1599638 state_1599683
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1599638
  · exact cover_1599683
#print axioms cover_1599637

def state_1599349 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 40) else (if j.val < 3 then 103 else (if j.val < 4 then 59 else 100)))
theorem cover_1599349 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1599349 := by
  apply coveredState_split_literal (state := state_1599349) 0
    state_1599350 state_1599637
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1599350
  · exact cover_1599637
#print axioms cover_1599349

def state_1599269 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 40) else (if j.val < 3 then 51 else (if j.val < 4 then 59 else 100)))
theorem cover_1599269 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1599269 := by
  apply coveredState_split_literal (state := state_1599269) 2
    state_1599270 state_1599349
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1599270
  · exact cover_1599349
#print axioms cover_1599269

def state_1599732 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 80) else (if j.val < 3 then 103 else (if j.val < 4 then 59 else 101)))
theorem cover_1599732 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1599732 := by
  apply coveredState_split_literal (state := state_1599732) 3
    state_1599733 state_1599768
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1599733
  · exact cover_1599768
#print axioms cover_1599732

def state_1599731 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 40) else (if j.val < 3 then 103 else (if j.val < 4 then 59 else 101)))
theorem cover_1599731 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1599731 := by
  apply coveredState_split_literal (state := state_1599731) 1
    state_1599732 state_1599803
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1599732
  · exact cover_1599803
#print axioms cover_1599731

def state_1599730 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 40) else (if j.val < 3 then 103 else (if j.val < 4 then 59 else 101)))
theorem cover_1599730 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1599730 := by
  apply coveredState_split_literal (state := state_1599730) 0
    state_1599731 state_1599860
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1599731
  · exact cover_1599860
#print axioms cover_1599730

def state_1599716 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 40) else (if j.val < 3 then 51 else (if j.val < 4 then 59 else 101)))
theorem cover_1599716 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1599716 := by
  apply coveredState_split_literal (state := state_1599716) 2
    state_1599717 state_1599730
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1599717
  · exact cover_1599730
#print axioms cover_1599716

def state_1599268 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 40) else (if j.val < 3 then 51 else (if j.val < 4 then 59 else 50)))
theorem cover_1599268 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1599268 := by
  apply coveredState_split_literal (state := state_1599268) 4
    state_1599269 state_1599716
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1599269
  · exact cover_1599716
#print axioms cover_1599268

def state_1599878 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 41) else (if j.val < 3 then 103 else (if j.val < 4 then 118 else 100)))
theorem cover_1599878 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1599878 := by
  apply coveredState_split_literal (state := state_1599878) 1
    state_1599879 state_1599938
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1599879
  · exact cover_1599938
#print axioms cover_1599878

def state_1599877 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 41) else (if j.val < 3 then 103 else (if j.val < 4 then 59 else 100)))
theorem cover_1599877 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1599877 := by
  apply coveredState_split_literal (state := state_1599877) 3
    state_1599878 state_1599945
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1599878
  · exact cover_1599945
#print axioms cover_1599877

def state_1599876 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 41) else (if j.val < 3 then 103 else (if j.val < 4 then 59 else 100)))
theorem cover_1599876 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1599876 := by
  apply coveredState_split_literal (state := state_1599876) 0
    state_1599877 state_1599992
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1599877
  · exact cover_1599992
#print axioms cover_1599876

def state_1599870 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 41) else (if j.val < 3 then 51 else (if j.val < 4 then 59 else 100)))
theorem cover_1599870 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1599870 := by
  apply coveredState_split_literal (state := state_1599870) 2
    state_1599871 state_1599876
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1599871
  · exact cover_1599876
#print axioms cover_1599870

def state_1599869 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 41) else (if j.val < 3 then 51 else (if j.val < 4 then 59 else 50)))
theorem cover_1599869 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1599869 := by
  apply coveredState_split_literal (state := state_1599869) 4
    state_1599870 state_1600003
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1599870
  · exact cover_1600003
#print axioms cover_1599869

def state_1599267 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 20) else (if j.val < 3 then 51 else (if j.val < 4 then 59 else 50)))
theorem cover_1599267 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1599267 := by
  apply coveredState_split_literal (state := state_1599267) 1
    state_1599268 state_1599869
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1599268
  · exact cover_1599869
#print axioms cover_1599267

def state_1599139 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 20) else (if j.val < 3 then 51 else (if j.val < 4 then 29 else 50)))
theorem cover_1599139 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1599139 := by
  apply coveredState_split_literal (state := state_1599139) 3
    state_1599140 state_1599267
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1599140
  · exact cover_1599267
#print axioms cover_1599139

def state_1598361 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 20) else (if j.val < 3 then 51 else (if j.val < 4 then 29 else 50)))
theorem cover_1598361 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1598361 := by
  apply coveredState_split_literal (state := state_1598361) 0
    state_1598362 state_1599139
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1598362
  · exact cover_1599139
#print axioms cover_1598361

def state_1600022 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 20) else (if j.val < 3 then 51 else (if j.val < 4 then 29 else 51)))
theorem cover_1600022 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1600022 := by
  apply coveredState_split_literal (state := state_1600022) 0
    state_1600023 state_1600082
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1600023
  · exact cover_1600082
#print axioms cover_1600022

def state_1598360 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 20) else (if j.val < 3 then 51 else (if j.val < 4 then 29 else 25)))
theorem cover_1598360 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1598360 := by
  apply coveredState_split_literal (state := state_1598360) 4
    state_1598361 state_1600022
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1598361
  · exact cover_1600022
#print axioms cover_1598360

def state_1598312 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 20) else (if j.val < 3 then 25 else (if j.val < 4 then 29 else 25)))
theorem cover_1598312 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1598312 := by
  apply coveredState_split_literal (state := state_1598312) 2
    state_1598313 state_1598360
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1598313
  · exact cover_1598360
#print axioms cover_1598312

def state_1598098 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 20) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 25)))
theorem cover_1598098 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1598098 := by
  apply coveredState_split_literal (state := state_1598098) 3
    state_1598099 state_1598312
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1598099
  · exact cover_1598312
#print axioms cover_1598098

def state_1598097 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 10) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 25)))
theorem cover_1598097 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1598097 := by
  apply coveredState_split_literal (state := state_1598097) 1
    state_1598098 state_1600101
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1598098
  · exact cover_1600101
#print axioms cover_1598097

def state_1597797 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 25)))
theorem cover_1597797 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1597797 := by
  apply coveredState_split_literal (state := state_1597797) 0
    state_1597798 state_1598097
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1597798
  · exact cover_1598097
#print axioms cover_1597797

def state_1597165 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 25 else (if j.val < 4 then 14 else 12)))
theorem cover_1597165 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1597165 := by
  apply coveredState_split_literal (state := state_1597165) 4
    state_1597166 state_1597797
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1597166
  · exact cover_1597797
#print axioms cover_1597165

def state_1597137 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 14 else 12)))
theorem cover_1597137 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1597137 := by
  apply coveredState_split_literal (state := state_1597137) 2
    state_1597138 state_1597165
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1597138
  · exact cover_1597165
#print axioms cover_1597137

def state_1600353 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 40) else (if j.val < 3 then 103 else (if j.val < 4 then 60 else 99)))
theorem cover_1600353 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1600353 := by
  apply coveredState_split_literal (state := state_1600353) 1
    state_1600354 state_1600393
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1600354
  · exact cover_1600393
#print axioms cover_1600353

def state_1600311 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 40) else (if j.val < 3 then 103 else (if j.val < 4 then 60 else 99)))
theorem cover_1600311 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1600311 := by
  apply coveredState_split_literal (state := state_1600311) 0
    state_1600312 state_1600353
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1600312
  · exact cover_1600353
#print axioms cover_1600311

def state_1600275 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 40) else (if j.val < 3 then 51 else (if j.val < 4 then 60 else 99)))
theorem cover_1600275 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1600275 := by
  apply coveredState_split_literal (state := state_1600275) 2
    state_1600276 state_1600311
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1600276
  · exact cover_1600311
#print axioms cover_1600275

def state_1600233 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 40) else (if j.val < 3 then 51 else (if j.val < 4 then 60 else 49)))
theorem cover_1600233 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1600233 := by
  apply coveredState_split_literal (state := state_1600233) 4
    state_1600234 state_1600275
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1600234
  · exact cover_1600275
#print axioms cover_1600233

def state_1600492 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 40) else (if j.val < 3 then 103 else (if j.val < 4 then 61 else 99)))
theorem cover_1600492 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1600492 := by
  apply coveredState_split_literal (state := state_1600492) 1
    state_1600493 state_1600518
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1600493
  · exact cover_1600518
#print axioms cover_1600492

def state_1600484 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 40) else (if j.val < 3 then 103 else (if j.val < 4 then 61 else 99)))
theorem cover_1600484 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1600484 := by
  apply coveredState_split_literal (state := state_1600484) 0
    state_1600485 state_1600492
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1600485
  · exact cover_1600492
#print axioms cover_1600484

def state_1600478 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 40) else (if j.val < 3 then 51 else (if j.val < 4 then 61 else 99)))
theorem cover_1600478 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1600478 := by
  apply coveredState_split_literal (state := state_1600478) 2
    state_1600479 state_1600484
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1600479
  · exact cover_1600484
#print axioms cover_1600478
end Mub6.Numerical.CircleFullD0.Forest
