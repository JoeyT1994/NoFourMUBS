import CircleFullInterface
import CircleForestAssembly0341
import CircleForestAssembly0344
import CircleForestAssembly0385
import CircleForestAssembly0386
import CircleForestChunk1504
import CircleForestChunk1507
import CircleForestChunk1508
import CircleForestChunk1509
import CircleForestChunk1510
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1662410 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 14 else (if j.val < 4 then 15 else 12)))
theorem cover_1662410 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1662410 := by
  apply coveredState_split_literal (state := state_1662410) 0
    state_1662411 state_1662504
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1662411
  · exact cover_1662504
#print axioms cover_1662410

def state_1661796 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 14 else (if j.val < 4 then 7 else 12)))
theorem cover_1661796 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1661796 := by
  apply coveredState_split_literal (state := state_1661796) 3
    state_1661797 state_1662410
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1661797
  · exact cover_1662410
#print axioms cover_1661796

def state_1662527 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 12) else (if j.val < 3 then 15 else (if j.val < 4 then 14 else 12)))
theorem cover_1662527 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1662527 := by
  apply coveredState_split_literal (state := state_1662527) 1
    state_1662528 state_1662573
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1662528
  · exact cover_1662573
#print axioms cover_1662527

def state_1662526 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 15 else (if j.val < 4 then 14 else 12)))
theorem cover_1662526 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1662526 := by
  apply coveredState_split_literal (state := state_1662526) 0
    state_1662527 state_1662620
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1662527
  · exact cover_1662620
#print axioms cover_1662526

def state_1662641 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 15 else (if j.val < 4 then 15 else 12)))
theorem cover_1662641 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1662641 := by
  apply coveredState_split_literal (state := state_1662641) 0
    state_1662642 state_1662657
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1662642
  · exact cover_1662657
#print axioms cover_1662641

def state_1662525 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 15 else (if j.val < 4 then 7 else 12)))
theorem cover_1662525 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1662525 := by
  apply coveredState_split_literal (state := state_1662525) 3
    state_1662526 state_1662641
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1662526
  · exact cover_1662641
#print axioms cover_1662525

def state_1661795 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 12)))
theorem cover_1661795 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1661795 := by
  apply coveredState_split_literal (state := state_1661795) 2
    state_1661796 state_1662525
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1661796
  · exact cover_1662525
#print axioms cover_1661795

def state_1661794 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 6)))
theorem cover_1661794 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1661794 := by
  apply coveredState_split_literal (state := state_1661794) 4
    state_1661795 state_1662720
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1661795
  · exact cover_1662720
#print axioms cover_1661794

def state_1661793 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 6)))
theorem cover_1661793 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1661793 := by
  apply coveredState_split_literal (state := state_1661793) 1
    state_1661794 state_1662745
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1661794
  · exact cover_1662745
#print axioms cover_1661793

def state_1661703 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 6)))
theorem cover_1661703 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1661703 := by
  apply coveredState_split_literal (state := state_1661703) 0
    state_1661704 state_1661793
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1661704
  · exact cover_1661793
#print axioms cover_1661703

def state_1661702 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 3)))
theorem cover_1661702 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1661702 := by
  apply coveredState_split_literal (state := state_1661702) 4
    state_1661703 state_1662772
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1661703
  · exact cover_1662772
#print axioms cover_1661702

def state_1661644 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 3)))
theorem cover_1661644 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1661644 := by
  apply coveredState_split_literal (state := state_1661644) 3
    state_1661645 state_1661702
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1661645
  · exact cover_1661702
#print axioms cover_1661644

def state_1661560 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_1661560 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1661560 := by
  apply coveredState_split_literal (state := state_1661560) 2
    state_1661561 state_1661644
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1661561
  · exact cover_1661644
#print axioms cover_1661560

def state_1662781 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 7)))
theorem cover_1662781 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1662781 := by
  apply coveredState_split_literal (state := state_1662781) 0
    state_1662782 state_1662801
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1662782
  · exact cover_1662801
#print axioms cover_1662781

