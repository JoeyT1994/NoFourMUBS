import D0FullInterface
import D0ForestAssembly0258
import D0ForestAssembly0290
import D0ForestChunk1116
import D0ForestChunk1117
import D0ForestChunk1119
import D0ForestChunk1120
import D0ForestChunk1121
import D0ForestChunk1122
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1568733 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 11)))
theorem cover_1568733 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1568733 := by
  apply coveredState_split_literal (state := state_1568733) 2
    state_1568734 state_1569015
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1568734
  · exact cover_1569015
#print axioms cover_1568733

def state_1568715 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 11)))
theorem cover_1568715 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1568715 := by
  apply coveredState_split_literal (state := state_1568715) 1
    state_1568716 state_1568733
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1568716
  · exact cover_1568733
#print axioms cover_1568715

def state_1568617 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 5)))
theorem cover_1568617 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1568617 := by
  apply coveredState_split_literal (state := state_1568617) 4
    state_1568618 state_1568715
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1568618
  · exact cover_1568715
#print axioms cover_1568617

def state_1568367 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 5)))
theorem cover_1568367 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1568367 := by
  apply coveredState_split_literal (state := state_1568367) 3
    state_1568368 state_1568617
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1568368
  · exact cover_1568617
#print axioms cover_1568367

def state_1569130 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 15) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 11)))
theorem cover_1569130 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1569130 := by
  apply coveredState_split_literal (state := state_1569130) 2
    state_1569131 state_1569186
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1569131
  · exact cover_1569186
#print axioms cover_1569130

def state_1569110 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 11)))
theorem cover_1569110 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1569110 := by
  apply coveredState_split_literal (state := state_1569110) 1
    state_1569111 state_1569130
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1569111
  · exact cover_1569130
#print axioms cover_1569110

def state_1569066 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 5)))
theorem cover_1569066 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1569066 := by
  apply coveredState_split_literal (state := state_1569066) 4
    state_1569067 state_1569110
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1569067
  · exact cover_1569110
#print axioms cover_1569066

def state_1569024 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 5)))
theorem cover_1569024 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1569024 := by
  apply coveredState_split_literal (state := state_1569024) 3
    state_1569025 state_1569066
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1569025
  · exact cover_1569066
#print axioms cover_1569024

def state_1568366 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 5)))
theorem cover_1568366 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1568366 := by
  apply coveredState_split_literal (state := state_1568366) 0
    state_1568367 state_1569024
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1568367
  · exact cover_1569024
#print axioms cover_1568366

def state_1568290 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 2)))
theorem cover_1568290 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1568290 := by
  apply coveredState_split_literal (state := state_1568290) 4
    state_1568291 state_1568366
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1568291
  · exact cover_1568366
#print axioms cover_1568290

def state_1568260 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 2)))
theorem cover_1568260 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1568260 := by
  apply coveredState_split_literal (state := state_1568260) 3
    state_1568261 state_1568290
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1568261
  · exact cover_1568290
#print axioms cover_1568260

def state_1537910 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_1537910 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1537910 := by
  apply coveredState_split_literal (state := state_1537910) 2
    state_1537911 state_1568260
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1537911
  · exact cover_1568260
#print axioms cover_1537910

def state_1530902 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_1530902 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1530902 := by
  apply coveredState_split_literal (state := state_1530902) 1
    state_1530903 state_1537910
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1530903
  · exact cover_1537910
#print axioms cover_1530902

def state_1569249 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_1569249 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1569249 := by
  apply coveredState_split_literal (state := state_1569249) 2
    state_1569250 state_1569295
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1569250
  · exact cover_1569295
#print axioms cover_1569249

def state_1569195 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_1569195 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1569195 := by
  apply coveredState_split_literal (state := state_1569195) 1
    state_1569196 state_1569249
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1569196
  · exact cover_1569249
#print axioms cover_1569195

