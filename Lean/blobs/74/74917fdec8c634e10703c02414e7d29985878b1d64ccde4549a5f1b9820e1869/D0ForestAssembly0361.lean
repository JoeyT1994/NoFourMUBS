import D0FullInterface
import D0ForestAssembly0360
import D0ForestChunk1403
import D0ForestChunk1404
import D0ForestChunk1405
import D0ForestChunk1406
import D0ForestChunk1407
import D0ForestChunk1408
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1637569 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 50) else (if j.val < 3 then 28 else (if j.val < 4 then 50 else 19)))
theorem cover_1637569 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1637569 := by
  apply coveredState_split_literal (state := state_1637569) 2
    state_1637570 state_1637599
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1637570
  · exact cover_1637599
#print axioms cover_1637569

def state_1637568 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 50) else (if j.val < 3 then 28 else (if j.val < 4 then 50 else 19)))
theorem cover_1637568 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1637568 := by
  apply coveredState_split_literal (state := state_1637568) 0
    state_1637569 state_1637724
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1637569
  · exact cover_1637724
#print axioms cover_1637568

def state_1637794 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 101) else (if j.val < 3 then 57 else (if j.val < 4 then 51 else 39)))
theorem cover_1637794 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1637794 := by
  apply coveredState_split_literal (state := state_1637794) 3
    state_1637795 state_1637854
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1637795
  · exact cover_1637854
#print axioms cover_1637794

def state_1637774 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 50) else (if j.val < 3 then 57 else (if j.val < 4 then 51 else 39)))
theorem cover_1637774 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1637774 := by
  apply coveredState_split_literal (state := state_1637774) 1
    state_1637775 state_1637794
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1637775
  · exact cover_1637794
#print axioms cover_1637774

def state_1637764 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 50) else (if j.val < 3 then 57 else (if j.val < 4 then 51 else 19)))
theorem cover_1637764 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1637764 := by
  apply coveredState_split_literal (state := state_1637764) 4
    state_1637765 state_1637774
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1637765
  · exact cover_1637774
#print axioms cover_1637764

def state_1637732 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 50) else (if j.val < 3 then 28 else (if j.val < 4 then 51 else 19)))
theorem cover_1637732 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1637732 := by
  apply coveredState_split_literal (state := state_1637732) 2
    state_1637733 state_1637764
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1637733
  · exact cover_1637764
#print axioms cover_1637732

def state_1637731 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 50) else (if j.val < 3 then 28 else (if j.val < 4 then 51 else 19)))
theorem cover_1637731 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1637731 := by
  apply coveredState_split_literal (state := state_1637731) 0
    state_1637732 state_1637863
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1637732
  · exact cover_1637863
#print axioms cover_1637731

def state_1637567 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 50) else (if j.val < 3 then 28 else (if j.val < 4 then 25 else 19)))
theorem cover_1637567 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1637567 := by
  apply coveredState_split_literal (state := state_1637567) 3
    state_1637568 state_1637731
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1637568
  · exact cover_1637731
#print axioms cover_1637567

def state_1637913 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 51) else (if j.val < 3 then 28 else (if j.val < 4 then 51 else 19)))
theorem cover_1637913 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1637913 := by
  apply coveredState_split_literal (state := state_1637913) 2
    state_1637914 state_1637925
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1637914
  · exact cover_1637925
#print axioms cover_1637913

def state_1637912 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 51) else (if j.val < 3 then 28 else (if j.val < 4 then 51 else 19)))
theorem cover_1637912 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1637912 := by
  apply coveredState_split_literal (state := state_1637912) 0
    state_1637913 state_1637980
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1637913
  · exact cover_1637980
#print axioms cover_1637912

def state_1637876 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 51) else (if j.val < 3 then 28 else (if j.val < 4 then 25 else 19)))
theorem cover_1637876 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1637876 := by
  apply coveredState_split_literal (state := state_1637876) 3
    state_1637877 state_1637912
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1637877
  · exact cover_1637912
#print axioms cover_1637876

def state_1637566 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 28 else (if j.val < 4 then 25 else 19)))
theorem cover_1637566 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1637566 := by
  apply coveredState_split_literal (state := state_1637566) 1
    state_1637567 state_1637876
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1637567
  · exact cover_1637876
#print axioms cover_1637566

def state_1637498 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 28 else (if j.val < 4 then 25 else 9)))
theorem cover_1637498 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1637498 := by
  apply coveredState_split_literal (state := state_1637498) 4
    state_1637499 state_1637566
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1637499
  · exact cover_1637566
#print axioms cover_1637498

def state_1637986 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 29 else (if j.val < 4 then 25 else 18)))
theorem cover_1637986 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1637986 := by
  apply coveredState_split_literal (state := state_1637986) 1
    state_1637987 state_1638034
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1637987
  · exact cover_1638034
#print axioms cover_1637986

def state_1638135 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 50) else (if j.val < 3 then 58 else (if j.val < 4 then 50 else 39)))
theorem cover_1638135 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1638135 := by
  apply coveredState_split_literal (state := state_1638135) 1
    state_1638136 state_1638177
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1638136
  · exact cover_1638177
#print axioms cover_1638135

def state_1638134 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 50) else (if j.val < 3 then 29 else (if j.val < 4 then 50 else 39)))
theorem cover_1638134 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1638134 := by
  apply coveredState_split_literal (state := state_1638134) 2
    state_1638135 state_1638200
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1638135
  · exact cover_1638200
