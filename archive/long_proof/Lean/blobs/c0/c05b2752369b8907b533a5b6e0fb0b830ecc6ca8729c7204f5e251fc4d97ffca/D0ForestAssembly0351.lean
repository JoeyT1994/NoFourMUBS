import D0FullInterface
import D0ForestAssembly0345
import D0ForestAssembly0350
import D0ForestChunk1357
import D0ForestChunk1358
import D0ForestChunk1360
import D0ForestChunk1361
import D0ForestChunk1362
import D0ForestChunk1363
import D0ForestChunk1364
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1626861 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 51) else (if j.val < 3 then 27 else (if j.val < 4 then 49 else 17)))
theorem cover_1626861 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1626861 := by
  apply coveredState_split_literal (state := state_1626861) 0
    state_1626862 state_1626891
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1626862
  · exact cover_1626891
#print axioms cover_1626861

def state_1626825 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 27 else (if j.val < 4 then 49 else 17)))
theorem cover_1626825 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1626825 := by
  apply coveredState_split_literal (state := state_1626825) 1
    state_1626826 state_1626861
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1626826
  · exact cover_1626861
#print axioms cover_1626825

def state_1626675 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 27 else (if j.val < 4 then 24 else 17)))
theorem cover_1626675 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1626675 := by
  apply coveredState_split_literal (state := state_1626675) 3
    state_1626676 state_1626825
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1626676
  · exact cover_1626825
#print axioms cover_1626675

def state_1626629 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 27 else (if j.val < 4 then 24 else 8)))
theorem cover_1626629 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1626629 := by
  apply coveredState_split_literal (state := state_1626629) 4
    state_1626630 state_1626675
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1626630
  · exact cover_1626675
#print axioms cover_1626629

def state_1626597 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 27 else (if j.val < 4 then 24 else 8)))
theorem cover_1626597 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1626597 := by
  apply coveredState_split_literal (state := state_1626597) 0
    state_1626598 state_1626629
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1626598
  · exact cover_1626629
#print axioms cover_1626597

def state_1620871 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 13 else (if j.val < 4 then 24 else 8)))
theorem cover_1620871 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620871 := by
  apply coveredState_split_literal (state := state_1620871) 2
    state_1620872 state_1626597
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1620872
  · exact cover_1626597
#print axioms cover_1620871

def state_1627142 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 13 else (if j.val < 4 then 25 else 8)))
theorem cover_1627142 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1627142 := by
  apply coveredState_split_literal (state := state_1627142) 2
    state_1627143 state_1627184
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1627143
  · exact cover_1627184
#print axioms cover_1627142

def state_1620870 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 8)))
theorem cover_1620870 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620870 := by
  apply coveredState_split_literal (state := state_1620870) 3
    state_1620871 state_1627142
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1620871
  · exact cover_1627142
#print axioms cover_1620870

def state_1620792 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 8)))
theorem cover_1620792 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620792 := by
  apply coveredState_split_literal (state := state_1620792) 1
    state_1620793 state_1620870
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1620793
  · exact cover_1620870
#print axioms cover_1620792

def state_1627214 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 24) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 9)))
theorem cover_1627214 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1627214 := by
  apply coveredState_split_literal (state := state_1627214) 3
    state_1627215 state_1627278
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1627215
  · exact cover_1627278
#print axioms cover_1627214

def state_1627430 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 51) else (if j.val < 3 then 53 else (if j.val < 4 then 49 else 18)))
theorem cover_1627430 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1627430 := by
  apply coveredState_split_literal (state := state_1627430) 0
    state_1627431 state_1627438
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1627431
  · exact cover_1627438
#print axioms cover_1627430

def state_1627418 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 51) else (if j.val < 3 then 26 else (if j.val < 4 then 49 else 18)))
theorem cover_1627418 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1627418 := by
  apply coveredState_split_literal (state := state_1627418) 2
    state_1627419 state_1627430
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1627419
  · exact cover_1627430
#print axioms cover_1627418

def state_1627372 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 26 else (if j.val < 4 then 49 else 18)))
theorem cover_1627372 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1627372 := by
  apply coveredState_split_literal (state := state_1627372) 1
    state_1627373 state_1627418
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1627373
  · exact cover_1627418
#print axioms cover_1627372

def state_1627330 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 26 else (if j.val < 4 then 24 else 18)))
theorem cover_1627330 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1627330 := by
  apply coveredState_split_literal (state := state_1627330) 3
    state_1627331 state_1627372
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1627331
  · exact cover_1627372
#print axioms cover_1627330

def state_1627329 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 26 else (if j.val < 4 then 24 else 9)))
theorem cover_1627329 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1627329 := by
  apply coveredState_split_literal (state := state_1627329) 4
    state_1627330 state_1627499
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1627330
  · exact cover_1627499
#print axioms cover_1627329

def state_1627315 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 26 else (if j.val < 4 then 24 else 9)))
theorem cover_1627315 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1627315 := by
  apply coveredState_split_literal (state := state_1627315) 0
    state_1627316 state_1627329
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1627316
  · exact cover_1627329
