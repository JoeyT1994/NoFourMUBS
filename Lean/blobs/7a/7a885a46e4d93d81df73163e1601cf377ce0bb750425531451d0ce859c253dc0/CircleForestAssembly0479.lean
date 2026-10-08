import CircleFullInterface
import CircleForestAssembly0476
import CircleForestAssembly0477
import CircleForestAssembly0478
import CircleForestChunk1887
import CircleForestChunk1888
import CircleForestChunk1889
import CircleForestChunk1890
import CircleForestChunk1891
import CircleForestChunk1892
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_2326120 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 114) else (if j.val < 3 then 87 else (if j.val < 4 then 126 else 176)))
theorem cover_2326120 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2326120 := by
  apply coveredState_split_literal (state := state_2326120) 2
    state_2326121 state_2326192
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2326121
  · exact cover_2326192
#print axioms cover_2326120

def state_2326223 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 114) else (if j.val < 3 then 87 else (if j.val < 4 then 126 else 177)))
theorem cover_2326223 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2326223 := by
  apply coveredState_split_literal (state := state_2326223) 2
    state_2326224 state_2326271
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2326224
  · exact cover_2326271
#print axioms cover_2326223

def state_2326119 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 114) else (if j.val < 3 then 87 else (if j.val < 4 then 126 else 88)))
theorem cover_2326119 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2326119 := by
  apply coveredState_split_literal (state := state_2326119) 4
    state_2326120 state_2326223
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2326120
  · exact cover_2326223
#print axioms cover_2326119

def state_2326292 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 114) else (if j.val < 3 then 87 else (if j.val < 4 then 126 else 88)))
theorem cover_2326292 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2326292 := by
  apply coveredState_split_literal (state := state_2326292) 4
    state_2326293 state_2326322
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2326293
  · exact cover_2326322
#print axioms cover_2326292

def state_2326118 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 114) else (if j.val < 3 then 87 else (if j.val < 4 then 126 else 88)))
theorem cover_2326118 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2326118 := by
  apply coveredState_split_literal (state := state_2326118) 0
    state_2326119 state_2326292
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2326119
  · exact cover_2326292
#print axioms cover_2326118

def state_2326117 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 114) else (if j.val < 3 then 87 else (if j.val < 4 then 63 else 88)))
theorem cover_2326117 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2326117 := by
  apply coveredState_split_literal (state := state_2326117) 3
    state_2326118 state_2326365
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2326118
  · exact cover_2326365
#print axioms cover_2326117

def state_2326369 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 115) else (if j.val < 3 then 87 else (if j.val < 4 then 126 else 176)))
theorem cover_2326369 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2326369 := by
  apply coveredState_split_literal (state := state_2326369) 2
    state_2326370 state_2326413
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2326370
  · exact cover_2326413
#print axioms cover_2326369

def state_2326434 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 115) else (if j.val < 3 then 87 else (if j.val < 4 then 126 else 177)))
theorem cover_2326434 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2326434 := by
  apply coveredState_split_literal (state := state_2326434) 2
    state_2326435 state_2326480
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2326435
  · exact cover_2326480
#print axioms cover_2326434

def state_2326368 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 115) else (if j.val < 3 then 87 else (if j.val < 4 then 126 else 88)))
theorem cover_2326368 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2326368 := by
  apply coveredState_split_literal (state := state_2326368) 4
    state_2326369 state_2326434
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2326369
  · exact cover_2326434
#print axioms cover_2326368

def state_2326516 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 115) else (if j.val < 3 then 87 else (if j.val < 4 then 126 else 176)))
theorem cover_2326516 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2326516 := by
  apply coveredState_split_literal (state := state_2326516) 2
    state_2326517 state_2326578
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2326517
  · exact cover_2326578
#print axioms cover_2326516

def state_2326624 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 115) else (if j.val < 3 then 174 else (if j.val < 4 then 126 else 177)))
theorem cover_2326624 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2326624 := by
  apply coveredState_split_literal (state := state_2326624) 1
    state_2326625 state_2326678
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2326625
  · exact cover_2326678
#print axioms cover_2326624

def state_2326699 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 115) else (if j.val < 3 then 175 else (if j.val < 4 then 126 else 177)))
theorem cover_2326699 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2326699 := by
  apply coveredState_split_literal (state := state_2326699) 1
    state_2326700 state_2326751
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2326700
  · exact cover_2326751
#print axioms cover_2326699

def state_2326623 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 115) else (if j.val < 3 then 87 else (if j.val < 4 then 126 else 177)))
theorem cover_2326623 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2326623 := by
  apply coveredState_split_literal (state := state_2326623) 2
    state_2326624 state_2326699
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2326624
  · exact cover_2326699
#print axioms cover_2326623

def state_2326515 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 115) else (if j.val < 3 then 87 else (if j.val < 4 then 126 else 88)))
theorem cover_2326515 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2326515 := by
  apply coveredState_split_literal (state := state_2326515) 4
    state_2326516 state_2326623
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2326516
  · exact cover_2326623
#print axioms cover_2326515

def state_2326367 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 115) else (if j.val < 3 then 87 else (if j.val < 4 then 126 else 88)))
theorem cover_2326367 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2326367 := by
  apply coveredState_split_literal (state := state_2326367) 0
    state_2326368 state_2326515
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2326368
  · exact cover_2326515
