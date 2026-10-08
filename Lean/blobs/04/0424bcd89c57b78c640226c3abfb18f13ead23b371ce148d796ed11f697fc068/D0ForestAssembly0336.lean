import D0FullInterface
import D0ForestAssembly0333
import D0ForestAssembly0335
import D0ForestChunk1302
import D0ForestChunk1303
import D0ForestChunk1304
import D0ForestChunk1305
import D0ForestChunk1306
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1613005 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 41) else (if j.val < 3 then 52 else (if j.val < 4 then 61 else 100)))
theorem cover_1613005 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1613005 := by
  apply coveredState_split_literal (state := state_1613005) 2
    state_1613006 state_1613157
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1613006
  · exact cover_1613157
#print axioms cover_1613005

def state_1613004 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 41) else (if j.val < 3 then 52 else (if j.val < 4 then 61 else 100)))
theorem cover_1613004 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1613004 := by
  apply coveredState_split_literal (state := state_1613004) 0
    state_1613005 state_1613240
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1613005
  · exact cover_1613240
#print axioms cover_1613004

def state_1613003 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 41) else (if j.val < 3 then 52 else (if j.val < 4 then 61 else 50)))
theorem cover_1613003 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1613003 := by
  apply coveredState_split_literal (state := state_1613003) 4
    state_1613004 state_1613249
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1613004
  · exact cover_1613249
#print axioms cover_1613003

def state_1612837 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 41) else (if j.val < 3 then 52 else (if j.val < 4 then 30 else 50)))
theorem cover_1612837 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1612837 := by
  apply coveredState_split_literal (state := state_1612837) 3
    state_1612838 state_1613003
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1612838
  · exact cover_1613003
#print axioms cover_1612837

def state_1612651 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 20) else (if j.val < 3 then 52 else (if j.val < 4 then 30 else 50)))
theorem cover_1612651 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1612651 := by
  apply coveredState_split_literal (state := state_1612651) 1
    state_1612652 state_1612837
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1612652
  · exact cover_1612837
#print axioms cover_1612651

def state_1612650 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 20) else (if j.val < 3 then 26 else (if j.val < 4 then 30 else 50)))
theorem cover_1612650 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1612650 := by
  apply coveredState_split_literal (state := state_1612650) 2
    state_1612651 state_1613290
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1612651
  · exact cover_1613290
#print axioms cover_1612650

def state_1612649 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 20) else (if j.val < 3 then 26 else (if j.val < 4 then 30 else 25)))
theorem cover_1612649 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1612649 := by
  apply coveredState_split_literal (state := state_1612649) 4
    state_1612650 state_1613333
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1612650
  · exact cover_1613333
#print axioms cover_1612649

def state_1612648 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 20) else (if j.val < 3 then 26 else (if j.val < 4 then 30 else 25)))
theorem cover_1612648 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1612648 := by
  apply coveredState_split_literal (state := state_1612648) 0
    state_1612649 state_1613372
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1612649
  · exact cover_1613372
#print axioms cover_1612648

def state_1613402 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 20) else (if j.val < 3 then 52 else (if j.val < 4 then 31 else 50)))
theorem cover_1613402 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1613402 := by
  apply coveredState_split_literal (state := state_1613402) 1
    state_1613403 state_1613464
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1613403
  · exact cover_1613464
#print axioms cover_1613402

def state_1613401 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 20) else (if j.val < 3 then 26 else (if j.val < 4 then 31 else 50)))
theorem cover_1613401 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1613401 := by
  apply coveredState_split_literal (state := state_1613401) 2
    state_1613402 state_1613517
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1613402
  · exact cover_1613517
#print axioms cover_1613401

def state_1613400 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 20) else (if j.val < 3 then 26 else (if j.val < 4 then 31 else 25)))
theorem cover_1613400 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1613400 := by
  apply coveredState_split_literal (state := state_1613400) 4
    state_1613401 state_1613536
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1613401
  · exact cover_1613536
#print axioms cover_1613400

def state_1613399 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 20) else (if j.val < 3 then 26 else (if j.val < 4 then 31 else 25)))
theorem cover_1613399 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1613399 := by
  apply coveredState_split_literal (state := state_1613399) 0
    state_1613400 state_1613545
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1613400
  · exact cover_1613545
#print axioms cover_1613399

def state_1612647 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 20) else (if j.val < 3 then 26 else (if j.val < 4 then 15 else 25)))
theorem cover_1612647 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1612647 := by
  apply coveredState_split_literal (state := state_1612647) 3
    state_1612648 state_1613399
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1612648
  · exact cover_1613399
#print axioms cover_1612647

def state_1612646 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 20) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 25)))
theorem cover_1612646 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1612646 := by
  apply coveredState_split_literal (state := state_1612646) 2
    state_1612647 state_1613596
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1612647
  · exact cover_1613596
#print axioms cover_1612646

