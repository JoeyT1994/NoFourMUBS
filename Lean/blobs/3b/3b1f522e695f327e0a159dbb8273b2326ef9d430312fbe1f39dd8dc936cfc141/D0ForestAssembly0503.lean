import D0FullInterface
import D0ForestAssembly0501
import D0ForestAssembly0502
import D0ForestChunk1977
import D0ForestChunk1978
import D0ForestChunk1979
import D0ForestChunk1980
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2553784 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 6)))
theorem cover_2553784 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2553784 := by
  apply coveredState_split_literal (state := state_2553784) 4
    state_2553785 state_2555162
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2553785
  · exact cover_2555162
#print axioms cover_2553784

def state_2553714 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 6)))
theorem cover_2553714 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2553714 := by
  apply coveredState_split_literal (state := state_2553714) 2
    state_2553715 state_2553784
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2553715
  · exact cover_2553784
#print axioms cover_2553714

def state_2553632 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 6)))
theorem cover_2553632 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2553632 := by
  apply coveredState_split_literal (state := state_2553632) 1
    state_2553633 state_2553714
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2553633
  · exact cover_2553714
#print axioms cover_2553632

def state_2555251 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 12)))
theorem cover_2555251 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2555251 := by
  apply coveredState_split_literal (state := state_2555251) 4
    state_2555252 state_2555301
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2555252
  · exact cover_2555301
#print axioms cover_2555251

def state_2555323 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 27 else (if j.val < 4 then 14 else 24)))
theorem cover_2555323 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2555323 := by
  apply coveredState_split_literal (state := state_2555323) 3
    state_2555324 state_2555341
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2555324
  · exact cover_2555341
#print axioms cover_2555323

def state_2555321 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 24)))
theorem cover_2555321 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2555321 := by
  apply coveredState_split_literal (state := state_2555321) 2
    state_2555322 state_2555323
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2555322
  · exact cover_2555323
#print axioms cover_2555321

def state_2555320 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 12)))
theorem cover_2555320 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2555320 := by
  apply coveredState_split_literal (state := state_2555320) 4
    state_2555321 state_2555396
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2555321
  · exact cover_2555396
#print axioms cover_2555320

def state_2555250 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 12)))
theorem cover_2555250 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2555250 := by
  apply coveredState_split_literal (state := state_2555250) 1
    state_2555251 state_2555320
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2555251
  · exact cover_2555320
#print axioms cover_2555250

def state_2555249 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 12)))
theorem cover_2555249 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2555249 := by
  apply coveredState_split_literal (state := state_2555249) 0
    state_2555250 state_2555397
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2555250
  · exact cover_2555397
#print axioms cover_2555249

def state_2555438 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 27 else (if j.val < 4 then 15 else 25)))
theorem cover_2555438 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2555438 := by
  apply coveredState_split_literal (state := state_2555438) 3
    state_2555439 state_2555468
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2555439
  · exact cover_2555468
#print axioms cover_2555438

def state_2555436 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 25)))
theorem cover_2555436 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2555436 := by
  apply coveredState_split_literal (state := state_2555436) 2
    state_2555437 state_2555438
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2555437
  · exact cover_2555438
#print axioms cover_2555436

def state_2555416 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 12)))
theorem cover_2555416 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2555416 := by
  apply coveredState_split_literal (state := state_2555416) 4
    state_2555417 state_2555436
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2555417
  · exact cover_2555436
#print axioms cover_2555416

def state_2555564 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 27 else (if j.val < 4 then 30 else 25)))
theorem cover_2555564 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2555564 := by
  apply coveredState_split_literal (state := state_2555564) 1
    state_2555565 state_2555616
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2555565
  · exact cover_2555616
#print axioms cover_2555564

def state_2555644 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 46) else (if j.val < 3 then 55 else (if j.val < 4 then 31 else 50)))
theorem cover_2555644 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2555644 := by
  apply coveredState_split_literal (state := state_2555644) 3
    state_2555645 state_2555694
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2555645
  · exact cover_2555694
#print axioms cover_2555644

def state_2555642 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 46) else (if j.val < 3 then 27 else (if j.val < 4 then 31 else 50)))
theorem cover_2555642 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2555642 := by
  apply coveredState_split_literal (state := state_2555642) 2
    state_2555643 state_2555644
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2555643
  · exact cover_2555644
#print axioms cover_2555642

