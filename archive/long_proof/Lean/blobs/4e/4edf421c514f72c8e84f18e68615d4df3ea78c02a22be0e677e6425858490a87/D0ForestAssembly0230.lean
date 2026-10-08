import D0FullInterface
import D0ForestAssembly0229
import D0ForestChunk0870
import D0ForestChunk0872
import D0ForestChunk0873
import D0ForestChunk0874
import D0ForestChunk0875
import D0ForestChunk0876
import D0ForestChunk0877
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1509640 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 44) else (if j.val < 3 then 41 else (if j.val < 4 then 52 else 30)))
theorem cover_1509640 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1509640 := by
  apply coveredState_split_literal (state := state_1509640) 4
    state_1509641 state_1509786
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1509641
  · exact cover_1509786
#print axioms cover_1509640

def state_1509602 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 44) else (if j.val < 3 then 20 else (if j.val < 4 then 52 else 30)))
theorem cover_1509602 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1509602 := by
  apply coveredState_split_literal (state := state_1509602) 2
    state_1509603 state_1509640
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1509603
  · exact cover_1509640
#print axioms cover_1509602

def state_1509601 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 44) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 30)))
theorem cover_1509601 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1509601 := by
  apply coveredState_split_literal (state := state_1509601) 3
    state_1509602 state_1509901
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1509602
  · exact cover_1509901
#print axioms cover_1509601

def state_1509950 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 45) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 30)))
theorem cover_1509950 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1509950 := by
  apply coveredState_split_literal (state := state_1509950) 3
    state_1509951 state_1509992
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1509951
  · exact cover_1509992
#print axioms cover_1509950

def state_1509600 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 22) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 30)))
theorem cover_1509600 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1509600 := by
  apply coveredState_split_literal (state := state_1509600) 1
    state_1509601 state_1509950
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1509601
  · exact cover_1509950
#print axioms cover_1509600

def state_1509582 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 30)))
theorem cover_1509582 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1509582 := by
  apply coveredState_split_literal (state := state_1509582) 0
    state_1509583 state_1509600
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1509583
  · exact cover_1509600
#print axioms cover_1509582

def state_1509581 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 15)))
theorem cover_1509581 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1509581 := by
  apply coveredState_split_literal (state := state_1509581) 4
    state_1509582 state_1510015
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1509582
  · exact cover_1510015
#print axioms cover_1509581

def state_1509580 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 20 else (if j.val < 4 then 13 else 15)))
theorem cover_1509580 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1509580 := by
  apply coveredState_split_literal (state := state_1509580) 3
    state_1509581 state_1510064
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1509581
  · exact cover_1510064
#print axioms cover_1509580

def state_1510125 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 44) else (if j.val < 3 then 42 else (if j.val < 4 then 53 else 30)))
theorem cover_1510125 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1510125 := by
  apply coveredState_split_literal (state := state_1510125) 4
    state_1510126 state_1510145
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1510126
  · exact cover_1510145
#print axioms cover_1510125

def state_1510089 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 44) else (if j.val < 3 then 42 else (if j.val < 4 then 26 else 30)))
theorem cover_1510089 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1510089 := by
  apply coveredState_split_literal (state := state_1510089) 3
    state_1510090 state_1510125
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1510090
  · exact cover_1510125
#print axioms cover_1510089

def state_1510088 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 44) else (if j.val < 3 then 21 else (if j.val < 4 then 26 else 30)))
theorem cover_1510088 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1510088 := by
  apply coveredState_split_literal (state := state_1510088) 2
    state_1510089 state_1510200
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1510089
  · exact cover_1510200
#print axioms cover_1510088

def state_1510087 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 22) else (if j.val < 3 then 21 else (if j.val < 4 then 26 else 30)))
theorem cover_1510087 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1510087 := by
  apply coveredState_split_literal (state := state_1510087) 1
    state_1510088 state_1510213
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1510088
  · exact cover_1510213
#print axioms cover_1510087

def state_1510079 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 21 else (if j.val < 4 then 26 else 30)))
theorem cover_1510079 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1510079 := by
  apply coveredState_split_literal (state := state_1510079) 0
    state_1510080 state_1510087
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1510080
  · exact cover_1510087
#print axioms cover_1510079

def state_1510078 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 21 else (if j.val < 4 then 26 else 15)))
theorem cover_1510078 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1510078 := by
  apply coveredState_split_literal (state := state_1510078) 4
    state_1510079 state_1510238
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1510079
  · exact cover_1510238
#print axioms cover_1510078

def state_1510295 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 21 else (if j.val < 4 then 27 else 15)))
theorem cover_1510295 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1510295 := by
  apply coveredState_split_literal (state := state_1510295) 4
    state_1510296 state_1510359
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1510296
  · exact cover_1510359
#print axioms cover_1510295

def state_1510077 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 21 else (if j.val < 4 then 13 else 15)))
theorem cover_1510077 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1510077 := by
  apply coveredState_split_literal (state := state_1510077) 3
    state_1510078 state_1510295
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1510078
  · exact cover_1510295
