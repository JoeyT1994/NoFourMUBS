import D0FullInterface
import D0ForestChunk0001
import D0ForestChunk0002
import D0ForestChunk0003
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
def state_15 : State := rootState
theorem cover_15 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_15 := by
  apply coveredState_split_literal (state := state_15) 0
    state_16 state_869
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_16
  · exact cover_869
#print axioms cover_15

def state_940929 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_940929 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_940929 := by
  apply coveredState_split_literal (state := state_940929) 2
    state_940930 state_941851
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_940930
  · exact cover_941851
#print axioms cover_940929

def state_943373 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 20) else (if j.val < 3 then 25 else (if j.val < 4 then 8 else 26)))
theorem cover_943373 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_943373 := by
  apply coveredState_split_literal (state := state_943373) 3
    state_943374 state_944245
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_943374
  · exact cover_944245
#print axioms cover_943373

def state_943372 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 20) else (if j.val < 3 then 25 else (if j.val < 4 then 8 else 13)))
theorem cover_943372 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_943372 := by
  apply coveredState_split_literal (state := state_943372) 4
    state_943373 state_944742
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_943373
  · exact cover_944742
#print axioms cover_943372

def state_945826 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 42) else (if j.val < 3 then 51 else (if j.val < 4 then 34 else 53)))
theorem cover_945826 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_945826 := by
  apply coveredState_split_literal (state := state_945826) 0
    state_945827 state_946092
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_945827
  · exact cover_946092
#print axioms cover_945826

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

def state_948422 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 43) else (if j.val < 3 then 51 else (if j.val < 4 then 17 else 54)))
theorem cover_948422 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_948422 := by
  apply coveredState_split_literal (state := state_948422) 3
    state_948423 state_949236
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_948423
  · exact cover_949236
#print axioms cover_948422

def state_948421 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 43) else (if j.val < 3 then 51 else (if j.val < 4 then 17 else 27)))
theorem cover_948421 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_948421 := by
  apply coveredState_split_literal (state := state_948421) 4
    state_948422 state_950141
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_948422
  · exact cover_950141
#print axioms cover_948421

def state_948131 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 21) else (if j.val < 3 then 51 else (if j.val < 4 then 17 else 27)))
theorem cover_948131 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_948131 := by
  apply coveredState_split_literal (state := state_948131) 1
    state_948132 state_948421
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_948132
  · exact cover_948421
#print axioms cover_948131

def state_947975 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 21) else (if j.val < 3 then 25 else (if j.val < 4 then 17 else 27)))
theorem cover_947975 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_947975 := by
  apply coveredState_split_literal (state := state_947975) 2
    state_947976 state_948131
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_947976
  · exact cover_948131
#print axioms cover_947975

def state_947929 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 25 else (if j.val < 4 then 17 else 27)))
theorem cover_947929 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_947929 := by
  apply coveredState_split_literal (state := state_947929) 0
    state_947930 state_947975
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_947930
  · exact cover_947975
#print axioms cover_947929

def state_947771 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 25 else (if j.val < 4 then 8 else 27)))
theorem cover_947771 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_947771 := by
  apply coveredState_split_literal (state := state_947771) 3
    state_947772 state_947929
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_947772
  · exact cover_947929
#print axioms cover_947771

def state_944775 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 25 else (if j.val < 4 then 8 else 13)))
theorem cover_944775 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_944775 := by
  apply coveredState_split_literal (state := state_944775) 4
    state_944776 state_947771
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_944776
  · exact cover_947771
#print axioms cover_944775

def state_943371 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 10) else (if j.val < 3 then 25 else (if j.val < 4 then 8 else 13)))
theorem cover_943371 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_943371 := by
  apply coveredState_split_literal (state := state_943371) 1
    state_943372 state_944775
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_943372
  · exact cover_944775
#print axioms cover_943371

def state_942775 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 8 else 13)))
theorem cover_942775 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_942775 := by
  apply coveredState_split_literal (state := state_942775) 2
    state_942776 state_943371
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_942776
  · exact cover_943371
#print axioms cover_942775

def state_942774 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 8 else 13)))
theorem cover_942774 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_942774 := by
  apply coveredState_split_literal (state := state_942774) 0
    state_942775 state_950194
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_942775
  · exact cover_950194
#print axioms cover_942774

def state_942773 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 13)))
theorem cover_942773 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_942773 := by
  apply coveredState_split_literal (state := state_942773) 3
    state_942774 state_951133
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_942774
  · exact cover_951133
#print axioms cover_942773

def state_942385 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 6)))
theorem cover_942385 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_942385 := by
  apply coveredState_split_literal (state := state_942385) 4
    state_942386 state_942773
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_942386
  · exact cover_942773
#print axioms cover_942385

