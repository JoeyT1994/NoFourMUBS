import D0FullInterface
import D0ForestAssembly0097
import D0ForestChunk0390
import D0ForestChunk0391
import D0ForestChunk0394
import D0ForestChunk0395
import D0ForestChunk0396
import D0ForestChunk0397
import D0ForestChunk0398
import D0ForestChunk0399
import D0ForestChunk0400
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1031577 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 50) else (if j.val < 3 then 51 else (if j.val < 4 then 37 else 62)))
theorem cover_1031577 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1031577 := by
  apply coveredState_split_literal (state := state_1031577) 1
    state_1031578 state_1031609
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1031578
  · exact cover_1031609
#print axioms cover_1031577

def state_1031311 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 50) else (if j.val < 3 then 51 else (if j.val < 4 then 37 else 62)))
theorem cover_1031311 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1031311 := by
  apply coveredState_split_literal (state := state_1031311) 0
    state_1031312 state_1031577
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1031312
  · exact cover_1031577
#print axioms cover_1031311

def state_1032236 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 101) else (if j.val < 3 then 51 else (if j.val < 4 then 37 else 63)))
theorem cover_1032236 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1032236 := by
  apply coveredState_split_literal (state := state_1032236) 2
    state_1032237 state_1032256
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1032237
  · exact cover_1032256
#print axioms cover_1032236

def state_1032232 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 50) else (if j.val < 3 then 51 else (if j.val < 4 then 37 else 63)))
theorem cover_1032232 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1032232 := by
  apply coveredState_split_literal (state := state_1032232) 1
    state_1032233 state_1032236
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1032233
  · exact cover_1032236
#print axioms cover_1032232

def state_1032216 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 50) else (if j.val < 3 then 51 else (if j.val < 4 then 37 else 63)))
theorem cover_1032216 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1032216 := by
  apply coveredState_split_literal (state := state_1032216) 0
    state_1032217 state_1032232
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1032217
  · exact cover_1032232
#print axioms cover_1032216

def state_1031310 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 50) else (if j.val < 3 then 51 else (if j.val < 4 then 37 else 31)))
theorem cover_1031310 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1031310 := by
  apply coveredState_split_literal (state := state_1031310) 4
    state_1031311 state_1032216
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1031311
  · exact cover_1032216
#print axioms cover_1031310

def state_1031194 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 50) else (if j.val < 3 then 51 else (if j.val < 4 then 18 else 31)))
theorem cover_1031194 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1031194 := by
  apply coveredState_split_literal (state := state_1031194) 3
    state_1031195 state_1031310
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1031195
  · exact cover_1031310
#print axioms cover_1031194

def state_1031154 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 50) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 31)))
theorem cover_1031154 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1031154 := by
  apply coveredState_split_literal (state := state_1031154) 2
    state_1031155 state_1031194
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1031155
  · exact cover_1031194
#print axioms cover_1031154

def state_1032308 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 51) else (if j.val < 3 then 50 else (if j.val < 4 then 18 else 31)))
theorem cover_1032308 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1032308 := by
  apply coveredState_split_literal (state := state_1032308) 3
    state_1032309 state_1032328
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1032309
  · exact cover_1032328
#print axioms cover_1032308

def state_1032486 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 102) else (if j.val < 3 then 103 else (if j.val < 4 then 37 else 62)))
theorem cover_1032486 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1032486 := by
  apply coveredState_split_literal (state := state_1032486) 3
    state_1032487 state_1032536
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1032487
  · exact cover_1032536
#print axioms cover_1032486

def state_1032448 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 102) else (if j.val < 3 then 51 else (if j.val < 4 then 37 else 62)))
theorem cover_1032448 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1032448 := by
  apply coveredState_split_literal (state := state_1032448) 2
    state_1032449 state_1032486
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1032449
  · exact cover_1032486
#print axioms cover_1032448

def state_1032447 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 51) else (if j.val < 3 then 51 else (if j.val < 4 then 37 else 62)))
theorem cover_1032447 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1032447 := by
  apply coveredState_split_literal (state := state_1032447) 1
    state_1032448 state_1032567
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1032448
  · exact cover_1032567
#print axioms cover_1032447

def state_1032632 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 102) else (if j.val < 3 then 103 else (if j.val < 4 then 74 else 62)))
theorem cover_1032632 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1032632 := by
  apply coveredState_split_literal (state := state_1032632) 4
    state_1032633 state_1032646
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1032633
  · exact cover_1032646
#print axioms cover_1032632

def state_1032745 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 204) else (if j.val < 3 then 206 else (if j.val < 4 then 150 else 125)))
theorem cover_1032745 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1032745 := by
  apply coveredState_split_literal (state := state_1032745) 4
    state_1032746 state_1032757
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1032746
  · exact cover_1032757
#print axioms cover_1032745

def state_1032744 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 204) else (if j.val < 3 then 206 else (if j.val < 4 then 75 else 125)))
theorem cover_1032744 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1032744 := by
  apply coveredState_split_literal (state := state_1032744) 3
    state_1032745 state_1032814
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1032745
  · exact cover_1032814
#print axioms cover_1032744

def state_1032828 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 204) else (if j.val < 3 then 207 else (if j.val < 4 then 150 else 125)))
theorem cover_1032828 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1032828 := by
  apply coveredState_split_literal (state := state_1032828) 4
    state_1032829 state_1032864
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1032829
  · exact cover_1032864
