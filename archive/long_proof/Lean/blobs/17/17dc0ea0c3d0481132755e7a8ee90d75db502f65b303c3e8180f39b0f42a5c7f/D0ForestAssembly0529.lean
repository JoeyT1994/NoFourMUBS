import D0FullInterface
import D0ForestAssembly0528
import D0ForestChunk2085
import D0ForestChunk2086
import D0ForestChunk2087
import D0ForestChunk2088
import D0ForestChunk2089
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2581108 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 19) else (if j.val < 3 then 46 else (if j.val < 4 then 49 else 17)))
theorem cover_2581108 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2581108 := by
  apply coveredState_split_literal (state := state_2581108) 1
    state_2581109 state_2581114
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2581109
  · exact cover_2581114
#print axioms cover_2581108

def state_2581107 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 19) else (if j.val < 3 then 46 else (if j.val < 4 then 49 else 17)))
theorem cover_2581107 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2581107 := by
  apply coveredState_split_literal (state := state_2581107) 0
    state_2581108 state_2581175
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2581108
  · exact cover_2581175
#print axioms cover_2581107

def state_2581011 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 19) else (if j.val < 3 then 46 else (if j.val < 4 then 24 else 17)))
theorem cover_2581011 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2581011 := by
  apply coveredState_split_literal (state := state_2581011) 3
    state_2581012 state_2581107
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2581012
  · exact cover_2581107
#print axioms cover_2581011

def state_2581010 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 19) else (if j.val < 3 then 23 else (if j.val < 4 then 24 else 17)))
theorem cover_2581010 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2581010 := by
  apply coveredState_split_literal (state := state_2581010) 2
    state_2581011 state_2581180
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2581011
  · exact cover_2581180
#print axioms cover_2581010

def state_2580992 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 19) else (if j.val < 3 then 23 else (if j.val < 4 then 24 else 8)))
theorem cover_2580992 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2580992 := by
  apply coveredState_split_literal (state := state_2580992) 4
    state_2580993 state_2581010
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2580993
  · exact cover_2581010
#print axioms cover_2580992

def state_2580978 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 9) else (if j.val < 3 then 23 else (if j.val < 4 then 24 else 8)))
theorem cover_2580978 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2580978 := by
  apply coveredState_split_literal (state := state_2580978) 1
    state_2580979 state_2580992
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2580979
  · exact cover_2580992
#print axioms cover_2580978

def state_2580977 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 9) else (if j.val < 3 then 23 else (if j.val < 4 then 24 else 8)))
theorem cover_2580977 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2580977 := by
  apply coveredState_split_literal (state := state_2580977) 0
    state_2580978 state_2581223
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2580978
  · exact cover_2581223
#print axioms cover_2580977

def state_2580976 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 9) else (if j.val < 3 then 23 else (if j.val < 4 then 12 else 8)))
theorem cover_2580976 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2580976 := by
  apply coveredState_split_literal (state := state_2580976) 3
    state_2580977 state_2581224
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2580977
  · exact cover_2581224
#print axioms cover_2580976

def state_2580882 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 9) else (if j.val < 3 then 11 else (if j.val < 4 then 12 else 8)))
theorem cover_2580882 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2580882 := by
  apply coveredState_split_literal (state := state_2580882) 2
    state_2580883 state_2580976
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2580883
  · exact cover_2580976
#print axioms cover_2580882

def state_2581262 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 18) else (if j.val < 3 then 23 else (if j.val < 4 then 24 else 9)))
theorem cover_2581262 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2581262 := by
  apply coveredState_split_literal (state := state_2581262) 4
    state_2581263 state_2581300
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2581263
  · exact cover_2581300
#print axioms cover_2581262

def state_2581331 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 19) else (if j.val < 3 then 46 else (if j.val < 4 then 24 else 18)))
theorem cover_2581331 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2581331 := by
  apply coveredState_split_literal (state := state_2581331) 3
    state_2581332 state_2581391
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2581332
  · exact cover_2581391
#print axioms cover_2581331

def state_2581485 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 38) else (if j.val < 3 then 95 else (if j.val < 4 then 48 else 37)))
theorem cover_2581485 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2581485 := by
  apply coveredState_split_literal (state := state_2581485) 3
    state_2581486 state_2581549
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2581486
  · exact cover_2581549
#print axioms cover_2581485

def state_2581453 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 38) else (if j.val < 3 then 47 else (if j.val < 4 then 48 else 37)))
theorem cover_2581453 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2581453 := by
  apply coveredState_split_literal (state := state_2581453) 2
    state_2581454 state_2581485
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2581454
  · exact cover_2581485
#print axioms cover_2581453

def state_2581409 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 38) else (if j.val < 3 then 47 else (if j.val < 4 then 48 else 18)))
theorem cover_2581409 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2581409 := by
  apply coveredState_split_literal (state := state_2581409) 4
    state_2581410 state_2581453
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2581410
  · exact cover_2581453
#print axioms cover_2581409

def state_2581602 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 39) else (if j.val < 3 then 94 else (if j.val < 4 then 97 else 36)))
theorem cover_2581602 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2581602 := by
  apply coveredState_split_literal (state := state_2581602) 0
    state_2581603 state_2581658
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2581603
  · exact cover_2581658
#print axioms cover_2581602