def state_951789 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 8 else 13)))
theorem cover_951789 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_951789 := by
  apply coveredState_split_literal (state := state_951789) 4
    state_951790 state_952601
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_951790
  · exact cover_952601
#print axioms cover_951789

def state_951788 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 13 else (if j.val < 4 then 8 else 13)))
theorem cover_951788 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_951788 := by
  apply coveredState_split_literal (state := state_951788) 2
    state_951789 state_953604
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_951789
  · exact cover_953604
#print axioms cover_951788

def state_951544 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 8 else 13)))
theorem cover_951544 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_951544 := by
  apply coveredState_split_literal (state := state_951544) 1
    state_951545 state_951788
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_951545
  · exact cover_951788
#print axioms cover_951544

def state_951543 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 8 else 13)))
theorem cover_951543 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_951543 := by
  apply coveredState_split_literal (state := state_951543) 0
    state_951544 state_953617
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_951544
  · exact cover_953617
#print axioms cover_951543

def state_954883 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 43) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 27)))
theorem cover_954883 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_954883 := by
  apply coveredState_split_literal (state := state_954883) 2
    state_954884 state_955451
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_954884
  · exact cover_955451
#print axioms cover_954883

def state_954749 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 27)))
theorem cover_954749 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_954749 := by
  apply coveredState_split_literal (state := state_954749) 1
    state_954750 state_954883
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_954750
  · exact cover_954883
#print axioms cover_954749

def state_954709 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 27)))
theorem cover_954709 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_954709 := by
  apply coveredState_split_literal (state := state_954709) 0
    state_954710 state_954749
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_954710
  · exact cover_954749
#print axioms cover_954709

def state_954708 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 9 else 27)))
theorem cover_954708 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_954708 := by
  apply coveredState_split_literal (state := state_954708) 3
    state_954709 state_956136
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_954709
  · exact cover_956136
#print axioms cover_954708

def state_954430 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 9 else 13)))
theorem cover_954430 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_954430 := by
  apply coveredState_split_literal (state := state_954430) 4
    state_954431 state_954708
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_954431
  · exact cover_954708
#print axioms cover_954430

def state_954429 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 13)))
theorem cover_954429 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_954429 := by
  apply coveredState_split_literal (state := state_954429) 2
    state_954430 state_956143
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_954430
  · exact cover_956143
#print axioms cover_954429

def state_954211 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 13)))
theorem cover_954211 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_954211 := by
  apply coveredState_split_literal (state := state_954211) 1
    state_954212 state_954429
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_954212
  · exact cover_954429
#print axioms cover_954211

def state_957193 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 43) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 27)))
theorem cover_957193 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_957193 := by
  apply coveredState_split_literal (state := state_957193) 2
    state_957194 state_957665
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_957194
  · exact cover_957665
#print axioms cover_957193

def state_957061 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 27)))
theorem cover_957061 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_957061 := by
  apply coveredState_split_literal (state := state_957061) 1
    state_957062 state_957193
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_957062
  · exact cover_957193
#print axioms cover_957061

def state_957060 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 27)))
theorem cover_957060 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_957060 := by
  apply coveredState_split_literal (state := state_957060) 0
    state_957061 state_958368
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_957061
  · exact cover_958368
#print axioms cover_957060

def state_957059 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 9 else 27)))
theorem cover_957059 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_957059 := by
  apply coveredState_split_literal (state := state_957059) 3
    state_957060 state_958401
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_957060
  · exact cover_958401
#print axioms cover_957059

def state_956889 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 9 else 13)))
theorem cover_956889 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_956889 := by
  apply coveredState_split_literal (state := state_956889) 4
    state_956890 state_957059
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_956890
  · exact cover_957059
#print axioms cover_956889

def state_956888 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 13)))
theorem cover_956888 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_956888 := by
  apply coveredState_split_literal (state := state_956888) 2
    state_956889 state_958424
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_956889
  · exact cover_958424
#print axioms cover_956888

def state_956708 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 13)))
theorem cover_956708 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_956708 := by
  apply coveredState_split_literal (state := state_956708) 1
    state_956709 state_956888
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_956709
  · exact cover_956888
#print axioms cover_956708

def state_954210 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 13)))
theorem cover_954210 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_954210 := by
  apply coveredState_split_literal (state := state_954210) 0
    state_954211 state_956708
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_954211
  · exact cover_956708
#print axioms cover_954210

def state_951542 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 13)))
theorem cover_951542 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_951542 := by
  apply coveredState_split_literal (state := state_951542) 3
    state_951543 state_954210
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_951543
  · exact cover_954210
#print axioms cover_951542

def state_951404 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 6)))
theorem cover_951404 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_951404 := by
  apply coveredState_split_literal (state := state_951404) 4
    state_951405 state_951542
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_951405
  · exact cover_951542
#print axioms cover_951404

