import D0FullInterface
import D0ForestChunk0038
import D0ForestChunk0039
import D0ForestChunk0040
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2241418 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 4)))
theorem cover_2241418 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2241418 := by
  apply coveredState_split_literal (state := state_2241418) 2
    state_2241419 state_2241532
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2241419
  · exact cover_2241532
#print axioms cover_2241418

def state_2241240 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 4)))
theorem cover_2241240 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2241240 := by
  apply coveredState_split_literal (state := state_2241240) 1
    state_2241241 state_2241418
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2241241
  · exact cover_2241418
#print axioms cover_2241240

def state_2240966 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 4)))
theorem cover_2240966 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2240966 := by
  apply coveredState_split_literal (state := state_2240966) 0
    state_2240967 state_2241240
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2240967
  · exact cover_2241240
#print axioms cover_2240966

def state_2240965 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 2)))
theorem cover_2240965 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2240965 := by
  apply coveredState_split_literal (state := state_2240965) 4
    state_2240966 state_2242477
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2240966
  · exact cover_2242477
#print axioms cover_2240965

def state_2240964 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 2)))
theorem cover_2240964 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2240964 := by
  apply coveredState_split_literal (state := state_2240964) 3
    state_2240965 state_2242496
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2240965
  · exact cover_2242496
#print axioms cover_2240964

def state_2240954 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_2240954 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2240954 := by
  apply coveredState_split_literal (state := state_2240954) 2
    state_2240955 state_2240964
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2240955
  · exact cover_2240964
#print axioms cover_2240954

def state_2240924 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_2240924 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2240924 := by
  apply coveredState_split_literal (state := state_2240924) 1
    state_2240925 state_2240954
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2240925
  · exact cover_2240954
#print axioms cover_2240924

def state_2240856 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_2240856 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2240856 := by
  apply coveredState_split_literal (state := state_2240856) 0
    state_2240857 state_2240924
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2240857
  · exact cover_2240924
#print axioms cover_2240856

def state_2240855 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 1)))
theorem cover_2240855 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2240855 := by
  apply coveredState_split_literal (state := state_2240855) 4
    state_2240856 state_2242519
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2240856
  · exact cover_2242519
#print axioms cover_2240855

def state_2240854 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_2240854 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2240854 := by
  apply coveredState_split_literal (state := state_2240854) 3
    state_2240855 state_2242744
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2240855
  · exact cover_2242744
#print axioms cover_2240854

def state_2243140 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 1)))
theorem cover_2243140 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2243140 := by
  apply coveredState_split_literal (state := state_2243140) 4
    state_2243141 state_2244072
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2243141
  · exact cover_2244072
#print axioms cover_2243140

def state_2243139 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
theorem cover_2243139 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2243139 := by
  apply coveredState_split_literal (state := state_2243139) 3
    state_2243140 state_2244183
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2243140
  · exact cover_2244183
#print axioms cover_2243139

def state_2240853 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_2240853 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2240853 := by
  apply coveredState_split_literal (state := state_2240853) 2
    state_2240854 state_2243139
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2240854
  · exact cover_2243139
#print axioms cover_2240853

def state_2244414 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 5)))
theorem cover_2244414 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2244414 := by
  apply coveredState_split_literal (state := state_2244414) 1
    state_2244415 state_2245394
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2244415
  · exact cover_2245394
#print axioms cover_2244414

def state_2244410 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 2)))
theorem cover_2244410 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2244410 := by
  apply coveredState_split_literal (state := state_2244410) 4
    state_2244411 state_2244414
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2244411
  · exact cover_2244414
#print axioms cover_2244410

def state_2244404 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 2)))
theorem cover_2244404 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2244404 := by
  apply coveredState_split_literal (state := state_2244404) 3
    state_2244405 state_2244410
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2244405
  · exact cover_2244410
#print axioms cover_2244404

def state_2244403 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_2244403 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2244403 := by
  apply coveredState_split_literal (state := state_2244403) 2
    state_2244404 state_2245483
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2244404
  · exact cover_2245483
#print axioms cover_2244403

def state_2244402 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_2244402 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2244402 := by
  apply coveredState_split_literal (state := state_2244402) 1
    state_2244403 state_2245546
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2244403
  · exact cover_2245546
