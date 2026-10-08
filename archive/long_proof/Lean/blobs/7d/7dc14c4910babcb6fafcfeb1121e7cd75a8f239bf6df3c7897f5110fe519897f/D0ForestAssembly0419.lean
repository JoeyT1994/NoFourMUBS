import D0FullInterface
import D0ForestAssembly0407
import D0ForestAssembly0415
import D0ForestAssembly0416
import D0ForestAssembly0418
import D0ForestChunk1619
import D0ForestChunk1634
import D0ForestChunk1636
import D0ForestChunk1637
import D0ForestChunk1638
import D0ForestChunk1639
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2265533 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 26) else (if j.val < 3 then 22 else (if j.val < 4 then 46 else 27)))
theorem cover_2265533 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2265533 := by
  apply coveredState_split_literal (state := state_2265533) 2
    state_2265534 state_2265917
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2265534
  · exact cover_2265917
#print axioms cover_2265533

def state_2265532 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 26) else (if j.val < 3 then 22 else (if j.val < 4 then 23 else 27)))
theorem cover_2265532 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2265532 := by
  apply coveredState_split_literal (state := state_2265532) 3
    state_2265533 state_2265950
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2265533
  · exact cover_2265950
#print axioms cover_2265532

def state_2265531 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 26) else (if j.val < 3 then 22 else (if j.val < 4 then 23 else 27)))
theorem cover_2265531 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2265531 := by
  apply coveredState_split_literal (state := state_2265531) 0
    state_2265532 state_2265997
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2265532
  · exact cover_2265997
#print axioms cover_2265531

def state_2265507 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 26) else (if j.val < 3 then 22 else (if j.val < 4 then 23 else 13)))
theorem cover_2265507 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2265507 := by
  apply coveredState_split_literal (state := state_2265507) 4
    state_2265508 state_2265531
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2265508
  · exact cover_2265531
#print axioms cover_2265507

def state_2266072 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 27) else (if j.val < 3 then 22 else (if j.val < 4 then 23 else 27)))
theorem cover_2266072 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2266072 := by
  apply coveredState_split_literal (state := state_2266072) 3
    state_2266073 state_2266124
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2266073
  · exact cover_2266124
#print axioms cover_2266072

def state_2266046 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 27) else (if j.val < 3 then 22 else (if j.val < 4 then 23 else 27)))
theorem cover_2266046 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2266046 := by
  apply coveredState_split_literal (state := state_2266046) 0
    state_2266047 state_2266072
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2266047
  · exact cover_2266072
#print axioms cover_2266046

def state_2266042 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 27) else (if j.val < 3 then 22 else (if j.val < 4 then 23 else 13)))
theorem cover_2266042 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2266042 := by
  apply coveredState_split_literal (state := state_2266042) 4
    state_2266043 state_2266046
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2266043
  · exact cover_2266046
#print axioms cover_2266042

def state_2265506 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 22 else (if j.val < 4 then 23 else 13)))
theorem cover_2265506 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2265506 := by
  apply coveredState_split_literal (state := state_2265506) 1
    state_2265507 state_2266042
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2265507
  · exact cover_2266042
#print axioms cover_2265506

def state_2263164 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 22 else (if j.val < 4 then 11 else 13)))
theorem cover_2263164 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2263164 := by
  apply coveredState_split_literal (state := state_2263164) 3
    state_2263165 state_2265506
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2263165
  · exact cover_2265506
#print axioms cover_2263164

def state_2263163 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 13)))
theorem cover_2263163 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2263163 := by
  apply coveredState_split_literal (state := state_2263163) 2
    state_2263164 state_2266137
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2263164
  · exact cover_2266137
#print axioms cover_2263163

def state_2261985 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 13)))
theorem cover_2261985 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2261985 := by
  apply coveredState_split_literal (state := state_2261985) 0
    state_2261986 state_2263163
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2261986
  · exact cover_2263163
#print axioms cover_2261985

def state_2261967 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 6)))
theorem cover_2261967 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2261967 := by
  apply coveredState_split_literal (state := state_2261967) 4
    state_2261968 state_2261985
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2261968
  · exact cover_2261985
#print axioms cover_2261967

def state_2261885 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 11 else (if j.val < 4 then 5 else 6)))
theorem cover_2261885 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2261885 := by
  apply coveredState_split_literal (state := state_2261885) 3
    state_2261886 state_2261967
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2261886
  · exact cover_2261967
#print axioms cover_2261885

def state_2254219 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 13) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 6)))
theorem cover_2254219 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2254219 := by
  apply coveredState_split_literal (state := state_2254219) 2
    state_2254220 state_2261885
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2254220
  · exact cover_2261885
#print axioms cover_2254219

def state_2248445 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 6)))
theorem cover_2248445 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2248445 := by
  apply coveredState_split_literal (state := state_2248445) 1
    state_2248446 state_2254219
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2248446
  · exact cover_2254219
