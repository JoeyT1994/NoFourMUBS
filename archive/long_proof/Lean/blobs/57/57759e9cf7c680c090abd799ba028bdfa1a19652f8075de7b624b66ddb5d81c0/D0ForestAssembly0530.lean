import D0FullInterface
import D0ForestAssembly0528
import D0ForestAssembly0529
import D0ForestChunk2067
import D0ForestChunk2084
import D0ForestChunk2086
import D0ForestChunk2090
import D0ForestChunk2091
import D0ForestChunk2092
import D0ForestChunk2093
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2581329 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 19) else (if j.val < 3 then 23 else (if j.val < 4 then 24 else 9)))
theorem cover_2581329 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2581329 := by
  apply coveredState_split_literal (state := state_2581329) 4
    state_2581330 state_2581947
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2581330
  · exact cover_2581947
#print axioms cover_2581329

def state_2581261 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 9) else (if j.val < 3 then 23 else (if j.val < 4 then 24 else 9)))
theorem cover_2581261 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2581261 := by
  apply coveredState_split_literal (state := state_2581261) 1
    state_2581262 state_2581329
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2581262
  · exact cover_2581329
#print axioms cover_2581261

def state_2581260 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 9) else (if j.val < 3 then 23 else (if j.val < 4 then 24 else 9)))
theorem cover_2581260 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2581260 := by
  apply coveredState_split_literal (state := state_2581260) 0
    state_2581261 state_2582090
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2581261
  · exact cover_2582090
#print axioms cover_2581260

def state_2581259 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 9) else (if j.val < 3 then 23 else (if j.val < 4 then 12 else 9)))
theorem cover_2581259 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2581259 := by
  apply coveredState_split_literal (state := state_2581259) 3
    state_2581260 state_2582101
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2581260
  · exact cover_2582101
#print axioms cover_2581259

def state_2581241 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 9) else (if j.val < 3 then 11 else (if j.val < 4 then 12 else 9)))
theorem cover_2581241 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2581241 := by
  apply coveredState_split_literal (state := state_2581241) 2
    state_2581242 state_2581259
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2581242
  · exact cover_2581259
#print axioms cover_2581241

def state_2580881 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 9) else (if j.val < 3 then 11 else (if j.val < 4 then 12 else 4)))
theorem cover_2580881 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2580881 := by
  apply coveredState_split_literal (state := state_2580881) 4
    state_2580882 state_2581241
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2580882
  · exact cover_2581241
#print axioms cover_2580881

def state_2580867 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 11 else (if j.val < 4 then 12 else 4)))
theorem cover_2580867 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2580867 := by
  apply coveredState_split_literal (state := state_2580867) 1
    state_2580868 state_2580881
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2580868
  · exact cover_2580881
#print axioms cover_2580867

def state_2580866 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 11 else (if j.val < 4 then 6 else 4)))
theorem cover_2580866 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2580866 := by
  apply coveredState_split_literal (state := state_2580866) 3
    state_2580867 state_2582122
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2580867
  · exact cover_2582122
#print axioms cover_2580866

def state_2580856 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 4)))
theorem cover_2580856 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2580856 := by
  apply coveredState_split_literal (state := state_2580856) 2
    state_2580857 state_2580866
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2580857
  · exact cover_2580866
#print axioms cover_2580856

def state_2576638 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 4)))
theorem cover_2576638 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2576638 := by
  apply coveredState_split_literal (state := state_2576638) 0
    state_2576639 state_2580856
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2576639
  · exact cover_2580856
#print axioms cover_2576638

def state_2582134 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 5)))
theorem cover_2582134 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2582134 := by
  apply coveredState_split_literal (state := state_2582134) 2
    state_2582135 state_2582144
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2582135
  · exact cover_2582144
#print axioms cover_2582134

def state_2582133 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 5)))
theorem cover_2582133 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2582133 := by
  apply coveredState_split_literal (state := state_2582133) 0
    state_2582134 state_2582201
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2582134
  · exact cover_2582201
#print axioms cover_2582133

def state_2576637 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 2)))
theorem cover_2576637 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2576637 := by
  apply coveredState_split_literal (state := state_2576637) 4
    state_2576638 state_2582133
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2576638
  · exact cover_2582133
#print axioms cover_2576637

def state_2576636 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 2)))
theorem cover_2576636 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2576636 := by
  apply coveredState_split_literal (state := state_2576636) 3
    state_2576637 state_2582260
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2576637
  · exact cover_2582260
#print axioms cover_2576636

def state_2576618 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_2576618 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2576618 := by
  apply coveredState_split_literal (state := state_2576618) 2
    state_2576619 state_2576636
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2576619
  · exact cover_2576636
#print axioms cover_2576618

def state_2582420 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 40) else (if j.val < 3 then 45 else (if j.val < 4 then 49 else 16)))
theorem cover_2582420 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2582420 := by
  apply coveredState_split_literal (state := state_2582420) 4
    state_2582421 state_2582464
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2582421
  · exact cover_2582464
#print axioms cover_2582420

