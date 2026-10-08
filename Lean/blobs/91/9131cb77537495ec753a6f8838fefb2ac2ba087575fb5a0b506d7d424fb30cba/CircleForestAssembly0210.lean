import CircleFullInterface
import CircleForestAssembly0208
import CircleForestAssembly0209
import CircleForestChunk0791
import CircleForestChunk0792
import CircleForestChunk0795
import CircleForestChunk0796
import CircleForestChunk0797
import CircleForestChunk0798
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1490785 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 14)))
theorem cover_1490785 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1490785 := by
  apply coveredState_split_literal (state := state_1490785) 4
    state_1490786 state_1490827
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1490786
  · exact cover_1490827
#print axioms cover_1490785

def state_1490757 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 14)))
theorem cover_1490757 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1490757 := by
  apply coveredState_split_literal (state := state_1490757) 2
    state_1490758 state_1490785
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1490758
  · exact cover_1490785
#print axioms cover_1490757

def state_1490375 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 10) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 14)))
theorem cover_1490375 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1490375 := by
  apply coveredState_split_literal (state := state_1490375) 1
    state_1490376 state_1490757
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1490376
  · exact cover_1490757
#print axioms cover_1490375

def state_1489485 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 10) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 14)))
theorem cover_1489485 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1489485 := by
  apply coveredState_split_literal (state := state_1489485) 3
    state_1489486 state_1490375
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1489486
  · exact cover_1490375
#print axioms cover_1489485

def state_1491626 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 21) else (if j.val < 3 then 19 else (if j.val < 4 then 50 else 29)))
theorem cover_1491626 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1491626 := by
  apply coveredState_split_literal (state := state_1491626) 1
    state_1491627 state_1491636
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1491627
  · exact cover_1491636
#print axioms cover_1491626

def state_1491625 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 21) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 29)))
theorem cover_1491625 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1491625 := by
  apply coveredState_split_literal (state := state_1491625) 3
    state_1491626 state_1491691
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1491626
  · exact cover_1491691
#print axioms cover_1491625

def state_1491624 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 21) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 29)))
theorem cover_1491624 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1491624 := by
  apply coveredState_split_literal (state := state_1491624) 0
    state_1491625 state_1491726
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1491625
  · exact cover_1491726
#print axioms cover_1491624

def state_1491614 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 21) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 14)))
theorem cover_1491614 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1491614 := by
  apply coveredState_split_literal (state := state_1491614) 4
    state_1491615 state_1491624
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1491615
  · exact cover_1491624
#print axioms cover_1491614

def state_1491602 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 21) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 14)))
theorem cover_1491602 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1491602 := by
  apply coveredState_split_literal (state := state_1491602) 2
    state_1491603 state_1491614
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1491603
  · exact cover_1491614
#print axioms cover_1491602

def state_1491580 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 10) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 14)))
theorem cover_1491580 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1491580 := by
  apply coveredState_split_literal (state := state_1491580) 1
    state_1491581 state_1491602
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1491581
  · exact cover_1491602
#print axioms cover_1491580

def state_1491526 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 10) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 14)))
theorem cover_1491526 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1491526 := by
  apply coveredState_split_literal (state := state_1491526) 3
    state_1491527 state_1491580
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1491527
  · exact cover_1491580
#print axioms cover_1491526

def state_1489484 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 14)))
theorem cover_1489484 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1489484 := by
  apply coveredState_split_literal (state := state_1489484) 0
    state_1489485 state_1491526
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1489485
  · exact cover_1491526
#print axioms cover_1489484

def state_1491800 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 21) else (if j.val < 3 then 19 else (if j.val < 4 then 24 else 30)))
theorem cover_1491800 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1491800 := by
  apply coveredState_split_literal (state := state_1491800) 3
    state_1491801 state_1491816
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1491801
  · exact cover_1491816
#print axioms cover_1491800

def state_1491786 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 19 else (if j.val < 4 then 24 else 30)))
theorem cover_1491786 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1491786 := by
  apply coveredState_split_literal (state := state_1491786) 0
    state_1491787 state_1491800
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1491787
  · exact cover_1491800
#print axioms cover_1491786

def state_1491785 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 19 else (if j.val < 4 then 24 else 15)))
theorem cover_1491785 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1491785 := by
  apply coveredState_split_literal (state := state_1491785) 4
    state_1491786 state_1491869
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1491786
  · exact cover_1491869
#print axioms cover_1491785

