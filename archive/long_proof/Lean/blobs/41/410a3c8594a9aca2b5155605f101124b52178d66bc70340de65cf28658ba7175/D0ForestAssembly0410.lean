import D0FullInterface
import D0ForestAssembly0409
import D0ForestChunk1593
import D0ForestChunk1595
import D0ForestChunk1597
import D0ForestChunk1598
import D0ForestChunk1599
import D0ForestChunk1600
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2256160 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 52) else (if j.val < 3 then 21 else (if j.val < 4 then 45 else 27)))
theorem cover_2256160 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2256160 := by
  apply coveredState_split_literal (state := state_2256160) 2
    state_2256161 state_2256206
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2256161
  · exact cover_2256206
#print axioms cover_2256160

def state_2256159 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 26) else (if j.val < 3 then 21 else (if j.val < 4 then 45 else 27)))
theorem cover_2256159 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2256159 := by
  apply coveredState_split_literal (state := state_2256159) 1
    state_2256160 state_2256677
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2256160
  · exact cover_2256677
#print axioms cover_2256159

def state_2256119 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 26) else (if j.val < 3 then 21 else (if j.val < 4 then 22 else 27)))
theorem cover_2256119 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2256119 := by
  apply coveredState_split_literal (state := state_2256119) 3
    state_2256120 state_2256159
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2256120
  · exact cover_2256159
#print axioms cover_2256119

def state_2256109 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 26) else (if j.val < 3 then 21 else (if j.val < 4 then 22 else 27)))
theorem cover_2256109 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2256109 := by
  apply coveredState_split_literal (state := state_2256109) 0
    state_2256110 state_2256119
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2256110
  · exact cover_2256119
#print axioms cover_2256109

def state_2255621 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 26) else (if j.val < 3 then 21 else (if j.val < 4 then 22 else 13)))
theorem cover_2255621 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2255621 := by
  apply coveredState_split_literal (state := state_2255621) 4
    state_2255622 state_2256109
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2255622
  · exact cover_2256109
#print axioms cover_2255621

def state_2255593 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 26) else (if j.val < 3 then 10 else (if j.val < 4 then 22 else 13)))
theorem cover_2255593 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2255593 := by
  apply coveredState_split_literal (state := state_2255593) 2
    state_2255594 state_2255621
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2255594
  · exact cover_2255621
#print axioms cover_2255593

def state_2255592 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 13) else (if j.val < 3 then 10 else (if j.val < 4 then 22 else 13)))
theorem cover_2255592 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2255592 := by
  apply coveredState_split_literal (state := state_2255592) 1
    state_2255593 state_2256692
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2255593
  · exact cover_2256692
#print axioms cover_2255592

def state_2256787 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 52) else (if j.val < 3 then 42 else (if j.val < 4 then 46 else 52)))
theorem cover_2256787 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2256787 := by
  apply coveredState_split_literal (state := state_2256787) 3
    state_2256788 state_2256851
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2256788
  · exact cover_2256851
#print axioms cover_2256787

def state_2256773 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 52) else (if j.val < 3 then 42 else (if j.val < 4 then 46 else 52)))
theorem cover_2256773 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2256773 := by
  apply coveredState_split_literal (state := state_2256773) 0
    state_2256774 state_2256787
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2256774
  · exact cover_2256787
#print axioms cover_2256773

def state_2256897 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 104) else (if j.val < 3 then 85 else (if j.val < 4 then 92 else 106)))
theorem cover_2256897 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2256897 := by
  apply coveredState_split_literal (state := state_2256897) 0
    state_2256898 state_2256917
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2256898
  · exact cover_2256917
#print axioms cover_2256897

def state_2256896 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 104) else (if j.val < 3 then 85 else (if j.val < 4 then 92 else 53)))
theorem cover_2256896 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2256896 := by
  apply coveredState_split_literal (state := state_2256896) 4
    state_2256897 state_2256962
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2256897
  · exact cover_2256962
#print axioms cover_2256896

def state_2256882 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 104) else (if j.val < 3 then 42 else (if j.val < 4 then 92 else 53)))
theorem cover_2256882 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2256882 := by
  apply coveredState_split_literal (state := state_2256882) 2
    state_2256883 state_2256896
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2256883
  · exact cover_2256896
#print axioms cover_2256882

def state_2256881 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 52) else (if j.val < 3 then 42 else (if j.val < 4 then 92 else 53)))
theorem cover_2256881 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2256881 := by
  apply coveredState_split_literal (state := state_2256881) 1
    state_2256882 state_2257001
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2256882
  · exact cover_2257001
#print axioms cover_2256881

def state_2256880 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 52) else (if j.val < 3 then 42 else (if j.val < 4 then 46 else 53)))
theorem cover_2256880 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2256880 := by
  apply coveredState_split_literal (state := state_2256880) 3
    state_2256881 state_2257014
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2256881
  · exact cover_2257014
#print axioms cover_2256880

def state_2256858 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 52) else (if j.val < 3 then 42 else (if j.val < 4 then 46 else 53)))
theorem cover_2256858 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2256858 := by
  apply coveredState_split_literal (state := state_2256858) 0
    state_2256859 state_2256880
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2256859
  · exact cover_2256880
#print axioms cover_2256858

def state_2256772 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 52) else (if j.val < 3 then 42 else (if j.val < 4 then 46 else 26)))
theorem cover_2256772 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2256772 := by
  apply coveredState_split_literal (state := state_2256772) 4
    state_2256773 state_2256858
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2256773
  · exact cover_2256858
