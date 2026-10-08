import CircleFullInterface
import CircleForestAssembly0263
import CircleForestAssembly0264
import CircleForestAssembly0289
import CircleForestChunk1114
import CircleForestChunk1115
import CircleForestChunk1116
import CircleForestChunk1117
import CircleForestChunk1118
import CircleForestChunk1119
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1567964 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 14) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 10)))
theorem cover_1567964 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1567964 := by
  apply coveredState_split_literal (state := state_1567964) 0
    state_1567965 state_1568044
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1567965
  · exact cover_1568044
#print axioms cover_1567964

def state_1567963 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 10)))
theorem cover_1567963 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1567963 := by
  apply coveredState_split_literal (state := state_1567963) 1
    state_1567964 state_1568057
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1567964
  · exact cover_1568057
#print axioms cover_1567963

def state_1568091 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 15) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 22)))
theorem cover_1568091 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1568091 := by
  apply coveredState_split_literal (state := state_1568091) 0
    state_1568092 state_1568155
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1568092
  · exact cover_1568155
#print axioms cover_1568091

def state_1568090 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 15) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 11)))
theorem cover_1568090 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1568090 := by
  apply coveredState_split_literal (state := state_1568090) 4
    state_1568091 state_1568160
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1568091
  · exact cover_1568160
#print axioms cover_1568090

def state_1568078 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 11)))
theorem cover_1568078 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1568078 := by
  apply coveredState_split_literal (state := state_1568078) 1
    state_1568079 state_1568090
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1568079
  · exact cover_1568090
#print axioms cover_1568078

def state_1567962 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 5)))
theorem cover_1567962 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1567962 := by
  apply coveredState_split_literal (state := state_1567962) 4
    state_1567963 state_1568078
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1567963
  · exact cover_1568078
#print axioms cover_1567962

def state_1568185 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 11 else 5)))
theorem cover_1568185 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1568185 := by
  apply coveredState_split_literal (state := state_1568185) 4
    state_1568186 state_1568233
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1568186
  · exact cover_1568233
#print axioms cover_1568185

def state_1567961 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 5 else 5)))
theorem cover_1567961 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1567961 := by
  apply coveredState_split_literal (state := state_1567961) 3
    state_1567962 state_1568185
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1567962
  · exact cover_1568185
#print axioms cover_1567961

def state_1567909 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 5)))
theorem cover_1567909 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1567909 := by
  apply coveredState_split_literal (state := state_1567909) 2
    state_1567910 state_1567961
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1567910
  · exact cover_1567961
#print axioms cover_1567909

def state_1543599 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 5)))
theorem cover_1543599 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1543599 := by
  apply coveredState_split_literal (state := state_1543599) 0
    state_1543600 state_1567909
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1543600
  · exact cover_1567909
#print axioms cover_1543599

def state_1542655 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 2)))
theorem cover_1542655 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542655 := by
  apply coveredState_split_literal (state := state_1542655) 4
    state_1542656 state_1543599
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1542656
  · exact cover_1543599
#print axioms cover_1542655

def state_1537911 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 2)))
theorem cover_1537911 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1537911 := by
  apply coveredState_split_literal (state := state_1537911) 3
    state_1537912 state_1542655
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1537912
  · exact cover_1542655
#print axioms cover_1537911

def state_1568291 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 4)))
theorem cover_1568291 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1568291 := by
  apply coveredState_split_literal (state := state_1568291) 0
    state_1568292 state_1568355
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1568292
  · exact cover_1568355
#print axioms cover_1568291

def state_1568371 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 10)))
theorem cover_1568371 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1568371 := by
  apply coveredState_split_literal (state := state_1568371) 0
    state_1568372 state_1568407
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1568372
  · exact cover_1568407
#print axioms cover_1568371

def state_1568370 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 10)))
theorem cover_1568370 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1568370 := by
  apply coveredState_split_literal (state := state_1568370) 2
    state_1568371 state_1568450
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1568371
  · exact cover_1568450
#print axioms cover_1568370

def state_1568369 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 10)))
theorem cover_1568369 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1568369 := by
  apply coveredState_split_literal (state := state_1568369) 1
    state_1568370 state_1568457
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1568370
  · exact cover_1568457
#print axioms cover_1568369

