import CircleFullInterface
import CircleForestAssembly0429
import CircleForestChunk1681
import CircleForestChunk1682
import CircleForestChunk1683
import CircleForestChunk1684
import CircleForestChunk1685
import CircleForestChunk1686
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_2276601 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 6)))
theorem cover_2276601 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2276601 := by
  apply coveredState_split_literal (state := state_2276601) 0
    state_2276602 state_2276721
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2276602
  · exact cover_2276721
#print axioms cover_2276601

def state_2276902 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 28) else (if j.val < 3 then 23 else (if j.val < 4 then 21 else 29)))
theorem cover_2276902 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2276902 := by
  apply coveredState_split_literal (state := state_2276902) 2
    state_2276903 state_2276958
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2276903
  · exact cover_2276958
#print axioms cover_2276902

def state_2276884 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 28) else (if j.val < 3 then 23 else (if j.val < 4 then 21 else 14)))
theorem cover_2276884 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2276884 := by
  apply coveredState_split_literal (state := state_2276884) 4
    state_2276885 state_2276902
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2276885
  · exact cover_2276902
#print axioms cover_2276884

def state_2276883 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 14) else (if j.val < 3 then 23 else (if j.val < 4 then 21 else 14)))
theorem cover_2276883 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2276883 := by
  apply coveredState_split_literal (state := state_2276883) 1
    state_2276884 state_2276995
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2276884
  · exact cover_2276995
#print axioms cover_2276883

def state_2276865 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 14) else (if j.val < 3 then 23 else (if j.val < 4 then 10 else 14)))
theorem cover_2276865 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2276865 := by
  apply coveredState_split_literal (state := state_2276865) 3
    state_2276866 state_2276883
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2276866
  · exact cover_2276883
#print axioms cover_2276865

def state_2277025 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 28) else (if j.val < 3 then 23 else (if j.val < 4 then 21 else 14)))
theorem cover_2277025 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2277025 := by
  apply coveredState_split_literal (state := state_2277025) 4
    state_2277026 state_2277035
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2277026
  · exact cover_2277035
#print axioms cover_2277025

def state_2277024 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 14) else (if j.val < 3 then 23 else (if j.val < 4 then 21 else 14)))
theorem cover_2277024 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2277024 := by
  apply coveredState_split_literal (state := state_2277024) 1
    state_2277025 state_2277090
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2277025
  · exact cover_2277090
#print axioms cover_2277024

def state_2277004 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 14) else (if j.val < 3 then 23 else (if j.val < 4 then 10 else 14)))
theorem cover_2277004 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2277004 := by
  apply coveredState_split_literal (state := state_2277004) 3
    state_2277005 state_2277024
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2277005
  · exact cover_2277024
#print axioms cover_2277004

def state_2276864 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 14) else (if j.val < 3 then 23 else (if j.val < 4 then 10 else 14)))
theorem cover_2276864 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2276864 := by
  apply coveredState_split_literal (state := state_2276864) 0
    state_2276865 state_2277004
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2276865
  · exact cover_2277004
#print axioms cover_2276864

def state_2276818 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 14) else (if j.val < 3 then 11 else (if j.val < 4 then 10 else 14)))
theorem cover_2276818 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2276818 := by
  apply coveredState_split_literal (state := state_2276818) 2
    state_2276819 state_2276864
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2276819
  · exact cover_2276864
#print axioms cover_2276818

def state_2277148 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 28) else (if j.val < 3 then 23 else (if j.val < 4 then 21 else 30)))
theorem cover_2277148 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2277148 := by
  apply coveredState_split_literal (state := state_2277148) 2
    state_2277149 state_2277186
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2277149
  · exact cover_2277186
#print axioms cover_2277148

def state_2277147 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 28) else (if j.val < 3 then 23 else (if j.val < 4 then 21 else 15)))
theorem cover_2277147 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2277147 := by
  apply coveredState_split_literal (state := state_2277147) 4
    state_2277148 state_2277245
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2277148
  · exact cover_2277245
#print axioms cover_2277147

def state_2277146 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 14) else (if j.val < 3 then 23 else (if j.val < 4 then 21 else 15)))
theorem cover_2277146 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2277146 := by
  apply coveredState_split_literal (state := state_2277146) 1
    state_2277147 state_2277258
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2277147
  · exact cover_2277258
#print axioms cover_2277146

def state_2277144 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 14) else (if j.val < 3 then 23 else (if j.val < 4 then 10 else 15)))
theorem cover_2277144 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2277144 := by
  apply coveredState_split_literal (state := state_2277144) 3
    state_2277145 state_2277146
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2277145
  · exact cover_2277146
#print axioms cover_2277144

def state_2277300 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 56) else (if j.val < 3 then 46 else (if j.val < 4 then 43 else 30)))
theorem cover_2277300 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2277300 := by
  apply coveredState_split_literal (state := state_2277300) 4
    state_2277301 state_2277344
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2277301
  · exact cover_2277344
#print axioms cover_2277300

def state_2277299 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 28) else (if j.val < 3 then 46 else (if j.val < 4 then 43 else 30)))
theorem cover_2277299 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2277299 := by
  apply coveredState_split_literal (state := state_2277299) 1
    state_2277300 state_2277391
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2277300
  · exact cover_2277391
