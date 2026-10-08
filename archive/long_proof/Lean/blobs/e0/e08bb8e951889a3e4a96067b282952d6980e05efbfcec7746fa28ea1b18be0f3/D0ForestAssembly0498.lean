import D0FullInterface
import D0ForestAssembly0497
import D0ForestChunk1958
import D0ForestChunk1959
import D0ForestChunk1960
import D0ForestChunk1961
import D0ForestChunk1962
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2550554 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 22) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 11)))
theorem cover_2550554 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2550554 := by
  apply coveredState_split_literal (state := state_2550554) 4
    state_2550555 state_2550574
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2550555
  · exact cover_2550574
#print axioms cover_2550554

def state_2550747 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 46) else (if j.val < 3 then 27 else (if j.val < 4 then 28 else 23)))
theorem cover_2550747 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2550747 := by
  apply coveredState_split_literal (state := state_2550747) 4
    state_2550748 state_2550769
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2550748
  · exact cover_2550769
#print axioms cover_2550747

def state_2550746 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 23) else (if j.val < 3 then 27 else (if j.val < 4 then 28 else 23)))
theorem cover_2550746 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2550746 := by
  apply coveredState_split_literal (state := state_2550746) 1
    state_2550747 state_2550816
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2550747
  · exact cover_2550816
#print axioms cover_2550746

def state_2550745 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 23) else (if j.val < 3 then 27 else (if j.val < 4 then 14 else 23)))
theorem cover_2550745 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2550745 := by
  apply coveredState_split_literal (state := state_2550745) 3
    state_2550746 state_2550837
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2550746
  · exact cover_2550837
#print axioms cover_2550745

def state_2550741 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 23) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 23)))
theorem cover_2550741 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2550741 := by
  apply coveredState_split_literal (state := state_2550741) 2
    state_2550742 state_2550745
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2550742
  · exact cover_2550745
#print axioms cover_2550741

def state_2550707 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 23) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 23)))
theorem cover_2550707 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2550707 := by
  apply coveredState_split_literal (state := state_2550707) 0
    state_2550708 state_2550741
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2550708
  · exact cover_2550741
#print axioms cover_2550707

def state_2550677 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 23) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 11)))
theorem cover_2550677 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2550677 := by
  apply coveredState_split_literal (state := state_2550677) 4
    state_2550678 state_2550707
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2550678
  · exact cover_2550707
#print axioms cover_2550677

def state_2550553 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 11)))
theorem cover_2550553 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2550553 := by
  apply coveredState_split_literal (state := state_2550553) 1
    state_2550554 state_2550677
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2550554
  · exact cover_2550677
#print axioms cover_2550553

def state_2550880 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 11)))
theorem cover_2550880 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2550880 := by
  apply coveredState_split_literal (state := state_2550880) 1
    state_2550881 state_2550906
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2550881
  · exact cover_2550906
#print axioms cover_2550880

def state_2550552 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 11)))
theorem cover_2550552 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2550552 := by
  apply coveredState_split_literal (state := state_2550552) 3
    state_2550553 state_2550880
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2550553
  · exact cover_2550880
#print axioms cover_2550552

def state_2550536 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 5)))
theorem cover_2550536 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2550536 := by
  apply coveredState_split_literal (state := state_2550536) 4
    state_2550537 state_2550552
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2550537
  · exact cover_2550552
#print axioms cover_2550536

def state_2550498 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 5)))
theorem cover_2550498 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2550498 := by
  apply coveredState_split_literal (state := state_2550498) 2
    state_2550499 state_2550536
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2550499
  · exact cover_2550536
#print axioms cover_2550498

def state_2550448 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 5)))
theorem cover_2550448 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2550448 := by
  apply coveredState_split_literal (state := state_2550448) 1
    state_2550449 state_2550498
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2550449
  · exact cover_2550498
#print axioms cover_2550448

def state_2550955 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 11)))
theorem cover_2550955 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2550955 := by
  apply coveredState_split_literal (state := state_2550955) 3
    state_2550956 state_2551011
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2550956
  · exact cover_2551011
#print axioms cover_2550955

def state_2550953 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 5)))
theorem cover_2550953 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2550953 := by
  apply coveredState_split_literal (state := state_2550953) 4
    state_2550954 state_2550955
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2550954
  · exact cover_2550955
#print axioms cover_2550953

