import D0FullInterface
import D0ForestAssembly0533
import D0ForestChunk2101
import D0ForestChunk2102
import D0ForestChunk2104
import D0ForestChunk2105
import D0ForestChunk2106
import D0ForestChunk2107
import D0ForestChunk2108
import D0ForestChunk2109
import D0ForestChunk2110
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2586035 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 35) else (if j.val < 3 then 49 else (if j.val < 4 then 46 else 39)))
theorem cover_2586035 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2586035 := by
  apply coveredState_split_literal (state := state_2586035) 2
    state_2586036 state_2586129
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2586036
  · exact cover_2586129
#print axioms cover_2586035

def state_2585945 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 17) else (if j.val < 3 then 49 else (if j.val < 4 then 46 else 39)))
theorem cover_2585945 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2585945 := by
  apply coveredState_split_literal (state := state_2585945) 1
    state_2585946 state_2586035
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2585946
  · exact cover_2586035
#print axioms cover_2585945

def state_2585895 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 17) else (if j.val < 3 then 49 else (if j.val < 4 then 46 else 19)))
theorem cover_2585895 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2585895 := by
  apply coveredState_split_literal (state := state_2585895) 4
    state_2585896 state_2585945
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2585896
  · exact cover_2585945
#print axioms cover_2585895

def state_2585881 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 17) else (if j.val < 3 then 49 else (if j.val < 4 then 46 else 19)))
theorem cover_2585881 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2585881 := by
  apply coveredState_split_literal (state := state_2585881) 0
    state_2585882 state_2585895
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2585882
  · exact cover_2585895
#print axioms cover_2585881

def state_2585880 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 17) else (if j.val < 3 then 49 else (if j.val < 4 then 23 else 19)))
theorem cover_2585880 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2585880 := by
  apply coveredState_split_literal (state := state_2585880) 3
    state_2585881 state_2586152
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2585881
  · exact cover_2586152
#print axioms cover_2585880

def state_2585562 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 17) else (if j.val < 3 then 24 else (if j.val < 4 then 23 else 19)))
theorem cover_2585562 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2585562 := by
  apply coveredState_split_literal (state := state_2585562) 2
    state_2585563 state_2585880
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2585563
  · exact cover_2585880
#print axioms cover_2585562

def state_2585510 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 23 else 19)))
theorem cover_2585510 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2585510 := by
  apply coveredState_split_literal (state := state_2585510) 1
    state_2585511 state_2585562
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2585511
  · exact cover_2585562
#print axioms cover_2585510

def state_2585446 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 23 else 9)))
theorem cover_2585446 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2585446 := by
  apply coveredState_split_literal (state := state_2585446) 4
    state_2585447 state_2585510
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2585447
  · exact cover_2585510
#print axioms cover_2585446

def state_2585010 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 11 else 9)))
theorem cover_2585010 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2585010 := by
  apply coveredState_split_literal (state := state_2585010) 3
    state_2585011 state_2585446
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2585011
  · exact cover_2585446
#print axioms cover_2585010

def state_2586204 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 25 else (if j.val < 4 then 22 else 19)))
theorem cover_2586204 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2586204 := by
  apply coveredState_split_literal (state := state_2586204) 1
    state_2586205 state_2586264
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2586205
  · exact cover_2586264
#print axioms cover_2586204

def state_2586192 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 25 else (if j.val < 4 then 22 else 9)))
theorem cover_2586192 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2586192 := by
  apply coveredState_split_literal (state := state_2586192) 4
    state_2586193 state_2586204
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2586193
  · exact cover_2586204
#print axioms cover_2586192

def state_2586191 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 25 else (if j.val < 4 then 11 else 9)))
theorem cover_2586191 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2586191 := by
  apply coveredState_split_literal (state := state_2586191) 3
    state_2586192 state_2586281
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2586192
  · exact cover_2586281
#print axioms cover_2586191

def state_2585009 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 9)))
theorem cover_2585009 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2585009 := by
  apply coveredState_split_literal (state := state_2585009) 2
    state_2585010 state_2586191
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2585010
  · exact cover_2586191
#print axioms cover_2585009

def state_2584959 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 8) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 9)))
theorem cover_2584959 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2584959 := by
  apply coveredState_split_literal (state := state_2584959) 0
    state_2584960 state_2585009
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2584960
  · exact cover_2585009
#print axioms cover_2584959

def state_2584947 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 8) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 4)))
theorem cover_2584947 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2584947 := by
  apply coveredState_split_literal (state := state_2584947) 4
    state_2584948 state_2584959
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2584948
  · exact cover_2584959
#print axioms cover_2584947

def state_2586535 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 37) else (if j.val < 3 then 96 else (if j.val < 4 then 47 else 37)))
theorem cover_2586535 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2586535 := by
  apply coveredState_split_literal (state := state_2586535) 3
    state_2586536 state_2586561
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2586536
  · exact cover_2586561
#print axioms cover_2586535

