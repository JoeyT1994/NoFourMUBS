import D0FullInterface
import D0ForestAssembly0538
import D0ForestChunk2124
import D0ForestChunk2125
import D0ForestChunk2126
import D0ForestChunk2127
import D0ForestChunk2128
import D0ForestChunk2129
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2590727 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 25 else (if j.val < 4 then 22 else 20)))
theorem cover_2590727 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2590727 := by
  apply coveredState_split_literal (state := state_2590727) 1
    state_2590728 state_2590773
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2590728
  · exact cover_2590773
#print axioms cover_2590727

def state_2590726 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 25 else (if j.val < 4 then 22 else 10)))
theorem cover_2590726 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2590726 := by
  apply coveredState_split_literal (state := state_2590726) 4
    state_2590727 state_2590802
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2590727
  · exact cover_2590802
#print axioms cover_2590726

def state_2590725 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 25 else (if j.val < 4 then 11 else 10)))
theorem cover_2590725 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2590725 := by
  apply coveredState_split_literal (state := state_2590725) 3
    state_2590726 state_2590803
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2590726
  · exact cover_2590803
#print axioms cover_2590725

def state_2590419 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 10)))
theorem cover_2590419 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2590419 := by
  apply coveredState_split_literal (state := state_2590419) 2
    state_2590420 state_2590725
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2590420
  · exact cover_2590725
#print axioms cover_2590419

def state_2590407 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 8) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 10)))
theorem cover_2590407 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2590407 := by
  apply coveredState_split_literal (state := state_2590407) 0
    state_2590408 state_2590419
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2590408
  · exact cover_2590419
#print axioms cover_2590407

def state_2590844 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 23 else 20)))
theorem cover_2590844 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2590844 := by
  apply coveredState_split_literal (state := state_2590844) 1
    state_2590845 state_2590900
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2590845
  · exact cover_2590900
#print axioms cover_2590844

def state_2590843 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 23 else 10)))
theorem cover_2590843 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2590843 := by
  apply coveredState_split_literal (state := state_2590843) 4
    state_2590844 state_2590917
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2590844
  · exact cover_2590917
#print axioms cover_2590843

def state_2590841 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 11 else 10)))
theorem cover_2590841 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2590841 := by
  apply coveredState_split_literal (state := state_2590841) 3
    state_2590842 state_2590843
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2590842
  · exact cover_2590843
#print axioms cover_2590841

def state_2590918 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 11 else 10)))
theorem cover_2590918 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2590918 := by
  apply coveredState_split_literal (state := state_2590918) 3
    state_2590919 state_2590938
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2590919
  · exact cover_2590938
#print axioms cover_2590918

def state_2590840 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 10)))
theorem cover_2590840 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2590840 := by
  apply coveredState_split_literal (state := state_2590840) 2
    state_2590841 state_2590918
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2590841
  · exact cover_2590918
#print axioms cover_2590840

def state_2590822 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 9) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 10)))
theorem cover_2590822 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2590822 := by
  apply coveredState_split_literal (state := state_2590822) 0
    state_2590823 state_2590840
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2590823
  · exact cover_2590840
#print axioms cover_2590822

def state_2590406 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 10)))
theorem cover_2590406 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2590406 := by
  apply coveredState_split_literal (state := state_2590406) 1
    state_2590407 state_2590822
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2590407
  · exact cover_2590822
#print axioms cover_2590406

def state_2590405 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 5)))
theorem cover_2590405 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2590405 := by
  apply coveredState_split_literal (state := state_2590405) 4
    state_2590406 state_2590987
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2590406
  · exact cover_2590987
#print axioms cover_2590405

def state_2590387 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 5 else 5)))
theorem cover_2590387 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2590387 := by
  apply coveredState_split_literal (state := state_2590387) 3
    state_2590388 state_2590405
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2590388
  · exact cover_2590405
#print axioms cover_2590387

def state_2590386 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 5)))
theorem cover_2590386 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2590386 := by
  apply coveredState_split_literal (state := state_2590386) 2
    state_2590387 state_2590990
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2590387
  · exact cover_2590990
#print axioms cover_2590386

def state_2591162 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 32) else (if j.val < 3 then 49 else (if j.val < 4 then 45 else 40)))
theorem cover_2591162 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2591162 := by
  apply coveredState_split_literal (state := state_2591162) 2
    state_2591163 state_2591200
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2591163
  · exact cover_2591200
#print axioms cover_2591162

def state_2591161 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 16) else (if j.val < 3 then 49 else (if j.val < 4 then 45 else 40)))
theorem cover_2591161 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2591161 := by
  apply coveredState_split_literal (state := state_2591161) 1
    state_2591162 state_2591239
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2591162
  · exact cover_2591239