def state_2581582 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 39) else (if j.val < 3 then 94 else (if j.val < 4 then 48 else 36)))
theorem cover_2581582 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2581582 := by
  apply coveredState_split_literal (state := state_2581582) 3
    state_2581583 state_2581602
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2581583
  · exact cover_2581602
#print axioms cover_2581582

def state_2581581 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 39) else (if j.val < 3 then 47 else (if j.val < 4 then 48 else 36)))
theorem cover_2581581 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2581581 := by
  apply coveredState_split_literal (state := state_2581581) 2
    state_2581582 state_2581671
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2581582
  · exact cover_2581671
#print axioms cover_2581581

def state_2581760 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 39) else (if j.val < 3 then 95 else (if j.val < 4 then 48 else 37)))
theorem cover_2581760 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2581760 := by
  apply coveredState_split_literal (state := state_2581760) 3
    state_2581761 state_2581780
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2581761
  · exact cover_2581780
#print axioms cover_2581760

def state_2581704 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 39) else (if j.val < 3 then 47 else (if j.val < 4 then 48 else 37)))
theorem cover_2581704 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2581704 := by
  apply coveredState_split_literal (state := state_2581704) 2
    state_2581705 state_2581760
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2581705
  · exact cover_2581760
#print axioms cover_2581704

def state_2581580 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 39) else (if j.val < 3 then 47 else (if j.val < 4 then 48 else 18)))
theorem cover_2581580 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2581580 := by
  apply coveredState_split_literal (state := state_2581580) 4
    state_2581581 state_2581704
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2581581
  · exact cover_2581704
#print axioms cover_2581580

def state_2581408 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 19) else (if j.val < 3 then 47 else (if j.val < 4 then 48 else 18)))
theorem cover_2581408 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2581408 := by
  apply coveredState_split_literal (state := state_2581408) 1
    state_2581409 state_2581580
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2581409
  · exact cover_2581580
#print axioms cover_2581408

def state_2581407 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 19) else (if j.val < 3 then 47 else (if j.val < 4 then 48 else 18)))
theorem cover_2581407 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2581407 := by
  apply coveredState_split_literal (state := state_2581407) 0
    state_2581408 state_2581835
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2581408
  · exact cover_2581835
#print axioms cover_2581407

def state_2581869 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 39) else (if j.val < 3 then 47 else (if j.val < 4 then 49 else 18)))
theorem cover_2581869 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2581869 := by
  apply coveredState_split_literal (state := state_2581869) 4
    state_2581870 state_2581909
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2581870
  · exact cover_2581909
#print axioms cover_2581869

def state_2581855 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 19) else (if j.val < 3 then 47 else (if j.val < 4 then 49 else 18)))
theorem cover_2581855 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2581855 := by
  apply coveredState_split_literal (state := state_2581855) 1
    state_2581856 state_2581869
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2581856
  · exact cover_2581869
#print axioms cover_2581855

def state_2581854 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 19) else (if j.val < 3 then 47 else (if j.val < 4 then 49 else 18)))
theorem cover_2581854 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2581854 := by
  apply coveredState_split_literal (state := state_2581854) 0
    state_2581855 state_2581942
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2581855
  · exact cover_2581942
#print axioms cover_2581854

def state_2581406 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 19) else (if j.val < 3 then 47 else (if j.val < 4 then 24 else 18)))
theorem cover_2581406 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2581406 := by
  apply coveredState_split_literal (state := state_2581406) 3
    state_2581407 state_2581854
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2581407
  · exact cover_2581854
#print axioms cover_2581406

def state_2581330 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 19) else (if j.val < 3 then 23 else (if j.val < 4 then 24 else 18)))
theorem cover_2581330 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2581330 := by
  apply coveredState_split_literal (state := state_2581330) 2
    state_2581331 state_2581406
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2581331
  · exact cover_2581406
#print axioms cover_2581330

def state_2581999 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 39) else (if j.val < 3 then 47 else (if j.val < 4 then 48 else 19)))
theorem cover_2581999 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2581999 := by
  apply coveredState_split_literal (state := state_2581999) 4
    state_2582000 state_2582053
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2582000
  · exact cover_2582053
#print axioms cover_2581999

def state_2581967 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 19) else (if j.val < 3 then 47 else (if j.val < 4 then 48 else 19)))
theorem cover_2581967 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2581967 := by
  apply coveredState_split_literal (state := state_2581967) 1
    state_2581968 state_2581999
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2581968
  · exact cover_2581999
#print axioms cover_2581967

def state_2581966 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 19) else (if j.val < 3 then 47 else (if j.val < 4 then 48 else 19)))
theorem cover_2581966 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2581966 := by
  apply coveredState_split_literal (state := state_2581966) 0
    state_2581967 state_2582066
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2581967
  · exact cover_2582066
#print axioms cover_2581966

def state_2581965 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 19) else (if j.val < 3 then 47 else (if j.val < 4 then 24 else 19)))
theorem cover_2581965 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2581965 := by
  apply coveredState_split_literal (state := state_2581965) 3
    state_2581966 state_2582071
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2581966
  · exact cover_2582071
#print axioms cover_2581965

def state_2581947 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 19) else (if j.val < 3 then 23 else (if j.val < 4 then 24 else 19)))
theorem cover_2581947 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2581947 := by
  apply coveredState_split_literal (state := state_2581947) 2
    state_2581948 state_2581965
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2581948
  · exact cover_2581965
#print axioms cover_2581947
end Mub6.Numerical.CircleFullD0.Forest
