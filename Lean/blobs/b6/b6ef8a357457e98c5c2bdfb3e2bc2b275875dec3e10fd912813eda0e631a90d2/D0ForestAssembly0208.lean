import D0FullInterface
import D0ForestAssembly0205
import D0ForestAssembly0207
import D0ForestChunk0781
import D0ForestChunk0784
import D0ForestChunk0785
import D0ForestChunk0786
import D0ForestChunk0787
import D0ForestChunk0788
import D0ForestChunk0789
import D0ForestChunk0790
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1488409 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 9) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 14)))
theorem cover_1488409 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1488409 := by
  apply coveredState_split_literal (state := state_1488409) 0
    state_1488410 state_1488867
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1488410
  · exact cover_1488867
#print axioms cover_1488409

def state_1488408 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 9) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 7)))
theorem cover_1488408 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1488408 := by
  apply coveredState_split_literal (state := state_1488408) 4
    state_1488409 state_1489088
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1488409
  · exact cover_1489088
#print axioms cover_1488408

def state_1488386 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 7)))
theorem cover_1488386 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1488386 := by
  apply coveredState_split_literal (state := state_1488386) 1
    state_1488387 state_1488408
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1488387
  · exact cover_1488408
#print axioms cover_1488386

def state_1488224 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 10 else (if j.val < 4 then 6 else 7)))
theorem cover_1488224 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1488224 := by
  apply coveredState_split_literal (state := state_1488224) 3
    state_1488225 state_1488386
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1488225
  · exact cover_1488386
#print axioms cover_1488224

def state_1488223 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 7)))
theorem cover_1488223 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1488223 := by
  apply coveredState_split_literal (state := state_1488223) 2
    state_1488224 state_1489099
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1488224
  · exact cover_1489099
#print axioms cover_1488223

def state_1488222 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 7)))
theorem cover_1488222 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1488222 := by
  apply coveredState_split_literal (state := state_1488222) 0
    state_1488223 state_1489126
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1488223
  · exact cover_1489126
#print axioms cover_1488222

def state_1486774 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 3)))
theorem cover_1486774 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486774 := by
  apply coveredState_split_literal (state := state_1486774) 4
    state_1486775 state_1488222
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1486775
  · exact cover_1488222
#print axioms cover_1486774

def state_1489237 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 7)))
theorem cover_1489237 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1489237 := by
  apply coveredState_split_literal (state := state_1489237) 0
    state_1489238 state_1489301
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1489238
  · exact cover_1489301
#print axioms cover_1489237

def state_1489177 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 3)))
theorem cover_1489177 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1489177 := by
  apply coveredState_split_literal (state := state_1489177) 4
    state_1489178 state_1489237
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1489178
  · exact cover_1489237
#print axioms cover_1489177

def state_1486773 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 3)))
theorem cover_1486773 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486773 := by
  apply coveredState_split_literal (state := state_1486773) 3
    state_1486774 state_1489177
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1486774
  · exact cover_1489177
#print axioms cover_1486773

def state_1481333 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_1481333 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481333 := by
  apply coveredState_split_literal (state := state_1481333) 2
    state_1481334 state_1486773
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1481334
  · exact cover_1486773
#print axioms cover_1481333

def state_1489317 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 6)))
theorem cover_1489317 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1489317 := by
  apply coveredState_split_literal (state := state_1489317) 3
    state_1489318 state_1489381
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1489318
  · exact cover_1489381
#print axioms cover_1489317

def state_1489316 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 6)))
theorem cover_1489316 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1489316 := by
  apply coveredState_split_literal (state := state_1489316) 1
    state_1489317 state_1489384
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1489317
  · exact cover_1489384
#print axioms cover_1489316

def state_1489315 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 6)))
theorem cover_1489315 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1489315 := by
  apply coveredState_split_literal (state := state_1489315) 0
    state_1489316 state_1489397
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1489316
  · exact cover_1489397
#print axioms cover_1489315

def state_1489408 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 8 else (if j.val < 4 then 12 else 7)))
theorem cover_1489408 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1489408 := by
  apply coveredState_split_literal (state := state_1489408) 4
    state_1489409 state_1489470
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1489409
  · exact cover_1489470
#print axioms cover_1489408

def state_1489488 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 20) else (if j.val < 3 then 18 else (if j.val < 4 then 24 else 14)))
theorem cover_1489488 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1489488 := by
  apply coveredState_split_literal (state := state_1489488) 4
    state_1489489 state_1489534
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1489489
  · exact cover_1489534
#print axioms cover_1489488

def state_1489554 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 20) else (if j.val < 3 then 19 else (if j.val < 4 then 24 else 28)))
theorem cover_1489554 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1489554 := by
  apply coveredState_split_literal (state := state_1489554) 0
    state_1489555 state_1489586
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1489555
  · exact cover_1489586