#print axioms cover_2277299

def state_2277287 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 28) else (if j.val < 3 then 46 else (if j.val < 4 then 21 else 30)))
theorem cover_2277287 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2277287 := by
  apply coveredState_split_literal (state := state_2277287) 3
    state_2277288 state_2277299
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2277288
  · exact cover_2277299
#print axioms cover_2277287

def state_2277286 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 28) else (if j.val < 3 then 46 else (if j.val < 4 then 21 else 30)))
theorem cover_2277286 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2277286 := by
  apply coveredState_split_literal (state := state_2277286) 0
    state_2277287 state_2277402
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2277287
  · exact cover_2277402
#print axioms cover_2277286

def state_2277504 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 56) else (if j.val < 3 then 94 else (if j.val < 4 then 43 else 61)))
theorem cover_2277504 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2277504 := by
  apply coveredState_split_literal (state := state_2277504) 3
    state_2277505 state_2277516
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2277505
  · exact cover_2277516
#print axioms cover_2277504

def state_2277503 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 56) else (if j.val < 3 then 47 else (if j.val < 4 then 43 else 61)))
theorem cover_2277503 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2277503 := by
  apply coveredState_split_literal (state := state_2277503) 2
    state_2277504 state_2277577
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2277504
  · exact cover_2277577
#print axioms cover_2277503

def state_2277483 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 56) else (if j.val < 3 then 47 else (if j.val < 4 then 43 else 30)))
theorem cover_2277483 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2277483 := by
  apply coveredState_split_literal (state := state_2277483) 4
    state_2277484 state_2277503
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2277484
  · exact cover_2277503
#print axioms cover_2277483

def state_2277584 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 57) else (if j.val < 3 then 47 else (if j.val < 4 then 43 else 30)))
theorem cover_2277584 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2277584 := by
  apply coveredState_split_literal (state := state_2277584) 4
    state_2277585 state_2277604
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2277585
  · exact cover_2277604
#print axioms cover_2277584

def state_2277482 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 28) else (if j.val < 3 then 47 else (if j.val < 4 then 43 else 30)))
theorem cover_2277482 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2277482 := by
  apply coveredState_split_literal (state := state_2277482) 1
    state_2277483 state_2277584
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2277483
  · exact cover_2277584
#print axioms cover_2277482

def state_2277466 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 28) else (if j.val < 3 then 47 else (if j.val < 4 then 21 else 30)))
theorem cover_2277466 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2277466 := by
  apply coveredState_split_literal (state := state_2277466) 3
    state_2277467 state_2277482
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2277467
  · exact cover_2277482
#print axioms cover_2277466

def state_2277681 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 28) else (if j.val < 3 then 47 else (if j.val < 4 then 43 else 30)))
theorem cover_2277681 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2277681 := by
  apply coveredState_split_literal (state := state_2277681) 1
    state_2277682 state_2277711
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2277682
  · exact cover_2277711
#print axioms cover_2277681

def state_2277663 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 28) else (if j.val < 3 then 47 else (if j.val < 4 then 21 else 30)))
theorem cover_2277663 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2277663 := by
  apply coveredState_split_literal (state := state_2277663) 3
    state_2277664 state_2277681
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2277664
  · exact cover_2277681
#print axioms cover_2277663

def state_2277465 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 28) else (if j.val < 3 then 47 else (if j.val < 4 then 21 else 30)))
theorem cover_2277465 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2277465 := by
  apply coveredState_split_literal (state := state_2277465) 0
    state_2277466 state_2277663
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2277466
  · exact cover_2277663
#print axioms cover_2277465

def state_2277285 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 28) else (if j.val < 3 then 23 else (if j.val < 4 then 21 else 30)))
theorem cover_2277285 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2277285 := by
  apply coveredState_split_literal (state := state_2277285) 2
    state_2277286 state_2277465
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2277286
  · exact cover_2277465
#print axioms cover_2277285

def state_2277825 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 56) else (if j.val < 3 then 47 else (if j.val < 4 then 43 else 62)))
theorem cover_2277825 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2277825 := by
  apply coveredState_split_literal (state := state_2277825) 2
    state_2277826 state_2277877
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2277826
  · exact cover_2277877
#print axioms cover_2277825

def state_2277824 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 56) else (if j.val < 3 then 47 else (if j.val < 4 then 43 else 31)))
theorem cover_2277824 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2277824 := by
  apply coveredState_split_literal (state := state_2277824) 4
    state_2277825 state_2277904
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2277825
  · exact cover_2277904
#print axioms cover_2277824

def state_2277823 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 28) else (if j.val < 3 then 47 else (if j.val < 4 then 43 else 31)))
theorem cover_2277823 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2277823 := by
  apply coveredState_split_literal (state := state_2277823) 1
    state_2277824 state_2277921
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2277824
  · exact cover_2277921
#print axioms cover_2277823

def state_2277813 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 28) else (if j.val < 3 then 47 else (if j.val < 4 then 21 else 31)))
theorem cover_2277813 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2277813 := by
  apply coveredState_split_literal (state := state_2277813) 3
    state_2277814 state_2277823
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2277814
  · exact cover_2277823
#print axioms cover_2277813
end Mub6.Numerical.CircleFullD0.Forest