#print axioms cover_2256772

def state_2257110 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 71 else 104) else (if j.val < 3 then 86 else (if j.val < 4 then 92 else 107)))
theorem cover_2257110 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2257110 := by
  apply coveredState_split_literal (state := state_2257110) 3
    state_2257111 state_2257174
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2257111
  · exact cover_2257174
#print axioms cover_2257110

def state_2257072 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 104) else (if j.val < 3 then 86 else (if j.val < 4 then 92 else 107)))
theorem cover_2257072 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2257072 := by
  apply coveredState_split_literal (state := state_2257072) 0
    state_2257073 state_2257110
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2257073
  · exact cover_2257110
#print axioms cover_2257072

def state_2257064 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 104) else (if j.val < 3 then 86 else (if j.val < 4 then 92 else 53)))
theorem cover_2257064 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2257064 := by
  apply coveredState_split_literal (state := state_2257064) 4
    state_2257065 state_2257072
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2257065
  · exact cover_2257072
#print axioms cover_2257064

def state_2257063 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 104) else (if j.val < 3 then 43 else (if j.val < 4 then 92 else 53)))
theorem cover_2257063 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2257063 := by
  apply coveredState_split_literal (state := state_2257063) 2
    state_2257064 state_2257205
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2257064
  · exact cover_2257205
#print axioms cover_2257063

def state_2257062 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 52) else (if j.val < 3 then 43 else (if j.val < 4 then 92 else 53)))
theorem cover_2257062 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2257062 := by
  apply coveredState_split_literal (state := state_2257062) 1
    state_2257063 state_2257214
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2257063
  · exact cover_2257214
#print axioms cover_2257062

def state_2257061 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 52) else (if j.val < 3 then 43 else (if j.val < 4 then 46 else 53)))
theorem cover_2257061 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2257061 := by
  apply coveredState_split_literal (state := state_2257061) 3
    state_2257062 state_2257229
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2257062
  · exact cover_2257229
#print axioms cover_2257061

def state_2257033 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 52) else (if j.val < 3 then 43 else (if j.val < 4 then 46 else 53)))
theorem cover_2257033 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2257033 := by
  apply coveredState_split_literal (state := state_2257033) 0
    state_2257034 state_2257061
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2257034
  · exact cover_2257061
#print axioms cover_2257033

def state_2257031 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 52) else (if j.val < 3 then 43 else (if j.val < 4 then 46 else 26)))
theorem cover_2257031 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2257031 := by
  apply coveredState_split_literal (state := state_2257031) 4
    state_2257032 state_2257033
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2257032
  · exact cover_2257033
#print axioms cover_2257031

def state_2256771 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 52) else (if j.val < 3 then 21 else (if j.val < 4 then 46 else 26)))
theorem cover_2256771 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2256771 := by
  apply coveredState_split_literal (state := state_2256771) 2
    state_2256772 state_2257031
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2256772
  · exact cover_2257031
#print axioms cover_2256771

def state_2256770 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 26) else (if j.val < 3 then 21 else (if j.val < 4 then 46 else 26)))
theorem cover_2256770 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2256770 := by
  apply coveredState_split_literal (state := state_2256770) 1
    state_2256771 state_2257254
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2256771
  · exact cover_2257254
#print axioms cover_2256770

def state_2256769 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 26) else (if j.val < 3 then 21 else (if j.val < 4 then 23 else 26)))
theorem cover_2256769 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2256769 := by
  apply coveredState_split_literal (state := state_2256769) 3
    state_2256770 state_2257259
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2256770
  · exact cover_2257259
#print axioms cover_2256769

def state_2256751 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 26) else (if j.val < 3 then 21 else (if j.val < 4 then 23 else 26)))
theorem cover_2256751 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2256751 := by
  apply coveredState_split_literal (state := state_2256751) 0
    state_2256752 state_2256769
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2256752
  · exact cover_2256769
#print axioms cover_2256751

def state_2257384 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 69 else 104) else (if j.val < 3 then 87 else (if j.val < 4 then 92 else 109)))
theorem cover_2257384 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2257384 := by
  apply coveredState_split_literal (state := state_2257384) 3
    state_2257385 state_2257448
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2257385
  · exact cover_2257448
#print axioms cover_2257384

def state_2257374 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 104) else (if j.val < 3 then 87 else (if j.val < 4 then 92 else 109)))
theorem cover_2257374 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2257374 := by
  apply coveredState_split_literal (state := state_2257374) 0
    state_2257375 state_2257384
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2257375
  · exact cover_2257384
#print axioms cover_2257374

def state_2257352 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 104) else (if j.val < 3 then 87 else (if j.val < 4 then 92 else 54)))
theorem cover_2257352 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2257352 := by
  apply coveredState_split_literal (state := state_2257352) 4
    state_2257353 state_2257374
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2257353
  · exact cover_2257374
#print axioms cover_2257352

def state_2257330 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 104) else (if j.val < 3 then 43 else (if j.val < 4 then 92 else 54)))
theorem cover_2257330 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2257330 := by
  apply coveredState_split_literal (state := state_2257330) 2
    state_2257331 state_2257352
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2257331
  · exact cover_2257352
#print axioms cover_2257330
end Mub6.Numerical.CircleFullD0.Forest