#print axioms cover_1489554

def state_1489553 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 20) else (if j.val < 3 then 19 else (if j.val < 4 then 24 else 14)))
theorem cover_1489553 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1489553 := by
  apply coveredState_split_literal (state := state_1489553) 4
    state_1489554 state_1489623
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1489554
  · exact cover_1489623
#print axioms cover_1489553

def state_1489487 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 20) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 14)))
theorem cover_1489487 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1489487 := by
  apply coveredState_split_literal (state := state_1489487) 2
    state_1489488 state_1489553
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1489488
  · exact cover_1489553
#print axioms cover_1489487

def state_1489642 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 18 else (if j.val < 4 then 24 else 28)))
theorem cover_1489642 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1489642 := by
  apply coveredState_split_literal (state := state_1489642) 0
    state_1489643 state_1489676
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1489643
  · exact cover_1489676
#print axioms cover_1489642

def state_1489792 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 43) else (if j.val < 3 then 37 else (if j.val < 4 then 48 else 29)))
theorem cover_1489792 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1489792 := by
  apply coveredState_split_literal (state := state_1489792) 4
    state_1489793 state_1489828
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1489793
  · exact cover_1489828
#print axioms cover_1489792

def state_1489780 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 43) else (if j.val < 3 then 18 else (if j.val < 4 then 48 else 29)))
theorem cover_1489780 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1489780 := by
  apply coveredState_split_literal (state := state_1489780) 2
    state_1489781 state_1489792
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1489781
  · exact cover_1489792
#print axioms cover_1489780

def state_1489778 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 21) else (if j.val < 3 then 18 else (if j.val < 4 then 48 else 29)))
theorem cover_1489778 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1489778 := by
  apply coveredState_split_literal (state := state_1489778) 1
    state_1489779 state_1489780
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1489779
  · exact cover_1489780
#print axioms cover_1489778

def state_1489777 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 21) else (if j.val < 3 then 18 else (if j.val < 4 then 24 else 29)))
theorem cover_1489777 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1489777 := by
  apply coveredState_split_literal (state := state_1489777) 3
    state_1489778 state_1489867
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1489778
  · exact cover_1489867
#print axioms cover_1489777

def state_1489719 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 18 else (if j.val < 4 then 24 else 29)))
theorem cover_1489719 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1489719 := by
  apply coveredState_split_literal (state := state_1489719) 0
    state_1489720 state_1489777
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1489720
  · exact cover_1489777
#print axioms cover_1489719

def state_1489641 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 18 else (if j.val < 4 then 24 else 14)))
theorem cover_1489641 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1489641 := by
  apply coveredState_split_literal (state := state_1489641) 4
    state_1489642 state_1489719
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1489642
  · exact cover_1489719
#print axioms cover_1489641

def state_1490026 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 43) else (if j.val < 3 then 38 else (if j.val < 4 then 48 else 29)))
theorem cover_1490026 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1490026 := by
  apply coveredState_split_literal (state := state_1490026) 4
    state_1490027 state_1490040
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1490027
  · exact cover_1490040
#print axioms cover_1490026

def state_1490025 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 43) else (if j.val < 3 then 19 else (if j.val < 4 then 48 else 29)))
theorem cover_1490025 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1490025 := by
  apply coveredState_split_literal (state := state_1490025) 2
    state_1490026 state_1490091
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1490026
  · exact cover_1490091
#print axioms cover_1490025

def state_1489999 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 21) else (if j.val < 3 then 19 else (if j.val < 4 then 48 else 29)))
theorem cover_1489999 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1489999 := by
  apply coveredState_split_literal (state := state_1489999) 1
    state_1490000 state_1490025
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1490000
  · exact cover_1490025
#print axioms cover_1489999

def state_1490163 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 43) else (if j.val < 3 then 38 else (if j.val < 4 then 49 else 29)))
theorem cover_1490163 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1490163 := by
  apply coveredState_split_literal (state := state_1490163) 4
    state_1490164 state_1490197
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1490164
  · exact cover_1490197
#print axioms cover_1490163

def state_1490272 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 43) else (if j.val < 3 then 39 else (if j.val < 4 then 49 else 59)))
theorem cover_1490272 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1490272 := by
  apply coveredState_split_literal (state := state_1490272) 0
    state_1490273 state_1490312
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1490273
  · exact cover_1490312
#print axioms cover_1490272

def state_1490258 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 43) else (if j.val < 3 then 39 else (if j.val < 4 then 49 else 29)))
theorem cover_1490258 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1490258 := by
  apply coveredState_split_literal (state := state_1490258) 4
    state_1490259 state_1490272
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1490259
  · exact cover_1490272
#print axioms cover_1490258
end Mub6.Numerical.CircleFullD0.Forest
