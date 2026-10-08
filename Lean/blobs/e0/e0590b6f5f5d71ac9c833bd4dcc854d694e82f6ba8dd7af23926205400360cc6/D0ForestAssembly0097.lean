import D0FullInterface
import D0ForestAssembly0096
import D0ForestChunk0387
import D0ForestChunk0389
import D0ForestChunk0390
import D0ForestChunk0391
import D0ForestChunk0392
import D0ForestChunk0393
import D0ForestChunk0394
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1030587 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 50) else (if j.val < 3 then 51 else (if j.val < 4 then 37 else 61)))
theorem cover_1030587 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1030587 := by
  apply coveredState_split_literal (state := state_1030587) 0
    state_1030588 state_1030847
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1030588
  · exact cover_1030847
#print axioms cover_1030587

def state_1030553 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 50) else (if j.val < 3 then 51 else (if j.val < 4 then 37 else 30)))
theorem cover_1030553 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1030553 := by
  apply coveredState_split_literal (state := state_1030553) 4
    state_1030554 state_1030587
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1030554
  · exact cover_1030587
#print axioms cover_1030553

def state_1030409 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 50) else (if j.val < 3 then 51 else (if j.val < 4 then 18 else 30)))
theorem cover_1030409 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1030409 := by
  apply coveredState_split_literal (state := state_1030409) 3
    state_1030410 state_1030553
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1030410
  · exact cover_1030553
#print axioms cover_1030409

def state_1030375 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 50) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 30)))
theorem cover_1030375 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1030375 := by
  apply coveredState_split_literal (state := state_1030375) 2
    state_1030376 state_1030409
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1030376
  · exact cover_1030409
#print axioms cover_1030375

def state_1030998 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 51) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 30)))
theorem cover_1030998 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1030998 := by
  apply coveredState_split_literal (state := state_1030998) 2
    state_1030999 state_1031008
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1030999
  · exact cover_1031008
#print axioms cover_1030998

def state_1030374 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 30)))
theorem cover_1030374 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1030374 := by
  apply coveredState_split_literal (state := state_1030374) 1
    state_1030375 state_1030998
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1030375
  · exact cover_1030998
#print axioms cover_1030374

def state_1030268 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 30)))
theorem cover_1030268 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1030268 := by
  apply coveredState_split_literal (state := state_1030268) 0
    state_1030269 state_1030374
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1030269
  · exact cover_1030374
#print axioms cover_1030268

def state_1031072 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 31)))
theorem cover_1031072 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1031072 := by
  apply coveredState_split_literal (state := state_1031072) 1
    state_1031073 state_1031112
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1031073
  · exact cover_1031112
#print axioms cover_1031072

def state_1031196 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 50) else (if j.val < 3 then 51 else (if j.val < 4 then 36 else 62)))
theorem cover_1031196 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1031196 := by
  apply coveredState_split_literal (state := state_1031196) 0
    state_1031197 state_1031240
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1031197
  · exact cover_1031240
#print axioms cover_1031196

def state_1031195 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 50) else (if j.val < 3 then 51 else (if j.val < 4 then 36 else 31)))
theorem cover_1031195 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1031195 := by
  apply coveredState_split_literal (state := state_1031195) 4
    state_1031196 state_1031287
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1031196
  · exact cover_1031287
#print axioms cover_1031195

def state_1031422 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 189 else 101) else (if j.val < 3 then 103 else (if j.val < 4 then 74 else 124)))
theorem cover_1031422 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1031422 := by
  apply coveredState_split_literal (state := state_1031422) 1
    state_1031423 state_1031466
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1031423
  · exact cover_1031466
#print axioms cover_1031422

def state_1031408 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 101) else (if j.val < 3 then 103 else (if j.val < 4 then 74 else 124)))
theorem cover_1031408 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1031408 := by
  apply coveredState_split_literal (state := state_1031408) 0
    state_1031409 state_1031422
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1031409
  · exact cover_1031422
#print axioms cover_1031408

def state_1031407 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 101) else (if j.val < 3 then 103 else (if j.val < 4 then 74 else 62)))
theorem cover_1031407 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1031407 := by
  apply coveredState_split_literal (state := state_1031407) 4
    state_1031408 state_1031497
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1031408
  · exact cover_1031497
#print axioms cover_1031407

def state_1031406 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 101) else (if j.val < 3 then 103 else (if j.val < 4 then 37 else 62)))
theorem cover_1031406 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1031406 := by
  apply coveredState_split_literal (state := state_1031406) 3
    state_1031407 state_1031516
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1031407
  · exact cover_1031516
#print axioms cover_1031406

def state_1031368 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 101) else (if j.val < 3 then 51 else (if j.val < 4 then 37 else 62)))
theorem cover_1031368 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1031368 := by
  apply coveredState_split_literal (state := state_1031368) 2
    state_1031369 state_1031406
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1031369
  · exact cover_1031406
#print axioms cover_1031368

def state_1031312 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 50) else (if j.val < 3 then 51 else (if j.val < 4 then 37 else 62)))
theorem cover_1031312 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1031312 := by
  apply coveredState_split_literal (state := state_1031312) 1
    state_1031313 state_1031368
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1031313
  · exact cover_1031368
