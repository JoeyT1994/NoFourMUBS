import D0FullInterface
import D0ForestAssembly0072
import D0ForestAssembly0073
import D0ForestChunk0296
import D0ForestChunk0297
import D0ForestChunk0298
import D0ForestChunk0299
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1006799 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 2)))
theorem cover_1006799 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1006799 := by
  apply coveredState_split_literal (state := state_1006799) 3
    state_1006800 state_1007021
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1006800
  · exact cover_1007021
#print axioms cover_1006799

def state_980303 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_980303 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_980303 := by
  apply coveredState_split_literal (state := state_980303) 2
    state_980304 state_1006799
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_980304
  · exact cover_1006799
#print axioms cover_980303

def state_1008557 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 5)))
theorem cover_1008557 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1008557 := by
  apply coveredState_split_literal (state := state_1008557) 3
    state_1008558 state_1008595
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1008558
  · exact cover_1008595
#print axioms cover_1008557

def state_1008626 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 10)))
theorem cover_1008626 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1008626 := by
  apply coveredState_split_literal (state := state_1008626) 1
    state_1008627 state_1008690
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1008627
  · exact cover_1008690
#print axioms cover_1008626

def state_1008827 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 56) else (if j.val < 3 then 35 else (if j.val < 4 then 51 else 45)))
theorem cover_1008827 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1008827 := by
  apply coveredState_split_literal (state := state_1008827) 4
    state_1008828 state_1008853
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1008828
  · exact cover_1008853
#print axioms cover_1008827

def state_1008819 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 56) else (if j.val < 3 then 35 else (if j.val < 4 then 51 else 45)))
theorem cover_1008819 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1008819 := by
  apply coveredState_split_literal (state := state_1008819) 0
    state_1008820 state_1008827
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1008820
  · exact cover_1008827
#print axioms cover_1008819

def state_1008805 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 56) else (if j.val < 3 then 17 else (if j.val < 4 then 51 else 45)))
theorem cover_1008805 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1008805 := by
  apply coveredState_split_literal (state := state_1008805) 2
    state_1008806 state_1008819
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1008806
  · exact cover_1008819
#print axioms cover_1008805

def state_1008804 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 28) else (if j.val < 3 then 17 else (if j.val < 4 then 51 else 45)))
theorem cover_1008804 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1008804 := by
  apply coveredState_split_literal (state := state_1008804) 1
    state_1008805 state_1008896
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1008805
  · exact cover_1008896
#print axioms cover_1008804

def state_1008788 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 28) else (if j.val < 3 then 17 else (if j.val < 4 then 51 else 22)))
theorem cover_1008788 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1008788 := by
  apply coveredState_split_literal (state := state_1008788) 4
    state_1008789 state_1008804
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1008789
  · exact cover_1008804
#print axioms cover_1008788

def state_1008766 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 28) else (if j.val < 3 then 17 else (if j.val < 4 then 25 else 22)))
theorem cover_1008766 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1008766 := by
  apply coveredState_split_literal (state := state_1008766) 3
    state_1008767 state_1008788
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1008767
  · exact cover_1008788
#print axioms cover_1008766

def state_1008760 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 28) else (if j.val < 3 then 17 else (if j.val < 4 then 25 else 22)))
theorem cover_1008760 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1008760 := by
  apply coveredState_split_literal (state := state_1008760) 0
    state_1008761 state_1008766
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1008761
  · exact cover_1008766
#print axioms cover_1008760

def state_1008752 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 28) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 22)))
theorem cover_1008752 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1008752 := by
  apply coveredState_split_literal (state := state_1008752) 2
    state_1008753 state_1008760
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1008753
  · exact cover_1008760
#print axioms cover_1008752

def state_1008751 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 22)))
theorem cover_1008751 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1008751 := by
  apply coveredState_split_literal (state := state_1008751) 1
    state_1008752 state_1008905
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1008752
  · exact cover_1008905
#print axioms cover_1008751

def state_1008932 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 28) else (if j.val < 3 then 17 else (if j.val < 4 then 25 else 46)))
theorem cover_1008932 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1008932 := by
  apply coveredState_split_literal (state := state_1008932) 3
    state_1008933 state_1008954
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1008933
  · exact cover_1008954
#print axioms cover_1008932

def state_1008926 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 28) else (if j.val < 3 then 17 else (if j.val < 4 then 25 else 46)))
theorem cover_1008926 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1008926 := by
  apply coveredState_split_literal (state := state_1008926) 0
    state_1008927 state_1008932
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1008927
  · exact cover_1008932
#print axioms cover_1008926

def state_1008925 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 28) else (if j.val < 3 then 17 else (if j.val < 4 then 25 else 23)))
theorem cover_1008925 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1008925 := by
  apply coveredState_split_literal (state := state_1008925) 4
    state_1008926 state_1009009
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1008926
  · exact cover_1009009
