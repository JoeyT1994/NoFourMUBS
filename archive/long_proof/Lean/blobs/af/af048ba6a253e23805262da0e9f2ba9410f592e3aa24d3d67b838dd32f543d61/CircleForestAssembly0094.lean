import CircleFullInterface
import CircleForestAssembly0044
import CircleForestAssembly0084
import CircleForestAssembly0090
import CircleForestAssembly0093
import CircleForestChunk0338
import CircleForestChunk0376
import CircleForestChunk0377
import CircleForestChunk0378
import CircleForestChunk0379
import CircleForestChunk0380
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1027766 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 13)))
theorem cover_1027766 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1027766 := by
  apply coveredState_split_literal (state := state_1027766) 3
    state_1027767 state_1027888
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1027767
  · exact cover_1027888
#print axioms cover_1027766

def state_1027752 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 13)))
theorem cover_1027752 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1027752 := by
  apply coveredState_split_literal (state := state_1027752) 0
    state_1027753 state_1027766
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1027753
  · exact cover_1027766
#print axioms cover_1027752

def state_1027746 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 15) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 13)))
theorem cover_1027746 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1027746 := by
  apply coveredState_split_literal (state := state_1027746) 2
    state_1027747 state_1027752
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1027747
  · exact cover_1027752
#print axioms cover_1027746

def state_1027730 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 13)))
theorem cover_1027730 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1027730 := by
  apply coveredState_split_literal (state := state_1027730) 1
    state_1027731 state_1027746
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1027731
  · exact cover_1027746
#print axioms cover_1027730

def state_1025166 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 6)))
theorem cover_1025166 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1025166 := by
  apply coveredState_split_literal (state := state_1025166) 4
    state_1025167 state_1027730
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1025167
  · exact cover_1027730
#print axioms cover_1025166

def state_1018714 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 6)))
theorem cover_1018714 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018714 := by
  apply coveredState_split_literal (state := state_1018714) 3
    state_1018715 state_1025166
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1018715
  · exact cover_1025166
#print axioms cover_1018714

def state_1018664 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 6)))
theorem cover_1018664 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018664 := by
  apply coveredState_split_literal (state := state_1018664) 0
    state_1018665 state_1018714
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1018665
  · exact cover_1018714
#print axioms cover_1018664

def state_1018663 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 3)))
theorem cover_1018663 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018663 := by
  apply coveredState_split_literal (state := state_1018663) 4
    state_1018664 state_1027897
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1018664
  · exact cover_1027897
#print axioms cover_1018663

def state_1018662 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 3)))
theorem cover_1018662 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018662 := by
  apply coveredState_split_literal (state := state_1018662) 3
    state_1018663 state_1027910
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1018663
  · exact cover_1027910
#print axioms cover_1018662

def state_1028023 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 15) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 12)))
theorem cover_1028023 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1028023 := by
  apply coveredState_split_literal (state := state_1028023) 0
    state_1028024 state_1028031
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1028024
  · exact cover_1028031
#print axioms cover_1028023

def state_1027993 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 12)))
theorem cover_1027993 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1027993 := by
  apply coveredState_split_literal (state := state_1027993) 1
    state_1027994 state_1028023
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1027994
  · exact cover_1028023
#print axioms cover_1027993

def state_1027992 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 6)))
theorem cover_1027992 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1027992 := by
  apply coveredState_split_literal (state := state_1027992) 4
    state_1027993 state_1028092
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1027993
  · exact cover_1028092
#print axioms cover_1027992

def state_1027954 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 10 else (if j.val < 4 then 6 else 6)))
theorem cover_1027954 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1027954 := by
  apply coveredState_split_literal (state := state_1027954) 3
    state_1027955 state_1027992
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1027955
  · exact cover_1027992
#print axioms cover_1027954

def state_1027953 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 6)))
theorem cover_1027953 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1027953 := by
  apply coveredState_split_literal (state := state_1027953) 2
    state_1027954 state_1028145
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1027954
  · exact cover_1028145
#print axioms cover_1027953

def state_1027941 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 6)))
theorem cover_1027941 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1027941 := by
  apply coveredState_split_literal (state := state_1027941) 0
    state_1027942 state_1027953
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1027942
  · exact cover_1027953
#print axioms cover_1027941

