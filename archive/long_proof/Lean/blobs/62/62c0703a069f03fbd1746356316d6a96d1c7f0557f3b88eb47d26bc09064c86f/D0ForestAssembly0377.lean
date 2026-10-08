import D0FullInterface
import D0ForestAssembly0376
import D0ForestChunk1467
import D0ForestChunk1468
import D0ForestChunk1469
import D0ForestChunk1470
import D0ForestChunk1471
import D0ForestChunk1472
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1653180 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 31 else (if j.val < 4 then 25 else 20)))
theorem cover_1653180 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1653180 := by
  apply coveredState_split_literal (state := state_1653180) 1
    state_1653181 state_1653222
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1653181
  · exact cover_1653222
#print axioms cover_1653180

def state_1652916 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 15 else (if j.val < 4 then 25 else 20)))
theorem cover_1652916 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1652916 := by
  apply coveredState_split_literal (state := state_1652916) 2
    state_1652917 state_1653180
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1652917
  · exact cover_1653180
#print axioms cover_1652916

def state_1652915 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 15 else (if j.val < 4 then 25 else 10)))
theorem cover_1652915 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1652915 := by
  apply coveredState_split_literal (state := state_1652915) 4
    state_1652916 state_1653483
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1652916
  · exact cover_1653483
#print axioms cover_1652915

def state_1652899 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 15 else (if j.val < 4 then 12 else 10)))
theorem cover_1652899 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1652899 := by
  apply coveredState_split_literal (state := state_1652899) 3
    state_1652900 state_1652915
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1652900
  · exact cover_1652915
#print axioms cover_1652899

def state_1653617 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 100) else (if j.val < 3 then 61 else (if j.val < 4 then 103 else 81)))
theorem cover_1653617 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1653617 := by
  apply coveredState_split_literal (state := state_1653617) 2
    state_1653618 state_1653663
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1653618
  · exact cover_1653663
#print axioms cover_1653617

def state_1653569 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 100) else (if j.val < 3 then 61 else (if j.val < 4 then 103 else 40)))
theorem cover_1653569 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1653569 := by
  apply coveredState_split_literal (state := state_1653569) 4
    state_1653570 state_1653617
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1653570
  · exact cover_1653617
#print axioms cover_1653569

def state_1653561 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 100) else (if j.val < 3 then 61 else (if j.val < 4 then 51 else 40)))
theorem cover_1653561 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1653561 := by
  apply coveredState_split_literal (state := state_1653561) 3
    state_1653562 state_1653569
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1653562
  · exact cover_1653569
#print axioms cover_1653561

def state_1653560 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 100) else (if j.val < 3 then 61 else (if j.val < 4 then 51 else 40)))
theorem cover_1653560 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1653560 := by
  apply coveredState_split_literal (state := state_1653560) 0
    state_1653561 state_1653686
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1653561
  · exact cover_1653686
#print axioms cover_1653560

def state_1653559 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 50) else (if j.val < 3 then 61 else (if j.val < 4 then 51 else 40)))
theorem cover_1653559 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1653559 := by
  apply coveredState_split_literal (state := state_1653559) 1
    state_1653560 state_1653705
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1653560
  · exact cover_1653705
#print axioms cover_1653559

def state_1653495 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 50) else (if j.val < 3 then 30 else (if j.val < 4 then 51 else 40)))
theorem cover_1653495 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1653495 := by
  apply coveredState_split_literal (state := state_1653495) 2
    state_1653496 state_1653559
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1653496
  · exact cover_1653559
#print axioms cover_1653495

def state_1653494 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 50) else (if j.val < 3 then 30 else (if j.val < 4 then 51 else 20)))
theorem cover_1653494 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1653494 := by
  apply coveredState_split_literal (state := state_1653494) 4
    state_1653495 state_1653732
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1653495
  · exact cover_1653732
#print axioms cover_1653494

def state_1653490 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 50) else (if j.val < 3 then 30 else (if j.val < 4 then 25 else 20)))
theorem cover_1653490 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1653490 := by
  apply coveredState_split_literal (state := state_1653490) 3
    state_1653491 state_1653494
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1653491
  · exact cover_1653494
#print axioms cover_1653490

def state_1653489 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 25) else (if j.val < 3 then 30 else (if j.val < 4 then 25 else 20)))
theorem cover_1653489 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1653489 := by
  apply coveredState_split_literal (state := state_1653489) 1
    state_1653490 state_1653751
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1653490
  · exact cover_1653751
#print axioms cover_1653489

def state_1653488 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 30 else (if j.val < 4 then 25 else 20)))
theorem cover_1653488 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1653488 := by
  apply coveredState_split_literal (state := state_1653488) 0
    state_1653489 state_1653752
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1653489
  · exact cover_1653752
#print axioms cover_1653488

def state_1653771 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 50) else (if j.val < 3 then 62 else (if j.val < 4 then 51 else 40)))
theorem cover_1653771 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1653771 := by
  apply coveredState_split_literal (state := state_1653771) 1
    state_1653772 state_1653823
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1653772
  · exact cover_1653823