def state_1613633 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 42) else (if j.val < 3 then 53 else (if j.val < 4 then 60 else 50)))
theorem cover_1613633 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1613633 := by
  apply coveredState_split_literal (state := state_1613633) 4
    state_1613634 state_1613671
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1613634
  · exact cover_1613671
#print axioms cover_1613633

def state_1613632 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 42) else (if j.val < 3 then 53 else (if j.val < 4 then 30 else 50)))
theorem cover_1613632 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1613632 := by
  apply coveredState_split_literal (state := state_1613632) 3
    state_1613633 state_1613702
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1613633
  · exact cover_1613702
#print axioms cover_1613632

def state_1613610 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 42) else (if j.val < 3 then 26 else (if j.val < 4 then 30 else 50)))
theorem cover_1613610 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1613610 := by
  apply coveredState_split_literal (state := state_1613610) 2
    state_1613611 state_1613632
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1613611
  · exact cover_1613632
#print axioms cover_1613610

def state_1613609 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 30 else 50)))
theorem cover_1613609 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1613609 := by
  apply coveredState_split_literal (state := state_1613609) 1
    state_1613610 state_1613749
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1613610
  · exact cover_1613749
#print axioms cover_1613609

def state_1613608 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 30 else 25)))
theorem cover_1613608 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1613608 := by
  apply coveredState_split_literal (state := state_1613608) 4
    state_1613609 state_1613766
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1613609
  · exact cover_1613766
#print axioms cover_1613608

def state_1613607 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 30 else 25)))
theorem cover_1613607 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1613607 := by
  apply coveredState_split_literal (state := state_1613607) 0
    state_1613608 state_1613791
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1613608
  · exact cover_1613791
#print axioms cover_1613607

def state_1613606 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 15 else 25)))
theorem cover_1613606 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1613606 := by
  apply coveredState_split_literal (state := state_1613606) 3
    state_1613607 state_1613810
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1613607
  · exact cover_1613810
#print axioms cover_1613606

def state_1613837 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 21) else (if j.val < 3 then 27 else (if j.val < 4 then 30 else 25)))
theorem cover_1613837 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1613837 := by
  apply coveredState_split_literal (state := state_1613837) 4
    state_1613838 state_1613885
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1613838
  · exact cover_1613885
#print axioms cover_1613837

def state_1613836 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 27 else (if j.val < 4 then 30 else 25)))
theorem cover_1613836 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1613836 := by
  apply coveredState_split_literal (state := state_1613836) 0
    state_1613837 state_1613908
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1613837
  · exact cover_1613908
#print axioms cover_1613836

def state_1613835 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 27 else (if j.val < 4 then 15 else 25)))
theorem cover_1613835 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1613835 := by
  apply coveredState_split_literal (state := state_1613835) 3
    state_1613836 state_1613925
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1613836
  · exact cover_1613925
#print axioms cover_1613835

def state_1613605 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 25)))
theorem cover_1613605 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1613605 := by
  apply coveredState_split_literal (state := state_1613605) 2
    state_1613606 state_1613835
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1613606
  · exact cover_1613835
#print axioms cover_1613605

def state_1612645 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 25)))
theorem cover_1612645 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1612645 := by
  apply coveredState_split_literal (state := state_1612645) 1
    state_1612646 state_1613605
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1612646
  · exact cover_1613605
#print axioms cover_1612645

def state_1610597 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 12)))
theorem cover_1610597 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1610597 := by
  apply coveredState_split_literal (state := state_1610597) 4
    state_1610598 state_1612645
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1610598
  · exact cover_1612645
#print axioms cover_1610597

def state_1613964 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 12)))
theorem cover_1613964 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1613964 := by
  apply coveredState_split_literal (state := state_1613964) 4
    state_1613965 state_1614012
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1613965
  · exact cover_1614012
#print axioms cover_1613964

def state_1610596 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 12)))
theorem cover_1610596 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1610596 := by
  apply coveredState_split_literal (state := state_1610596) 0
    state_1610597 state_1613964
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1610597
  · exact cover_1613964
#print axioms cover_1610596

def state_1610204 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 12)))
theorem cover_1610204 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1610204 := by
  apply coveredState_split_literal (state := state_1610204) 3
    state_1610205 state_1610596
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1610205
  · exact cover_1610596
#print axioms cover_1610204

def state_1614087 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 13)))
theorem cover_1614087 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1614087 := by
  apply coveredState_split_literal (state := state_1614087) 0
    state_1614088 state_1614141
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1614088
  · exact cover_1614141
#print axioms cover_1614087

def state_1614049 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 13)))
theorem cover_1614049 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1614049 := by
  apply coveredState_split_literal (state := state_1614049) 3
    state_1614050 state_1614087
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1614050
  · exact cover_1614087
#print axioms cover_1614049
end Mub6.Numerical.CircleFullD0.Forest