#print axioms cover_1638134

def state_1638070 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 50) else (if j.val < 3 then 29 else (if j.val < 4 then 50 else 19)))
theorem cover_1638070 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1638070 := by
  apply coveredState_split_literal (state := state_1638070) 4
    state_1638071 state_1638134
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1638071
  · exact cover_1638134
#print axioms cover_1638070

def state_1638211 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 50) else (if j.val < 3 then 29 else (if j.val < 4 then 50 else 19)))
theorem cover_1638211 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1638211 := by
  apply coveredState_split_literal (state := state_1638211) 4
    state_1638212 state_1638253
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1638212
  · exact cover_1638253
#print axioms cover_1638211

def state_1638069 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 50) else (if j.val < 3 then 29 else (if j.val < 4 then 50 else 19)))
theorem cover_1638069 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1638069 := by
  apply coveredState_split_literal (state := state_1638069) 0
    state_1638070 state_1638211
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1638070
  · exact cover_1638211
#print axioms cover_1638069

def state_1638353 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 101) else (if j.val < 3 then 58 else (if j.val < 4 then 102 else 39)))
theorem cover_1638353 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1638353 := by
  apply coveredState_split_literal (state := state_1638353) 0
    state_1638354 state_1638393
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1638354
  · exact cover_1638393
#print axioms cover_1638353

def state_1638352 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 101) else (if j.val < 3 then 58 else (if j.val < 4 then 51 else 39)))
theorem cover_1638352 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1638352 := by
  apply coveredState_split_literal (state := state_1638352) 3
    state_1638353 state_1638444
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1638353
  · exact cover_1638444
#print axioms cover_1638352

def state_1638320 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 50) else (if j.val < 3 then 58 else (if j.val < 4 then 51 else 39)))
theorem cover_1638320 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1638320 := by
  apply coveredState_split_literal (state := state_1638320) 1
    state_1638321 state_1638352
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1638321
  · exact cover_1638352
#print axioms cover_1638320

def state_1638319 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 50) else (if j.val < 3 then 29 else (if j.val < 4 then 51 else 39)))
theorem cover_1638319 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1638319 := by
  apply coveredState_split_literal (state := state_1638319) 2
    state_1638320 state_1638463
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1638320
  · exact cover_1638463
#print axioms cover_1638319

def state_1638293 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 50) else (if j.val < 3 then 29 else (if j.val < 4 then 51 else 19)))
theorem cover_1638293 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1638293 := by
  apply coveredState_split_literal (state := state_1638293) 4
    state_1638294 state_1638319
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1638294
  · exact cover_1638319
#print axioms cover_1638293

def state_1638575 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 100) else (if j.val < 3 then 59 else (if j.val < 4 then 51 else 39)))
theorem cover_1638575 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1638575 := by
  apply coveredState_split_literal (state := state_1638575) 3
    state_1638576 state_1638639
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1638576
  · exact cover_1638639
#print axioms cover_1638575

def state_1638574 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 50) else (if j.val < 3 then 59 else (if j.val < 4 then 51 else 39)))
theorem cover_1638574 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1638574 := by
  apply coveredState_split_literal (state := state_1638574) 1
    state_1638575 state_1638646
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1638575
  · exact cover_1638646
#print axioms cover_1638574

def state_1638536 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 50) else (if j.val < 3 then 29 else (if j.val < 4 then 51 else 39)))
theorem cover_1638536 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1638536 := by
  apply coveredState_split_literal (state := state_1638536) 2
    state_1638537 state_1638574
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1638537
  · exact cover_1638574
#print axioms cover_1638536

def state_1638526 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 50) else (if j.val < 3 then 29 else (if j.val < 4 then 51 else 19)))
theorem cover_1638526 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1638526 := by
  apply coveredState_split_literal (state := state_1638526) 4
    state_1638527 state_1638536
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1638527
  · exact cover_1638536
#print axioms cover_1638526

def state_1638292 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 50) else (if j.val < 3 then 29 else (if j.val < 4 then 51 else 19)))
theorem cover_1638292 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1638292 := by
  apply coveredState_split_literal (state := state_1638292) 0
    state_1638293 state_1638526
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1638293
  · exact cover_1638526
#print axioms cover_1638292

def state_1638068 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 50) else (if j.val < 3 then 29 else (if j.val < 4 then 25 else 19)))
theorem cover_1638068 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1638068 := by
  apply coveredState_split_literal (state := state_1638068) 3
    state_1638069 state_1638292
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1638069
  · exact cover_1638292
#print axioms cover_1638068

def state_1638774 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 51) else (if j.val < 3 then 29 else (if j.val < 4 then 51 else 39)))
theorem cover_1638774 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1638774 := by
  apply coveredState_split_literal (state := state_1638774) 2
    state_1638775 state_1638836
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1638775
  · exact cover_1638836
#print axioms cover_1638774

def state_1638758 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 51) else (if j.val < 3 then 29 else (if j.val < 4 then 51 else 19)))
theorem cover_1638758 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1638758 := by
  apply coveredState_split_literal (state := state_1638758) 4
    state_1638759 state_1638774
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1638759
  · exact cover_1638774
#print axioms cover_1638758
end Mub6.Numerical.CircleFullD0.Forest