#print axioms cover_1627315

def state_1627538 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 27 else (if j.val < 4 then 48 else 18)))
theorem cover_1627538 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1627538 := by
  apply coveredState_split_literal (state := state_1627538) 1
    state_1627539 state_1627562
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1627539
  · exact cover_1627562
#print axioms cover_1627538

def state_1627632 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 50) else (if j.val < 3 then 27 else (if j.val < 4 then 49 else 18)))
theorem cover_1627632 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1627632 := by
  apply coveredState_split_literal (state := state_1627632) 4
    state_1627633 state_1627674
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1627633
  · exact cover_1627674
#print axioms cover_1627632

def state_1627612 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 50) else (if j.val < 3 then 27 else (if j.val < 4 then 49 else 18)))
theorem cover_1627612 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1627612 := by
  apply coveredState_split_literal (state := state_1627612) 0
    state_1627613 state_1627632
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1627613
  · exact cover_1627632
#print axioms cover_1627612

def state_1627745 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 102) else (if j.val < 3 then 54 else (if j.val < 4 then 98 else 36)))
theorem cover_1627745 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1627745 := by
  apply coveredState_split_literal (state := state_1627745) 0
    state_1627746 state_1627763
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1627746
  · exact cover_1627763
#print axioms cover_1627745

def state_1627744 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 51) else (if j.val < 3 then 54 else (if j.val < 4 then 98 else 36)))
theorem cover_1627744 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1627744 := by
  apply coveredState_split_literal (state := state_1627744) 1
    state_1627745 state_1627822
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1627745
  · exact cover_1627822
#print axioms cover_1627744

def state_1627743 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 51) else (if j.val < 3 then 54 else (if j.val < 4 then 49 else 36)))
theorem cover_1627743 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1627743 := by
  apply coveredState_split_literal (state := state_1627743) 3
    state_1627744 state_1627855
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1627744
  · exact cover_1627855
#print axioms cover_1627743

def state_1627742 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 51) else (if j.val < 3 then 27 else (if j.val < 4 then 49 else 36)))
theorem cover_1627742 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1627742 := by
  apply coveredState_split_literal (state := state_1627742) 2
    state_1627743 state_1627886
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1627743
  · exact cover_1627886
#print axioms cover_1627742

def state_1627741 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 51) else (if j.val < 3 then 27 else (if j.val < 4 then 49 else 18)))
theorem cover_1627741 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1627741 := by
  apply coveredState_split_literal (state := state_1627741) 4
    state_1627742 state_1627917
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1627742
  · exact cover_1627917
#print axioms cover_1627741

def state_1627721 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 51) else (if j.val < 3 then 27 else (if j.val < 4 then 49 else 18)))
theorem cover_1627721 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1627721 := by
  apply coveredState_split_literal (state := state_1627721) 0
    state_1627722 state_1627741
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1627722
  · exact cover_1627741
#print axioms cover_1627721

def state_1627611 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 27 else (if j.val < 4 then 49 else 18)))
theorem cover_1627611 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1627611 := by
  apply coveredState_split_literal (state := state_1627611) 1
    state_1627612 state_1627721
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1627612
  · exact cover_1627721
#print axioms cover_1627611

def state_1627537 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 27 else (if j.val < 4 then 24 else 18)))
theorem cover_1627537 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1627537 := by
  apply coveredState_split_literal (state := state_1627537) 3
    state_1627538 state_1627611
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1627538
  · exact cover_1627611
#print axioms cover_1627537

def state_1627536 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 27 else (if j.val < 4 then 24 else 9)))
theorem cover_1627536 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1627536 := by
  apply coveredState_split_literal (state := state_1627536) 4
    state_1627537 state_1627968
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1627537
  · exact cover_1627968
#print axioms cover_1627536

def state_1627518 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 27 else (if j.val < 4 then 24 else 9)))
theorem cover_1627518 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1627518 := by
  apply coveredState_split_literal (state := state_1627518) 0
    state_1627519 state_1627536
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1627519
  · exact cover_1627536
#print axioms cover_1627518

def state_1627314 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 13 else (if j.val < 4 then 24 else 9)))
theorem cover_1627314 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1627314 := by
  apply coveredState_split_literal (state := state_1627314) 2
    state_1627315 state_1627518
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1627315
  · exact cover_1627518
#print axioms cover_1627314

def state_1628056 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 27 else (if j.val < 4 then 25 else 18)))
theorem cover_1628056 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1628056 := by
  apply coveredState_split_literal (state := state_1628056) 1
    state_1628057 state_1628084
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1628057
  · exact cover_1628084
#print axioms cover_1628056

def state_1628055 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 27 else (if j.val < 4 then 25 else 9)))
theorem cover_1628055 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1628055 := by
  apply coveredState_split_literal (state := state_1628055) 4
    state_1628056 state_1628127
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1628056
  · exact cover_1628127
#print axioms cover_1628055
end Mub6.Numerical.CircleFullD0.Forest
