import CircleFullInterface
import CircleForestAssembly0019
import CircleForestAssembly0021
import CircleForestAssembly0022
import CircleForestAssembly0023
import CircleForestChunk0095
import CircleForestChunk0096
import CircleForestChunk0097
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_22749 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 30) else (if j.val < 3 then 30 else (if j.val < 4 then 42 else 21)))
theorem cover_22749 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_22749 := by
  apply coveredState_split_literal (state := state_22749) 4
    state_22750 state_22835
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_22750
  · exact cover_22835
#print axioms cover_22749

def state_22748 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 30) else (if j.val < 3 then 30 else (if j.val < 4 then 21 else 21)))
theorem cover_22748 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_22748 := by
  apply coveredState_split_literal (state := state_22748) 3
    state_22749 state_22836
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_22749
  · exact cover_22836
#print axioms cover_22748

def state_22747 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 30) else (if j.val < 3 then 15 else (if j.val < 4 then 21 else 21)))
theorem cover_22747 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_22747 := by
  apply coveredState_split_literal (state := state_22747) 2
    state_22748 state_22837
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_22748
  · exact cover_22837
#print axioms cover_22747

def state_22746 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 28 else 15) else (if j.val < 3 then 15 else (if j.val < 4 then 21 else 21)))
theorem cover_22746 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_22746 := by
  apply coveredState_split_literal (state := state_22746) 1
    state_22747 state_22852
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_22747
  · exact cover_22852
#print axioms cover_22746

def state_22888 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 58 else 30) else (if j.val < 3 then 30 else (if j.val < 4 then 42 else 42)))
theorem cover_22888 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_22888 := by
  apply coveredState_split_literal (state := state_22888) 1
    state_22889 state_22906
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_22889
  · exact cover_22906
#print axioms cover_22888

def state_22887 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 30) else (if j.val < 3 then 30 else (if j.val < 4 then 42 else 42)))
theorem cover_22887 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_22887 := by
  apply coveredState_split_literal (state := state_22887) 0
    state_22888 state_22963
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_22888
  · exact cover_22963
#print axioms cover_22887

def state_22886 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 30) else (if j.val < 3 then 30 else (if j.val < 4 then 42 else 21)))
theorem cover_22886 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_22886 := by
  apply coveredState_split_literal (state := state_22886) 4
    state_22887 state_22976
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_22887
  · exact cover_22976
#print axioms cover_22886

def state_22885 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 30) else (if j.val < 3 then 30 else (if j.val < 4 then 21 else 21)))
theorem cover_22885 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_22885 := by
  apply coveredState_split_literal (state := state_22885) 3
    state_22886 state_22983
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_22886
  · exact cover_22983
#print axioms cover_22885

def state_22884 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 30) else (if j.val < 3 then 15 else (if j.val < 4 then 21 else 21)))
theorem cover_22884 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_22884 := by
  apply coveredState_split_literal (state := state_22884) 2
    state_22885 state_22990
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_22885
  · exact cover_22990
#print axioms cover_22884

def state_23033 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 31) else (if j.val < 3 then 15 else (if j.val < 4 then 21 else 21)))
theorem cover_23033 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_23033 := by
  apply coveredState_split_literal (state := state_23033) 2
    state_23034 state_23077
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_23034
  · exact cover_23077
#print axioms cover_23033

def state_22883 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 29 else 15) else (if j.val < 3 then 15 else (if j.val < 4 then 21 else 21)))
theorem cover_22883 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_22883 := by
  apply coveredState_split_literal (state := state_22883) 1
    state_22884 state_23033
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_22884
  · exact cover_23033
#print axioms cover_22883

def state_22745 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 15) else (if j.val < 3 then 15 else (if j.val < 4 then 21 else 21)))
theorem cover_22745 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_22745 := by
  apply coveredState_split_literal (state := state_22745) 0
    state_22746 state_22883
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_22746
  · exact cover_22883
#print axioms cover_22745

def state_22361 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 15) else (if j.val < 3 then 15 else (if j.val < 4 then 21 else 10)))
theorem cover_22361 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_22361 := by
  apply coveredState_split_literal (state := state_22361) 4
    state_22362 state_22745
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_22362
  · exact cover_22745
#print axioms cover_22361

def state_21307 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 15) else (if j.val < 3 then 15 else (if j.val < 4 then 10 else 10)))
theorem cover_21307 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_21307 := by
  apply coveredState_split_literal (state := state_21307) 3
    state_21308 state_22361
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_21308
  · exact cover_22361
