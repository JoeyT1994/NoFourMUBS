import CircleFullInterface
import CircleForestAssembly0070
import CircleForestChunk0282
import CircleForestChunk0283
import CircleForestChunk0284
import CircleForestChunk0285
import CircleForestChunk0286
import CircleForestChunk0287
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_143288 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 4)))
theorem cover_143288 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_143288 := by
  apply coveredState_split_literal (state := state_143288) 1
    state_143289 state_143306
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_143289
  · exact cover_143306
#print axioms cover_143288

def state_143230 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 4)))
theorem cover_143230 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_143230 := by
  apply coveredState_split_literal (state := state_143230) 0
    state_143231 state_143288
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_143231
  · exact cover_143288
#print axioms cover_143230

def state_143529 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 10)))
theorem cover_143529 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_143529 := by
  apply coveredState_split_literal (state := state_143529) 0
    state_143530 state_143555
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_143530
  · exact cover_143555
#print axioms cover_143529

def state_143528 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 10)))
theorem cover_143528 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_143528 := by
  apply coveredState_split_literal (state := state_143528) 3
    state_143529 state_143616
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_143529
  · exact cover_143616
#print axioms cover_143528

def state_143527 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 5)))
theorem cover_143527 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_143527 := by
  apply coveredState_split_literal (state := state_143527) 4
    state_143528 state_143629
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_143528
  · exact cover_143629
#print axioms cover_143527

def state_143515 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 5)))
theorem cover_143515 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_143515 := by
  apply coveredState_split_literal (state := state_143515) 2
    state_143516 state_143527
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_143516
  · exact cover_143527
#print axioms cover_143515

def state_143501 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 5)))
theorem cover_143501 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_143501 := by
  apply coveredState_split_literal (state := state_143501) 1
    state_143502 state_143515
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_143502
  · exact cover_143515
#print axioms cover_143501

def state_143487 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 5)))
theorem cover_143487 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_143487 := by
  apply coveredState_split_literal (state := state_143487) 0
    state_143488 state_143501
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_143488
  · exact cover_143501
#print axioms cover_143487

def state_143229 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 2)))
theorem cover_143229 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_143229 := by
  apply coveredState_split_literal (state := state_143229) 4
    state_143230 state_143487
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_143230
  · exact cover_143487
#print axioms cover_143229

def state_143027 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 2)))
theorem cover_143027 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_143027 := by
  apply coveredState_split_literal (state := state_143027) 3
    state_143028 state_143229
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_143028
  · exact cover_143229
#print axioms cover_143027

def state_143759 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 5)))
theorem cover_143759 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_143759 := by
  apply coveredState_split_literal (state := state_143759) 3
    state_143760 state_143767
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_143760
  · exact cover_143767
#print axioms cover_143759

def state_143739 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 5)))
theorem cover_143739 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_143739 := by
  apply coveredState_split_literal (state := state_143739) 1
    state_143740 state_143759
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_143740
  · exact cover_143759
#print axioms cover_143739

def state_143699 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 5)))
theorem cover_143699 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_143699 := by
  apply coveredState_split_literal (state := state_143699) 0
    state_143700 state_143739
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_143700
  · exact cover_143739
#print axioms cover_143699

def state_143647 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 2)))
theorem cover_143647 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_143647 := by
  apply coveredState_split_literal (state := state_143647) 4
    state_143648 state_143699
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_143648
  · exact cover_143699
#print axioms cover_143647

def state_143943 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 13) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 9)))
theorem cover_143943 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_143943 := by
  apply coveredState_split_literal (state := state_143943) 1
    state_143944 state_143963
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_143944
  · exact cover_143963
#print axioms cover_143943

def state_143913 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 9)))
theorem cover_143913 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_143913 := by
  apply coveredState_split_literal (state := state_143913) 0
    state_143914 state_143943
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_143914
  · exact cover_143943
#print axioms cover_143913

