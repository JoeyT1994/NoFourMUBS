import CircleFullInterface
import CircleForestChunk0918
import CircleForestChunk0919
import CircleForestChunk0920
import CircleForestChunk0921
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1520923 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 16 else 21)))
theorem cover_1520923 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1520923 := by
  apply coveredState_split_literal (state := state_1520923) 2
    state_1520924 state_1520929
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1520924
  · exact cover_1520929
#print axioms cover_1520923

def state_1520922 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 16 else 21)))
theorem cover_1520922 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1520922 := by
  apply coveredState_split_literal (state := state_1520922) 0
    state_1520923 state_1520992
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1520923
  · exact cover_1520992
#print axioms cover_1520922

def state_1520921 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 8 else 21)))
theorem cover_1520921 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1520921 := by
  apply coveredState_split_literal (state := state_1520921) 3
    state_1520922 state_1520999
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1520922
  · exact cover_1520999
#print axioms cover_1520921

def state_1520920 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 21 else (if j.val < 4 then 8 else 21)))
theorem cover_1520920 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1520920 := by
  apply coveredState_split_literal (state := state_1520920) 1
    state_1520921 state_1521014
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1520921
  · exact cover_1521014
#print axioms cover_1520920

def state_1520912 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 21 else (if j.val < 4 then 8 else 10)))
theorem cover_1520912 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1520912 := by
  apply coveredState_split_literal (state := state_1520912) 4
    state_1520913 state_1520920
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1520913
  · exact cover_1520920
#print axioms cover_1520912

def state_1520906 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 8 else 10)))
theorem cover_1520906 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1520906 := by
  apply coveredState_split_literal (state := state_1520906) 2
    state_1520907 state_1520912
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1520907
  · exact cover_1520912
#print axioms cover_1520906

def state_1520905 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 8 else 10)))
theorem cover_1520905 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1520905 := by
  apply coveredState_split_literal (state := state_1520905) 0
    state_1520906 state_1521039
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1520906
  · exact cover_1521039
#print axioms cover_1520905

def state_1520904 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 4 else 10)))
theorem cover_1520904 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1520904 := by
  apply coveredState_split_literal (state := state_1520904) 3
    state_1520905 state_1521050
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1520905
  · exact cover_1521050
#print axioms cover_1520904

def state_1520903 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 10 else (if j.val < 4 then 4 else 10)))
theorem cover_1520903 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1520903 := by
  apply coveredState_split_literal (state := state_1520903) 1
    state_1520904 state_1521063
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1520904
  · exact cover_1521063
#print axioms cover_1520903

def state_1521079 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 8 else 22)))
theorem cover_1521079 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1521079 := by
  apply coveredState_split_literal (state := state_1521079) 3
    state_1521080 state_1521141
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1521080
  · exact cover_1521141
#print axioms cover_1521079

def state_1521150 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 29) else (if j.val < 3 then 21 else (if j.val < 4 then 16 else 22)))
theorem cover_1521150 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1521150 := by
  apply coveredState_split_literal (state := state_1521150) 4
    state_1521151 state_1521194
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1521151
  · exact cover_1521194
#print axioms cover_1521150

def state_1521149 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 21 else (if j.val < 4 then 16 else 22)))
theorem cover_1521149 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1521149 := by
  apply coveredState_split_literal (state := state_1521149) 0
    state_1521150 state_1521221
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1521150
  · exact cover_1521221
#print axioms cover_1521149

def state_1521148 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 21 else (if j.val < 4 then 8 else 22)))
theorem cover_1521148 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1521148 := by
  apply coveredState_split_literal (state := state_1521148) 3
    state_1521149 state_1521222
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1521149
  · exact cover_1521222
#print axioms cover_1521148

def state_1521078 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 21 else (if j.val < 4 then 8 else 22)))
theorem cover_1521078 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1521078 := by
  apply coveredState_split_literal (state := state_1521078) 1
    state_1521079 state_1521148
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1521079
  · exact cover_1521148
#print axioms cover_1521078

def state_1521076 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 8 else 22)))
theorem cover_1521076 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1521076 := by
  apply coveredState_split_literal (state := state_1521076) 2
    state_1521077 state_1521078
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1521077
  · exact cover_1521078
#print axioms cover_1521076

def state_1521075 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 8 else 11)))
theorem cover_1521075 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1521075 := by
  apply coveredState_split_literal (state := state_1521075) 4
    state_1521076 state_1521235
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1521076
  · exact cover_1521235
#print axioms cover_1521075

def state_1521074 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 8 else 11)))
theorem cover_1521074 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1521074 := by
  apply coveredState_split_literal (state := state_1521074) 0
    state_1521075 state_1521258
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1521075
  · exact cover_1521258
#print axioms cover_1521074