def state_1568527 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 11)))
theorem cover_1568527 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1568527 := by
  apply coveredState_split_literal (state := state_1568527) 4
    state_1568528 state_1568571
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1568528
  · exact cover_1568571
#print axioms cover_1568527

def state_1568499 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 11)))
theorem cover_1568499 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1568499 := by
  apply coveredState_split_literal (state := state_1568499) 0
    state_1568500 state_1568527
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1568500
  · exact cover_1568527
#print axioms cover_1568499

def state_1568498 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 11)))
theorem cover_1568498 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1568498 := by
  apply coveredState_split_literal (state := state_1568498) 2
    state_1568499 state_1568616
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1568499
  · exact cover_1568616
#print axioms cover_1568498

def state_1568490 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 11)))
theorem cover_1568490 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1568490 := by
  apply coveredState_split_literal (state := state_1568490) 1
    state_1568491 state_1568498
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1568491
  · exact cover_1568498
#print axioms cover_1568490

def state_1568368 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 5)))
theorem cover_1568368 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1568368 := by
  apply coveredState_split_literal (state := state_1568368) 4
    state_1568369 state_1568490
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1568369
  · exact cover_1568490
#print axioms cover_1568368

def state_1568648 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 10)))
theorem cover_1568648 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1568648 := by
  apply coveredState_split_literal (state := state_1568648) 2
    state_1568649 state_1568706
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1568649
  · exact cover_1568706
#print axioms cover_1568648

def state_1568618 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 10)))
theorem cover_1568618 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1568618 := by
  apply coveredState_split_literal (state := state_1568618) 1
    state_1568619 state_1568648
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1568619
  · exact cover_1568648
#print axioms cover_1568618

def state_1568803 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 31) else (if j.val < 3 then 28 else (if j.val < 4 then 22 else 22)))
theorem cover_1568803 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1568803 := by
  apply coveredState_split_literal (state := state_1568803) 0
    state_1568804 state_1568865
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1568804
  · exact cover_1568865
#print axioms cover_1568803

def state_1568785 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 28 else (if j.val < 4 then 22 else 22)))
theorem cover_1568785 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1568785 := by
  apply coveredState_split_literal (state := state_1568785) 1
    state_1568786 state_1568803
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1568786
  · exact cover_1568803
#print axioms cover_1568785

def state_1568784 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 14 else (if j.val < 4 then 22 else 22)))
theorem cover_1568784 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1568784 := by
  apply coveredState_split_literal (state := state_1568784) 2
    state_1568785 state_1568886
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1568785
  · exact cover_1568886
#print axioms cover_1568784

def state_1568910 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 31) else (if j.val < 3 then 28 else (if j.val < 4 then 22 else 23)))
theorem cover_1568910 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1568910 := by
  apply coveredState_split_literal (state := state_1568910) 4
    state_1568911 state_1568970
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1568911
  · exact cover_1568970
#print axioms cover_1568910

def state_1568902 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 28 else (if j.val < 4 then 22 else 23)))
theorem cover_1568902 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1568902 := by
  apply coveredState_split_literal (state := state_1568902) 1
    state_1568903 state_1568910
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1568903
  · exact cover_1568910
#print axioms cover_1568902

def state_1568901 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 14 else (if j.val < 4 then 22 else 23)))
theorem cover_1568901 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1568901 := by
  apply coveredState_split_literal (state := state_1568901) 2
    state_1568902 state_1568991
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1568902
  · exact cover_1568991
#print axioms cover_1568901

def state_1568783 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 14 else (if j.val < 4 then 22 else 11)))
theorem cover_1568783 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1568783 := by
  apply coveredState_split_literal (state := state_1568783) 4
    state_1568784 state_1568901
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1568784
  · exact cover_1568901
#print axioms cover_1568783

def state_1568782 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 14 else (if j.val < 4 then 11 else 11)))
theorem cover_1568782 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1568782 := by
  apply coveredState_split_literal (state := state_1568782) 3
    state_1568783 state_1568994
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1568783
  · exact cover_1568994
#print axioms cover_1568782

def state_1568734 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 14 else (if j.val < 4 then 11 else 11)))
theorem cover_1568734 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1568734 := by
  apply coveredState_split_literal (state := state_1568734) 0
    state_1568735 state_1568782
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1568735
  · exact cover_1568782
#print axioms cover_1568734
end Mub6.Numerical.CircleFullD0.Forest