#print axioms cover_2244402

def state_2244401 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_2244401 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2244401 := by
  apply coveredState_split_literal (state := state_2244401) 0
    state_2244402 state_2245575
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2244402
  · exact cover_2245575
#print axioms cover_2244401

def state_2246426 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 19 else (if j.val < 4 then 23 else 24)))
theorem cover_2246426 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2246426 := by
  apply coveredState_split_literal (state := state_2246426) 3
    state_2246427 state_2246686
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2246427
  · exact cover_2246686
#print axioms cover_2246426

def state_2246354 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 23 else 24)))
theorem cover_2246354 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2246354 := by
  apply coveredState_split_literal (state := state_2246354) 2
    state_2246355 state_2246426
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2246355
  · exact cover_2246426
#print axioms cover_2246354

def state_2246353 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 23 else 24)))
theorem cover_2246353 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2246353 := by
  apply coveredState_split_literal (state := state_2246353) 0
    state_2246354 state_2247555
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2246354
  · exact cover_2247555
#print axioms cover_2246353

def state_2246352 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 23 else 12)))
theorem cover_2246352 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2246352 := by
  apply coveredState_split_literal (state := state_2246352) 4
    state_2246353 state_2247686
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2246353
  · exact cover_2247686
#print axioms cover_2246352

def state_2246282 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 11 else 12)))
theorem cover_2246282 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2246282 := by
  apply coveredState_split_literal (state := state_2246282) 3
    state_2246283 state_2246352
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2246283
  · exact cover_2246352
#print axioms cover_2246282

def state_2246258 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 12) else (if j.val < 3 then 9 else (if j.val < 4 then 11 else 12)))
theorem cover_2246258 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2246258 := by
  apply coveredState_split_literal (state := state_2246258) 1
    state_2246259 state_2246282
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2246259
  · exact cover_2246282
#print axioms cover_2246258

def state_2246234 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 12)))
theorem cover_2246234 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2246234 := by
  apply coveredState_split_literal (state := state_2246234) 2
    state_2246235 state_2246258
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2246235
  · exact cover_2246258
#print axioms cover_2246234

def state_2245920 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 12)))
theorem cover_2245920 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2245920 := by
  apply coveredState_split_literal (state := state_2245920) 0
    state_2245921 state_2246234
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2245921
  · exact cover_2246234
#print axioms cover_2245920

def state_2245919 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 6)))
theorem cover_2245919 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2245919 := by
  apply coveredState_split_literal (state := state_2245919) 4
    state_2245920 state_2247697
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2245920
  · exact cover_2247697
#print axioms cover_2245919

def state_2245839 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 6)))
theorem cover_2245839 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2245839 := by
  apply coveredState_split_literal (state := state_2245839) 3
    state_2245840 state_2245919
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2245840
  · exact cover_2245919
#print axioms cover_2245839

def state_2245838 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 6)))
theorem cover_2245838 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2245838 := by
  apply coveredState_split_literal (state := state_2245838) 1
    state_2245839 state_2247722
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2245839
  · exact cover_2247722
#print axioms cover_2245838

def state_2245837 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 3)))
theorem cover_2245837 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2245837 := by
  apply coveredState_split_literal (state := state_2245837) 4
    state_2245838 state_2248341
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2245838
  · exact cover_2248341
#print axioms cover_2245837

def state_2245821 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 3)))
theorem cover_2245821 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2245821 := by
  apply coveredState_split_literal (state := state_2245821) 3
    state_2245822 state_2245837
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2245822
  · exact cover_2245837
#print axioms cover_2245821

def state_2249497 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 25) else (if j.val < 3 then 21 else (if j.val < 4 then 22 else 13)))
theorem cover_2249497 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2249497 := by
  apply coveredState_split_literal (state := state_2249497) 4
    state_2249498 state_2249725
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2249498
  · exact cover_2249725
#print axioms cover_2249497

def state_2249357 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 25) else (if j.val < 3 then 10 else (if j.val < 4 then 22 else 13)))
theorem cover_2249357 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2249357 := by
  apply coveredState_split_literal (state := state_2249357) 2
    state_2249358 state_2249497
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2249358
  · exact cover_2249497
#print axioms cover_2249357

