import CircleFullInterface
import CircleForestAssembly0190
import CircleForestAssembly0192
import CircleForestChunk0720
import CircleForestChunk0721
import CircleForestChunk0722
import CircleForestChunk0723
import CircleForestChunk0724
import CircleForestChunk0725
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1473972 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 10) else (if j.val < 3 then 9 else (if j.val < 4 then 23 else 14)))
theorem cover_1473972 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1473972 := by
  apply coveredState_split_literal (state := state_1473972) 1
    state_1473973 state_1474020
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1473973
  · exact cover_1474020
#print axioms cover_1473972

def state_1473920 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 10) else (if j.val < 3 then 9 else (if j.val < 4 then 11 else 14)))
theorem cover_1473920 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1473920 := by
  apply coveredState_split_literal (state := state_1473920) 3
    state_1473921 state_1473972
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1473921
  · exact cover_1473972
#print axioms cover_1473920

def state_1473919 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 9 else (if j.val < 4 then 11 else 14)))
theorem cover_1473919 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1473919 := by
  apply coveredState_split_literal (state := state_1473919) 0
    state_1473920 state_1474429
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1473920
  · exact cover_1474429
#print axioms cover_1473919

def state_1473918 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 9 else (if j.val < 4 then 11 else 7)))
theorem cover_1473918 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1473918 := by
  apply coveredState_split_literal (state := state_1473918) 4
    state_1473919 state_1474456
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1473919
  · exact cover_1474456
#print axioms cover_1473918

def state_1471956 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 7)))
theorem cover_1471956 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1471956 := by
  apply coveredState_split_literal (state := state_1471956) 2
    state_1471957 state_1473918
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1471957
  · exact cover_1473918
#print axioms cover_1471956

def state_1471788 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 7)))
theorem cover_1471788 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1471788 := by
  apply coveredState_split_literal (state := state_1471788) 3
    state_1471789 state_1471956
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1471789
  · exact cover_1471956
#print axioms cover_1471788

def state_1474527 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 8 else (if j.val < 4 then 21 else 28)))
theorem cover_1474527 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1474527 := by
  apply coveredState_split_literal (state := state_1474527) 2
    state_1474528 state_1474589
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1474528
  · exact cover_1474589
#print axioms cover_1474527

def state_1474598 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 22) else (if j.val < 3 then 16 else (if j.val < 4 then 21 else 29)))
theorem cover_1474598 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1474598 := by
  apply coveredState_split_literal (state := state_1474598) 1
    state_1474599 state_1474642
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1474599
  · exact cover_1474642
#print axioms cover_1474598

def state_1474597 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 16 else (if j.val < 4 then 21 else 29)))
theorem cover_1474597 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1474597 := by
  apply coveredState_split_literal (state := state_1474597) 0
    state_1474598 state_1474669
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1474598
  · exact cover_1474669
#print axioms cover_1474597

def state_1474596 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 8 else (if j.val < 4 then 21 else 29)))
theorem cover_1474596 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1474596 := by
  apply coveredState_split_literal (state := state_1474596) 2
    state_1474597 state_1474670
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1474597
  · exact cover_1474670
#print axioms cover_1474596

def state_1474526 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 8 else (if j.val < 4 then 21 else 14)))
theorem cover_1474526 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1474526 := by
  apply coveredState_split_literal (state := state_1474526) 4
    state_1474527 state_1474596
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1474527
  · exact cover_1474596
#print axioms cover_1474526

def state_1474524 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 8 else (if j.val < 4 then 10 else 14)))
theorem cover_1474524 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1474524 := by
  apply coveredState_split_literal (state := state_1474524) 3
    state_1474525 state_1474526
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1474525
  · exact cover_1474526
#print axioms cover_1474524

def state_1474523 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 11) else (if j.val < 3 then 8 else (if j.val < 4 then 10 else 14)))
theorem cover_1474523 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1474523 := by
  apply coveredState_split_literal (state := state_1474523) 1
    state_1474524 state_1474683
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1474524
  · exact cover_1474683
#print axioms cover_1474523

def state_1474522 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 8 else (if j.val < 4 then 10 else 14)))
theorem cover_1474522 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1474522 := by
  apply coveredState_split_literal (state := state_1474522) 0
    state_1474523 state_1474706
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1474523
  · exact cover_1474706
#print axioms cover_1474522

def state_1474521 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 8 else (if j.val < 4 then 10 else 7)))
theorem cover_1474521 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1474521 := by
  apply coveredState_split_literal (state := state_1474521) 4
    state_1474522 state_1474709
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1474522
  · exact cover_1474709
#print axioms cover_1474521

def state_1474520 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 4 else (if j.val < 4 then 10 else 7)))
theorem cover_1474520 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1474520 := by
  apply coveredState_split_literal (state := state_1474520) 2
    state_1474521 state_1474738
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1474521
  · exact cover_1474738
#print axioms cover_1474520

def state_1474859 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 192 else 88) else (if j.val < 3 then 65 else (if j.val < 4 then 89 else 115)))
theorem cover_1474859 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1474859 := by
  apply coveredState_split_literal (state := state_1474859) 3
    state_1474860 state_1474895
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1474860
  · exact cover_1474895
