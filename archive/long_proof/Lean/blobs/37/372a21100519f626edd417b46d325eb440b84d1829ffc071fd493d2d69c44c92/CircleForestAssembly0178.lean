import CircleFullInterface
import CircleForestAssembly0177
import CircleForestChunk0670
import CircleForestChunk0671
import CircleForestChunk0673
import CircleForestChunk0674
import CircleForestChunk0675
import CircleForestChunk0676
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1462084 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 8) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 13)))
theorem cover_1462084 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1462084 := by
  apply coveredState_split_literal (state := state_1462084) 4
    state_1462085 state_1462334
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1462085
  · exact cover_1462334
#print axioms cover_1462084

def state_1462050 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 8) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 13)))
theorem cover_1462050 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1462050 := by
  apply coveredState_split_literal (state := state_1462050) 3
    state_1462051 state_1462084
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1462051
  · exact cover_1462084
#print axioms cover_1462050

def state_1462042 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 8) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 13)))
theorem cover_1462042 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1462042 := by
  apply coveredState_split_literal (state := state_1462042) 0
    state_1462043 state_1462050
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1462043
  · exact cover_1462050
#print axioms cover_1462042

def state_1462034 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 8) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 13)))
theorem cover_1462034 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1462034 := by
  apply coveredState_split_literal (state := state_1462034) 2
    state_1462035 state_1462042
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1462035
  · exact cover_1462042
#print axioms cover_1462034

def state_1462417 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 9) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 13)))
theorem cover_1462417 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1462417 := by
  apply coveredState_split_literal (state := state_1462417) 4
    state_1462418 state_1462439
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1462418
  · exact cover_1462439
#print axioms cover_1462417

def state_1462377 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 9) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 13)))
theorem cover_1462377 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1462377 := by
  apply coveredState_split_literal (state := state_1462377) 3
    state_1462378 state_1462417
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1462378
  · exact cover_1462417
#print axioms cover_1462377

def state_1462365 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 9) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 13)))
theorem cover_1462365 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1462365 := by
  apply coveredState_split_literal (state := state_1462365) 0
    state_1462366 state_1462377
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1462366
  · exact cover_1462377
#print axioms cover_1462365

def state_1462349 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 9) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 13)))
theorem cover_1462349 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1462349 := by
  apply coveredState_split_literal (state := state_1462349) 2
    state_1462350 state_1462365
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1462350
  · exact cover_1462365
#print axioms cover_1462349

def state_1462033 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 13)))
theorem cover_1462033 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1462033 := by
  apply coveredState_split_literal (state := state_1462033) 1
    state_1462034 state_1462349
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1462034
  · exact cover_1462349
#print axioms cover_1462033

def state_1461811 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 6)))
theorem cover_1461811 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461811 := by
  apply coveredState_split_literal (state := state_1461811) 4
    state_1461812 state_1462033
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1461812
  · exact cover_1462033
#print axioms cover_1461811

def state_1462571 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 8) else (if j.val < 3 then 19 else (if j.val < 4 then 26 else 26)))
theorem cover_1462571 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1462571 := by
  apply coveredState_split_literal (state := state_1462571) 1
    state_1462572 state_1462617
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1462572
  · exact cover_1462617
#print axioms cover_1462571

def state_1462569 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 8) else (if j.val < 3 then 9 else (if j.val < 4 then 26 else 26)))
theorem cover_1462569 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1462569 := by
  apply coveredState_split_literal (state := state_1462569) 2
    state_1462570 state_1462571
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1462570
  · exact cover_1462571
#print axioms cover_1462569

def state_1462568 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 8) else (if j.val < 3 then 9 else (if j.val < 4 then 26 else 13)))
theorem cover_1462568 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1462568 := by
  apply coveredState_split_literal (state := state_1462568) 4
    state_1462569 state_1462654
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1462569
  · exact cover_1462654
#print axioms cover_1462568

def state_1462567 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 8) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 13)))
theorem cover_1462567 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1462567 := by
  apply coveredState_split_literal (state := state_1462567) 3
    state_1462568 state_1462655
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1462568
  · exact cover_1462655
#print axioms cover_1462567

def state_1462565 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 8) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 13)))
theorem cover_1462565 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1462565 := by
  apply coveredState_split_literal (state := state_1462565) 0
    state_1462566 state_1462567
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1462566
  · exact cover_1462567