def state_1662777 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 3)))
theorem cover_1662777 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1662777 := by
  apply coveredState_split_literal (state := state_1662777) 4
    state_1662778 state_1662781
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1662778
  · exact cover_1662781
#print axioms cover_1662777

def state_1662776 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 3)))
theorem cover_1662776 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1662776 := by
  apply coveredState_split_literal (state := state_1662776) 3
    state_1662777 state_1662850
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1662777
  · exact cover_1662850
#print axioms cover_1662776

def state_1662775 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_1662775 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1662775 := by
  apply coveredState_split_literal (state := state_1662775) 2
    state_1662776 state_1662853
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1662776
  · exact cover_1662853
#print axioms cover_1662775

def state_1661559 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_1661559 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1661559 := by
  apply coveredState_split_literal (state := state_1661559) 1
    state_1661560 state_1662775
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1661560
  · exact cover_1662775
#print axioms cover_1661559

def state_1661455 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_1661455 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1661455 := by
  apply coveredState_split_literal (state := state_1661455) 0
    state_1661456 state_1661559
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1661456
  · exact cover_1661559
#print axioms cover_1661455

def state_1620083 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 1)))
theorem cover_1620083 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620083 := by
  apply coveredState_split_literal (state := state_1620083) 4
    state_1620084 state_1661455
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1620084
  · exact cover_1661455
#print axioms cover_1620083

def state_1618071 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
theorem cover_1618071 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618071 := by
  apply coveredState_split_literal (state := state_1618071) 3
    state_1618072 state_1620083
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1618072
  · exact cover_1620083
#print axioms cover_1618071

def state_1617455 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_1617455 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1617455 := by
  apply coveredState_split_literal (state := state_1617455) 2
    state_1617456 state_1618071
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1617456
  · exact cover_1618071
#print axioms cover_1617455

def state_1570133 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 1) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_1570133 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1570133 := by
  apply coveredState_split_literal (state := state_1570133) 1
    state_1570134 state_1617455
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1570134
  · exact cover_1617455
#print axioms cover_1570133

def state_1662892 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_1662892 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1662892 := by
  apply coveredState_split_literal (state := state_1662892) 1
    state_1662893 state_1662926
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1662893
  · exact cover_1662926
#print axioms cover_1662892

def state_1662891 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_1662891 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1662891 := by
  apply coveredState_split_literal (state := state_1662891) 0
    state_1662892 state_1662973
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1662892
  · exact cover_1662973
#print axioms cover_1662891

def state_1662865 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 1)))
theorem cover_1662865 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1662865 := by
  apply coveredState_split_literal (state := state_1662865) 4
    state_1662866 state_1662891
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1662866
  · exact cover_1662891
#print axioms cover_1662865

def state_1662999 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_1662999 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1662999 := by
  apply coveredState_split_literal (state := state_1662999) 0
    state_1663000 state_1663057
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1663000
  · exact cover_1663057
#print axioms cover_1662999

def state_1663093 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_1663093 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1663093 := by
  apply coveredState_split_literal (state := state_1663093) 1
    state_1663094 state_1663115
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1663094
  · exact cover_1663115
#print axioms cover_1663093

def state_1663092 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_1663092 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1663092 := by
  apply coveredState_split_literal (state := state_1663092) 0
    state_1663093 state_1663164
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1663093
  · exact cover_1663164
#print axioms cover_1663092

def state_1662998 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 1)))
theorem cover_1662998 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1662998 := by
  apply coveredState_split_literal (state := state_1662998) 4
    state_1662999 state_1663092
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1662999
  · exact cover_1663092
#print axioms cover_1662998

def state_1662864 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_1662864 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1662864 := by
  apply coveredState_split_literal (state := state_1662864) 3
    state_1662865 state_1662998
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1662865
  · exact cover_1662998
#print axioms cover_1662864

def state_1663201 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_1663201 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1663201 := by
  apply coveredState_split_literal (state := state_1663201) 0
    state_1663202 state_1663259
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1663202
  · exact cover_1663259
#print axioms cover_1663201
end Mub6.Numerical.CircleFullD0.Forest