#print axioms cover_1510077

def state_1509579 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 15)))
theorem cover_1509579 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1509579 := by
  apply coveredState_split_literal (state := state_1509579) 2
    state_1509580 state_1510077
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1509580
  · exact cover_1510077
#print axioms cover_1509579

def state_1510420 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 23) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 15)))
theorem cover_1510420 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1510420 := by
  apply coveredState_split_literal (state := state_1510420) 2
    state_1510421 state_1510462
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1510421
  · exact cover_1510462
#print axioms cover_1510420

def state_1509578 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 15)))
theorem cover_1509578 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1509578 := by
  apply coveredState_split_literal (state := state_1509578) 1
    state_1509579 state_1510420
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1509579
  · exact cover_1510420
#print axioms cover_1509578

def state_1510608 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 177) else (if j.val < 3 then 82 else (if j.val < 4 then 104 else 121)))
theorem cover_1510608 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1510608 := by
  apply coveredState_split_literal (state := state_1510608) 3
    state_1510609 state_1510660
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1510609
  · exact cover_1510660
#print axioms cover_1510608

def state_1510606 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 88) else (if j.val < 3 then 82 else (if j.val < 4 then 104 else 121)))
theorem cover_1510606 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1510606 := by
  apply coveredState_split_literal (state := state_1510606) 1
    state_1510607 state_1510608
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1510607
  · exact cover_1510608
#print axioms cover_1510606

def state_1510605 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 88) else (if j.val < 3 then 82 else (if j.val < 4 then 104 else 121)))
theorem cover_1510605 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1510605 := by
  apply coveredState_split_literal (state := state_1510605) 0
    state_1510606 state_1510703
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1510606
  · exact cover_1510703
#print axioms cover_1510605

def state_1510589 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 88) else (if j.val < 3 then 82 else (if j.val < 4 then 104 else 60)))
theorem cover_1510589 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1510589 := by
  apply coveredState_split_literal (state := state_1510589) 4
    state_1510590 state_1510605
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1510590
  · exact cover_1510605
#print axioms cover_1510589

def state_1510754 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 88) else (if j.val < 3 then 83 else (if j.val < 4 then 104 else 121)))
theorem cover_1510754 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1510754 := by
  apply coveredState_split_literal (state := state_1510754) 0
    state_1510755 state_1510812
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1510755
  · exact cover_1510812
#print axioms cover_1510754

def state_1510736 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 88) else (if j.val < 3 then 83 else (if j.val < 4 then 104 else 60)))
theorem cover_1510736 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1510736 := by
  apply coveredState_split_literal (state := state_1510736) 4
    state_1510737 state_1510754
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1510737
  · exact cover_1510754
#print axioms cover_1510736

def state_1510588 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 88) else (if j.val < 3 then 41 else (if j.val < 4 then 104 else 60)))
theorem cover_1510588 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1510588 := by
  apply coveredState_split_literal (state := state_1510588) 2
    state_1510589 state_1510736
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1510589
  · exact cover_1510736
#print axioms cover_1510588

def state_1510927 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 176) else (if j.val < 3 then 83 else (if j.val < 4 then 211 else 121)))
theorem cover_1510927 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1510927 := by
  apply coveredState_split_literal (state := state_1510927) 2
    state_1510928 state_1510953
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1510928
  · exact cover_1510953
#print axioms cover_1510927

def state_1510925 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 176) else (if j.val < 3 then 83 else (if j.val < 4 then 105 else 121)))
theorem cover_1510925 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1510925 := by
  apply coveredState_split_literal (state := state_1510925) 3
    state_1510926 state_1510927
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1510926
  · exact cover_1510927
#print axioms cover_1510925

def state_1511005 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 177) else (if j.val < 3 then 83 else (if j.val < 4 then 210 else 121)))
theorem cover_1511005 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1511005 := by
  apply coveredState_split_literal (state := state_1511005) 2
    state_1511006 state_1511053
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1511006
  · exact cover_1511053
#print axioms cover_1511005

def state_1511004 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 177) else (if j.val < 3 then 83 else (if j.val < 4 then 105 else 121)))
theorem cover_1511004 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1511004 := by
  apply coveredState_split_literal (state := state_1511004) 3
    state_1511005 state_1511072
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1511005
  · exact cover_1511072
#print axioms cover_1511004

def state_1510924 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 88) else (if j.val < 3 then 83 else (if j.val < 4 then 105 else 121)))
theorem cover_1510924 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1510924 := by
  apply coveredState_split_literal (state := state_1510924) 1
    state_1510925 state_1511004
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1510925
  · exact cover_1511004
#print axioms cover_1510924

def state_1511116 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 176) else (if j.val < 3 then 167 else (if j.val < 4 then 211 else 121)))
theorem cover_1511116 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1511116 := by
  apply coveredState_split_literal (state := state_1511116) 4
    state_1511117 state_1511152
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1511117
  · exact cover_1511152
#print axioms cover_1511116
end Mub6.Numerical.CircleFullD0.Forest
