import D0FullInterface
import D0ForestAssembly0007
import D0ForestAssembly0008
import D0ForestChunk0034
import D0ForestChunk0039
import D0ForestChunk0041
import D0ForestChunk0042
import D0ForestChunk0043
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_947011 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 42) else (if j.val < 3 then 51 else (if j.val < 4 then 35 else 53)))
theorem cover_947011 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_947011 := by
  apply coveredState_split_literal (state := state_947011) 2
    state_947012 state_947061
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_947012
  · exact cover_947061
#print axioms cover_947011

def state_946921 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 42) else (if j.val < 3 then 51 else (if j.val < 4 then 35 else 53)))
theorem cover_946921 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_946921 := by
  apply coveredState_split_literal (state := state_946921) 0
    state_946922 state_947011
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_946922
  · exact cover_947011
#print axioms cover_946921

def state_945825 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 42) else (if j.val < 3 then 51 else (if j.val < 4 then 17 else 53)))
theorem cover_945825 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_945825 := by
  apply coveredState_split_literal (state := state_945825) 3
    state_945826 state_946921
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_945826
  · exact cover_946921
#print axioms cover_945825

def state_945769 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 42) else (if j.val < 3 then 51 else (if j.val < 4 then 17 else 26)))
theorem cover_945769 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_945769 := by
  apply coveredState_split_literal (state := state_945769) 4
    state_945770 state_945825
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_945770
  · exact cover_945825
#print axioms cover_945769

def state_947340 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 43) else (if j.val < 3 then 51 else (if j.val < 4 then 34 else 53)))
theorem cover_947340 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_947340 := by
  apply coveredState_split_literal (state := state_947340) 2
    state_947341 state_947384
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_947341
  · exact cover_947384
#print axioms cover_947340

def state_947437 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 86) else (if j.val < 3 then 102 else (if j.val < 4 then 69 else 107)))
theorem cover_947437 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_947437 := by
  apply coveredState_split_literal (state := state_947437) 0
    state_947438 state_947495
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_947438
  · exact cover_947495
#print axioms cover_947437

def state_947431 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 86) else (if j.val < 3 then 102 else (if j.val < 4 then 34 else 107)))
theorem cover_947431 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_947431 := by
  apply coveredState_split_literal (state := state_947431) 3
    state_947432 state_947437
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_947432
  · exact cover_947437
#print axioms cover_947431

def state_947425 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 86) else (if j.val < 3 then 102 else (if j.val < 4 then 34 else 53)))
theorem cover_947425 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_947425 := by
  apply coveredState_split_literal (state := state_947425) 4
    state_947426 state_947431
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_947426
  · exact cover_947431
#print axioms cover_947425

def state_947424 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 43) else (if j.val < 3 then 102 else (if j.val < 4 then 34 else 53)))
theorem cover_947424 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_947424 := by
  apply coveredState_split_literal (state := state_947424) 1
    state_947425 state_947506
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_947425
  · exact cover_947506
#print axioms cover_947424

def state_947518 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 86) else (if j.val < 3 then 103 else (if j.val < 4 then 69 else 107)))
theorem cover_947518 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_947518 := by
  apply coveredState_split_literal (state := state_947518) 0
    state_947519 state_947582
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_947519
  · exact cover_947582
#print axioms cover_947518

def state_947516 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 86) else (if j.val < 3 then 103 else (if j.val < 4 then 34 else 107)))
theorem cover_947516 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_947516 := by
  apply coveredState_split_literal (state := state_947516) 3
    state_947517 state_947518
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_947517
  · exact cover_947518
#print axioms cover_947516

def state_947514 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 86) else (if j.val < 3 then 103 else (if j.val < 4 then 34 else 53)))
theorem cover_947514 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_947514 := by
  apply coveredState_split_literal (state := state_947514) 4
    state_947515 state_947516
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_947515
  · exact cover_947516
#print axioms cover_947514

def state_947513 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 43) else (if j.val < 3 then 103 else (if j.val < 4 then 34 else 53)))
theorem cover_947513 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_947513 := by
  apply coveredState_split_literal (state := state_947513) 1
    state_947514 state_947595
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_947514
  · exact cover_947595
#print axioms cover_947513

def state_947423 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 43) else (if j.val < 3 then 51 else (if j.val < 4 then 34 else 53)))
theorem cover_947423 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_947423 := by
  apply coveredState_split_literal (state := state_947423) 2
    state_947424 state_947513
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_947424
  · exact cover_947513
#print axioms cover_947423

def state_947339 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 43) else (if j.val < 3 then 51 else (if j.val < 4 then 34 else 53)))
theorem cover_947339 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_947339 := by
  apply coveredState_split_literal (state := state_947339) 0
    state_947340 state_947423
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_947340
  · exact cover_947423
#print axioms cover_947339

def state_947650 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 86) else (if j.val < 3 then 103 else (if j.val < 4 then 70 else 107)))
theorem cover_947650 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_947650 := by
  apply coveredState_split_literal (state := state_947650) 0
    state_947651 state_947702
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_947651
  · exact cover_947702