#print axioms cover_2591161

def state_2591160 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 16) else (if j.val < 3 then 49 else (if j.val < 4 then 45 else 20)))
theorem cover_2591160 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2591160 := by
  apply coveredState_split_literal (state := state_2591160) 4
    state_2591161 state_2591294
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2591161
  · exact cover_2591294
#print axioms cover_2591160

def state_2591159 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 16) else (if j.val < 3 then 49 else (if j.val < 4 then 45 else 20)))
theorem cover_2591159 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2591159 := by
  apply coveredState_split_literal (state := state_2591159) 0
    state_2591160 state_2591313
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2591160
  · exact cover_2591313
#print axioms cover_2591159

def state_2591131 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 16) else (if j.val < 3 then 49 else (if j.val < 4 then 22 else 20)))
theorem cover_2591131 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2591131 := by
  apply coveredState_split_literal (state := state_2591131) 3
    state_2591132 state_2591159
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2591132
  · exact cover_2591159
#print axioms cover_2591131

def state_2591087 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 16) else (if j.val < 3 then 24 else (if j.val < 4 then 22 else 20)))
theorem cover_2591087 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2591087 := by
  apply coveredState_split_literal (state := state_2591087) 2
    state_2591088 state_2591131
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2591088
  · exact cover_2591131
#print axioms cover_2591087

def state_2591340 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 17) else (if j.val < 3 then 24 else (if j.val < 4 then 22 else 20)))
theorem cover_2591340 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2591340 := by
  apply coveredState_split_literal (state := state_2591340) 2
    state_2591341 state_2591376
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2591341
  · exact cover_2591376
#print axioms cover_2591340

def state_2591086 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 22 else 20)))
theorem cover_2591086 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2591086 := by
  apply coveredState_split_literal (state := state_2591086) 1
    state_2591087 state_2591340
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2591087
  · exact cover_2591340
#print axioms cover_2591086

def state_2591085 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 22 else 10)))
theorem cover_2591085 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2591085 := by
  apply coveredState_split_literal (state := state_2591085) 4
    state_2591086 state_2591409
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2591086
  · exact cover_2591409
#print axioms cover_2591085

def state_2591084 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 22 else 10)))
theorem cover_2591084 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2591084 := by
  apply coveredState_split_literal (state := state_2591084) 0
    state_2591085 state_2591444
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2591085
  · exact cover_2591444
#print axioms cover_2591084

def state_2591484 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 16) else (if j.val < 3 then 24 else (if j.val < 4 then 23 else 20)))
theorem cover_2591484 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2591484 := by
  apply coveredState_split_literal (state := state_2591484) 2
    state_2591485 state_2591506
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2591485
  · exact cover_2591506
#print axioms cover_2591484

def state_2591570 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 17) else (if j.val < 3 then 48 else (if j.val < 4 then 23 else 20)))
theorem cover_2591570 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2591570 := by
  apply coveredState_split_literal (state := state_2591570) 3
    state_2591571 state_2591634
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2591571
  · exact cover_2591634
#print axioms cover_2591570

def state_2591646 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 17) else (if j.val < 3 then 49 else (if j.val < 4 then 46 else 40)))
theorem cover_2591646 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2591646 := by
  apply coveredState_split_literal (state := state_2591646) 1
    state_2591647 state_2591696
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2591647
  · exact cover_2591696
#print axioms cover_2591646

def state_2591645 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 17) else (if j.val < 3 then 49 else (if j.val < 4 then 46 else 20)))
theorem cover_2591645 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2591645 := by
  apply coveredState_split_literal (state := state_2591645) 4
    state_2591646 state_2591721
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2591646
  · exact cover_2591721
#print axioms cover_2591645

def state_2591644 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 17) else (if j.val < 3 then 49 else (if j.val < 4 then 46 else 20)))
theorem cover_2591644 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2591644 := by
  apply coveredState_split_literal (state := state_2591644) 0
    state_2591645 state_2591722
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2591645
  · exact cover_2591722
#print axioms cover_2591644

def state_2591643 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 17) else (if j.val < 3 then 49 else (if j.val < 4 then 23 else 20)))
theorem cover_2591643 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2591643 := by
  apply coveredState_split_literal (state := state_2591643) 3
    state_2591644 state_2591747
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2591644
  · exact cover_2591747
#print axioms cover_2591643

def state_2591569 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 17) else (if j.val < 3 then 24 else (if j.val < 4 then 23 else 20)))
theorem cover_2591569 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2591569 := by
  apply coveredState_split_literal (state := state_2591569) 2
    state_2591570 state_2591643
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2591570
  · exact cover_2591643
#print axioms cover_2591569
end Mub6.Numerical.CircleFullD0.Forest