#print axioms cover_1462565

def state_1462563 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 8) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 13)))
theorem cover_1462563 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1462563 := by
  apply coveredState_split_literal (state := state_1462563) 2
    state_1462564 state_1462565
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1462564
  · exact cover_1462565
#print axioms cover_1462563

def state_1462562 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 13)))
theorem cover_1462562 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1462562 := by
  apply coveredState_split_literal (state := state_1462562) 1
    state_1462563 state_1462656
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1462563
  · exact cover_1462656
#print axioms cover_1462562

def state_1462498 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 6)))
theorem cover_1462498 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1462498 := by
  apply coveredState_split_literal (state := state_1462498) 4
    state_1462499 state_1462562
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1462499
  · exact cover_1462562
#print axioms cover_1462498

def state_1461810 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 6)))
theorem cover_1461810 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461810 := by
  apply coveredState_split_literal (state := state_1461810) 3
    state_1461811 state_1462498
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1461811
  · exact cover_1462498
#print axioms cover_1461810

def state_1461792 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 6)))
theorem cover_1461792 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461792 := by
  apply coveredState_split_literal (state := state_1461792) 0
    state_1461793 state_1461810
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1461793
  · exact cover_1461810
#print axioms cover_1461792

def state_1461791 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 3)))
theorem cover_1461791 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461791 := by
  apply coveredState_split_literal (state := state_1461791) 4
    state_1461792 state_1462693
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1461792
  · exact cover_1462693
#print axioms cover_1461791

def state_1461790 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 3)))
theorem cover_1461790 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461790 := by
  apply coveredState_split_literal (state := state_1461790) 3
    state_1461791 state_1462748
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1461791
  · exact cover_1462748
#print axioms cover_1461790

def state_1462764 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 4) else (if j.val < 3 then 10 else (if j.val < 4 then 6 else 6)))
theorem cover_1462764 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1462764 := by
  apply coveredState_split_literal (state := state_1462764) 3
    state_1462765 state_1462806
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1462765
  · exact cover_1462806
#print axioms cover_1462764

def state_1462763 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 6)))
theorem cover_1462763 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1462763 := by
  apply coveredState_split_literal (state := state_1462763) 2
    state_1462764 state_1462839
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1462764
  · exact cover_1462839
#print axioms cover_1462763

def state_1462757 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 6)))
theorem cover_1462757 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1462757 := by
  apply coveredState_split_literal (state := state_1462757) 0
    state_1462758 state_1462763
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1462758
  · exact cover_1462763
#print axioms cover_1462757

def state_1462756 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 3)))
theorem cover_1462756 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1462756 := by
  apply coveredState_split_literal (state := state_1462756) 4
    state_1462757 state_1462844
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1462757
  · exact cover_1462844
#print axioms cover_1462756

def state_1462755 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 3)))
theorem cover_1462755 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1462755 := by
  apply coveredState_split_literal (state := state_1462755) 3
    state_1462756 state_1462869
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1462756
  · exact cover_1462869
#print axioms cover_1462755

def state_1461789 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_1461789 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461789 := by
  apply coveredState_split_literal (state := state_1461789) 2
    state_1461790 state_1462755
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1461790
  · exact cover_1462755
#print axioms cover_1461789

def state_1462985 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 10) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 14)))
theorem cover_1462985 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1462985 := by
  apply coveredState_split_literal (state := state_1462985) 3
    state_1462986 state_1463035
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1462986
  · exact cover_1463035
#print axioms cover_1462985

def state_1462975 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 14)))
theorem cover_1462975 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1462975 := by
  apply coveredState_split_literal (state := state_1462975) 0
    state_1462976 state_1462985
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1462976
  · exact cover_1462985
#print axioms cover_1462975

def state_1462974 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 7)))
theorem cover_1462974 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1462974 := by
  apply coveredState_split_literal (state := state_1462974) 4
    state_1462975 state_1463084
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1462975
  · exact cover_1463084
#print axioms cover_1462974

def state_1462960 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 7)))
theorem cover_1462960 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1462960 := by
  apply coveredState_split_literal (state := state_1462960) 2
    state_1462961 state_1462974
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1462961
  · exact cover_1462974
#print axioms cover_1462960
end Mub6.Numerical.CircleFullD0.Forest