def state_1491737 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 15)))
theorem cover_1491737 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1491737 := by
  apply coveredState_split_literal (state := state_1491737) 2
    state_1491738 state_1491785
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1491738
  · exact cover_1491785
#print axioms cover_1491737

def state_1491733 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 10) else (if j.val < 3 then 9 else (if j.val < 4 then 24 else 15)))
theorem cover_1491733 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1491733 := by
  apply coveredState_split_literal (state := state_1491733) 1
    state_1491734 state_1491737
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1491734
  · exact cover_1491737
#print axioms cover_1491733

def state_1491947 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 43) else (if j.val < 3 then 39 else (if j.val < 4 then 50 else 60)))
theorem cover_1491947 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1491947 := by
  apply coveredState_split_literal (state := state_1491947) 0
    state_1491948 state_1491965
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1491948
  · exact cover_1491965
#print axioms cover_1491947

def state_1491946 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 43) else (if j.val < 3 then 39 else (if j.val < 4 then 50 else 30)))
theorem cover_1491946 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1491946 := by
  apply coveredState_split_literal (state := state_1491946) 4
    state_1491947 state_1492026
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1491947
  · exact cover_1492026
#print axioms cover_1491946

def state_1491938 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 43) else (if j.val < 3 then 19 else (if j.val < 4 then 50 else 30)))
theorem cover_1491938 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1491938 := by
  apply coveredState_split_literal (state := state_1491938) 2
    state_1491939 state_1491946
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1491939
  · exact cover_1491946
#print axioms cover_1491938

def state_1491920 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 21) else (if j.val < 3 then 19 else (if j.val < 4 then 50 else 30)))
theorem cover_1491920 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1491920 := by
  apply coveredState_split_literal (state := state_1491920) 1
    state_1491921 state_1491938
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1491921
  · exact cover_1491938
#print axioms cover_1491920

def state_1491919 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 21) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 30)))
theorem cover_1491919 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1491919 := by
  apply coveredState_split_literal (state := state_1491919) 3
    state_1491920 state_1492037
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1491920
  · exact cover_1492037
#print axioms cover_1491919

def state_1491903 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 30)))
theorem cover_1491903 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1491903 := by
  apply coveredState_split_literal (state := state_1491903) 0
    state_1491904 state_1491919
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1491904
  · exact cover_1491919
#print axioms cover_1491903

def state_1491902 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 15)))
theorem cover_1491902 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1491902 := by
  apply coveredState_split_literal (state := state_1491902) 4
    state_1491903 state_1492060
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1491903
  · exact cover_1492060
#print axioms cover_1491902

def state_1491894 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 15)))
theorem cover_1491894 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1491894 := by
  apply coveredState_split_literal (state := state_1491894) 2
    state_1491895 state_1491902
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1491895
  · exact cover_1491902
#print axioms cover_1491894

def state_1491876 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 10) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 15)))
theorem cover_1491876 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1491876 := by
  apply coveredState_split_literal (state := state_1491876) 1
    state_1491877 state_1491894
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1491877
  · exact cover_1491894
#print axioms cover_1491876

def state_1491732 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 10) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 15)))
theorem cover_1491732 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1491732 := by
  apply coveredState_split_literal (state := state_1491732) 3
    state_1491733 state_1491876
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1491733
  · exact cover_1491876
#print axioms cover_1491732

def state_1491731 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 15)))
theorem cover_1491731 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1491731 := by
  apply coveredState_split_literal (state := state_1491731) 0
    state_1491732 state_1492069
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1491732
  · exact cover_1492069
#print axioms cover_1491731

def state_1489483 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 7)))
theorem cover_1489483 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1489483 := by
  apply coveredState_split_literal (state := state_1489483) 4
    state_1489484 state_1491731
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1489484
  · exact cover_1491731
#print axioms cover_1489483

def state_1489407 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 7)))
theorem cover_1489407 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1489407 := by
  apply coveredState_split_literal (state := state_1489407) 2
    state_1489408 state_1489483
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1489408
  · exact cover_1489483
#print axioms cover_1489407

def state_1492136 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 10) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 14)))
theorem cover_1492136 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1492136 := by
  apply coveredState_split_literal (state := state_1492136) 1
    state_1492137 state_1492176
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1492137
  · exact cover_1492176
#print axioms cover_1492136

def state_1492135 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 14)))
theorem cover_1492135 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1492135 := by
  apply coveredState_split_literal (state := state_1492135) 0
    state_1492136 state_1492209
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1492136
  · exact cover_1492209
#print axioms cover_1492135
end Mub6.Numerical.CircleFullD0.Forest