#print axioms cover_1474859

def state_1474858 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 88) else (if j.val < 3 then 65 else (if j.val < 4 then 89 else 115)))
theorem cover_1474858 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1474858 := by
  apply coveredState_split_literal (state := state_1474858) 0
    state_1474859 state_1474930
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1474859
  · exact cover_1474930
#print axioms cover_1474858

def state_1474846 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 88) else (if j.val < 3 then 32 else (if j.val < 4 then 89 else 115)))
theorem cover_1474846 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1474846 := by
  apply coveredState_split_literal (state := state_1474846) 2
    state_1474847 state_1474858
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1474847
  · exact cover_1474858
#print axioms cover_1474846

def state_1474838 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 88) else (if j.val < 3 then 32 else (if j.val < 4 then 89 else 57)))
theorem cover_1474838 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1474838 := by
  apply coveredState_split_literal (state := state_1474838) 4
    state_1474839 state_1474846
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1474839
  · exact cover_1474846
#print axioms cover_1474838

def state_1474780 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 88) else (if j.val < 3 then 32 else (if j.val < 4 then 44 else 57)))
theorem cover_1474780 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1474780 := by
  apply coveredState_split_literal (state := state_1474780) 3
    state_1474781 state_1474838
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1474781
  · exact cover_1474838
#print axioms cover_1474780

def state_1474779 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 44) else (if j.val < 3 then 32 else (if j.val < 4 then 44 else 57)))
theorem cover_1474779 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1474779 := by
  apply coveredState_split_literal (state := state_1474779) 1
    state_1474780 state_1474959
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1474780
  · exact cover_1474959
#print axioms cover_1474779

def state_1474778 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 44) else (if j.val < 3 then 32 else (if j.val < 4 then 44 else 57)))
theorem cover_1474778 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1474778 := by
  apply coveredState_split_literal (state := state_1474778) 0
    state_1474779 state_1474998
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1474779
  · exact cover_1474998
#print axioms cover_1474778

def state_1475024 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 44) else (if j.val < 3 then 33 else (if j.val < 4 then 44 else 57)))
theorem cover_1475024 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1475024 := by
  apply coveredState_split_literal (state := state_1475024) 1
    state_1475025 state_1475082
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1475025
  · exact cover_1475082
#print axioms cover_1475024

def state_1475023 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 44) else (if j.val < 3 then 33 else (if j.val < 4 then 44 else 57)))
theorem cover_1475023 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1475023 := by
  apply coveredState_split_literal (state := state_1475023) 0
    state_1475024 state_1475095
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1475024
  · exact cover_1475095
#print axioms cover_1475023

def state_1474777 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 44) else (if j.val < 3 then 16 else (if j.val < 4 then 44 else 57)))
theorem cover_1474777 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1474777 := by
  apply coveredState_split_literal (state := state_1474777) 2
    state_1474778 state_1475023
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1474778
  · exact cover_1475023
#print axioms cover_1474777

def state_1474767 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 44) else (if j.val < 3 then 16 else (if j.val < 4 then 44 else 28)))
theorem cover_1474767 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1474767 := by
  apply coveredState_split_literal (state := state_1474767) 4
    state_1474768 state_1474777
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1474768
  · exact cover_1474777
#print axioms cover_1474767

def state_1475120 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 44) else (if j.val < 3 then 33 else (if j.val < 4 then 45 else 57)))
theorem cover_1475120 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1475120 := by
  apply coveredState_split_literal (state := state_1475120) 0
    state_1475121 state_1475178
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1475121
  · exact cover_1475178
#print axioms cover_1475120

def state_1475102 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 44) else (if j.val < 3 then 16 else (if j.val < 4 then 45 else 57)))
theorem cover_1475102 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1475102 := by
  apply coveredState_split_literal (state := state_1475102) 2
    state_1475103 state_1475120
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1475103
  · exact cover_1475120
#print axioms cover_1475102

def state_1475100 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 44) else (if j.val < 3 then 16 else (if j.val < 4 then 45 else 28)))
theorem cover_1475100 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1475100 := by
  apply coveredState_split_literal (state := state_1475100) 4
    state_1475101 state_1475102
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1475101
  · exact cover_1475102
#print axioms cover_1475100

def state_1474766 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 44) else (if j.val < 3 then 16 else (if j.val < 4 then 22 else 28)))
theorem cover_1474766 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1474766 := by
  apply coveredState_split_literal (state := state_1474766) 3
    state_1474767 state_1475100
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1474767
  · exact cover_1475100
#print axioms cover_1474766

def state_1474765 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 22) else (if j.val < 3 then 16 else (if j.val < 4 then 22 else 28)))
theorem cover_1474765 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1474765 := by
  apply coveredState_split_literal (state := state_1474765) 1
    state_1474766 state_1475187
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1474766
  · exact cover_1475187
#print axioms cover_1474765
end Mub6.Numerical.CircleFullD0.Forest