#print axioms cover_1653771

def state_1653770 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 50) else (if j.val < 3 then 31 else (if j.val < 4 then 51 else 40)))
theorem cover_1653770 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1653770 := by
  apply coveredState_split_literal (state := state_1653770) 2
    state_1653771 state_1653844
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1653771
  · exact cover_1653844
#print axioms cover_1653770

def state_1653769 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 50) else (if j.val < 3 then 31 else (if j.val < 4 then 51 else 20)))
theorem cover_1653769 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1653769 := by
  apply coveredState_split_literal (state := state_1653769) 4
    state_1653770 state_1653865
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1653770
  · exact cover_1653865
#print axioms cover_1653769

def state_1653765 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 50) else (if j.val < 3 then 31 else (if j.val < 4 then 25 else 20)))
theorem cover_1653765 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1653765 := by
  apply coveredState_split_literal (state := state_1653765) 3
    state_1653766 state_1653769
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1653766
  · exact cover_1653769
#print axioms cover_1653765

def state_1653764 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 25) else (if j.val < 3 then 31 else (if j.val < 4 then 25 else 20)))
theorem cover_1653764 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1653764 := by
  apply coveredState_split_literal (state := state_1653764) 1
    state_1653765 state_1653866
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1653765
  · exact cover_1653866
#print axioms cover_1653764

def state_1653763 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 31 else (if j.val < 4 then 25 else 20)))
theorem cover_1653763 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1653763 := by
  apply coveredState_split_literal (state := state_1653763) 0
    state_1653764 state_1653877
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1653764
  · exact cover_1653877
#print axioms cover_1653763

def state_1653487 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 25 else 20)))
theorem cover_1653487 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1653487 := by
  apply coveredState_split_literal (state := state_1653487) 2
    state_1653488 state_1653763
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1653488
  · exact cover_1653763
#print axioms cover_1653487

def state_1653486 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 25 else 10)))
theorem cover_1653486 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1653486 := by
  apply coveredState_split_literal (state := state_1653486) 4
    state_1653487 state_1653916
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1653487
  · exact cover_1653916
#print axioms cover_1653486

def state_1653484 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 12 else 10)))
theorem cover_1653484 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1653484 := by
  apply coveredState_split_literal (state := state_1653484) 3
    state_1653485 state_1653486
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1653485
  · exact cover_1653486
#print axioms cover_1653484

def state_1652898 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 12) else (if j.val < 3 then 15 else (if j.val < 4 then 12 else 10)))
theorem cover_1652898 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1652898 := by
  apply coveredState_split_literal (state := state_1652898) 1
    state_1652899 state_1653484
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1652899
  · exact cover_1653484
#print axioms cover_1652898

def state_1652897 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 15 else (if j.val < 4 then 12 else 10)))
theorem cover_1652897 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1652897 := by
  apply coveredState_split_literal (state := state_1652897) 0
    state_1652898 state_1653917
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1652898
  · exact cover_1653917
#print axioms cover_1652897

def state_1652837 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 12 else 10)))
theorem cover_1652837 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1652837 := by
  apply coveredState_split_literal (state := state_1652837) 2
    state_1652838 state_1652897
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1652838
  · exact cover_1652897
#print axioms cover_1652837

def state_1652836 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 12 else 5)))
theorem cover_1652836 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1652836 := by
  apply coveredState_split_literal (state := state_1652836) 4
    state_1652837 state_1653934
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1652837
  · exact cover_1653934
#print axioms cover_1652836

def state_1653951 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 29 else (if j.val < 4 then 26 else 20)))
theorem cover_1653951 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1653951 := by
  apply coveredState_split_literal (state := state_1653951) 1
    state_1653952 state_1653963
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1653952
  · exact cover_1653963
#print axioms cover_1653951

def state_1653943 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 26 else 20)))
theorem cover_1653943 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1653943 := by
  apply coveredState_split_literal (state := state_1653943) 2
    state_1653944 state_1653951
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1653944
  · exact cover_1653951
#print axioms cover_1653943

def state_1653942 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 26 else 10)))
theorem cover_1653942 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1653942 := by
  apply coveredState_split_literal (state := state_1653942) 4
    state_1653943 state_1654026
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1653943
  · exact cover_1654026
#print axioms cover_1653942

def state_1653941 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 10)))
theorem cover_1653941 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1653941 := by
  apply coveredState_split_literal (state := state_1653941) 3
    state_1653942 state_1654087
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1653942
  · exact cover_1654087
#print axioms cover_1653941

def state_1654115 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 25) else (if j.val < 3 then 29 else (if j.val < 4 then 26 else 20)))
theorem cover_1654115 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1654115 := by
  apply coveredState_split_literal (state := state_1654115) 1
    state_1654116 state_1654171
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1654116
  · exact cover_1654171
#print axioms cover_1654115
end Mub6.Numerical.CircleFullD0.Forest
