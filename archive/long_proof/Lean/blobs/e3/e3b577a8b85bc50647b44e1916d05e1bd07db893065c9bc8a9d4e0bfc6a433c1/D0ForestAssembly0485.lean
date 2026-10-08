import D0FullInterface
import D0ForestAssembly0440
import D0ForestAssembly0481
import D0ForestAssembly0484
import D0ForestChunk1907
import D0ForestChunk1908
import D0ForestChunk1909
import D0ForestChunk1910
import D0ForestChunk1911
import D0ForestChunk1912
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2330983 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 12)))
theorem cover_2330983 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2330983 := by
  apply coveredState_split_literal (state := state_2330983) 2
    state_2330984 state_2331007
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2330984
  · exact cover_2331007
#print axioms cover_2330983

def state_2330982 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 6)))
theorem cover_2330982 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2330982 := by
  apply coveredState_split_literal (state := state_2330982) 4
    state_2330983 state_2331082
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2330983
  · exact cover_2331082
#print axioms cover_2330982

def state_2330932 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 6)))
theorem cover_2330932 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2330932 := by
  apply coveredState_split_literal (state := state_2330932) 1
    state_2330933 state_2330982
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2330933
  · exact cover_2330982
#print axioms cover_2330932

def state_2330900 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 6)))
theorem cover_2330900 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2330900 := by
  apply coveredState_split_literal (state := state_2330900) 0
    state_2330901 state_2330932
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2330901
  · exact cover_2330932
#print axioms cover_2330900

def state_2330899 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 3)))
theorem cover_2330899 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2330899 := by
  apply coveredState_split_literal (state := state_2330899) 4
    state_2330900 state_2331083
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2330900
  · exact cover_2331083
#print axioms cover_2330899

def state_2330299 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 3)))
theorem cover_2330299 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2330299 := by
  apply coveredState_split_literal (state := state_2330299) 3
    state_2330300 state_2330899
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2330300
  · exact cover_2330899
#print axioms cover_2330299

def state_2331107 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 6)))
theorem cover_2331107 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2331107 := by
  apply coveredState_split_literal (state := state_2331107) 4
    state_2331108 state_2331165
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2331108
  · exact cover_2331165
#print axioms cover_2331107

def state_2331106 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 6 else 6)))
theorem cover_2331106 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2331106 := by
  apply coveredState_split_literal (state := state_2331106) 3
    state_2331107 state_2331198
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2331107
  · exact cover_2331198
#print axioms cover_2331106

def state_2331105 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 6)))
theorem cover_2331105 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2331105 := by
  apply coveredState_split_literal (state := state_2331105) 2
    state_2331106 state_2331239
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2331106
  · exact cover_2331239
#print axioms cover_2331105

def state_2331089 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 6)))
theorem cover_2331089 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2331089 := by
  apply coveredState_split_literal (state := state_2331089) 1
    state_2331090 state_2331105
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2331090
  · exact cover_2331105
#print axioms cover_2331089

def state_2331088 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 6)))
theorem cover_2331088 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2331088 := by
  apply coveredState_split_literal (state := state_2331088) 0
    state_2331089 state_2331272
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2331089
  · exact cover_2331272
#print axioms cover_2331088

def state_2331318 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 7)))
theorem cover_2331318 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2331318 := by
  apply coveredState_split_literal (state := state_2331318) 1
    state_2331319 state_2331326
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2331319
  · exact cover_2331326
#print axioms cover_2331318

def state_2331317 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 7)))
theorem cover_2331317 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2331317 := by
  apply coveredState_split_literal (state := state_2331317) 0
    state_2331318 state_2331383
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2331318
  · exact cover_2331383
#print axioms cover_2331317

def state_2331087 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 3)))
theorem cover_2331087 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2331087 := by
  apply coveredState_split_literal (state := state_2331087) 4
    state_2331088 state_2331317
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2331088
  · exact cover_2331317
#print axioms cover_2331087

def state_2331393 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 6)))
theorem cover_2331393 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2331393 := by
  apply coveredState_split_literal (state := state_2331393) 0
    state_2331394 state_2331409
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2331394
  · exact cover_2331409