def state_942384 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 6)))
theorem cover_942384 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_942384 := by
  apply coveredState_split_literal (state := state_942384) 2
    state_942385 state_951404
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_942385
  · exact cover_951404
#print axioms cover_942384

def state_959306 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 8 else 13)))
theorem cover_959306 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_959306 := by
  apply coveredState_split_literal (state := state_959306) 1
    state_959307 state_960316
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_959307
  · exact cover_960316
#print axioms cover_959306

def state_959305 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 8 else 13)))
theorem cover_959305 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_959305 := by
  apply coveredState_split_literal (state := state_959305) 0
    state_959306 state_960345
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_959306
  · exact cover_960345
#print axioms cover_959305

def state_959304 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 13)))
theorem cover_959304 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_959304 := by
  apply coveredState_split_literal (state := state_959304) 3
    state_959305 state_960936
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_959305
  · exact cover_960936
#print axioms cover_959304

def state_959298 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 6)))
theorem cover_959298 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_959298 := by
  apply coveredState_split_literal (state := state_959298) 4
    state_959299 state_959304
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_959299
  · exact cover_959304
#print axioms cover_959298

def state_961084 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 8 else 13)))
theorem cover_961084 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961084 := by
  apply coveredState_split_literal (state := state_961084) 0
    state_961085 state_961828
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_961085
  · exact cover_961828
#print axioms cover_961084

def state_962609 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 13)))
theorem cover_962609 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_962609 := by
  apply coveredState_split_literal (state := state_962609) 2
    state_962610 state_963521
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_962610
  · exact cover_963521
#print axioms cover_962609

def state_962608 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 13)))
theorem cover_962608 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_962608 := by
  apply coveredState_split_literal (state := state_962608) 1
    state_962609 state_963686
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_962609
  · exact cover_963686
#print axioms cover_962608

def state_963730 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 44) else (if j.val < 3 then 52 else (if j.val < 4 then 36 else 27)))
theorem cover_963730 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_963730 := by
  apply coveredState_split_literal (state := state_963730) 4
    state_963731 state_963812
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_963731
  · exact cover_963812
#print axioms cover_963730

def state_963729 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 44) else (if j.val < 3 then 52 else (if j.val < 4 then 18 else 27)))
theorem cover_963729 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_963729 := by
  apply coveredState_split_literal (state := state_963729) 3
    state_963730 state_964799
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_963730
  · exact cover_964799
#print axioms cover_963729

def state_963728 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 44) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 27)))
theorem cover_963728 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_963728 := by
  apply coveredState_split_literal (state := state_963728) 2
    state_963729 state_964822
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_963729
  · exact cover_964822
#print axioms cover_963728

def state_963727 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 22) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 27)))
theorem cover_963727 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_963727 := by
  apply coveredState_split_literal (state := state_963727) 1
    state_963728 state_965759
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_963728
  · exact cover_965759
#print axioms cover_963727

def state_963726 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 27)))
theorem cover_963726 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_963726 := by
  apply coveredState_split_literal (state := state_963726) 0
    state_963727 state_966052
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_963727
  · exact cover_966052
#print axioms cover_963726

def state_963725 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 26 else (if j.val < 4 then 9 else 27)))
theorem cover_963725 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_963725 := by
  apply coveredState_split_literal (state := state_963725) 3
    state_963726 state_966073
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_963726
  · exact cover_966073
#print axioms cover_963725

def state_963711 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 26 else (if j.val < 4 then 9 else 13)))
theorem cover_963711 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_963711 := by
  apply coveredState_split_literal (state := state_963711) 4
    state_963712 state_963725
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_963712
  · exact cover_963725
#print axioms cover_963711

def state_963710 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 13)))
theorem cover_963710 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_963710 := by
  apply coveredState_split_literal (state := state_963710) 2
    state_963711 state_966088
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_963711
  · exact cover_966088
#print axioms cover_963710

def state_963709 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 13)))
theorem cover_963709 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_963709 := by
  apply coveredState_split_literal (state := state_963709) 1
    state_963710 state_966661
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_963710
  · exact cover_966661
#print axioms cover_963709

def state_962607 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 13)))
theorem cover_962607 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_962607 := by
  apply coveredState_split_literal (state := state_962607) 0
    state_962608 state_963709
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_962608
  · exact cover_963709
#print axioms cover_962607

def state_961083 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 13)))
theorem cover_961083 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961083 := by
  apply coveredState_split_literal (state := state_961083) 3
    state_961084 state_962607
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_961084
  · exact cover_962607
#print axioms cover_961083

def state_961071 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 6)))
theorem cover_961071 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961071 := by
  apply coveredState_split_literal (state := state_961071) 4
    state_961072 state_961083
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_961072
  · exact cover_961083
#print axioms cover_961071
end Mub6.Numerical.CircleFullD0.Forest