def state_1530901 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_1530901 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1530901 := by
  apply coveredState_split_literal (state := state_1530901) 0
    state_1530902 state_1569195
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1530902
  · exact cover_1569195
#print axioms cover_1530901

def state_1569404 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 6)))
theorem cover_1569404 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1569404 := by
  apply coveredState_split_literal (state := state_1569404) 2
    state_1569405 state_1569432
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1569405
  · exact cover_1569432
#print axioms cover_1569404

def state_1569403 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 6)))
theorem cover_1569403 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1569403 := by
  apply coveredState_split_literal (state := state_1569403) 0
    state_1569404 state_1569491
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1569404
  · exact cover_1569491
#print axioms cover_1569403

def state_1569402 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 3)))
theorem cover_1569402 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1569402 := by
  apply coveredState_split_literal (state := state_1569402) 4
    state_1569403 state_1569504
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1569403
  · exact cover_1569504
#print axioms cover_1569402

def state_1569350 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 3)))
theorem cover_1569350 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1569350 := by
  apply coveredState_split_literal (state := state_1569350) 3
    state_1569351 state_1569402
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1569351
  · exact cover_1569402
#print axioms cover_1569350

def state_1569349 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_1569349 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1569349 := by
  apply coveredState_split_literal (state := state_1569349) 2
    state_1569350 state_1569505
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1569350
  · exact cover_1569505
#print axioms cover_1569349

def state_1569325 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_1569325 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1569325 := by
  apply coveredState_split_literal (state := state_1569325) 1
    state_1569326 state_1569349
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1569326
  · exact cover_1569349
#print axioms cover_1569325

def state_1569324 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_1569324 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1569324 := by
  apply coveredState_split_literal (state := state_1569324) 0
    state_1569325 state_1569568
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1569325
  · exact cover_1569568
#print axioms cover_1569324

def state_1530900 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 1)))
theorem cover_1530900 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1530900 := by
  apply coveredState_split_literal (state := state_1530900) 4
    state_1530901 state_1569324
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1530901
  · exact cover_1569324
#print axioms cover_1530900

def state_1569584 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_1569584 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1569584 := by
  apply coveredState_split_literal (state := state_1569584) 2
    state_1569585 state_1569644
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1569585
  · exact cover_1569644
#print axioms cover_1569584

def state_1569717 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 2)))
theorem cover_1569717 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1569717 := by
  apply coveredState_split_literal (state := state_1569717) 3
    state_1569718 state_1569779
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1569718
  · exact cover_1569779
#print axioms cover_1569717

def state_1569663 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_1569663 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1569663 := by
  apply coveredState_split_literal (state := state_1569663) 2
    state_1569664 state_1569717
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1569664
  · exact cover_1569717
#print axioms cover_1569663

def state_1569583 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_1569583 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1569583 := by
  apply coveredState_split_literal (state := state_1569583) 1
    state_1569584 state_1569663
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1569584
  · exact cover_1569663
#print axioms cover_1569583

def state_1569786 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 4)))
theorem cover_1569786 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1569786 := by
  apply coveredState_split_literal (state := state_1569786) 1
    state_1569787 state_1569824
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1569787
  · exact cover_1569824
#print axioms cover_1569786

def state_1569785 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 2)))
theorem cover_1569785 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1569785 := by
  apply coveredState_split_literal (state := state_1569785) 4
    state_1569786 state_1569855
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1569786
  · exact cover_1569855
#print axioms cover_1569785

def state_1569784 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 2)))
theorem cover_1569784 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1569784 := by
  apply coveredState_split_literal (state := state_1569784) 3
    state_1569785 state_1569872
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1569785
  · exact cover_1569872
#print axioms cover_1569784

def state_1569783 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_1569783 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1569783 := by
  apply coveredState_split_literal (state := state_1569783) 2
    state_1569784 state_1569881
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1569784
  · exact cover_1569881
#print axioms cover_1569783
end Mub6.Numerical.CircleFullD0.Forest