#print axioms cover_1032828

def state_1032827 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 204) else (if j.val < 3 then 207 else (if j.val < 4 then 75 else 125)))
theorem cover_1032827 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1032827 := by
  apply coveredState_split_literal (state := state_1032827) 3
    state_1032828 state_1032923
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1032828
  · exact cover_1032923
#print axioms cover_1032827

def state_1032743 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 204) else (if j.val < 3 then 103 else (if j.val < 4 then 75 else 125)))
theorem cover_1032743 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1032743 := by
  apply coveredState_split_literal (state := state_1032743) 2
    state_1032744 state_1032827
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1032744
  · exact cover_1032827
#print axioms cover_1032743

def state_1032742 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 102) else (if j.val < 3 then 103 else (if j.val < 4 then 75 else 125)))
theorem cover_1032742 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1032742 := by
  apply coveredState_split_literal (state := state_1032742) 1
    state_1032743 state_1032978
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1032743
  · exact cover_1032978
#print axioms cover_1032742

def state_1033100 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 204) else (if j.val < 3 then 207 else (if j.val < 4 then 151 else 125)))
theorem cover_1033100 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1033100 := by
  apply coveredState_split_literal (state := state_1033100) 4
    state_1033101 state_1033110
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1033101
  · exact cover_1033110
#print axioms cover_1033100

def state_1033076 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 204) else (if j.val < 3 then 207 else (if j.val < 4 then 75 else 125)))
theorem cover_1033076 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1033076 := by
  apply coveredState_split_literal (state := state_1033076) 3
    state_1033077 state_1033100
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1033077
  · exact cover_1033100
#print axioms cover_1033076

def state_1033030 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 204) else (if j.val < 3 then 103 else (if j.val < 4 then 75 else 125)))
theorem cover_1033030 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1033030 := by
  apply coveredState_split_literal (state := state_1033030) 2
    state_1033031 state_1033076
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1033031
  · exact cover_1033076
#print axioms cover_1033030

def state_1033029 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 102) else (if j.val < 3 then 103 else (if j.val < 4 then 75 else 125)))
theorem cover_1033029 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1033029 := by
  apply coveredState_split_literal (state := state_1033029) 1
    state_1033030 state_1033171
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1033030
  · exact cover_1033171
#print axioms cover_1033029

def state_1032741 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 102) else (if j.val < 3 then 103 else (if j.val < 4 then 75 else 125)))
theorem cover_1032741 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1032741 := by
  apply coveredState_split_literal (state := state_1032741) 0
    state_1032742 state_1033029
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1032742
  · exact cover_1033029
#print axioms cover_1032741

def state_1032701 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 102) else (if j.val < 3 then 103 else (if j.val < 4 then 75 else 62)))
theorem cover_1032701 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1032701 := by
  apply coveredState_split_literal (state := state_1032701) 4
    state_1032702 state_1032741
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1032702
  · exact cover_1032741
#print axioms cover_1032701

def state_1032631 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 102) else (if j.val < 3 then 103 else (if j.val < 4 then 37 else 62)))
theorem cover_1032631 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1032631 := by
  apply coveredState_split_literal (state := state_1032631) 3
    state_1032632 state_1032701
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1032632
  · exact cover_1032701
#print axioms cover_1032631

def state_1032575 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 102) else (if j.val < 3 then 51 else (if j.val < 4 then 37 else 62)))
theorem cover_1032575 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1032575 := by
  apply coveredState_split_literal (state := state_1032575) 2
    state_1032576 state_1032631
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1032576
  · exact cover_1032631
#print axioms cover_1032575

def state_1032574 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 51) else (if j.val < 3 then 51 else (if j.val < 4 then 37 else 62)))
theorem cover_1032574 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1032574 := by
  apply coveredState_split_literal (state := state_1032574) 1
    state_1032575 state_1033230
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1032575
  · exact cover_1033230
#print axioms cover_1032574

def state_1032446 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 51) else (if j.val < 3 then 51 else (if j.val < 4 then 37 else 62)))
theorem cover_1032446 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1032446 := by
  apply coveredState_split_literal (state := state_1032446) 0
    state_1032447 state_1032574
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1032447
  · exact cover_1032574
#print axioms cover_1032446

def state_1033349 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 102) else (if j.val < 3 then 102 else (if j.val < 4 then 37 else 63)))
theorem cover_1033349 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1033349 := by
  apply coveredState_split_literal (state := state_1033349) 3
    state_1033350 state_1033393
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1033350
  · exact cover_1033393
#print axioms cover_1033349

def state_1033508 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 204) else (if j.val < 3 then 206 else (if j.val < 4 then 75 else 126)))
theorem cover_1033508 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1033508 := by
  apply coveredState_split_literal (state := state_1033508) 3
    state_1033509 state_1033556
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1033509
  · exact cover_1033556
#print axioms cover_1033508

def state_1033573 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 204) else (if j.val < 3 then 207 else (if j.val < 4 then 75 else 126)))
theorem cover_1033573 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1033573 := by
  apply coveredState_split_literal (state := state_1033573) 3
    state_1033574 state_1033611
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1033574
  · exact cover_1033611
#print axioms cover_1033573
end Mub6.Numerical.CircleFullD0.Forest
