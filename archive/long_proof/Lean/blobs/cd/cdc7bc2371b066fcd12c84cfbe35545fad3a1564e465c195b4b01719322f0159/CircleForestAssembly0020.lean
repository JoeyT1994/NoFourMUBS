import CircleFullInterface
import CircleForestAssembly0019
import CircleForestChunk0078
import CircleForestChunk0079
import CircleForestChunk0080
import CircleForestChunk0081
import CircleForestChunk0082
import CircleForestChunk0083
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_19193 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 56 else 59) else (if j.val < 3 then 59 else (if j.val < 4 then 41 else 41)))
theorem cover_19193 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_19193 := by
  apply coveredState_split_literal (state := state_19193) 0
    state_19194 state_19209
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_19194
  · exact cover_19209
#print axioms cover_19193

def state_19147 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 56 else 59) else (if j.val < 3 then 59 else (if j.val < 4 then 41 else 20)))
theorem cover_19147 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_19147 := by
  apply coveredState_split_literal (state := state_19147) 4
    state_19148 state_19193
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_19148
  · exact cover_19193
#print axioms cover_19147

def state_19027 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 56 else 59) else (if j.val < 3 then 59 else (if j.val < 4 then 20 else 20)))
theorem cover_19027 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_19027 := by
  apply coveredState_split_literal (state := state_19027) 3
    state_19028 state_19147
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_19028
  · exact cover_19147
#print axioms cover_19027

def state_18989 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 56 else 59) else (if j.val < 3 then 29 else (if j.val < 4 then 20 else 20)))
theorem cover_18989 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_18989 := by
  apply coveredState_split_literal (state := state_18989) 2
    state_18990 state_19027
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_18990
  · exact cover_19027
#print axioms cover_18989

def state_18921 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 56 else 29) else (if j.val < 3 then 29 else (if j.val < 4 then 20 else 20)))
theorem cover_18921 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_18921 := by
  apply coveredState_split_literal (state := state_18921) 1
    state_18922 state_18989
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_18922
  · exact cover_18989
#print axioms cover_18921

def state_19302 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 59) else (if j.val < 3 then 59 else (if j.val < 4 then 20 else 20)))
theorem cover_19302 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_19302 := by
  apply coveredState_split_literal (state := state_19302) 3
    state_19303 state_19338
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_19303
  · exact cover_19338
#print axioms cover_19302

def state_19294 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 59) else (if j.val < 3 then 29 else (if j.val < 4 then 20 else 20)))
theorem cover_19294 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_19294 := by
  apply coveredState_split_literal (state := state_19294) 2
    state_19295 state_19302
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_19295
  · exact cover_19302
#print axioms cover_19294

def state_19280 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 29) else (if j.val < 3 then 29 else (if j.val < 4 then 20 else 20)))
theorem cover_19280 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_19280 := by
  apply coveredState_split_literal (state := state_19280) 1
    state_19281 state_19294
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_19281
  · exact cover_19294
#print axioms cover_19280

def state_18920 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 29) else (if j.val < 3 then 29 else (if j.val < 4 then 20 else 20)))
theorem cover_18920 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_18920 := by
  apply coveredState_split_literal (state := state_18920) 0
    state_18921 state_19280
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_18921
  · exact cover_19280
#print axioms cover_18920

def state_18896 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 29) else (if j.val < 3 then 14 else (if j.val < 4 then 20 else 20)))
theorem cover_18896 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_18896 := by
  apply coveredState_split_literal (state := state_18896) 2
    state_18897 state_18920
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_18897
  · exact cover_18920
#print axioms cover_18896

def state_18872 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 20 else 20)))
theorem cover_18872 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_18872 := by
  apply coveredState_split_literal (state := state_18872) 1
    state_18873 state_18896
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_18873
  · exact cover_18896
#print axioms cover_18872

def state_18871 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 20 else 20)))
theorem cover_18871 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_18871 := by
  apply coveredState_split_literal (state := state_18871) 0
    state_18872 state_19387
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_18872
  · exact cover_19387
#print axioms cover_18871

def state_18870 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 20 else 10)))
theorem cover_18870 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_18870 := by
  apply coveredState_split_literal (state := state_18870) 4
    state_18871 state_19418
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_18871
  · exact cover_19418
#print axioms cover_18870

def state_18869 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 10)))
theorem cover_18869 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_18869 := by
  apply coveredState_split_literal (state := state_18869) 3
    state_18870 state_19457
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_18870
  · exact cover_19457
#print axioms cover_18869

def state_19585 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 56 else 59) else (if j.val < 3 then 60 else (if j.val < 4 then 41 else 40)))
theorem cover_19585 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_19585 := by
  apply coveredState_split_literal (state := state_19585) 0
    state_19586 state_19637
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_19586
  · exact cover_19637
#print axioms cover_19585

def state_19584 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 56 else 59) else (if j.val < 3 then 30 else (if j.val < 4 then 41 else 40)))
theorem cover_19584 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_19584 := by
  apply coveredState_split_literal (state := state_19584) 2
    state_19585 state_19700
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_19585
  · exact cover_19700