#print axioms cover_1031312

def state_1031610 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 101) else (if j.val < 3 then 102 else (if j.val < 4 then 37 else 62)))
theorem cover_1031610 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1031610 := by
  apply coveredState_split_literal (state := state_1031610) 3
    state_1031611 state_1031652
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1031611
  · exact cover_1031652
#print axioms cover_1031610

def state_1031678 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 101) else (if j.val < 3 then 103 else (if j.val < 4 then 74 else 124)))
theorem cover_1031678 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1031678 := by
  apply coveredState_split_literal (state := state_1031678) 1
    state_1031679 state_1031728
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1031679
  · exact cover_1031728
#print axioms cover_1031678

def state_1031677 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 101) else (if j.val < 3 then 103 else (if j.val < 4 then 74 else 124)))
theorem cover_1031677 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1031677 := by
  apply coveredState_split_literal (state := state_1031677) 0
    state_1031678 state_1031757
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1031678
  · exact cover_1031757
#print axioms cover_1031677

def state_1031765 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 101) else (if j.val < 3 then 103 else (if j.val < 4 then 74 else 125)))
theorem cover_1031765 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1031765 := by
  apply coveredState_split_literal (state := state_1031765) 1
    state_1031766 state_1031773
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1031766
  · exact cover_1031773
#print axioms cover_1031765

def state_1031764 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 101) else (if j.val < 3 then 103 else (if j.val < 4 then 74 else 125)))
theorem cover_1031764 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1031764 := by
  apply coveredState_split_literal (state := state_1031764) 0
    state_1031765 state_1031836
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1031765
  · exact cover_1031836
#print axioms cover_1031764

def state_1031676 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 101) else (if j.val < 3 then 103 else (if j.val < 4 then 74 else 62)))
theorem cover_1031676 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1031676 := by
  apply coveredState_split_literal (state := state_1031676) 4
    state_1031677 state_1031764
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1031677
  · exact cover_1031764
#print axioms cover_1031676

def state_1031905 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 203) else (if j.val < 3 then 103 else (if j.val < 4 then 75 else 124)))
theorem cover_1031905 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1031905 := by
  apply coveredState_split_literal (state := state_1031905) 2
    state_1031906 state_1031929
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1031906
  · exact cover_1031929
#print axioms cover_1031905

def state_1031849 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 101) else (if j.val < 3 then 103 else (if j.val < 4 then 75 else 124)))
theorem cover_1031849 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1031849 := by
  apply coveredState_split_literal (state := state_1031849) 1
    state_1031850 state_1031905
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1031850
  · exact cover_1031905
#print axioms cover_1031849

def state_1031848 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 101) else (if j.val < 3 then 103 else (if j.val < 4 then 75 else 124)))
theorem cover_1031848 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1031848 := by
  apply coveredState_split_literal (state := state_1031848) 0
    state_1031849 state_1031990
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1031849
  · exact cover_1031990
#print axioms cover_1031848

def state_1032070 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 203) else (if j.val < 3 then 207 else (if j.val < 4 then 75 else 125)))
theorem cover_1032070 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1032070 := by
  apply coveredState_split_literal (state := state_1032070) 3
    state_1032071 state_1032134
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1032071
  · exact cover_1032134
#print axioms cover_1032070

def state_1032022 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 203) else (if j.val < 3 then 103 else (if j.val < 4 then 75 else 125)))
theorem cover_1032022 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1032022 := by
  apply coveredState_split_literal (state := state_1032022) 2
    state_1032023 state_1032070
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1032023
  · exact cover_1032070
#print axioms cover_1032022

def state_1032016 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 101) else (if j.val < 3 then 103 else (if j.val < 4 then 75 else 125)))
theorem cover_1032016 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1032016 := by
  apply coveredState_split_literal (state := state_1032016) 1
    state_1032017 state_1032022
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1032017
  · exact cover_1032022
#print axioms cover_1032016

def state_1032015 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 101) else (if j.val < 3 then 103 else (if j.val < 4 then 75 else 125)))
theorem cover_1032015 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1032015 := by
  apply coveredState_split_literal (state := state_1032015) 0
    state_1032016 state_1032175
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1032016
  · exact cover_1032175
#print axioms cover_1032015

def state_1031847 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 101) else (if j.val < 3 then 103 else (if j.val < 4 then 75 else 62)))
theorem cover_1031847 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1031847 := by
  apply coveredState_split_literal (state := state_1031847) 4
    state_1031848 state_1032015
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1031848
  · exact cover_1032015
#print axioms cover_1031847

def state_1031675 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 101) else (if j.val < 3 then 103 else (if j.val < 4 then 37 else 62)))
theorem cover_1031675 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1031675 := by
  apply coveredState_split_literal (state := state_1031675) 3
    state_1031676 state_1031847
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1031676
  · exact cover_1031847
#print axioms cover_1031675

def state_1031609 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 101) else (if j.val < 3 then 51 else (if j.val < 4 then 37 else 62)))
theorem cover_1031609 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1031609 := by
  apply coveredState_split_literal (state := state_1031609) 2
    state_1031610 state_1031675
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1031610
  · exact cover_1031675
#print axioms cover_1031609
end Mub6.Numerical.CircleFullD0.Forest