def state_2555641 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 46) else (if j.val < 3 then 27 else (if j.val < 4 then 31 else 25)))
theorem cover_2555641 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2555641 := by
  apply coveredState_split_literal (state := state_2555641) 4
    state_2555642 state_2555737
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2555642
  · exact cover_2555737
#print axioms cover_2555641

def state_2555640 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 46) else (if j.val < 3 then 27 else (if j.val < 4 then 31 else 25)))
theorem cover_2555640 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2555640 := by
  apply coveredState_split_literal (state := state_2555640) 0
    state_2555641 state_2555774
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2555641
  · exact cover_2555774
#print axioms cover_2555640

def state_2555639 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 27 else (if j.val < 4 then 31 else 25)))
theorem cover_2555639 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2555639 := by
  apply coveredState_split_literal (state := state_2555639) 1
    state_2555640 state_2555777
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2555640
  · exact cover_2555777
#print axioms cover_2555639

def state_2555563 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 27 else (if j.val < 4 then 15 else 25)))
theorem cover_2555563 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2555563 := by
  apply coveredState_split_literal (state := state_2555563) 3
    state_2555564 state_2555639
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2555564
  · exact cover_2555639
#print axioms cover_2555563

def state_2555561 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 25)))
theorem cover_2555561 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2555561 := by
  apply coveredState_split_literal (state := state_2555561) 2
    state_2555562 state_2555563
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2555562
  · exact cover_2555563
#print axioms cover_2555561

def state_2555513 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 12)))
theorem cover_2555513 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2555513 := by
  apply coveredState_split_literal (state := state_2555513) 4
    state_2555514 state_2555561
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2555514
  · exact cover_2555561
#print axioms cover_2555513

def state_2555415 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 12)))
theorem cover_2555415 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2555415 := by
  apply coveredState_split_literal (state := state_2555415) 1
    state_2555416 state_2555513
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2555416
  · exact cover_2555513
#print axioms cover_2555415

def state_2555414 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 12)))
theorem cover_2555414 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2555414 := by
  apply coveredState_split_literal (state := state_2555414) 0
    state_2555415 state_2555818
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2555415
  · exact cover_2555818
#print axioms cover_2555414

def state_2555248 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 12)))
theorem cover_2555248 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2555248 := by
  apply coveredState_split_literal (state := state_2555248) 3
    state_2555249 state_2555414
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2555249
  · exact cover_2555414
#print axioms cover_2555248

def state_2555247 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 6)))
theorem cover_2555247 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2555247 := by
  apply coveredState_split_literal (state := state_2555247) 4
    state_2555248 state_2555829
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2555248
  · exact cover_2555829
#print axioms cover_2555247

def state_2555241 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 6)))
theorem cover_2555241 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2555241 := by
  apply coveredState_split_literal (state := state_2555241) 2
    state_2555242 state_2555247
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2555242
  · exact cover_2555247
#print axioms cover_2555241

def state_2555191 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 6)))
theorem cover_2555191 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2555191 := by
  apply coveredState_split_literal (state := state_2555191) 1
    state_2555192 state_2555241
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2555192
  · exact cover_2555241
#print axioms cover_2555191

def state_2553631 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 6)))
theorem cover_2553631 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2553631 := by
  apply coveredState_split_literal (state := state_2553631) 0
    state_2553632 state_2555191
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2553632
  · exact cover_2555191
#print axioms cover_2553631

def state_2553630 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 3)))
theorem cover_2553630 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2553630 := by
  apply coveredState_split_literal (state := state_2553630) 4
    state_2553631 state_2555844
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2553631
  · exact cover_2555844
#print axioms cover_2553630

def state_2553490 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 3)))
theorem cover_2553490 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2553490 := by
  apply coveredState_split_literal (state := state_2553490) 3
    state_2553491 state_2553630
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2553491
  · exact cover_2553630
#print axioms cover_2553490

def state_2555853 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 6)))
theorem cover_2555853 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2555853 := by
  apply coveredState_split_literal (state := state_2555853) 0
    state_2555854 state_2555913
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2555854
  · exact cover_2555913
#print axioms cover_2555853

def state_2555852 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 3)))
theorem cover_2555852 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2555852 := by
  apply coveredState_split_literal (state := state_2555852) 4
    state_2555853 state_2555976
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2555853
  · exact cover_2555976
#print axioms cover_2555852
end Mub6.Numerical.CircleFullD0.Forest