#print axioms cover_19584

def state_19716 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 56 else 59) else (if j.val < 3 then 60 else (if j.val < 4 then 41 else 41)))
theorem cover_19716 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_19716 := by
  apply coveredState_split_literal (state := state_19716) 0
    state_19717 state_19736
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_19717
  · exact cover_19736
#print axioms cover_19716

def state_19715 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 56 else 59) else (if j.val < 3 then 30 else (if j.val < 4 then 41 else 41)))
theorem cover_19715 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_19715 := by
  apply coveredState_split_literal (state := state_19715) 2
    state_19716 state_19799
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_19716
  · exact cover_19799
#print axioms cover_19715

def state_19583 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 56 else 59) else (if j.val < 3 then 30 else (if j.val < 4 then 41 else 20)))
theorem cover_19583 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_19583 := by
  apply coveredState_split_literal (state := state_19583) 4
    state_19584 state_19715
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_19584
  · exact cover_19715
#print axioms cover_19583

def state_19543 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 56 else 59) else (if j.val < 3 then 30 else (if j.val < 4 then 20 else 20)))
theorem cover_19543 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_19543 := by
  apply coveredState_split_literal (state := state_19543) 3
    state_19544 state_19583
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_19544
  · exact cover_19583
#print axioms cover_19543

def state_19515 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 56 else 29) else (if j.val < 3 then 30 else (if j.val < 4 then 20 else 20)))
theorem cover_19515 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_19515 := by
  apply coveredState_split_literal (state := state_19515) 1
    state_19516 state_19543
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_19516
  · exact cover_19543
#print axioms cover_19515

def state_19882 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 114 else 119) else (if j.val < 3 then 60 else (if j.val < 4 then 41 else 41)))
theorem cover_19882 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_19882 := by
  apply coveredState_split_literal (state := state_19882) 3
    state_19883 state_19916
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_19883
  · exact cover_19916
#print axioms cover_19882

def state_19874 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 114 else 59) else (if j.val < 3 then 60 else (if j.val < 4 then 41 else 41)))
theorem cover_19874 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_19874 := by
  apply coveredState_split_literal (state := state_19874) 1
    state_19875 state_19882
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_19875
  · exact cover_19882
#print axioms cover_19874

def state_19873 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 59) else (if j.val < 3 then 60 else (if j.val < 4 then 41 else 41)))
theorem cover_19873 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_19873 := by
  apply coveredState_split_literal (state := state_19873) 0
    state_19874 state_19959
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_19874
  · exact cover_19959
#print axioms cover_19873

def state_19872 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 59) else (if j.val < 3 then 30 else (if j.val < 4 then 41 else 41)))
theorem cover_19872 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_19872 := by
  apply coveredState_split_literal (state := state_19872) 2
    state_19873 state_19982
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_19873
  · exact cover_19982
#print axioms cover_19872

def state_19848 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 59) else (if j.val < 3 then 30 else (if j.val < 4 then 41 else 20)))
theorem cover_19848 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_19848 := by
  apply coveredState_split_literal (state := state_19848) 4
    state_19849 state_19872
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_19849
  · exact cover_19872
#print axioms cover_19848

def state_19830 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 59) else (if j.val < 3 then 30 else (if j.val < 4 then 20 else 20)))
theorem cover_19830 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_19830 := by
  apply coveredState_split_literal (state := state_19830) 3
    state_19831 state_19848
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_19831
  · exact cover_19848
#print axioms cover_19830

def state_19816 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 57 else 29) else (if j.val < 3 then 30 else (if j.val < 4 then 20 else 20)))
theorem cover_19816 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_19816 := by
  apply coveredState_split_literal (state := state_19816) 1
    state_19817 state_19830
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_19817
  · exact cover_19830
#print axioms cover_19816

def state_19514 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 29) else (if j.val < 3 then 30 else (if j.val < 4 then 20 else 20)))
theorem cover_19514 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_19514 := by
  apply coveredState_split_literal (state := state_19514) 0
    state_19515 state_19816
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_19515
  · exact cover_19816
#print axioms cover_19514

def state_19513 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 29) else (if j.val < 3 then 15 else (if j.val < 4 then 20 else 20)))
theorem cover_19513 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_19513 := by
  apply coveredState_split_literal (state := state_19513) 2
    state_19514 state_20015
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_19514
  · exact cover_20015
#print axioms cover_19513

def state_19501 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 14) else (if j.val < 3 then 15 else (if j.val < 4 then 20 else 20)))
theorem cover_19501 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_19501 := by
  apply coveredState_split_literal (state := state_19501) 1
    state_19502 state_19513
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_19502
  · exact cover_19513
#print axioms cover_19501

def state_20048 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 29) else (if j.val < 3 then 15 else (if j.val < 4 then 20 else 20)))
theorem cover_20048 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_20048 := by
  apply coveredState_split_literal (state := state_20048) 2
    state_20049 state_20112
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_20049
  · exact cover_20112
#print axioms cover_20048
end Mub6.Numerical.CircleFullPrototype.Forest
