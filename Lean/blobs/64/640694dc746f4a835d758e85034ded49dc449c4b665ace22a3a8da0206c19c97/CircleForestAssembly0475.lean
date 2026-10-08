import CircleFullInterface
import CircleForestAssembly0474
import CircleForestChunk1869
import CircleForestChunk1870
import CircleForestChunk1871
import CircleForestChunk1872
import CircleForestChunk1873
import CircleForestChunk1874
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_2321584 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 56) else (if j.val < 3 then 42 else (if j.val < 4 then 60 else 44)))
theorem cover_2321584 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2321584 := by
  apply coveredState_split_literal (state := state_2321584) 0
    state_2321585 state_2321610
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2321585
  · exact cover_2321610
#print axioms cover_2321584

def state_2321784 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 56) else (if j.val < 3 then 42 else (if j.val < 4 then 61 else 88)))
theorem cover_2321784 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2321784 := by
  apply coveredState_split_literal (state := state_2321784) 2
    state_2321785 state_2321824
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2321785
  · exact cover_2321824
#print axioms cover_2321784

def state_2321783 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 56) else (if j.val < 3 then 42 else (if j.val < 4 then 61 else 44)))
theorem cover_2321783 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2321783 := by
  apply coveredState_split_literal (state := state_2321783) 4
    state_2321784 state_2321863
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2321784
  · exact cover_2321863
#print axioms cover_2321783

def state_2321769 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 56) else (if j.val < 3 then 42 else (if j.val < 4 then 61 else 44)))
theorem cover_2321769 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2321769 := by
  apply coveredState_split_literal (state := state_2321769) 0
    state_2321770 state_2321783
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2321770
  · exact cover_2321783
#print axioms cover_2321769

def state_2321583 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 56) else (if j.val < 3 then 42 else (if j.val < 4 then 30 else 44)))
theorem cover_2321583 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2321583 := by
  apply coveredState_split_literal (state := state_2321583) 3
    state_2321584 state_2321769
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2321584
  · exact cover_2321769
#print axioms cover_2321583

def state_2321582 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 42 else (if j.val < 4 then 30 else 44)))
theorem cover_2321582 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2321582 := by
  apply coveredState_split_literal (state := state_2321582) 1
    state_2321583 state_2321874
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2321583
  · exact cover_2321874
#print axioms cover_2321582

def state_2321919 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 43 else (if j.val < 4 then 30 else 44)))
theorem cover_2321919 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2321919 := by
  apply coveredState_split_literal (state := state_2321919) 1
    state_2321920 state_2321975
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2321920
  · exact cover_2321975
#print axioms cover_2321919

def state_2321581 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 30 else 44)))
theorem cover_2321581 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2321581 := by
  apply coveredState_split_literal (state := state_2321581) 2
    state_2321582 state_2321919
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2321582
  · exact cover_2321919
#print axioms cover_2321581

def state_2321580 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 30 else 22)))
theorem cover_2321580 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2321580 := by
  apply coveredState_split_literal (state := state_2321580) 4
    state_2321581 state_2321994
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2321581
  · exact cover_2321994
#print axioms cover_2321580

def state_2322093 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 56) else (if j.val < 3 then 84 else (if j.val < 4 then 60 else 89)))
theorem cover_2322093 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2322093 := by
  apply coveredState_split_literal (state := state_2322093) 1
    state_2322094 state_2322111
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2322094
  · exact cover_2322111
#print axioms cover_2322093

def state_2322092 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 56) else (if j.val < 3 then 42 else (if j.val < 4 then 60 else 89)))
theorem cover_2322092 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2322092 := by
  apply coveredState_split_literal (state := state_2322092) 2
    state_2322093 state_2322168
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2322093
  · exact cover_2322168
#print axioms cover_2322092

def state_2322038 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 56) else (if j.val < 3 then 42 else (if j.val < 4 then 60 else 44)))
theorem cover_2322038 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2322038 := by
  apply coveredState_split_literal (state := state_2322038) 4
    state_2322039 state_2322092
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2322039
  · exact cover_2322092
#print axioms cover_2322038

def state_2322037 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 56) else (if j.val < 3 then 42 else (if j.val < 4 then 60 else 44)))
theorem cover_2322037 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2322037 := by
  apply coveredState_split_literal (state := state_2322037) 0
    state_2322038 state_2322183
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2322038
  · exact cover_2322183
#print axioms cover_2322037

def state_2322231 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 113) else (if j.val < 3 then 84 else (if j.val < 4 then 61 else 88)))
theorem cover_2322231 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2322231 := by
  apply coveredState_split_literal (state := state_2322231) 3
    state_2322232 state_2322291
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2322232
  · exact cover_2322291
#print axioms cover_2322231

def state_2322197 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 56) else (if j.val < 3 then 84 else (if j.val < 4 then 61 else 88)))
theorem cover_2322197 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2322197 := by
  apply coveredState_split_literal (state := state_2322197) 1
    state_2322198 state_2322231
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2322198
  · exact cover_2322231
#print axioms cover_2322197

def state_2322381 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 188 else 113) else (if j.val < 3 then 85 else (if j.val < 4 then 123 else 88)))
theorem cover_2322381 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2322381 := by
  apply coveredState_split_literal (state := state_2322381) 4
    state_2322382 state_2322413
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2322382
  · exact cover_2322413