#print axioms cover_2331393

def state_2331392 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 3)))
theorem cover_2331392 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2331392 := by
  apply coveredState_split_literal (state := state_2331392) 4
    state_2331393 state_2331470
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2331393
  · exact cover_2331470
#print axioms cover_2331392

def state_2331086 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 3)))
theorem cover_2331086 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2331086 := by
  apply coveredState_split_literal (state := state_2331086) 3
    state_2331087 state_2331392
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2331087
  · exact cover_2331392
#print axioms cover_2331086

def state_2330298 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_2330298 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2330298 := by
  apply coveredState_split_literal (state := state_2330298) 2
    state_2330299 state_2331086
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2330299
  · exact cover_2331086
#print axioms cover_2330298

def state_2331509 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 6)))
theorem cover_2331509 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2331509 := by
  apply coveredState_split_literal (state := state_2331509) 0
    state_2331510 state_2331559
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2331510
  · exact cover_2331559
#print axioms cover_2331509

def state_2331608 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 7)))
theorem cover_2331608 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2331608 := by
  apply coveredState_split_literal (state := state_2331608) 0
    state_2331609 state_2331650
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2331609
  · exact cover_2331650
#print axioms cover_2331608

def state_2331508 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 3)))
theorem cover_2331508 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2331508 := by
  apply coveredState_split_literal (state := state_2331508) 4
    state_2331509 state_2331608
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2331509
  · exact cover_2331608
#print axioms cover_2331508

def state_2331675 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 3)))
theorem cover_2331675 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2331675 := by
  apply coveredState_split_literal (state := state_2331675) 4
    state_2331676 state_2331739
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2331676
  · exact cover_2331739
#print axioms cover_2331675

def state_2331507 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 3)))
theorem cover_2331507 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2331507 := by
  apply coveredState_split_literal (state := state_2331507) 3
    state_2331508 state_2331675
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2331508
  · exact cover_2331675
#print axioms cover_2331507

def state_2331477 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_2331477 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2331477 := by
  apply coveredState_split_literal (state := state_2331477) 2
    state_2331478 state_2331507
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2331478
  · exact cover_2331507
#print axioms cover_2331477

def state_2330297 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_2330297 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2330297 := by
  apply coveredState_split_literal (state := state_2330297) 1
    state_2330298 state_2331477
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2330298
  · exact cover_2331477
#print axioms cover_2330297

def state_2328497 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_2328497 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2328497 := by
  apply coveredState_split_literal (state := state_2328497) 0
    state_2328498 state_2330297
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2328498
  · exact cover_2330297
#print axioms cover_2328497

def state_2287149 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 1)))
theorem cover_2287149 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2287149 := by
  apply coveredState_split_literal (state := state_2287149) 4
    state_2287150 state_2328497
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2287150
  · exact cover_2328497
#print axioms cover_2287149

def state_2244399 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_2244399 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2244399 := by
  apply coveredState_split_literal (state := state_2244399) 3
    state_2244400 state_2287149
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2244400
  · exact cover_2287149
#print axioms cover_2244399

def state_2331755 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_2331755 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2331755 := by
  apply coveredState_split_literal (state := state_2331755) 2
    state_2331756 state_2331813
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2331756
  · exact cover_2331813
#print axioms cover_2331755

def state_2331754 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_2331754 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2331754 := by
  apply coveredState_split_literal (state := state_2331754) 1
    state_2331755 state_2331848
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2331755
  · exact cover_2331848
#print axioms cover_2331754

def state_2331744 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_2331744 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2331744 := by
  apply coveredState_split_literal (state := state_2331744) 0
    state_2331745 state_2331754
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2331745
  · exact cover_2331754
#print axioms cover_2331744

def state_2331910 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 7)))
theorem cover_2331910 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2331910 := by
  apply coveredState_split_literal (state := state_2331910) 1
    state_2331911 state_2331940
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2331911
  · exact cover_2331940
#print axioms cover_2331910
end Mub6.Numerical.CircleFullD0.Forest