def state_2251232 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 25) else (if j.val < 3 then 21 else (if j.val < 4 then 23 else 27)))
theorem cover_2251232 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2251232 := by
  apply coveredState_split_literal (state := state_2251232) 0
    state_2251233 state_2251774
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2251233
  · exact cover_2251774
#print axioms cover_2251232

def state_2250802 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 25) else (if j.val < 3 then 21 else (if j.val < 4 then 23 else 13)))
theorem cover_2250802 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2250802 := by
  apply coveredState_split_literal (state := state_2250802) 4
    state_2250803 state_2251232
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2250803
  · exact cover_2251232
#print axioms cover_2250802

def state_2250674 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 25) else (if j.val < 3 then 10 else (if j.val < 4 then 23 else 13)))
theorem cover_2250674 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2250674 := by
  apply coveredState_split_literal (state := state_2250674) 2
    state_2250675 state_2250802
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2250675
  · exact cover_2250802
#print axioms cover_2250674

def state_2249356 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 25) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 13)))
theorem cover_2249356 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2249356 := by
  apply coveredState_split_literal (state := state_2249356) 3
    state_2249357 state_2250674
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2249357
  · exact cover_2250674
#print axioms cover_2249356

def state_2249270 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 13)))
theorem cover_2249270 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2249270 := by
  apply coveredState_split_literal (state := state_2249270) 1
    state_2249271 state_2249356
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2249271
  · exact cover_2249356
#print axioms cover_2249270

def state_2249269 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 13)))
theorem cover_2249269 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2249269 := by
  apply coveredState_split_literal (state := state_2249269) 0
    state_2249270 state_2252719
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2249270
  · exact cover_2252719
#print axioms cover_2249269

def state_2248581 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 6)))
theorem cover_2248581 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2248581 := by
  apply coveredState_split_literal (state := state_2248581) 4
    state_2248582 state_2249269
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2248582
  · exact cover_2249269
#print axioms cover_2248581

def state_2248447 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 5 else 6)))
theorem cover_2248447 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2248447 := by
  apply coveredState_split_literal (state := state_2248447) 3
    state_2248448 state_2248581
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2248448
  · exact cover_2248581
#print axioms cover_2248447

def state_2253121 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 13)))
theorem cover_2253121 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2253121 := by
  apply coveredState_split_literal (state := state_2253121) 1
    state_2253122 state_2253137
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2253122
  · exact cover_2253137
#print axioms cover_2253121

def state_2253120 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 13)))
theorem cover_2253120 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2253120 := by
  apply coveredState_split_literal (state := state_2253120) 0
    state_2253121 state_2254160
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2253121
  · exact cover_2254160
#print axioms cover_2253120

def state_2253116 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 6)))
theorem cover_2253116 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2253116 := by
  apply coveredState_split_literal (state := state_2253116) 4
    state_2253117 state_2253120
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2253117
  · exact cover_2253120
#print axioms cover_2253116

def state_2253112 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 5 else 6)))
theorem cover_2253112 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2253112 := by
  apply coveredState_split_literal (state := state_2253112) 3
    state_2253113 state_2253116
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2253113
  · exact cover_2253116
#print axioms cover_2253112

def state_2248446 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 6)))
theorem cover_2248446 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2248446 := by
  apply coveredState_split_literal (state := state_2248446) 2
    state_2248447 state_2253112
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2248447
  · exact cover_2253112
#print axioms cover_2248446

def state_2254383 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 12)))
theorem cover_2254383 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2254383 := by
  apply coveredState_split_literal (state := state_2254383) 0
    state_2254384 state_2254573
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2254384
  · exact cover_2254573
#print axioms cover_2254383

def state_2255621 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 26) else (if j.val < 3 then 21 else (if j.val < 4 then 22 else 13)))
theorem cover_2255621 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2255621 := by
  apply coveredState_split_literal (state := state_2255621) 4
    state_2255622 state_2256109
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2255622
  · exact cover_2256109
#print axioms cover_2255621

def state_2255593 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 26) else (if j.val < 3 then 10 else (if j.val < 4 then 22 else 13)))
theorem cover_2255593 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2255593 := by
  apply coveredState_split_literal (state := state_2255593) 2
    state_2255594 state_2255621
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2255594
  · exact cover_2255621