def state_143909 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 4)))
theorem cover_143909 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_143909 := by
  apply coveredState_split_literal (state := state_143909) 4
    state_143910 state_143913
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_143910
  · exact cover_143913
#print axioms cover_143909

def state_144054 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 14 else (if j.val < 4 then 15 else 9)))
theorem cover_144054 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_144054 := by
  apply coveredState_split_literal (state := state_144054) 2
    state_144055 state_144106
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_144055
  · exact cover_144106
#print axioms cover_144054

def state_144042 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 13) else (if j.val < 3 then 14 else (if j.val < 4 then 15 else 9)))
theorem cover_144042 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_144042 := by
  apply coveredState_split_literal (state := state_144042) 1
    state_144043 state_144054
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_144043
  · exact cover_144054
#print axioms cover_144042

def state_144032 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 14 else (if j.val < 4 then 15 else 9)))
theorem cover_144032 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_144032 := by
  apply coveredState_split_literal (state := state_144032) 0
    state_144033 state_144042
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_144033
  · exact cover_144042
#print axioms cover_144032

def state_144024 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 14 else (if j.val < 4 then 15 else 4)))
theorem cover_144024 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_144024 := by
  apply coveredState_split_literal (state := state_144024) 4
    state_144025 state_144032
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_144025
  · exact cover_144032
#print axioms cover_144024

def state_143908 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 14 else (if j.val < 4 then 7 else 4)))
theorem cover_143908 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_143908 := by
  apply coveredState_split_literal (state := state_143908) 3
    state_143909 state_144024
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_143909
  · exact cover_144024
#print axioms cover_143908

def state_143907 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 4)))
theorem cover_143907 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_143907 := by
  apply coveredState_split_literal (state := state_143907) 2
    state_143908 state_144121
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_143908
  · exact cover_144121
#print axioms cover_143907

def state_143871 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 4)))
theorem cover_143871 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_143871 := by
  apply coveredState_split_literal (state := state_143871) 1
    state_143872 state_143907
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_143872
  · exact cover_143907
#print axioms cover_143871

def state_143825 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 4)))
theorem cover_143825 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_143825 := by
  apply coveredState_split_literal (state := state_143825) 0
    state_143826 state_143871
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_143826
  · exact cover_143871
#print axioms cover_143825

def state_144219 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 20)))
theorem cover_144219 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_144219 := by
  apply coveredState_split_literal (state := state_144219) 0
    state_144220 state_144261
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_144220
  · exact cover_144261
#print axioms cover_144219

def state_144203 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 28 else (if j.val < 4 then 14 else 20)))
theorem cover_144203 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_144203 := by
  apply coveredState_split_literal (state := state_144203) 3
    state_144204 state_144219
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_144204
  · exact cover_144219
#print axioms cover_144203

def state_144202 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 20)))
theorem cover_144202 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_144202 := by
  apply coveredState_split_literal (state := state_144202) 2
    state_144203 state_144324
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_144203
  · exact cover_144324
#print axioms cover_144202

def state_144201 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 27) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 10)))
theorem cover_144201 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_144201 := by
  apply coveredState_split_literal (state := state_144201) 4
    state_144202 state_144353
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_144202
  · exact cover_144353
#print axioms cover_144201

def state_144187 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 13) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 10)))
theorem cover_144187 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_144187 := by
  apply coveredState_split_literal (state := state_144187) 1
    state_144188 state_144201
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_144188
  · exact cover_144201
#print axioms cover_144187

def state_144155 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 10)))
theorem cover_144155 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_144155 := by
  apply coveredState_split_literal (state := state_144155) 0
    state_144156 state_144187
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_144156
  · exact cover_144187
#print axioms cover_144155

def state_144154 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 14 else (if j.val < 4 then 7 else 10)))
theorem cover_144154 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_144154 := by
  apply coveredState_split_literal (state := state_144154) 3
    state_144155 state_144378
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_144155
  · exact cover_144378
#print axioms cover_144154
end Mub6.Numerical.CircleFullPrototype.Forest