#print axioms cover_2248445

def state_2266202 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 25) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 14)))
theorem cover_2266202 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2266202 := by
  apply coveredState_split_literal (state := state_2266202) 3
    state_2266203 state_2266228
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2266203
  · exact cover_2266228
#print axioms cover_2266202

def state_2266192 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 14)))
theorem cover_2266192 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2266192 := by
  apply coveredState_split_literal (state := state_2266192) 1
    state_2266193 state_2266202
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2266193
  · exact cover_2266202
#print axioms cover_2266192

def state_2266191 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 7)))
theorem cover_2266191 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2266191 := by
  apply coveredState_split_literal (state := state_2266191) 4
    state_2266192 state_2266285
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2266192
  · exact cover_2266285
#print axioms cover_2266191

def state_2266190 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 7)))
theorem cover_2266190 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2266190 := by
  apply coveredState_split_literal (state := state_2266190) 0
    state_2266191 state_2266286
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2266191
  · exact cover_2266286
#print axioms cover_2266190

def state_2266166 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 5 else 7)))
theorem cover_2266166 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2266166 := by
  apply coveredState_split_literal (state := state_2266166) 3
    state_2266167 state_2266190
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2266167
  · exact cover_2266190
#print axioms cover_2266166

def state_2266411 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 51) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 28)))
theorem cover_2266411 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2266411 := by
  apply coveredState_split_literal (state := state_2266411) 2
    state_2266412 state_2266473
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2266412
  · exact cover_2266473
#print axioms cover_2266411

def state_2266379 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 25) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 28)))
theorem cover_2266379 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2266379 := by
  apply coveredState_split_literal (state := state_2266379) 1
    state_2266380 state_2266411
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2266380
  · exact cover_2266411
#print axioms cover_2266379

def state_2266485 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 51) else (if j.val < 3 then 44 else (if j.val < 4 then 22 else 28)))
theorem cover_2266485 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2266485 := by
  apply coveredState_split_literal (state := state_2266485) 3
    state_2266486 state_2266495
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2266486
  · exact cover_2266495
#print axioms cover_2266485

def state_2266484 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 51) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 28)))
theorem cover_2266484 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2266484 := by
  apply coveredState_split_literal (state := state_2266484) 2
    state_2266485 state_2266556
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2266485
  · exact cover_2266556
#print axioms cover_2266484

def state_2266478 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 25) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 28)))
theorem cover_2266478 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2266478 := by
  apply coveredState_split_literal (state := state_2266478) 1
    state_2266479 state_2266484
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2266479
  · exact cover_2266484
#print axioms cover_2266478

def state_2266378 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 25) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 28)))
theorem cover_2266378 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2266378 := by
  apply coveredState_split_literal (state := state_2266378) 0
    state_2266379 state_2266478
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2266379
  · exact cover_2266478
#print axioms cover_2266378

def state_2266377 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 25) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 14)))
theorem cover_2266377 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2266377 := by
  apply coveredState_split_literal (state := state_2266377) 4
    state_2266378 state_2266581
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2266378
  · exact cover_2266581
#print axioms cover_2266377

def state_2266651 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 51) else (if j.val < 3 then 44 else (if j.val < 4 then 46 else 56)))
theorem cover_2266651 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2266651 := by
  apply coveredState_split_literal (state := state_2266651) 0
    state_2266652 state_2266699
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2266652
  · exact cover_2266699
#print axioms cover_2266651

def state_2266650 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 51) else (if j.val < 3 then 44 else (if j.val < 4 then 46 else 28)))
theorem cover_2266650 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2266650 := by
  apply coveredState_split_literal (state := state_2266650) 4
    state_2266651 state_2266744
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2266651
  · exact cover_2266744
#print axioms cover_2266650

def state_2266649 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 51) else (if j.val < 3 then 22 else (if j.val < 4 then 46 else 28)))
theorem cover_2266649 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2266649 := by
  apply coveredState_split_literal (state := state_2266649) 2
    state_2266650 state_2266745
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2266650
  · exact cover_2266745
#print axioms cover_2266649

def state_2266611 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 25) else (if j.val < 3 then 22 else (if j.val < 4 then 46 else 28)))
theorem cover_2266611 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2266611 := by
  apply coveredState_split_literal (state := state_2266611) 1
    state_2266612 state_2266649
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2266612
  · exact cover_2266649
#print axioms cover_2266611

def state_2266610 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 25) else (if j.val < 3 then 22 else (if j.val < 4 then 23 else 28)))
theorem cover_2266610 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2266610 := by
  apply coveredState_split_literal (state := state_2266610) 3
    state_2266611 state_2266762
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2266611
  · exact cover_2266762
#print axioms cover_2266610
end Mub6.Numerical.CircleFullD0.Forest