#print axioms cover_2255593

def state_2255592 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 22 else 13)))
theorem cover_2255592 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2255592 := by
  apply coveredState_split_literal (state := state_2255592) 1
    state_2255593 state_2256692
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2255593
  · exact cover_2256692
#print axioms cover_2255592

def state_2256750 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 26) else (if j.val < 3 then 21 else (if j.val < 4 then 23 else 13)))
theorem cover_2256750 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2256750 := by
  apply coveredState_split_literal (state := state_2256750) 4
    state_2256751 state_2257288
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2256751
  · exact cover_2257288
#print axioms cover_2256750

def state_2256704 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 26) else (if j.val < 3 then 10 else (if j.val < 4 then 23 else 13)))
theorem cover_2256704 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2256704 := by
  apply coveredState_split_literal (state := state_2256704) 2
    state_2256705 state_2256750
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2256705
  · exact cover_2256750
#print axioms cover_2256704

def state_2256703 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 23 else 13)))
theorem cover_2256703 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2256703 := by
  apply coveredState_split_literal (state := state_2256703) 1
    state_2256704 state_2257777
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2256704
  · exact cover_2257777
#print axioms cover_2256703

def state_2255591 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 13)))
theorem cover_2255591 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2255591 := by
  apply coveredState_split_literal (state := state_2255591) 3
    state_2255592 state_2256703
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2255592
  · exact cover_2256703
#print axioms cover_2255591

def state_2258877 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 26) else (if j.val < 3 then 21 else (if j.val < 4 then 45 else 27)))
theorem cover_2258877 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2258877 := by
  apply coveredState_split_literal (state := state_2258877) 1
    state_2258878 state_2259725
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2258878
  · exact cover_2259725
#print axioms cover_2258877

def state_2258725 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 26) else (if j.val < 3 then 21 else (if j.val < 4 then 22 else 27)))
theorem cover_2258725 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2258725 := by
  apply coveredState_split_literal (state := state_2258725) 3
    state_2258726 state_2258877
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2258726
  · exact cover_2258877
#print axioms cover_2258725

def state_2258724 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 26) else (if j.val < 3 then 21 else (if j.val < 4 then 22 else 27)))
theorem cover_2258724 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2258724 := by
  apply coveredState_split_literal (state := state_2258724) 0
    state_2258725 state_2260026
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2258725
  · exact cover_2260026
#print axioms cover_2258724

def state_2257864 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 26) else (if j.val < 3 then 21 else (if j.val < 4 then 22 else 13)))
theorem cover_2257864 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2257864 := by
  apply coveredState_split_literal (state := state_2257864) 4
    state_2257865 state_2258724
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2257865
  · exact cover_2258724
#print axioms cover_2257864

def state_2257784 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 26) else (if j.val < 3 then 10 else (if j.val < 4 then 22 else 13)))
theorem cover_2257784 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2257784 := by
  apply coveredState_split_literal (state := state_2257784) 2
    state_2257785 state_2257864
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2257785
  · exact cover_2257864
#print axioms cover_2257784

def state_2257783 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 22 else 13)))
theorem cover_2257783 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2257783 := by
  apply coveredState_split_literal (state := state_2257783) 1
    state_2257784 state_2260217
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2257784
  · exact cover_2260217
#print axioms cover_2257783

def state_2260393 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 26) else (if j.val < 3 then 21 else (if j.val < 4 then 23 else 13)))
theorem cover_2260393 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2260393 := by
  apply coveredState_split_literal (state := state_2260393) 4
    state_2260394 state_2261335
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2260394
  · exact cover_2261335
#print axioms cover_2260393

def state_2260319 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 26) else (if j.val < 3 then 10 else (if j.val < 4 then 23 else 13)))
theorem cover_2260319 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2260319 := by
  apply coveredState_split_literal (state := state_2260319) 2
    state_2260320 state_2260393
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2260320
  · exact cover_2260393
#print axioms cover_2260319

def state_2260318 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 23 else 13)))
theorem cover_2260318 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2260318 := by
  apply coveredState_split_literal (state := state_2260318) 1
    state_2260319 state_2261804
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2260319
  · exact cover_2261804
#print axioms cover_2260318
end Mub6.Numerical.CircleFullD0.Forest