def state_1027940 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 3)))
theorem cover_1027940 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1027940 := by
  apply coveredState_split_literal (state := state_1027940) 4
    state_1027941 state_1028154
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1027941
  · exact cover_1028154
#print axioms cover_1027940

def state_1028197 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 6)))
theorem cover_1028197 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1028197 := by
  apply coveredState_split_literal (state := state_1028197) 4
    state_1028198 state_1028259
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1028198
  · exact cover_1028259
#print axioms cover_1028197

def state_1028196 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 6)))
theorem cover_1028196 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1028196 := by
  apply coveredState_split_literal (state := state_1028196) 2
    state_1028197 state_1028278
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1028197
  · exact cover_1028278
#print axioms cover_1028196

def state_1028188 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 6)))
theorem cover_1028188 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1028188 := by
  apply coveredState_split_literal (state := state_1028188) 0
    state_1028189 state_1028196
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1028189
  · exact cover_1028196
#print axioms cover_1028188

def state_1028187 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 3)))
theorem cover_1028187 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1028187 := by
  apply coveredState_split_literal (state := state_1028187) 4
    state_1028188 state_1028291
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1028188
  · exact cover_1028291
#print axioms cover_1028187

def state_1027939 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 3)))
theorem cover_1027939 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1027939 := by
  apply coveredState_split_literal (state := state_1027939) 3
    state_1027940 state_1028187
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1027940
  · exact cover_1028187
#print axioms cover_1027939

def state_1018661 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_1018661 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018661 := by
  apply coveredState_split_literal (state := state_1018661) 2
    state_1018662 state_1027939
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1018662
  · exact cover_1027939
#print axioms cover_1018661

def state_1018551 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_1018551 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018551 := by
  apply coveredState_split_literal (state := state_1018551) 1
    state_1018552 state_1018661
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1018552
  · exact cover_1018661
#print axioms cover_1018551

def state_1018515 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_1018515 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018515 := by
  apply coveredState_split_literal (state := state_1018515) 0
    state_1018516 state_1018551
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1018516
  · exact cover_1018551
#print axioms cover_1018515

def state_980171 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 1)))
theorem cover_980171 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_980171 := by
  apply coveredState_split_literal (state := state_980171) 4
    state_980172 state_1018515
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_980172
  · exact cover_1018515
#print axioms cover_980171

def state_979559 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_979559 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_979559 := by
  apply coveredState_split_literal (state := state_979559) 3
    state_979560 state_980171
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_979560
  · exact cover_980171
#print axioms cover_979559

def state_1028306 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_1028306 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1028306 := by
  apply coveredState_split_literal (state := state_1028306) 0
    state_1028307 state_1028332
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1028307
  · exact cover_1028332
#print axioms cover_1028306

def state_1028535 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 8 else 14)))
theorem cover_1028535 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1028535 := by
  apply coveredState_split_literal (state := state_1028535) 1
    state_1028536 state_1028593
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1028536
  · exact cover_1028593
#print axioms cover_1028535

def state_1028655 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 48) else (if j.val < 3 then 25 else (if j.val < 4 then 17 else 29)))
theorem cover_1028655 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1028655 := by
  apply coveredState_split_literal (state := state_1028655) 2
    state_1028656 state_1028689
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1028656
  · exact cover_1028689
#print axioms cover_1028655

def state_1028654 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 24) else (if j.val < 3 then 25 else (if j.val < 4 then 17 else 29)))
theorem cover_1028654 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1028654 := by
  apply coveredState_split_literal (state := state_1028654) 1
    state_1028655 state_1028742
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1028655
  · exact cover_1028742
#print axioms cover_1028654

def state_1028653 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 24) else (if j.val < 3 then 25 else (if j.val < 4 then 17 else 29)))
theorem cover_1028653 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1028653 := by
  apply coveredState_split_literal (state := state_1028653) 0
    state_1028654 state_1028777
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1028654
  · exact cover_1028777
#print axioms cover_1028653

def state_1028645 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 24) else (if j.val < 3 then 25 else (if j.val < 4 then 8 else 29)))
theorem cover_1028645 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1028645 := by
  apply coveredState_split_literal (state := state_1028645) 3
    state_1028646 state_1028653
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1028646
  · exact cover_1028653
#print axioms cover_1028645
end Mub6.Numerical.CircleFullD0.Forest
