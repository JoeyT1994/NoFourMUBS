import D0FullInterface
import D0ForestAssembly0269
import D0ForestChunk1030
import D0ForestChunk1033
import D0ForestChunk1034
import D0ForestChunk1035
import D0ForestChunk1036
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1547706 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 25 else (if j.val < 4 then 10 else 10)))
theorem cover_1547706 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1547706 := by
  apply coveredState_split_literal (state := state_1547706) 3
    state_1547707 state_1548462
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1547707
  · exact cover_1548462
#print axioms cover_1547706

def state_1547690 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 12 else (if j.val < 4 then 10 else 10)))
theorem cover_1547690 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1547690 := by
  apply coveredState_split_literal (state := state_1547690) 2
    state_1547691 state_1547706
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1547691
  · exact cover_1547706
#print axioms cover_1547690

def state_1548650 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 120) else (if j.val < 3 then 102 else (if j.val < 4 then 81 else 87)))
theorem cover_1548650 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1548650 := by
  apply coveredState_split_literal (state := state_1548650) 2
    state_1548651 state_1548662
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1548651
  · exact cover_1548662
#print axioms cover_1548650

def state_1548649 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 120) else (if j.val < 3 then 102 else (if j.val < 4 then 81 else 87)))
theorem cover_1548649 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1548649 := by
  apply coveredState_split_literal (state := state_1548649) 0
    state_1548650 state_1548719
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1548650
  · exact cover_1548719
#print axioms cover_1548649

def state_1548648 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 102 else (if j.val < 4 then 81 else 87)))
theorem cover_1548648 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1548648 := by
  apply coveredState_split_literal (state := state_1548648) 1
    state_1548649 state_1548726
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1548649
  · exact cover_1548726
#print axioms cover_1548648

def state_1548614 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 102 else (if j.val < 4 then 40 else 87)))
theorem cover_1548614 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1548614 := by
  apply coveredState_split_literal (state := state_1548614) 3
    state_1548615 state_1548648
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1548615
  · exact cover_1548648
#print axioms cover_1548614

def state_1548602 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 102 else (if j.val < 4 then 40 else 43)))
theorem cover_1548602 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1548602 := by
  apply coveredState_split_literal (state := state_1548602) 4
    state_1548603 state_1548614
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1548603
  · exact cover_1548614
#print axioms cover_1548602

def state_1548775 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 120) else (if j.val < 3 then 206 else (if j.val < 4 then 81 else 174)))
theorem cover_1548775 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1548775 := by
  apply coveredState_split_literal (state := state_1548775) 3
    state_1548776 state_1548787
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1548776
  · exact cover_1548787
#print axioms cover_1548775

def state_1548860 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 120) else (if j.val < 3 then 206 else (if j.val < 4 then 163 else 175)))
theorem cover_1548860 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1548860 := by
  apply coveredState_split_literal (state := state_1548860) 1
    state_1548861 state_1548894
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1548861
  · exact cover_1548894
#print axioms cover_1548860

def state_1548846 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 120) else (if j.val < 3 then 206 else (if j.val < 4 then 81 else 175)))
theorem cover_1548846 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1548846 := by
  apply coveredState_split_literal (state := state_1548846) 3
    state_1548847 state_1548860
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1548847
  · exact cover_1548860
#print axioms cover_1548846

def state_1548774 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 120) else (if j.val < 3 then 206 else (if j.val < 4 then 81 else 87)))
theorem cover_1548774 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1548774 := by
  apply coveredState_split_literal (state := state_1548774) 4
    state_1548775 state_1548846
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1548775
  · exact cover_1548846
#print axioms cover_1548774

def state_1548773 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 120) else (if j.val < 3 then 103 else (if j.val < 4 then 81 else 87)))
theorem cover_1548773 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1548773 := by
  apply coveredState_split_literal (state := state_1548773) 2
    state_1548774 state_1548937
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1548774
  · exact cover_1548937
#print axioms cover_1548773

def state_1548772 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 120) else (if j.val < 3 then 103 else (if j.val < 4 then 81 else 87)))
theorem cover_1548772 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1548772 := by
  apply coveredState_split_literal (state := state_1548772) 0
    state_1548773 state_1548938
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1548773
  · exact cover_1548938
#print axioms cover_1548772

def state_1548771 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 103 else (if j.val < 4 then 81 else 87)))
theorem cover_1548771 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1548771 := by
  apply coveredState_split_literal (state := state_1548771) 1
    state_1548772 state_1548947
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1548772
  · exact cover_1548947
#print axioms cover_1548771

def state_1548757 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 103 else (if j.val < 4 then 40 else 87)))
theorem cover_1548757 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1548757 := by
  apply coveredState_split_literal (state := state_1548757) 3
    state_1548758 state_1548771
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1548758
  · exact cover_1548771
#print axioms cover_1548757