def state_2550947 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 5)))
theorem cover_2550947 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2550947 := by
  apply coveredState_split_literal (state := state_2550947) 2
    state_2550948 state_2550953
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2550948
  · exact cover_2550953
#print axioms cover_2550947

def state_2550945 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 5)))
theorem cover_2550945 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2550945 := by
  apply coveredState_split_literal (state := state_2550945) 1
    state_2550946 state_2550947
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2550946
  · exact cover_2550947
#print axioms cover_2550945

def state_2550447 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 5)))
theorem cover_2550447 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2550447 := by
  apply coveredState_split_literal (state := state_2550447) 0
    state_2550448 state_2550945
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2550448
  · exact cover_2550945
#print axioms cover_2550447

def state_2550445 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 2)))
theorem cover_2550445 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2550445 := by
  apply coveredState_split_literal (state := state_2550445) 4
    state_2550446 state_2550447
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2550446
  · exact cover_2550447
#print axioms cover_2550445

def state_2549819 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 2)))
theorem cover_2549819 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2549819 := by
  apply coveredState_split_literal (state := state_2549819) 3
    state_2549820 state_2550445
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2549820
  · exact cover_2550445
#print axioms cover_2549819

def state_2551178 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 23) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 22)))
theorem cover_2551178 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2551178 := by
  apply coveredState_split_literal (state := state_2551178) 0
    state_2551179 state_2551218
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2551179
  · exact cover_2551218
#print axioms cover_2551178

def state_2551318 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 23) else (if j.val < 3 then 28 else (if j.val < 4 then 27 else 23)))
theorem cover_2551318 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2551318 := by
  apply coveredState_split_literal (state := state_2551318) 1
    state_2551319 state_2551346
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2551319
  · exact cover_2551346
#print axioms cover_2551318

def state_2551317 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 23) else (if j.val < 3 then 14 else (if j.val < 4 then 27 else 23)))
theorem cover_2551317 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2551317 := by
  apply coveredState_split_literal (state := state_2551317) 2
    state_2551318 state_2551409
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2551318
  · exact cover_2551409
#print axioms cover_2551317

def state_2551313 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 23) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 23)))
theorem cover_2551313 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2551313 := by
  apply coveredState_split_literal (state := state_2551313) 3
    state_2551314 state_2551317
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2551314
  · exact cover_2551317
#print axioms cover_2551313

def state_2551281 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 23) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 23)))
theorem cover_2551281 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2551281 := by
  apply coveredState_split_literal (state := state_2551281) 0
    state_2551282 state_2551313
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2551282
  · exact cover_2551313
#print axioms cover_2551281

def state_2551177 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 23) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 11)))
theorem cover_2551177 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2551177 := by
  apply coveredState_split_literal (state := state_2551177) 4
    state_2551178 state_2551281
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2551178
  · exact cover_2551281
#print axioms cover_2551177

def state_2551127 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 11)))
theorem cover_2551127 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2551127 := by
  apply coveredState_split_literal (state := state_2551127) 1
    state_2551128 state_2551177
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2551128
  · exact cover_2551177
#print axioms cover_2551127

def state_2551452 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 11)))
theorem cover_2551452 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2551452 := by
  apply coveredState_split_literal (state := state_2551452) 1
    state_2551453 state_2551462
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2551453
  · exact cover_2551462
#print axioms cover_2551452

def state_2551126 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 7 else (if j.val < 4 then 13 else 11)))
theorem cover_2551126 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2551126 := by
  apply coveredState_split_literal (state := state_2551126) 2
    state_2551127 state_2551452
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2551127
  · exact cover_2551452
#print axioms cover_2551126

def state_2551092 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 7 else (if j.val < 4 then 13 else 5)))
theorem cover_2551092 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2551092 := by
  apply coveredState_split_literal (state := state_2551092) 4
    state_2551093 state_2551126
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2551093
  · exact cover_2551126
#print axioms cover_2551092

def state_2551062 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 5)))
theorem cover_2551062 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2551062 := by
  apply coveredState_split_literal (state := state_2551062) 3
    state_2551063 state_2551092
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2551063
  · exact cover_2551092
#print axioms cover_2551062

def state_2551028 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 5)))
theorem cover_2551028 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2551028 := by
  apply coveredState_split_literal (state := state_2551028) 1
    state_2551029 state_2551062
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2551029
  · exact cover_2551062
#print axioms cover_2551028
end Mub6.Numerical.CircleFullD0.Forest
