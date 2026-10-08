import D0FullInterface
import D0ForestAssembly0161
import D0ForestChunk0617
import D0ForestChunk0618
import D0ForestChunk0619
import D0ForestChunk0620
import D0ForestChunk0621
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1337370 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 58 else 48) else (if j.val < 3 then 43 else (if j.val < 4 then 17 else 45)))
theorem cover_1337370 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1337370 := by
  apply coveredState_split_literal (state := state_1337370) 3
    state_1337371 state_1337420
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1337371
  · exact cover_1337420
#print axioms cover_1337370

def state_1337369 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 48) else (if j.val < 3 then 43 else (if j.val < 4 then 17 else 45)))
theorem cover_1337369 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1337369 := by
  apply coveredState_split_literal (state := state_1337369) 0
    state_1337370 state_1337443
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1337370
  · exact cover_1337443
#print axioms cover_1337369

def state_1337363 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 48) else (if j.val < 3 then 21 else (if j.val < 4 then 17 else 45)))
theorem cover_1337363 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1337363 := by
  apply coveredState_split_literal (state := state_1337363) 2
    state_1337364 state_1337369
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1337364
  · exact cover_1337369
#print axioms cover_1337363

def state_1337339 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 48) else (if j.val < 3 then 21 else (if j.val < 4 then 17 else 22)))
theorem cover_1337339 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1337339 := by
  apply coveredState_split_literal (state := state_1337339) 4
    state_1337340 state_1337363
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1337340
  · exact cover_1337363
#print axioms cover_1337339

def state_1337338 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 24) else (if j.val < 3 then 21 else (if j.val < 4 then 17 else 22)))
theorem cover_1337338 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1337338 := by
  apply coveredState_split_literal (state := state_1337338) 1
    state_1337339 state_1337470
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1337339
  · exact cover_1337470
#print axioms cover_1337338

def state_1337158 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 24) else (if j.val < 3 then 21 else (if j.val < 4 then 8 else 22)))
theorem cover_1337158 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1337158 := by
  apply coveredState_split_literal (state := state_1337158) 3
    state_1337159 state_1337338
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1337159
  · exact cover_1337338
#print axioms cover_1337158

def state_1337068 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 24) else (if j.val < 3 then 21 else (if j.val < 4 then 8 else 22)))
theorem cover_1337068 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1337068 := by
  apply coveredState_split_literal (state := state_1337068) 0
    state_1337069 state_1337158
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1337069
  · exact cover_1337158
#print axioms cover_1337068

def state_1337060 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 24) else (if j.val < 3 then 10 else (if j.val < 4 then 8 else 22)))
theorem cover_1337060 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1337060 := by
  apply coveredState_split_literal (state := state_1337060) 2
    state_1337061 state_1337068
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1337061
  · exact cover_1337068
#print axioms cover_1337060

def state_1337059 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 24) else (if j.val < 3 then 10 else (if j.val < 4 then 8 else 11)))
theorem cover_1337059 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1337059 := by
  apply coveredState_split_literal (state := state_1337059) 4
    state_1337060 state_1337501
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1337060
  · exact cover_1337501
#print axioms cover_1337059

def state_1337058 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 8 else 11)))
theorem cover_1337058 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1337058 := by
  apply coveredState_split_literal (state := state_1337058) 1
    state_1337059 state_1337556
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1337059
  · exact cover_1337556
#print axioms cover_1337058

def state_1337612 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 24) else (if j.val < 3 then 21 else (if j.val < 4 then 9 else 23)))
theorem cover_1337612 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1337612 := by
  apply coveredState_split_literal (state := state_1337612) 3
    state_1337613 state_1337670
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1337613
  · exact cover_1337670
#print axioms cover_1337612

def state_1337606 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 24) else (if j.val < 3 then 21 else (if j.val < 4 then 9 else 23)))
theorem cover_1337606 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1337606 := by
  apply coveredState_split_literal (state := state_1337606) 0
    state_1337607 state_1337612
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1337607
  · exact cover_1337612
#print axioms cover_1337606

def state_1337600 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 24) else (if j.val < 3 then 10 else (if j.val < 4 then 9 else 23)))
theorem cover_1337600 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1337600 := by
  apply coveredState_split_literal (state := state_1337600) 2
    state_1337601 state_1337606
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1337601
  · exact cover_1337606
#print axioms cover_1337600

def state_1337564 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 24) else (if j.val < 3 then 10 else (if j.val < 4 then 9 else 11)))
theorem cover_1337564 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1337564 := by
  apply coveredState_split_literal (state := state_1337564) 4
    state_1337565 state_1337600
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1337565
  · exact cover_1337600
#print axioms cover_1337564

def state_1337563 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 9 else 11)))
theorem cover_1337563 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1337563 := by
  apply coveredState_split_literal (state := state_1337563) 1
    state_1337564 state_1337679
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1337564
  · exact cover_1337679
#print axioms cover_1337563