#print axioms cover_2322381

def state_2322446 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 189 else 113) else (if j.val < 3 then 85 else (if j.val < 4 then 123 else 88)))
theorem cover_2322446 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2322446 := by
  apply coveredState_split_literal (state := state_2322446) 4
    state_2322447 state_2322470
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2322447
  · exact cover_2322470
#print axioms cover_2322446

def state_2322380 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 113) else (if j.val < 3 then 85 else (if j.val < 4 then 123 else 88)))
theorem cover_2322380 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2322380 := by
  apply coveredState_split_literal (state := state_2322380) 0
    state_2322381 state_2322446
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2322381
  · exact cover_2322446
#print axioms cover_2322380

def state_2322332 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 113) else (if j.val < 3 then 85 else (if j.val < 4 then 61 else 88)))
theorem cover_2322332 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2322332 := by
  apply coveredState_split_literal (state := state_2322332) 3
    state_2322333 state_2322380
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2322333
  · exact cover_2322380
#print axioms cover_2322332

def state_2322318 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 56) else (if j.val < 3 then 85 else (if j.val < 4 then 61 else 88)))
theorem cover_2322318 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2322318 := by
  apply coveredState_split_literal (state := state_2322318) 1
    state_2322319 state_2322332
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2322319
  · exact cover_2322332
#print axioms cover_2322318

def state_2322196 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 56) else (if j.val < 3 then 42 else (if j.val < 4 then 61 else 88)))
theorem cover_2322196 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2322196 := by
  apply coveredState_split_literal (state := state_2322196) 2
    state_2322197 state_2322318
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2322197
  · exact cover_2322318
#print axioms cover_2322196

def state_2322515 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 56) else (if j.val < 3 then 42 else (if j.val < 4 then 61 else 89)))
theorem cover_2322515 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2322515 := by
  apply coveredState_split_literal (state := state_2322515) 2
    state_2322516 state_2322577
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2322516
  · exact cover_2322577
#print axioms cover_2322515

def state_2322195 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 56) else (if j.val < 3 then 42 else (if j.val < 4 then 61 else 44)))
theorem cover_2322195 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2322195 := by
  apply coveredState_split_literal (state := state_2322195) 4
    state_2322196 state_2322515
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2322196
  · exact cover_2322515
#print axioms cover_2322195

def state_2322194 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 56) else (if j.val < 3 then 42 else (if j.val < 4 then 61 else 44)))
theorem cover_2322194 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2322194 := by
  apply coveredState_split_literal (state := state_2322194) 0
    state_2322195 state_2322638
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2322195
  · exact cover_2322638
#print axioms cover_2322194

def state_2322036 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 56) else (if j.val < 3 then 42 else (if j.val < 4 then 30 else 44)))
theorem cover_2322036 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2322036 := by
  apply coveredState_split_literal (state := state_2322036) 3
    state_2322037 state_2322194
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2322037
  · exact cover_2322194
#print axioms cover_2322036

def state_2322782 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 189 else 114) else (if j.val < 3 then 85 else (if j.val < 4 then 123 else 88)))
theorem cover_2322782 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2322782 := by
  apply coveredState_split_literal (state := state_2322782) 4
    state_2322783 state_2322802
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2322783
  · exact cover_2322802
#print axioms cover_2322782

def state_2322766 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 114) else (if j.val < 3 then 85 else (if j.val < 4 then 123 else 88)))
theorem cover_2322766 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2322766 := by
  apply coveredState_split_literal (state := state_2322766) 0
    state_2322767 state_2322782
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2322767
  · exact cover_2322782
#print axioms cover_2322766

def state_2322742 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 114) else (if j.val < 3 then 85 else (if j.val < 4 then 61 else 88)))
theorem cover_2322742 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2322742 := by
  apply coveredState_split_literal (state := state_2322742) 3
    state_2322743 state_2322766
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2322743
  · exact cover_2322766
#print axioms cover_2322742

def state_2322741 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 57) else (if j.val < 3 then 85 else (if j.val < 4 then 61 else 88)))
theorem cover_2322741 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2322741 := by
  apply coveredState_split_literal (state := state_2322741) 1
    state_2322742 state_2322851
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2322742
  · exact cover_2322851
#print axioms cover_2322741

def state_2322725 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 57) else (if j.val < 3 then 42 else (if j.val < 4 then 61 else 88)))
theorem cover_2322725 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2322725 := by
  apply coveredState_split_literal (state := state_2322725) 2
    state_2322726 state_2322741
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2322726
  · exact cover_2322741
#print axioms cover_2322725

def state_2322882 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 57) else (if j.val < 3 then 85 else (if j.val < 4 then 61 else 89)))
theorem cover_2322882 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2322882 := by
  apply coveredState_split_literal (state := state_2322882) 1
    state_2322883 state_2322940
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2322883
  · exact cover_2322940
#print axioms cover_2322882

def state_2322858 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 57) else (if j.val < 3 then 42 else (if j.val < 4 then 61 else 89)))
theorem cover_2322858 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2322858 := by
  apply coveredState_split_literal (state := state_2322858) 2
    state_2322859 state_2322882
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2322859
  · exact cover_2322882
#print axioms cover_2322858
end Mub6.Numerical.CircleFullD0.Forest