def state_1521073 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 4 else 11)))
theorem cover_1521073 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1521073 := by
  apply coveredState_split_literal (state := state_1521073) 3
    state_1521074 state_1521261
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1521074
  · exact cover_1521261
#print axioms cover_1521073

def state_1521072 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 10 else (if j.val < 4 then 4 else 11)))
theorem cover_1521072 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1521072 := by
  apply coveredState_split_literal (state := state_1521072) 1
    state_1521073 state_1521272
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1521073
  · exact cover_1521272
#print axioms cover_1521072

def state_1520902 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 10 else (if j.val < 4 then 4 else 5)))
theorem cover_1520902 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1520902 := by
  apply coveredState_split_literal (state := state_1520902) 4
    state_1520903 state_1521072
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1520903
  · exact cover_1521072
#print axioms cover_1520902

def state_1521416 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 57) else (if j.val < 3 then 89 else (if j.val < 4 then 32 else 43)))
theorem cover_1521416 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1521416 := by
  apply coveredState_split_literal (state := state_1521416) 4
    state_1521417 state_1521420
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1521417
  · exact cover_1521420
#print axioms cover_1521416

def state_1521368 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 57) else (if j.val < 3 then 44 else (if j.val < 4 then 32 else 43)))
theorem cover_1521368 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1521368 := by
  apply coveredState_split_literal (state := state_1521368) 2
    state_1521369 state_1521416
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1521369
  · exact cover_1521416
#print axioms cover_1521368

def state_1521367 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 57) else (if j.val < 3 then 44 else (if j.val < 4 then 32 else 43)))
theorem cover_1521367 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1521367 := by
  apply coveredState_split_literal (state := state_1521367) 0
    state_1521368 state_1521481
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1521368
  · exact cover_1521481
#print axioms cover_1521367

def state_1521521 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 57) else (if j.val < 3 then 89 else (if j.val < 4 then 33 else 43)))
theorem cover_1521521 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1521521 := by
  apply coveredState_split_literal (state := state_1521521) 4
    state_1521522 state_1521533
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1521522
  · exact cover_1521533
#print axioms cover_1521521

def state_1521493 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 57) else (if j.val < 3 then 44 else (if j.val < 4 then 33 else 43)))
theorem cover_1521493 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1521493 := by
  apply coveredState_split_literal (state := state_1521493) 2
    state_1521494 state_1521521
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1521494
  · exact cover_1521521
#print axioms cover_1521493

def state_1521492 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 57) else (if j.val < 3 then 44 else (if j.val < 4 then 33 else 43)))
theorem cover_1521492 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1521492 := by
  apply coveredState_split_literal (state := state_1521492) 0
    state_1521493 state_1521590
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1521493
  · exact cover_1521590
#print axioms cover_1521492

def state_1521366 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 57) else (if j.val < 3 then 44 else (if j.val < 4 then 16 else 43)))
theorem cover_1521366 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1521366 := by
  apply coveredState_split_literal (state := state_1521366) 3
    state_1521367 state_1521492
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1521367
  · exact cover_1521492
#print axioms cover_1521366

def state_1521348 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 28) else (if j.val < 3 then 44 else (if j.val < 4 then 16 else 43)))
theorem cover_1521348 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1521348 := by
  apply coveredState_split_literal (state := state_1521348) 1
    state_1521349 state_1521366
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1521349
  · exact cover_1521366
#print axioms cover_1521348

def state_1521330 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 28) else (if j.val < 3 then 44 else (if j.val < 4 then 16 else 21)))
theorem cover_1521330 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1521330 := by
  apply coveredState_split_literal (state := state_1521330) 4
    state_1521331 state_1521348
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1521331
  · exact cover_1521348
#print axioms cover_1521330

def state_1521651 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 57) else (if j.val < 3 then 90 else (if j.val < 4 then 33 else 43)))
theorem cover_1521651 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1521651 := by
  apply coveredState_split_literal (state := state_1521651) 4
    state_1521652 state_1521665
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1521652
  · exact cover_1521665
#print axioms cover_1521651

def state_1521650 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 57) else (if j.val < 3 then 45 else (if j.val < 4 then 33 else 43)))
theorem cover_1521650 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1521650 := by
  apply coveredState_split_literal (state := state_1521650) 2
    state_1521651 state_1521726
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1521651
  · exact cover_1521726
#print axioms cover_1521650

def state_1521649 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 57) else (if j.val < 3 then 45 else (if j.val < 4 then 33 else 43)))
theorem cover_1521649 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1521649 := by
  apply coveredState_split_literal (state := state_1521649) 0
    state_1521650 state_1521747
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1521650
  · exact cover_1521747
#print axioms cover_1521649
end Mub6.Numerical.CircleFullD0.Forest