#print axioms cover_1008925

def state_1008907 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 28) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 23)))
theorem cover_1008907 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1008907 := by
  apply coveredState_split_literal (state := state_1008907) 2
    state_1008908 state_1008925
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1008908
  · exact cover_1008925
#print axioms cover_1008907

def state_1008906 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 23)))
theorem cover_1008906 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1008906 := by
  apply coveredState_split_literal (state := state_1008906) 1
    state_1008907 state_1009038
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1008907
  · exact cover_1009038
#print axioms cover_1008906

def state_1008750 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 11)))
theorem cover_1008750 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1008750 := by
  apply coveredState_split_literal (state := state_1008750) 4
    state_1008751 state_1008906
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1008751
  · exact cover_1008906
#print axioms cover_1008750

def state_1008698 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 8 else (if j.val < 4 then 12 else 11)))
theorem cover_1008698 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1008698 := by
  apply coveredState_split_literal (state := state_1008698) 3
    state_1008699 state_1008750
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1008699
  · exact cover_1008750
#print axioms cover_1008698

def state_1009196 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 56) else (if j.val < 3 then 35 else (if j.val < 4 then 51 else 45)))
theorem cover_1009196 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1009196 := by
  apply coveredState_split_literal (state := state_1009196) 4
    state_1009197 state_1009212
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1009197
  · exact cover_1009212
#print axioms cover_1009196

def state_1009195 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 56) else (if j.val < 3 then 35 else (if j.val < 4 then 51 else 45)))
theorem cover_1009195 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1009195 := by
  apply coveredState_split_literal (state := state_1009195) 0
    state_1009196 state_1009265
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1009196
  · exact cover_1009265
#print axioms cover_1009195

def state_1009179 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 56) else (if j.val < 3 then 17 else (if j.val < 4 then 51 else 45)))
theorem cover_1009179 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1009179 := by
  apply coveredState_split_literal (state := state_1009179) 2
    state_1009180 state_1009195
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1009180
  · exact cover_1009195
#print axioms cover_1009179

def state_1009178 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 17 else (if j.val < 4 then 51 else 45)))
theorem cover_1009178 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1009178 := by
  apply coveredState_split_literal (state := state_1009178) 1
    state_1009179 state_1009274
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1009179
  · exact cover_1009274
#print axioms cover_1009178

def state_1009168 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 17 else (if j.val < 4 then 51 else 22)))
theorem cover_1009168 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1009168 := by
  apply coveredState_split_literal (state := state_1009168) 4
    state_1009169 state_1009178
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1009169
  · exact cover_1009178
#print axioms cover_1009168

def state_1009132 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 17 else (if j.val < 4 then 25 else 22)))
theorem cover_1009132 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1009132 := by
  apply coveredState_split_literal (state := state_1009132) 3
    state_1009133 state_1009168
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1009133
  · exact cover_1009168
#print axioms cover_1009132

def state_1009131 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 17 else (if j.val < 4 then 25 else 22)))
theorem cover_1009131 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1009131 := by
  apply coveredState_split_literal (state := state_1009131) 0
    state_1009132 state_1009277
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1009132
  · exact cover_1009277
#print axioms cover_1009131

def state_1009117 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 22)))
theorem cover_1009117 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1009117 := by
  apply coveredState_split_literal (state := state_1009117) 2
    state_1009118 state_1009131
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1009118
  · exact cover_1009131
#print axioms cover_1009117

def state_1009116 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 22)))
theorem cover_1009116 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1009116 := by
  apply coveredState_split_literal (state := state_1009116) 1
    state_1009117 state_1009288
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1009117
  · exact cover_1009288
#print axioms cover_1009116

def state_1009343 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 56) else (if j.val < 3 then 35 else (if j.val < 4 then 51 else 46)))
theorem cover_1009343 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1009343 := by
  apply coveredState_split_literal (state := state_1009343) 0
    state_1009344 state_1009399
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1009344
  · exact cover_1009399
#print axioms cover_1009343

def state_1009341 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 56) else (if j.val < 3 then 17 else (if j.val < 4 then 51 else 46)))
theorem cover_1009341 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1009341 := by
  apply coveredState_split_literal (state := state_1009341) 2
    state_1009342 state_1009343
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1009342
  · exact cover_1009343
#print axioms cover_1009341

def state_1009340 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 17 else (if j.val < 4 then 51 else 46)))
theorem cover_1009340 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1009340 := by
  apply coveredState_split_literal (state := state_1009340) 1
    state_1009341 state_1009410
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1009341
  · exact cover_1009410
#print axioms cover_1009340
end Mub6.Numerical.CircleFullD0.Forest