def state_1337057 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 4 else 11)))
theorem cover_1337057 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1337057 := by
  apply coveredState_split_literal (state := state_1337057) 3
    state_1337058 state_1337563
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1337058
  · exact cover_1337563
#print axioms cover_1337057

def state_1337785 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 24) else (if j.val < 3 then 10 else (if j.val < 4 then 9 else 11)))
theorem cover_1337785 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1337785 := by
  apply coveredState_split_literal (state := state_1337785) 4
    state_1337786 state_1337795
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1337786
  · exact cover_1337795
#print axioms cover_1337785

def state_1337856 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 25) else (if j.val < 3 then 10 else (if j.val < 4 then 9 else 23)))
theorem cover_1337856 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1337856 := by
  apply coveredState_split_literal (state := state_1337856) 2
    state_1337857 state_1337862
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1337857
  · exact cover_1337862
#print axioms cover_1337856

def state_1337854 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 25) else (if j.val < 3 then 10 else (if j.val < 4 then 9 else 11)))
theorem cover_1337854 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1337854 := by
  apply coveredState_split_literal (state := state_1337854) 4
    state_1337855 state_1337856
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1337855
  · exact cover_1337856
#print axioms cover_1337854

def state_1337784 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 9 else 11)))
theorem cover_1337784 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1337784 := by
  apply coveredState_split_literal (state := state_1337784) 1
    state_1337785 state_1337854
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1337785
  · exact cover_1337854
#print axioms cover_1337784

def state_1337724 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 4 else 11)))
theorem cover_1337724 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1337724 := by
  apply coveredState_split_literal (state := state_1337724) 3
    state_1337725 state_1337784
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1337725
  · exact cover_1337784
#print axioms cover_1337724

def state_1337056 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 4 else 11)))
theorem cover_1337056 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1337056 := by
  apply coveredState_split_literal (state := state_1337056) 0
    state_1337057 state_1337724
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1337057
  · exact cover_1337724
#print axioms cover_1337056

def state_1336986 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 4 else 5)))
theorem cover_1336986 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1336986 := by
  apply coveredState_split_literal (state := state_1336986) 4
    state_1336987 state_1337056
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1336987
  · exact cover_1337056
#print axioms cover_1336986

def state_1337925 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 24) else (if j.val < 3 then 11 else (if j.val < 4 then 8 else 10)))
theorem cover_1337925 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1337925 := by
  apply coveredState_split_literal (state := state_1337925) 2
    state_1337926 state_1337985
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1337926
  · exact cover_1337985
#print axioms cover_1337925

def state_1337924 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 8 else 10)))
theorem cover_1337924 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1337924 := by
  apply coveredState_split_literal (state := state_1337924) 1
    state_1337925 state_1337992
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1337925
  · exact cover_1337992
#print axioms cover_1337924

def state_1337923 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 4 else 10)))
theorem cover_1337923 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1337923 := by
  apply coveredState_split_literal (state := state_1337923) 3
    state_1337924 state_1337993
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1337924
  · exact cover_1337993
#print axioms cover_1337923

def state_1337922 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 12) else (if j.val < 3 then 11 else (if j.val < 4 then 4 else 10)))
theorem cover_1337922 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1337922 := by
  apply coveredState_split_literal (state := state_1337922) 0
    state_1337923 state_1337998
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1337923
  · exact cover_1337998
#print axioms cover_1337922

def state_1338020 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 96) else (if j.val < 3 then 88 else (if j.val < 4 then 32 else 44)))
theorem cover_1338020 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1338020 := by
  apply coveredState_split_literal (state := state_1338020) 4
    state_1338021 state_1338044
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1338021
  · exact cover_1338044
#print axioms cover_1338020

def state_1338019 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 96) else (if j.val < 3 then 44 else (if j.val < 4 then 32 else 44)))
theorem cover_1338019 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1338019 := by
  apply coveredState_split_literal (state := state_1338019) 2
    state_1338020 state_1338085
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1338020
  · exact cover_1338085
#print axioms cover_1338019

def state_1338018 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 48) else (if j.val < 3 then 44 else (if j.val < 4 then 32 else 44)))
theorem cover_1338018 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1338018 := by
  apply coveredState_split_literal (state := state_1338018) 1
    state_1338019 state_1338102
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1338019
  · exact cover_1338102
#print axioms cover_1338018

def state_1338017 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 48) else (if j.val < 3 then 44 else (if j.val < 4 then 16 else 44)))
theorem cover_1338017 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1338017 := by
  apply coveredState_split_literal (state := state_1338017) 3
    state_1338018 state_1338117
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1338018
  · exact cover_1338117
#print axioms cover_1338017

def state_1338015 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 48) else (if j.val < 3 then 44 else (if j.val < 4 then 16 else 44)))
theorem cover_1338015 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1338015 := by
  apply coveredState_split_literal (state := state_1338015) 0
    state_1338016 state_1338017
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1338016
  · exact cover_1338017
#print axioms cover_1338015
end Mub6.Numerical.CircleFullD0.Forest
