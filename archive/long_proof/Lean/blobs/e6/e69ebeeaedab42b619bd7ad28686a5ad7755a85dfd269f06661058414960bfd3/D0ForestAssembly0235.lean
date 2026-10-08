import D0FullInterface
import D0ForestAssembly0234
import D0ForestChunk0893
import D0ForestChunk0894
import D0ForestChunk0895
import D0ForestChunk0896
import D0ForestChunk0897
import D0ForestChunk0898
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1515187 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 90) else (if j.val < 3 then 42 else (if j.val < 4 then 53 else 61)))
theorem cover_1515187 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1515187 := by
  apply coveredState_split_literal (state := state_1515187) 2
    state_1515188 state_1515215
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1515188
  · exact cover_1515215
#print axioms cover_1515187

def state_1515186 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 45) else (if j.val < 3 then 42 else (if j.val < 4 then 53 else 61)))
theorem cover_1515186 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1515186 := by
  apply coveredState_split_literal (state := state_1515186) 1
    state_1515187 state_1515272
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1515187
  · exact cover_1515272
#print axioms cover_1515186

def state_1515098 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 45) else (if j.val < 3 then 42 else (if j.val < 4 then 53 else 61)))
theorem cover_1515098 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1515098 := by
  apply coveredState_split_literal (state := state_1515098) 0
    state_1515099 state_1515186
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1515099
  · exact cover_1515186
#print axioms cover_1515098

def state_1515082 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 45) else (if j.val < 3 then 42 else (if j.val < 4 then 53 else 30)))
theorem cover_1515082 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1515082 := by
  apply coveredState_split_literal (state := state_1515082) 4
    state_1515083 state_1515098
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1515083
  · exact cover_1515098
#print axioms cover_1515082

def state_1515000 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 45) else (if j.val < 3 then 42 else (if j.val < 4 then 26 else 30)))
theorem cover_1515000 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1515000 := by
  apply coveredState_split_literal (state := state_1515000) 3
    state_1515001 state_1515082
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1515001
  · exact cover_1515082
#print axioms cover_1515000

def state_1514999 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 45) else (if j.val < 3 then 21 else (if j.val < 4 then 26 else 30)))
theorem cover_1514999 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1514999 := by
  apply coveredState_split_literal (state := state_1514999) 2
    state_1515000 state_1515277
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1515000
  · exact cover_1515277
#print axioms cover_1514999

def state_1512987 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 22) else (if j.val < 3 then 21 else (if j.val < 4 then 26 else 30)))
theorem cover_1512987 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1512987 := by
  apply coveredState_split_literal (state := state_1512987) 1
    state_1512988 state_1514999
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1512988
  · exact cover_1514999
#print axioms cover_1512987

def state_1515304 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 22) else (if j.val < 3 then 21 else (if j.val < 4 then 26 else 30)))
theorem cover_1515304 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1515304 := by
  apply coveredState_split_literal (state := state_1515304) 1
    state_1515305 state_1515368
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1515305
  · exact cover_1515368
#print axioms cover_1515304

def state_1512986 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 22) else (if j.val < 3 then 21 else (if j.val < 4 then 26 else 30)))
theorem cover_1512986 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1512986 := by
  apply coveredState_split_literal (state := state_1512986) 0
    state_1512987 state_1515304
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1512987
  · exact cover_1515304
#print axioms cover_1512986

def state_1515405 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 44) else (if j.val < 3 then 42 else (if j.val < 4 then 53 else 62)))
theorem cover_1515405 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1515405 := by
  apply coveredState_split_literal (state := state_1515405) 0
    state_1515406 state_1515459
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1515406
  · exact cover_1515459
#print axioms cover_1515405

def state_1515404 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 44) else (if j.val < 3 then 42 else (if j.val < 4 then 53 else 31)))
theorem cover_1515404 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1515404 := by
  apply coveredState_split_literal (state := state_1515404) 4
    state_1515405 state_1515482
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1515405
  · exact cover_1515482
#print axioms cover_1515404

def state_1515396 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 44) else (if j.val < 3 then 42 else (if j.val < 4 then 26 else 31)))
theorem cover_1515396 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1515396 := by
  apply coveredState_split_literal (state := state_1515396) 3
    state_1515397 state_1515404
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1515397
  · exact cover_1515404
#print axioms cover_1515396

def state_1515395 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 44) else (if j.val < 3 then 21 else (if j.val < 4 then 26 else 31)))
theorem cover_1515395 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1515395 := by
  apply coveredState_split_literal (state := state_1515395) 2
    state_1515396 state_1515485
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1515396
  · exact cover_1515485
#print axioms cover_1515395

def state_1515536 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 90) else (if j.val < 3 then 42 else (if j.val < 4 then 53 else 62)))
theorem cover_1515536 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1515536 := by
  apply coveredState_split_literal (state := state_1515536) 2
    state_1515537 state_1515596
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1515537
  · exact cover_1515596
#print axioms cover_1515536

def state_1515535 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 45) else (if j.val < 3 then 42 else (if j.val < 4 then 53 else 62)))
theorem cover_1515535 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1515535 := by
  apply coveredState_split_literal (state := state_1515535) 1
    state_1515536 state_1515621
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1515536
  · exact cover_1515621
#print axioms cover_1515535

