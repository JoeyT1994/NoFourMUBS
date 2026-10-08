import D0FullInterface
import D0ForestAssembly0530
import D0ForestChunk2090
import D0ForestChunk2092
import D0ForestChunk2093
import D0ForestChunk2094
import D0ForestChunk2095
import D0ForestChunk2096
import D0ForestChunk2097
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2582746 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 12 else 9)))
theorem cover_2582746 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2582746 := by
  apply coveredState_split_literal (state := state_2582746) 2
    state_2582747 state_2582768
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2582747
  · exact cover_2582768
#print axioms cover_2582746

def state_2582730 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 12 else 9)))
theorem cover_2582730 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2582730 := by
  apply coveredState_split_literal (state := state_2582730) 0
    state_2582731 state_2582746
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2582731
  · exact cover_2582746
#print axioms cover_2582730

def state_2582320 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 12 else 4)))
theorem cover_2582320 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2582320 := by
  apply coveredState_split_literal (state := state_2582320) 4
    state_2582321 state_2582730
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2582321
  · exact cover_2582730
#print axioms cover_2582320

def state_2582319 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 6 else 4)))
theorem cover_2582319 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2582319 := by
  apply coveredState_split_literal (state := state_2582319) 3
    state_2582320 state_2582893
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2582320
  · exact cover_2582893
#print axioms cover_2582319

def state_2582289 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 4)))
theorem cover_2582289 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2582289 := by
  apply coveredState_split_literal (state := state_2582289) 2
    state_2582290 state_2582319
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2582290
  · exact cover_2582319
#print axioms cover_2582289

def state_2582288 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 4)))
theorem cover_2582288 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2582288 := by
  apply coveredState_split_literal (state := state_2582288) 1
    state_2582289 state_2582920
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2582289
  · exact cover_2582920
#print axioms cover_2582288

def state_2583042 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 40) else (if j.val < 3 then 45 else (if j.val < 4 then 49 else 32)))
theorem cover_2583042 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2583042 := by
  apply coveredState_split_literal (state := state_2583042) 3
    state_2583043 state_2583080
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2583043
  · exact cover_2583080
#print axioms cover_2583042

def state_2583041 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 40) else (if j.val < 3 then 45 else (if j.val < 4 then 49 else 16)))
theorem cover_2583041 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2583041 := by
  apply coveredState_split_literal (state := state_2583041) 4
    state_2583042 state_2583119
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2583042
  · exact cover_2583119
#print axioms cover_2583041

def state_2583040 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 20) else (if j.val < 3 then 45 else (if j.val < 4 then 49 else 16)))
theorem cover_2583040 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2583040 := by
  apply coveredState_split_literal (state := state_2583040) 1
    state_2583041 state_2583174
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2583041
  · exact cover_2583174
#print axioms cover_2583040

def state_2583039 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 20) else (if j.val < 3 then 45 else (if j.val < 4 then 49 else 16)))
theorem cover_2583039 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2583039 := by
  apply coveredState_split_literal (state := state_2583039) 0
    state_2583040 state_2583193
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2583040
  · exact cover_2583193
#print axioms cover_2583039

def state_2583011 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 20) else (if j.val < 3 then 22 else (if j.val < 4 then 49 else 16)))
theorem cover_2583011 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2583011 := by
  apply coveredState_split_literal (state := state_2583011) 2
    state_2583012 state_2583039
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2583012
  · exact cover_2583039
#print axioms cover_2583011

def state_2582967 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 20) else (if j.val < 3 then 22 else (if j.val < 4 then 24 else 16)))
theorem cover_2582967 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2582967 := by
  apply coveredState_split_literal (state := state_2582967) 3
    state_2582968 state_2583011
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2582968
  · exact cover_2583011
#print axioms cover_2582967

def state_2583220 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 20) else (if j.val < 3 then 22 else (if j.val < 4 then 24 else 17)))
theorem cover_2583220 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2583220 := by
  apply coveredState_split_literal (state := state_2583220) 3
    state_2583221 state_2583256
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2583221
  · exact cover_2583256
#print axioms cover_2583220

def state_2582966 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 20) else (if j.val < 3 then 22 else (if j.val < 4 then 24 else 8)))
theorem cover_2582966 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2582966 := by
  apply coveredState_split_literal (state := state_2582966) 4
    state_2582967 state_2583220
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2582967
  · exact cover_2583220
#print axioms cover_2582966

def state_2582965 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 10) else (if j.val < 3 then 22 else (if j.val < 4 then 24 else 8)))
theorem cover_2582965 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2582965 := by
  apply coveredState_split_literal (state := state_2582965) 1
    state_2582966 state_2583289
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2582966
  · exact cover_2583289
#print axioms cover_2582965

def state_2582964 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 10) else (if j.val < 3 then 22 else (if j.val < 4 then 24 else 8)))
theorem cover_2582964 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2582964 := by
  apply coveredState_split_literal (state := state_2582964) 0
    state_2582965 state_2583324
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2582965
  · exact cover_2583324
#print axioms cover_2582964