def state_1548741 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 103 else (if j.val < 4 then 40 else 43)))
theorem cover_1548741 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1548741 := by
  apply coveredState_split_literal (state := state_1548741) 4
    state_1548742 state_1548757
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1548742
  · exact cover_1548757
#print axioms cover_1548741

def state_1548601 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 51 else (if j.val < 4 then 40 else 43)))
theorem cover_1548601 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1548601 := by
  apply coveredState_split_literal (state := state_1548601) 2
    state_1548602 state_1548741
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1548602
  · exact cover_1548741
#print axioms cover_1548601

def state_1548600 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 60) else (if j.val < 3 then 51 else (if j.val < 4 then 40 else 43)))
theorem cover_1548600 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1548600 := by
  apply coveredState_split_literal (state := state_1548600) 0
    state_1548601 state_1548972
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1548601
  · exact cover_1548972
#print axioms cover_1548600

def state_1548599 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 51 else (if j.val < 4 then 40 else 43)))
theorem cover_1548599 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1548599 := by
  apply coveredState_split_literal (state := state_1548599) 1
    state_1548600 state_1548989
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1548600
  · exact cover_1548989
#print axioms cover_1548599

def state_1549060 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 103 else (if j.val < 4 then 41 else 87)))
theorem cover_1549060 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1549060 := by
  apply coveredState_split_literal (state := state_1549060) 3
    state_1549061 state_1549118
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1549061
  · exact cover_1549118
#print axioms cover_1549060

def state_1549018 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 103 else (if j.val < 4 then 41 else 43)))
theorem cover_1549018 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1549018 := by
  apply coveredState_split_literal (state := state_1549018) 4
    state_1549019 state_1549060
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1549019
  · exact cover_1549060
#print axioms cover_1549018

def state_1549000 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 51 else (if j.val < 4 then 41 else 43)))
theorem cover_1549000 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1549000 := by
  apply coveredState_split_literal (state := state_1549000) 2
    state_1549001 state_1549018
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1549001
  · exact cover_1549018
#print axioms cover_1549000

def state_1548999 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 60) else (if j.val < 3 then 51 else (if j.val < 4 then 41 else 43)))
theorem cover_1548999 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1548999 := by
  apply coveredState_split_literal (state := state_1548999) 0
    state_1549000 state_1549125
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1549000
  · exact cover_1549125
#print axioms cover_1548999

def state_1548998 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 51 else (if j.val < 4 then 41 else 43)))
theorem cover_1548998 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1548998 := by
  apply coveredState_split_literal (state := state_1548998) 1
    state_1548999 state_1549146
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1548999
  · exact cover_1549146
#print axioms cover_1548998

def state_1548598 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 51 else (if j.val < 4 then 20 else 43)))
theorem cover_1548598 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1548598 := by
  apply coveredState_split_literal (state := state_1548598) 3
    state_1548599 state_1548998
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1548599
  · exact cover_1548998
#print axioms cover_1548598

def state_1548572 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 51 else (if j.val < 4 then 20 else 21)))
theorem cover_1548572 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1548572 := by
  apply coveredState_split_literal (state := state_1548572) 4
    state_1548573 state_1548598
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1548573
  · exact cover_1548598
#print axioms cover_1548572

def state_1548510 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 25 else (if j.val < 4 then 20 else 21)))
theorem cover_1548510 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1548510 := by
  apply coveredState_split_literal (state := state_1548510) 2
    state_1548511 state_1548572
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1548511
  · exact cover_1548572
#print axioms cover_1548510

def state_1548509 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 30) else (if j.val < 3 then 25 else (if j.val < 4 then 20 else 21)))
theorem cover_1548509 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1548509 := by
  apply coveredState_split_literal (state := state_1548509) 0
    state_1548510 state_1549161
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1548510
  · exact cover_1549161
#print axioms cover_1548509

def state_1548508 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 25 else (if j.val < 4 then 20 else 21)))
theorem cover_1548508 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1548508 := by
  apply coveredState_split_literal (state := state_1548508) 1
    state_1548509 state_1549180
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1548509
  · exact cover_1549180
#print axioms cover_1548508

def state_1548498 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 25 else (if j.val < 4 then 20 else 10)))
theorem cover_1548498 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1548498 := by
  apply coveredState_split_literal (state := state_1548498) 4
    state_1548499 state_1548508
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1548499
  · exact cover_1548508
#print axioms cover_1548498

def state_1548497 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 25 else (if j.val < 4 then 10 else 10)))
theorem cover_1548497 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1548497 := by
  apply coveredState_split_literal (state := state_1548497) 3
    state_1548498 state_1549189
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1548498
  · exact cover_1549189
#print axioms cover_1548497

def state_1548471 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 12 else (if j.val < 4 then 10 else 10)))
theorem cover_1548471 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1548471 := by
  apply coveredState_split_literal (state := state_1548471) 2
    state_1548472 state_1548497
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1548472
  · exact cover_1548497
#print axioms cover_1548471
end Mub6.Numerical.CircleFullD0.Forest