def state_2586534 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 37) else (if j.val < 3 then 48 else (if j.val < 4 then 47 else 37)))
theorem cover_2586534 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2586534 := by
  apply coveredState_split_literal (state := state_2586534) 2
    state_2586535 state_2586612
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2586535
  · exact cover_2586612
#print axioms cover_2586534

def state_2586532 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 37) else (if j.val < 3 then 48 else (if j.val < 4 then 47 else 18)))
theorem cover_2586532 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2586532 := by
  apply coveredState_split_literal (state := state_2586532) 4
    state_2586533 state_2586534
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2586533
  · exact cover_2586534
#print axioms cover_2586532

def state_2586494 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 18) else (if j.val < 3 then 48 else (if j.val < 4 then 47 else 18)))
theorem cover_2586494 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2586494 := by
  apply coveredState_split_literal (state := state_2586494) 1
    state_2586495 state_2586532
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2586495
  · exact cover_2586532
#print axioms cover_2586494

def state_2586470 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 18) else (if j.val < 3 then 48 else (if j.val < 4 then 47 else 18)))
theorem cover_2586470 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2586470 := by
  apply coveredState_split_literal (state := state_2586470) 0
    state_2586471 state_2586494
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2586471
  · exact cover_2586494
#print axioms cover_2586470

def state_2586446 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 18) else (if j.val < 3 then 48 else (if j.val < 4 then 23 else 18)))
theorem cover_2586446 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2586446 := by
  apply coveredState_split_literal (state := state_2586446) 3
    state_2586447 state_2586470
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2586447
  · exact cover_2586470
#print axioms cover_2586446

def state_2586445 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 18) else (if j.val < 3 then 24 else (if j.val < 4 then 23 else 18)))
theorem cover_2586445 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2586445 := by
  apply coveredState_split_literal (state := state_2586445) 2
    state_2586446 state_2586631
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2586446
  · exact cover_2586631
#print axioms cover_2586445

def state_2586678 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 36) else (if j.val < 3 then 48 else (if j.val < 4 then 46 else 38)))
theorem cover_2586678 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2586678 := by
  apply coveredState_split_literal (state := state_2586678) 2
    state_2586679 state_2586742
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2586679
  · exact cover_2586742
#print axioms cover_2586678

def state_2586677 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 18) else (if j.val < 3 then 48 else (if j.val < 4 then 46 else 38)))
theorem cover_2586677 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2586677 := by
  apply coveredState_split_literal (state := state_2586677) 1
    state_2586678 state_2586787
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2586678
  · exact cover_2586787
#print axioms cover_2586677

def state_2586875 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 36) else (if j.val < 3 then 97 else (if j.val < 4 then 93 else 39)))
theorem cover_2586875 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2586875 := by
  apply coveredState_split_literal (state := state_2586875) 4
    state_2586876 state_2586933
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2586876
  · exact cover_2586933
#print axioms cover_2586875

def state_2586869 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 36) else (if j.val < 3 then 97 else (if j.val < 4 then 93 else 39)))
theorem cover_2586869 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2586869 := by
  apply coveredState_split_literal (state := state_2586869) 0
    state_2586870 state_2586875
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2586870
  · exact cover_2586875
#print axioms cover_2586869

def state_2586857 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 36) else (if j.val < 3 then 97 else (if j.val < 4 then 46 else 39)))
theorem cover_2586857 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2586857 := by
  apply coveredState_split_literal (state := state_2586857) 3
    state_2586858 state_2586869
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2586858
  · exact cover_2586869
#print axioms cover_2586857

def state_2586823 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 36) else (if j.val < 3 then 48 else (if j.val < 4 then 46 else 39)))
theorem cover_2586823 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2586823 := by
  apply coveredState_split_literal (state := state_2586823) 2
    state_2586824 state_2586857
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2586824
  · exact cover_2586857
#print axioms cover_2586823

def state_2586822 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 18) else (if j.val < 3 then 48 else (if j.val < 4 then 46 else 39)))
theorem cover_2586822 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2586822 := by
  apply coveredState_split_literal (state := state_2586822) 1
    state_2586823 state_2586950
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2586823
  · exact cover_2586950
#print axioms cover_2586822

def state_2586676 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 18) else (if j.val < 3 then 48 else (if j.val < 4 then 46 else 19)))
theorem cover_2586676 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2586676 := by
  apply coveredState_split_literal (state := state_2586676) 4
    state_2586677 state_2586822
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2586677
  · exact cover_2586822
#print axioms cover_2586676

def state_2586666 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 18) else (if j.val < 3 then 48 else (if j.val < 4 then 46 else 19)))
theorem cover_2586666 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2586666 := by
  apply coveredState_split_literal (state := state_2586666) 0
    state_2586667 state_2586676
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2586667
  · exact cover_2586676
#print axioms cover_2586666

def state_2587069 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 36) else (if j.val < 3 then 96 else (if j.val < 4 then 94 else 38)))
theorem cover_2587069 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2587069 := by
  apply coveredState_split_literal (state := state_2587069) 4
    state_2587070 state_2587101
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2587070
  · exact cover_2587101
#print axioms cover_2587069
end Mub6.Numerical.CircleFullD0.Forest