#print axioms cover_2326367

def state_2326366 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 115) else (if j.val < 3 then 87 else (if j.val < 4 then 63 else 88)))
theorem cover_2326366 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2326366 := by
  apply coveredState_split_literal (state := state_2326366) 3
    state_2326367 state_2326776
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2326367
  · exact cover_2326776
#print axioms cover_2326366

def state_2326116 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 57) else (if j.val < 3 then 87 else (if j.val < 4 then 63 else 88)))
theorem cover_2326116 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2326116 := by
  apply coveredState_split_literal (state := state_2326116) 1
    state_2326117 state_2326366
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2326117
  · exact cover_2326366
#print axioms cover_2326116

def state_2326018 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 57) else (if j.val < 3 then 43 else (if j.val < 4 then 63 else 88)))
theorem cover_2326018 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2326018 := by
  apply coveredState_split_literal (state := state_2326018) 2
    state_2326019 state_2326116
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2326019
  · exact cover_2326116
#print axioms cover_2326018

def state_2326813 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 57) else (if j.val < 3 then 87 else (if j.val < 4 then 63 else 89)))
theorem cover_2326813 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2326813 := by
  apply coveredState_split_literal (state := state_2326813) 1
    state_2326814 state_2326835
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2326814
  · exact cover_2326835
#print axioms cover_2326813

def state_2326777 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 57) else (if j.val < 3 then 43 else (if j.val < 4 then 63 else 89)))
theorem cover_2326777 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2326777 := by
  apply coveredState_split_literal (state := state_2326777) 2
    state_2326778 state_2326813
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2326778
  · exact cover_2326813
#print axioms cover_2326777

def state_2326017 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 57) else (if j.val < 3 then 43 else (if j.val < 4 then 63 else 44)))
theorem cover_2326017 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2326017 := by
  apply coveredState_split_literal (state := state_2326017) 4
    state_2326018 state_2326777
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2326018
  · exact cover_2326777
#print axioms cover_2326017

def state_2325959 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 57) else (if j.val < 3 then 43 else (if j.val < 4 then 63 else 44)))
theorem cover_2325959 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2325959 := by
  apply coveredState_split_literal (state := state_2325959) 0
    state_2325960 state_2326017
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2325960
  · exact cover_2326017
#print axioms cover_2325959

def state_2324105 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 57) else (if j.val < 3 then 43 else (if j.val < 4 then 31 else 44)))
theorem cover_2324105 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2324105 := by
  apply coveredState_split_literal (state := state_2324105) 3
    state_2324106 state_2325959
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2324106
  · exact cover_2325959
#print axioms cover_2324105

def state_2323889 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 43 else (if j.val < 4 then 31 else 44)))
theorem cover_2323889 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2323889 := by
  apply coveredState_split_literal (state := state_2323889) 1
    state_2323890 state_2324105
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2323890
  · exact cover_2324105
#print axioms cover_2323889

def state_2323535 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 31 else 44)))
theorem cover_2323535 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2323535 := by
  apply coveredState_split_literal (state := state_2323535) 2
    state_2323536 state_2323889
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2323536
  · exact cover_2323889
#print axioms cover_2323535

def state_2326878 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 31 else 45)))
theorem cover_2326878 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2326878 := by
  apply coveredState_split_literal (state := state_2326878) 2
    state_2326879 state_2326924
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2326879
  · exact cover_2326924
#print axioms cover_2326878

def state_2323534 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 31 else 22)))
theorem cover_2323534 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2323534 := by
  apply coveredState_split_literal (state := state_2323534) 4
    state_2323535 state_2326878
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2323535
  · exact cover_2326878
#print axioms cover_2323534

def state_2323460 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 31 else 22)))
theorem cover_2323460 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2323460 := by
  apply coveredState_split_literal (state := state_2323460) 0
    state_2323461 state_2323534
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2323461
  · exact cover_2323534
#print axioms cover_2323460

def state_2321578 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 15 else 22)))
theorem cover_2321578 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2321578 := by
  apply coveredState_split_literal (state := state_2321578) 3
    state_2321579 state_2323460
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2321579
  · exact cover_2323460
#print axioms cover_2321578

def state_2326970 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 29) else (if j.val < 3 then 21 else (if j.val < 4 then 30 else 22)))
theorem cover_2326970 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2326970 := by
  apply coveredState_split_literal (state := state_2326970) 0
    state_2326971 state_2326992
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2326971
  · exact cover_2326992
#print axioms cover_2326970

def state_2327086 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 58) else (if j.val < 3 then 43 else (if j.val < 4 then 62 else 44)))
theorem cover_2327086 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2327086 := by
  apply coveredState_split_literal (state := state_2327086) 0
    state_2327087 state_2327108
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2327087
  · exact cover_2327108
#print axioms cover_2327086

def state_2327169 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 58) else (if j.val < 3 then 43 else (if j.val < 4 then 63 else 44)))
theorem cover_2327169 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2327169 := by
  apply coveredState_split_literal (state := state_2327169) 4
    state_2327170 state_2327207
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2327170
  · exact cover_2327207
#print axioms cover_2327169
end Mub6.Numerical.CircleFullD0.Forest