#print axioms cover_21307

def state_20397 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 15) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 10)))
theorem cover_20397 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_20397 := by
  apply coveredState_split_literal (state := state_20397) 2
    state_20398 state_21307
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_20398
  · exact cover_21307
#print axioms cover_20397

def state_18867 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 10)))
theorem cover_18867 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_18867 := by
  apply coveredState_split_literal (state := state_18867) 1
    state_18868 state_20397
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_18868
  · exact cover_20397
#print axioms cover_18867

def state_23250 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 15) else (if j.val < 3 then 15 else (if j.val < 4 then 21 else 21)))
theorem cover_23250 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_23250 := by
  apply coveredState_split_literal (state := state_23250) 0
    state_23251 state_23306
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_23251
  · exact cover_23306
#print axioms cover_23250

def state_23220 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 15) else (if j.val < 3 then 15 else (if j.val < 4 then 21 else 10)))
theorem cover_23220 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_23220 := by
  apply coveredState_split_literal (state := state_23220) 4
    state_23221 state_23250
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_23221
  · exact cover_23250
#print axioms cover_23220

def state_23186 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 15) else (if j.val < 3 then 15 else (if j.val < 4 then 10 else 10)))
theorem cover_23186 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_23186 := by
  apply coveredState_split_literal (state := state_23186) 3
    state_23187 state_23220
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_23187
  · exact cover_23220
#print axioms cover_23186

def state_23162 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 15) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 10)))
theorem cover_23162 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_23162 := by
  apply coveredState_split_literal (state := state_23162) 2
    state_23163 state_23186
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_23163
  · exact cover_23186
#print axioms cover_23162

def state_23136 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 10)))
theorem cover_23136 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_23136 := by
  apply coveredState_split_literal (state := state_23136) 1
    state_23137 state_23162
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_23137
  · exact cover_23162
#print axioms cover_23136

def state_18866 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 10)))
theorem cover_18866 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_18866 := by
  apply coveredState_split_literal (state := state_18866) 0
    state_18867 state_23136
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_18867
  · exact cover_23136
#print axioms cover_18866

def state_23315 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 11)))
theorem cover_23315 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_23315 := by
  apply coveredState_split_literal (state := state_23315) 0
    state_23316 state_23373
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_23316
  · exact cover_23373
#print axioms cover_23315

def state_18865 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 5)))
theorem cover_18865 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_18865 := by
  apply coveredState_split_literal (state := state_18865) 4
    state_18866 state_23315
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_18866
  · exact cover_23315
#print axioms cover_18865

def state_23389 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 10)))
theorem cover_23389 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_23389 := by
  apply coveredState_split_literal (state := state_23389) 0
    state_23390 state_23445
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_23390
  · exact cover_23445
#print axioms cover_23389

def state_23388 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 5)))
theorem cover_23388 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_23388 := by
  apply coveredState_split_literal (state := state_23388) 4
    state_23389 state_23458
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_23389
  · exact cover_23458
#print axioms cover_23388

def state_18864 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 5)))
theorem cover_18864 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_18864 := by
  apply coveredState_split_literal (state := state_18864) 3
    state_18865 state_23388
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_18865
  · exact cover_23388
#print axioms cover_18864

def state_18592 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 2)))
theorem cover_18592 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_18592 := by
  apply coveredState_split_literal (state := state_18592) 4
    state_18593 state_18864
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_18593
  · exact cover_18864
#print axioms cover_18592

def state_18208 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 2)))
theorem cover_18208 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_18208 := by
  apply coveredState_split_literal (state := state_18208) 3
    state_18209 state_18592
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_18209
  · exact cover_18592
#print axioms cover_18208

def state_18076 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_18076 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_18076 := by
  apply coveredState_split_literal (state := state_18076) 2
    state_18077 state_18208
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_18077
  · exact cover_18208
#print axioms cover_18076

def state_17906 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_17906 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_17906 := by
  apply coveredState_split_literal (state := state_17906) 1
    state_17907 state_18076
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_17907
  · exact cover_18076
#print axioms cover_17906

def state_15944 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_15944 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_15944 := by
  apply coveredState_split_literal (state := state_15944) 0
    state_15945 state_17906
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_15945
  · exact cover_17906
#print axioms cover_15944
end Mub6.Numerical.CircleFullPrototype.Forest