def state_2583363 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 20) else (if j.val < 3 then 22 else (if j.val < 4 then 25 else 8)))
theorem cover_2583363 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2583363 := by
  apply coveredState_split_literal (state := state_2583363) 4
    state_2583364 state_2583417
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2583364
  · exact cover_2583417
#print axioms cover_2583363

def state_2583362 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 10) else (if j.val < 3 then 22 else (if j.val < 4 then 25 else 8)))
theorem cover_2583362 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2583362 := by
  apply coveredState_split_literal (state := state_2583362) 1
    state_2583363 state_2583428
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2583363
  · exact cover_2583428
#print axioms cover_2583362

def state_2583361 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 10) else (if j.val < 3 then 22 else (if j.val < 4 then 25 else 8)))
theorem cover_2583361 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2583361 := by
  apply coveredState_split_literal (state := state_2583361) 0
    state_2583362 state_2583445
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2583362
  · exact cover_2583445
#print axioms cover_2583361

def state_2582963 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 10) else (if j.val < 3 then 22 else (if j.val < 4 then 12 else 8)))
theorem cover_2582963 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2582963 := by
  apply coveredState_split_literal (state := state_2582963) 3
    state_2582964 state_2583361
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2582964
  · exact cover_2583361
#print axioms cover_2582963

def state_2583461 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 20) else (if j.val < 3 then 46 else (if j.val < 4 then 24 else 16)))
theorem cover_2583461 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2583461 := by
  apply coveredState_split_literal (state := state_2583461) 3
    state_2583462 state_2583479
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2583462
  · exact cover_2583479
#print axioms cover_2583461

def state_2583460 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 20) else (if j.val < 3 then 23 else (if j.val < 4 then 24 else 16)))
theorem cover_2583460 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2583460 := by
  apply coveredState_split_literal (state := state_2583460) 2
    state_2583461 state_2583536
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2583461
  · exact cover_2583536
#print axioms cover_2583460

def state_2583612 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 40) else (if j.val < 3 then 46 else (if j.val < 4 then 49 else 17)))
theorem cover_2583612 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2583612 := by
  apply coveredState_split_literal (state := state_2583612) 4
    state_2583613 state_2583662
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2583613
  · exact cover_2583662
#print axioms cover_2583612

def state_2583611 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 52 else 20) else (if j.val < 3 then 46 else (if j.val < 4 then 49 else 17)))
theorem cover_2583611 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2583611 := by
  apply coveredState_split_literal (state := state_2583611) 1
    state_2583612 state_2583687
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2583612
  · exact cover_2583687
#print axioms cover_2583611

def state_2583610 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 20) else (if j.val < 3 then 46 else (if j.val < 4 then 49 else 17)))
theorem cover_2583610 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2583610 := by
  apply coveredState_split_literal (state := state_2583610) 0
    state_2583611 state_2583688
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2583611
  · exact cover_2583688
#print axioms cover_2583610

def state_2583546 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 20) else (if j.val < 3 then 46 else (if j.val < 4 then 24 else 17)))
theorem cover_2583546 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2583546 := by
  apply coveredState_split_literal (state := state_2583546) 3
    state_2583547 state_2583610
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2583547
  · exact cover_2583610
#print axioms cover_2583546

def state_2583545 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 20) else (if j.val < 3 then 23 else (if j.val < 4 then 24 else 17)))
theorem cover_2583545 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2583545 := by
  apply coveredState_split_literal (state := state_2583545) 2
    state_2583546 state_2583705
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2583546
  · exact cover_2583705
#print axioms cover_2583545

def state_2583459 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 20) else (if j.val < 3 then 23 else (if j.val < 4 then 24 else 8)))
theorem cover_2583459 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2583459 := by
  apply coveredState_split_literal (state := state_2583459) 4
    state_2583460 state_2583545
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2583460
  · exact cover_2583545
#print axioms cover_2583459

def state_2583458 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 10) else (if j.val < 3 then 23 else (if j.val < 4 then 24 else 8)))
theorem cover_2583458 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2583458 := by
  apply coveredState_split_literal (state := state_2583458) 1
    state_2583459 state_2583744
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2583459
  · exact cover_2583744
#print axioms cover_2583458

def state_2583457 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 10) else (if j.val < 3 then 23 else (if j.val < 4 then 24 else 8)))
theorem cover_2583457 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2583457 := by
  apply coveredState_split_literal (state := state_2583457) 0
    state_2583458 state_2583745
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2583458
  · exact cover_2583745
#print axioms cover_2583457

def state_2583794 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 20) else (if j.val < 3 then 23 else (if j.val < 4 then 25 else 8)))
theorem cover_2583794 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2583794 := by
  apply coveredState_split_literal (state := state_2583794) 4
    state_2583795 state_2583830
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2583795
  · exact cover_2583830
#print axioms cover_2583794

def state_2583793 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 10) else (if j.val < 3 then 23 else (if j.val < 4 then 25 else 8)))
theorem cover_2583793 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2583793 := by
  apply coveredState_split_literal (state := state_2583793) 1
    state_2583794 state_2583887
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2583794
  · exact cover_2583887
#print axioms cover_2583793
end Mub6.Numerical.CircleFullD0.Forest
