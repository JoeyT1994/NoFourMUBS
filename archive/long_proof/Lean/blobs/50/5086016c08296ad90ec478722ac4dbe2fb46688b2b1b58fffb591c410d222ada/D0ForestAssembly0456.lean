import D0FullInterface
import D0ForestAssembly0455
import D0ForestChunk1787
import D0ForestChunk1788
import D0ForestChunk1789
import D0ForestChunk1790
import D0ForestChunk1791
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2302181 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 25) else (if j.val < 3 then 16 else (if j.val < 4 then 27 else 22)))
theorem cover_2302181 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2302181 := by
  apply coveredState_split_literal (state := state_2302181) 1
    state_2302182 state_2302219
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2302182
  · exact cover_2302219
#print axioms cover_2302181

def state_2302180 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 16 else (if j.val < 4 then 27 else 22)))
theorem cover_2302180 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2302180 := by
  apply coveredState_split_literal (state := state_2302180) 0
    state_2302181 state_2302328
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2302181
  · exact cover_2302328
#print axioms cover_2302180

def state_2302415 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 103) else (if j.val < 3 then 34 else (if j.val < 4 then 110 else 91)))
theorem cover_2302415 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2302415 := by
  apply coveredState_split_literal (state := state_2302415) 2
    state_2302416 state_2302437
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2302416
  · exact cover_2302437
#print axioms cover_2302415

def state_2302414 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 103) else (if j.val < 3 then 34 else (if j.val < 4 then 55 else 91)))
theorem cover_2302414 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2302414 := by
  apply coveredState_split_literal (state := state_2302414) 3
    state_2302415 state_2302486
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2302415
  · exact cover_2302486
#print axioms cover_2302414

def state_2302396 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 51) else (if j.val < 3 then 34 else (if j.val < 4 then 55 else 91)))
theorem cover_2302396 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2302396 := by
  apply coveredState_split_literal (state := state_2302396) 1
    state_2302397 state_2302414
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2302397
  · exact cover_2302414
#print axioms cover_2302396

def state_2302395 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 51) else (if j.val < 3 then 34 else (if j.val < 4 then 55 else 91)))
theorem cover_2302395 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2302395 := by
  apply coveredState_split_literal (state := state_2302395) 0
    state_2302396 state_2302531
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2302396
  · exact cover_2302531
#print axioms cover_2302395

def state_2302369 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 51) else (if j.val < 3 then 34 else (if j.val < 4 then 55 else 45)))
theorem cover_2302369 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2302369 := by
  apply coveredState_split_literal (state := state_2302369) 4
    state_2302370 state_2302395
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2302370
  · exact cover_2302395
#print axioms cover_2302369

def state_2302368 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 51) else (if j.val < 3 then 17 else (if j.val < 4 then 55 else 45)))
theorem cover_2302368 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2302368 := by
  apply coveredState_split_literal (state := state_2302368) 2
    state_2302369 state_2302540
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2302369
  · exact cover_2302540
#print axioms cover_2302368

def state_2302348 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 51) else (if j.val < 3 then 17 else (if j.val < 4 then 27 else 45)))
theorem cover_2302348 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2302348 := by
  apply coveredState_split_literal (state := state_2302348) 3
    state_2302349 state_2302368
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2302349
  · exact cover_2302368
#print axioms cover_2302348

def state_2302346 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 51) else (if j.val < 3 then 17 else (if j.val < 4 then 27 else 22)))
theorem cover_2302346 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2302346 := by
  apply coveredState_split_literal (state := state_2302346) 4
    state_2302347 state_2302348
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2302347
  · exact cover_2302348
#print axioms cover_2302346

def state_2302336 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 25) else (if j.val < 3 then 17 else (if j.val < 4 then 27 else 22)))
theorem cover_2302336 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2302336 := by
  apply coveredState_split_literal (state := state_2302336) 1
    state_2302337 state_2302346
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2302337
  · exact cover_2302346
#print axioms cover_2302336

def state_2302335 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 17 else (if j.val < 4 then 27 else 22)))
theorem cover_2302335 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2302335 := by
  apply coveredState_split_literal (state := state_2302335) 0
    state_2302336 state_2302603
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2302336
  · exact cover_2302603
#print axioms cover_2302335

def state_2302179 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 8 else (if j.val < 4 then 27 else 22)))
theorem cover_2302179 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2302179 := by
  apply coveredState_split_literal (state := state_2302179) 2
    state_2302180 state_2302335
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2302180
  · exact cover_2302335
#print axioms cover_2302179

def state_2302177 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 22)))
theorem cover_2302177 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2302177 := by
  apply coveredState_split_literal (state := state_2302177) 3
    state_2302178 state_2302179
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2302178
  · exact cover_2302179
#print axioms cover_2302177

def state_2302662 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 51) else (if j.val < 3 then 32 else (if j.val < 4 then 55 else 46)))
theorem cover_2302662 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2302662 := by
  apply coveredState_split_literal (state := state_2302662) 4
    state_2302663 state_2302698
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2302663
  · exact cover_2302698
#print axioms cover_2302662

def state_2302741 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 51) else (if j.val < 3 then 33 else (if j.val < 4 then 55 else 92)))
theorem cover_2302741 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2302741 := by
  apply coveredState_split_literal (state := state_2302741) 1
    state_2302742 state_2302775
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2302742
  · exact cover_2302775