def state_2582419 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 20) else (if j.val < 3 then 45 else (if j.val < 4 then 49 else 16)))
theorem cover_2582419 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2582419 := by
  apply coveredState_split_literal (state := state_2582419) 1
    state_2582420 state_2582513
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2582420
  · exact cover_2582513
#print axioms cover_2582419

def state_2582381 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 20) else (if j.val < 3 then 22 else (if j.val < 4 then 49 else 16)))
theorem cover_2582381 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2582381 := by
  apply coveredState_split_literal (state := state_2582381) 2
    state_2582382 state_2582419
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2582382
  · exact cover_2582419
#print axioms cover_2582381

def state_2582377 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 20) else (if j.val < 3 then 22 else (if j.val < 4 then 49 else 16)))
theorem cover_2582377 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2582377 := by
  apply coveredState_split_literal (state := state_2582377) 0
    state_2582378 state_2582381
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2582378
  · exact cover_2582381
#print axioms cover_2582377

def state_2582335 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 20) else (if j.val < 3 then 22 else (if j.val < 4 then 24 else 16)))
theorem cover_2582335 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2582335 := by
  apply coveredState_split_literal (state := state_2582335) 3
    state_2582336 state_2582377
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2582336
  · exact cover_2582377
#print axioms cover_2582335

def state_2582514 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 20) else (if j.val < 3 then 22 else (if j.val < 4 then 24 else 17)))
theorem cover_2582514 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2582514 := by
  apply coveredState_split_literal (state := state_2582514) 3
    state_2582515 state_2582538
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2582515
  · exact cover_2582538
#print axioms cover_2582514

def state_2582334 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 20) else (if j.val < 3 then 22 else (if j.val < 4 then 24 else 8)))
theorem cover_2582334 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2582334 := by
  apply coveredState_split_literal (state := state_2582334) 4
    state_2582335 state_2582514
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2582335
  · exact cover_2582514
#print axioms cover_2582334

def state_2582333 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 10) else (if j.val < 3 then 22 else (if j.val < 4 then 24 else 8)))
theorem cover_2582333 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2582333 := by
  apply coveredState_split_literal (state := state_2582333) 1
    state_2582334 state_2582589
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2582334
  · exact cover_2582589
#print axioms cover_2582333

def state_2582591 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 20) else (if j.val < 3 then 22 else (if j.val < 4 then 25 else 8)))
theorem cover_2582591 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2582591 := by
  apply coveredState_split_literal (state := state_2582591) 4
    state_2582592 state_2582635
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2582592
  · exact cover_2582635
#print axioms cover_2582591

def state_2582590 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 10) else (if j.val < 3 then 22 else (if j.val < 4 then 25 else 8)))
theorem cover_2582590 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2582590 := by
  apply coveredState_split_literal (state := state_2582590) 1
    state_2582591 state_2582662
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2582591
  · exact cover_2582662
#print axioms cover_2582590

def state_2582332 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 10) else (if j.val < 3 then 22 else (if j.val < 4 then 12 else 8)))
theorem cover_2582332 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2582332 := by
  apply coveredState_split_literal (state := state_2582332) 3
    state_2582333 state_2582590
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2582333
  · exact cover_2582590
#print axioms cover_2582332

def state_2582663 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 10) else (if j.val < 3 then 23 else (if j.val < 4 then 12 else 8)))
theorem cover_2582663 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2582663 := by
  apply coveredState_split_literal (state := state_2582663) 3
    state_2582664 state_2582711
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2582664
  · exact cover_2582711
#print axioms cover_2582663

def state_2582331 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 12 else 8)))
theorem cover_2582331 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2582331 := by
  apply coveredState_split_literal (state := state_2582331) 2
    state_2582332 state_2582663
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2582332
  · exact cover_2582663
#print axioms cover_2582331

def state_2582321 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 12 else 8)))
theorem cover_2582321 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2582321 := by
  apply coveredState_split_literal (state := state_2582321) 0
    state_2582322 state_2582331
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2582322
  · exact cover_2582331
#print axioms cover_2582321

def state_2582770 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 20) else (if j.val < 3 then 23 else (if j.val < 4 then 24 else 9)))
theorem cover_2582770 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2582770 := by
  apply coveredState_split_literal (state := state_2582770) 4
    state_2582771 state_2582826
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2582771
  · exact cover_2582826
#print axioms cover_2582770

def state_2582769 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 10) else (if j.val < 3 then 23 else (if j.val < 4 then 24 else 9)))
theorem cover_2582769 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2582769 := by
  apply coveredState_split_literal (state := state_2582769) 1
    state_2582770 state_2582843
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2582770
  · exact cover_2582843
#print axioms cover_2582769

def state_2582768 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 10) else (if j.val < 3 then 23 else (if j.val < 4 then 12 else 9)))
theorem cover_2582768 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2582768 := by
  apply coveredState_split_literal (state := state_2582768) 3
    state_2582769 state_2582844
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2582769
  · exact cover_2582844
#print axioms cover_2582768
end Mub6.Numerical.CircleFullD0.Forest