#print axioms cover_947650

def state_947649 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 86) else (if j.val < 3 then 103 else (if j.val < 4 then 35 else 107)))
theorem cover_947649 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_947649 := by
  apply coveredState_split_literal (state := state_947649) 3
    state_947650 state_947747
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_947650
  · exact cover_947747
#print axioms cover_947649

def state_947643 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 86) else (if j.val < 3 then 103 else (if j.val < 4 then 35 else 53)))
theorem cover_947643 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_947643 := by
  apply coveredState_split_literal (state := state_947643) 4
    state_947644 state_947649
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_947644
  · exact cover_947649
#print axioms cover_947643

def state_947642 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 43) else (if j.val < 3 then 103 else (if j.val < 4 then 35 else 53)))
theorem cover_947642 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_947642 := by
  apply coveredState_split_literal (state := state_947642) 1
    state_947643 state_947762
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_947643
  · exact cover_947762
#print axioms cover_947642

def state_947616 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 43) else (if j.val < 3 then 51 else (if j.val < 4 then 35 else 53)))
theorem cover_947616 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_947616 := by
  apply coveredState_split_literal (state := state_947616) 2
    state_947617 state_947642
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_947617
  · exact cover_947642
#print axioms cover_947616

def state_947596 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 43) else (if j.val < 3 then 51 else (if j.val < 4 then 35 else 53)))
theorem cover_947596 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_947596 := by
  apply coveredState_split_literal (state := state_947596) 0
    state_947597 state_947616
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_947597
  · exact cover_947616
#print axioms cover_947596

def state_947338 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 43) else (if j.val < 3 then 51 else (if j.val < 4 then 17 else 53)))
theorem cover_947338 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_947338 := by
  apply coveredState_split_literal (state := state_947338) 3
    state_947339 state_947596
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_947339
  · exact cover_947596
#print axioms cover_947338

def state_947332 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 43) else (if j.val < 3 then 51 else (if j.val < 4 then 17 else 26)))
theorem cover_947332 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_947332 := by
  apply coveredState_split_literal (state := state_947332) 4
    state_947333 state_947338
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_947333
  · exact cover_947338
#print axioms cover_947332

def state_945768 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 21) else (if j.val < 3 then 51 else (if j.val < 4 then 17 else 26)))
theorem cover_945768 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_945768 := by
  apply coveredState_split_literal (state := state_945768) 1
    state_945769 state_947332
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_945769
  · exact cover_947332
#print axioms cover_945768

def state_945462 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 21) else (if j.val < 3 then 25 else (if j.val < 4 then 17 else 26)))
theorem cover_945462 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_945462 := by
  apply coveredState_split_literal (state := state_945462) 2
    state_945463 state_945768
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_945463
  · exact cover_945768
#print axioms cover_945462

def state_945370 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 25 else (if j.val < 4 then 17 else 26)))
theorem cover_945370 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_945370 := by
  apply coveredState_split_literal (state := state_945370) 0
    state_945371 state_945462
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_945371
  · exact cover_945462
#print axioms cover_945370

def state_944776 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 25 else (if j.val < 4 then 8 else 26)))
theorem cover_944776 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_944776 := by
  apply coveredState_split_literal (state := state_944776) 3
    state_944777 state_945370
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_944777
  · exact cover_945370
#print axioms cover_944776

def state_947824 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 43) else (if j.val < 3 then 50 else (if j.val < 4 then 33 else 54)))
theorem cover_947824 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_947824 := by
  apply coveredState_split_literal (state := state_947824) 0
    state_947825 state_947854
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_947825
  · exact cover_947854
#print axioms cover_947824

def state_947820 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 43) else (if j.val < 3 then 50 else (if j.val < 4 then 16 else 54)))
theorem cover_947820 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_947820 := by
  apply coveredState_split_literal (state := state_947820) 3
    state_947821 state_947824
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_947821
  · exact cover_947824
#print axioms cover_947820

def state_947819 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 43) else (if j.val < 3 then 50 else (if j.val < 4 then 16 else 27)))
theorem cover_947819 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_947819 := by
  apply coveredState_split_literal (state := state_947819) 4
    state_947820 state_947889
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_947820
  · exact cover_947889
#print axioms cover_947819

def state_947783 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 21) else (if j.val < 3 then 50 else (if j.val < 4 then 16 else 27)))
theorem cover_947783 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_947783 := by
  apply coveredState_split_literal (state := state_947783) 1
    state_947784 state_947819
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_947784
  · exact cover_947819
#print axioms cover_947783

def state_947782 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 21) else (if j.val < 3 then 25 else (if j.val < 4 then 16 else 27)))
theorem cover_947782 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_947782 := by
  apply coveredState_split_literal (state := state_947782) 2
    state_947783 state_947896
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_947783
  · exact cover_947896
#print axioms cover_947782
end Mub6.Numerical.CircleFullD0.Forest