#print axioms cover_2302741

def state_2302740 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 51) else (if j.val < 3 then 33 else (if j.val < 4 then 55 else 92)))
theorem cover_2302740 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2302740 := by
  apply coveredState_split_literal (state := state_2302740) 0
    state_2302741 state_2302822
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2302741
  · exact cover_2302822
#print axioms cover_2302740

def state_2302739 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 51) else (if j.val < 3 then 33 else (if j.val < 4 then 55 else 46)))
theorem cover_2302739 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2302739 := by
  apply coveredState_split_literal (state := state_2302739) 4
    state_2302740 state_2302829
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2302740
  · exact cover_2302829
#print axioms cover_2302739

def state_2302661 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 51) else (if j.val < 3 then 16 else (if j.val < 4 then 55 else 46)))
theorem cover_2302661 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2302661 := by
  apply coveredState_split_literal (state := state_2302661) 2
    state_2302662 state_2302739
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2302662
  · exact cover_2302739
#print axioms cover_2302661

def state_2302649 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 51) else (if j.val < 3 then 16 else (if j.val < 4 then 27 else 46)))
theorem cover_2302649 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2302649 := by
  apply coveredState_split_literal (state := state_2302649) 3
    state_2302650 state_2302661
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2302650
  · exact cover_2302661
#print axioms cover_2302649

def state_2302615 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 25) else (if j.val < 3 then 16 else (if j.val < 4 then 27 else 46)))
theorem cover_2302615 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2302615 := by
  apply coveredState_split_literal (state := state_2302615) 1
    state_2302616 state_2302649
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2302616
  · exact cover_2302649
#print axioms cover_2302615

def state_2302614 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 16 else (if j.val < 4 then 27 else 46)))
theorem cover_2302614 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2302614 := by
  apply coveredState_split_literal (state := state_2302614) 0
    state_2302615 state_2302862
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2302615
  · exact cover_2302862
#print axioms cover_2302614

def state_2302613 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 16 else (if j.val < 4 then 27 else 23)))
theorem cover_2302613 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2302613 := by
  apply coveredState_split_literal (state := state_2302613) 4
    state_2302614 state_2302875
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2302614
  · exact cover_2302875
#print axioms cover_2302613

def state_2302927 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 51) else (if j.val < 3 then 17 else (if j.val < 4 then 54 else 46)))
theorem cover_2302927 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2302927 := by
  apply coveredState_split_literal (state := state_2302927) 2
    state_2302928 state_2302975
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2302928
  · exact cover_2302975
#print axioms cover_2302927

def state_2302999 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 103) else (if j.val < 3 then 34 else (if j.val < 4 then 55 else 92)))
theorem cover_2302999 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2302999 := by
  apply coveredState_split_literal (state := state_2302999) 3
    state_2303000 state_2303053
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2303000
  · exact cover_2303053
#print axioms cover_2302999

def state_2302995 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 51) else (if j.val < 3 then 34 else (if j.val < 4 then 55 else 92)))
theorem cover_2302995 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2302995 := by
  apply coveredState_split_literal (state := state_2302995) 1
    state_2302996 state_2302999
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2302996
  · exact cover_2302999
#print axioms cover_2302995

def state_2302994 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 51) else (if j.val < 3 then 34 else (if j.val < 4 then 55 else 92)))
theorem cover_2302994 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2302994 := by
  apply coveredState_split_literal (state := state_2302994) 0
    state_2302995 state_2303082
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2302995
  · exact cover_2303082
#print axioms cover_2302994

def state_2302993 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 51) else (if j.val < 3 then 34 else (if j.val < 4 then 55 else 46)))
theorem cover_2302993 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2302993 := by
  apply coveredState_split_literal (state := state_2302993) 4
    state_2302994 state_2303093
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2302994
  · exact cover_2303093
#print axioms cover_2302993

def state_2302992 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 51) else (if j.val < 3 then 17 else (if j.val < 4 then 55 else 46)))
theorem cover_2302992 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2302992 := by
  apply coveredState_split_literal (state := state_2302992) 2
    state_2302993 state_2303114
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2302993
  · exact cover_2303114
#print axioms cover_2302992

def state_2302926 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 51) else (if j.val < 3 then 17 else (if j.val < 4 then 27 else 46)))
theorem cover_2302926 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2302926 := by
  apply coveredState_split_literal (state := state_2302926) 3
    state_2302927 state_2302992
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2302927
  · exact cover_2302992
#print axioms cover_2302926

def state_2302922 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 25) else (if j.val < 3 then 17 else (if j.val < 4 then 27 else 46)))
theorem cover_2302922 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2302922 := by
  apply coveredState_split_literal (state := state_2302922) 1
    state_2302923 state_2302926
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2302923
  · exact cover_2302926
#print axioms cover_2302922

def state_2302921 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 17 else (if j.val < 4 then 27 else 46)))
theorem cover_2302921 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2302921 := by
  apply coveredState_split_literal (state := state_2302921) 0
    state_2302922 state_2303147
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2302922
  · exact cover_2303147
#print axioms cover_2302921
end Mub6.Numerical.CircleFullD0.Forest