def state_1515699 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 90) else (if j.val < 3 then 85 else (if j.val < 4 then 107 else 62)))
theorem cover_1515699 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1515699 := by
  apply coveredState_split_literal (state := state_1515699) 4
    state_1515700 state_1515759
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1515700
  · exact cover_1515759
#print axioms cover_1515699

def state_1515685 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 90) else (if j.val < 3 then 85 else (if j.val < 4 then 53 else 62)))
theorem cover_1515685 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1515685 := by
  apply coveredState_split_literal (state := state_1515685) 3
    state_1515686 state_1515699
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1515686
  · exact cover_1515699
#print axioms cover_1515685

def state_1515657 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 90) else (if j.val < 3 then 42 else (if j.val < 4 then 53 else 62)))
theorem cover_1515657 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1515657 := by
  apply coveredState_split_literal (state := state_1515657) 2
    state_1515658 state_1515685
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1515658
  · exact cover_1515685
#print axioms cover_1515657

def state_1515656 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 45) else (if j.val < 3 then 42 else (if j.val < 4 then 53 else 62)))
theorem cover_1515656 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1515656 := by
  apply coveredState_split_literal (state := state_1515656) 1
    state_1515657 state_1515766
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1515657
  · exact cover_1515766
#print axioms cover_1515656

def state_1515534 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 45) else (if j.val < 3 then 42 else (if j.val < 4 then 53 else 62)))
theorem cover_1515534 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1515534 := by
  apply coveredState_split_literal (state := state_1515534) 0
    state_1515535 state_1515656
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1515535
  · exact cover_1515656
#print axioms cover_1515534

def state_1515533 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 45) else (if j.val < 3 then 42 else (if j.val < 4 then 53 else 31)))
theorem cover_1515533 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1515533 := by
  apply coveredState_split_literal (state := state_1515533) 4
    state_1515534 state_1515827
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1515534
  · exact cover_1515827
#print axioms cover_1515533

def state_1515503 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 45) else (if j.val < 3 then 42 else (if j.val < 4 then 26 else 31)))
theorem cover_1515503 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1515503 := by
  apply coveredState_split_literal (state := state_1515503) 3
    state_1515504 state_1515533
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1515504
  · exact cover_1515533
#print axioms cover_1515503

def state_1515502 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 45) else (if j.val < 3 then 21 else (if j.val < 4 then 26 else 31)))
theorem cover_1515502 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1515502 := by
  apply coveredState_split_literal (state := state_1515502) 2
    state_1515503 state_1515842
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1515503
  · exact cover_1515842
#print axioms cover_1515502

def state_1515394 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 22) else (if j.val < 3 then 21 else (if j.val < 4 then 26 else 31)))
theorem cover_1515394 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1515394 := by
  apply coveredState_split_literal (state := state_1515394) 1
    state_1515395 state_1515502
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1515395
  · exact cover_1515502
#print axioms cover_1515394

def state_1515893 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 22) else (if j.val < 3 then 21 else (if j.val < 4 then 26 else 31)))
theorem cover_1515893 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1515893 := by
  apply coveredState_split_literal (state := state_1515893) 1
    state_1515894 state_1515923
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1515894
  · exact cover_1515923
#print axioms cover_1515893

def state_1515393 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 22) else (if j.val < 3 then 21 else (if j.val < 4 then 26 else 31)))
theorem cover_1515393 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1515393 := by
  apply coveredState_split_literal (state := state_1515393) 0
    state_1515394 state_1515893
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1515394
  · exact cover_1515893
#print axioms cover_1515393

def state_1512985 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 22) else (if j.val < 3 then 21 else (if j.val < 4 then 26 else 15)))
theorem cover_1512985 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1512985 := by
  apply coveredState_split_literal (state := state_1512985) 4
    state_1512986 state_1515393
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1512986
  · exact cover_1515393
#print axioms cover_1512985

def state_1516024 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 44) else (if j.val < 3 then 42 else (if j.val < 4 then 54 else 61)))
theorem cover_1516024 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1516024 := by
  apply coveredState_split_literal (state := state_1516024) 1
    state_1516025 state_1516058
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1516025
  · exact cover_1516058
#print axioms cover_1516024

def state_1516101 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 44) else (if j.val < 3 then 42 else (if j.val < 4 then 54 else 61)))
theorem cover_1516101 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1516101 := by
  apply coveredState_split_literal (state := state_1516101) 1
    state_1516102 state_1516117
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1516102
  · exact cover_1516117
#print axioms cover_1516101

def state_1516023 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 44) else (if j.val < 3 then 42 else (if j.val < 4 then 54 else 61)))
theorem cover_1516023 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1516023 := by
  apply coveredState_split_literal (state := state_1516023) 0
    state_1516024 state_1516101
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1516024
  · exact cover_1516101
#print axioms cover_1516023

def state_1515989 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 44) else (if j.val < 3 then 42 else (if j.val < 4 then 54 else 30)))
theorem cover_1515989 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1515989 := by
  apply coveredState_split_literal (state := state_1515989) 4
    state_1515990 state_1516023
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1515990
  · exact cover_1516023
#print axioms cover_1515989

def state_1515988 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 44) else (if j.val < 3 then 42 else (if j.val < 4 then 27 else 30)))
theorem cover_1515988 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1515988 := by
  apply coveredState_split_literal (state := state_1515988) 3
    state_1515989 state_1516170
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1515989
  · exact cover_1516170
#print axioms cover_1515988
end Mub6.Numerical.CircleFullD0.Forest
