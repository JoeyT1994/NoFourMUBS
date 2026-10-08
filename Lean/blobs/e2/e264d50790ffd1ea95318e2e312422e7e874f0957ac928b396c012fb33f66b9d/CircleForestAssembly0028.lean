import CircleFullInterface
import CircleForestAssembly0027
import CircleForestChunk0110
import CircleForestChunk0111
import CircleForestChunk0112
import CircleForestChunk0113
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_47882 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 20) else (if j.val < 3 then 10 else (if j.val < 4 then 23 else 10)))
theorem cover_47882 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_47882 := by
  apply coveredState_split_literal (state := state_47882) 2
    state_47883 state_47918
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_47883
  · exact cover_47918
#print axioms cover_47882

def state_47881 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 23 else 10)))
theorem cover_47881 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_47881 := by
  apply coveredState_split_literal (state := state_47881) 1
    state_47882 state_47949
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_47882
  · exact cover_47949
#print axioms cover_47881

def state_47875 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 10)))
theorem cover_47875 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_47875 := by
  apply coveredState_split_literal (state := state_47875) 3
    state_47876 state_47881
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_47876
  · exact cover_47881
#print axioms cover_47875

def state_47867 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 10)))
theorem cover_47867 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_47867 := by
  apply coveredState_split_literal (state := state_47867) 0
    state_47868 state_47875
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_47868
  · exact cover_47875
#print axioms cover_47867

def state_47866 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 5)))
theorem cover_47866 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_47866 := by
  apply coveredState_split_literal (state := state_47866) 4
    state_47867 state_47954
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_47867
  · exact cover_47954
#print axioms cover_47866

def state_47862 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 5 else 5)))
theorem cover_47862 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_47862 := by
  apply coveredState_split_literal (state := state_47862) 3
    state_47863 state_47866
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_47863
  · exact cover_47866
#print axioms cover_47862

def state_47861 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 10) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 5)))
theorem cover_47861 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_47861 := by
  apply coveredState_split_literal (state := state_47861) 2
    state_47862 state_47969
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_47862
  · exact cover_47969
#print axioms cover_47861

def state_47860 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 5)))
theorem cover_47860 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_47860 := by
  apply coveredState_split_literal (state := state_47860) 1
    state_47861 state_47984
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_47861
  · exact cover_47984
#print axioms cover_47860

def state_47812 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 2)))
theorem cover_47812 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_47812 := by
  apply coveredState_split_literal (state := state_47812) 4
    state_47813 state_47860
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_47813
  · exact cover_47860
#print axioms cover_47812

def state_47802 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 2)))
theorem cover_47802 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_47802 := by
  apply coveredState_split_literal (state := state_47802) 3
    state_47803 state_47812
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_47803
  · exact cover_47812
#print axioms cover_47802

def state_47750 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_47750 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_47750 := by
  apply coveredState_split_literal (state := state_47750) 2
    state_47751 state_47802
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_47751
  · exact cover_47802
#print axioms cover_47750

def state_45484 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_45484 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_45484 := by
  apply coveredState_split_literal (state := state_45484) 1
    state_45485 state_47750
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_45485
  · exact cover_47750
#print axioms cover_45484

def state_48001 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 2)))
theorem cover_48001 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_48001 := by
  apply coveredState_split_literal (state := state_48001) 4
    state_48002 state_48027
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_48002
  · exact cover_48027
#print axioms cover_48001

def state_47989 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 2)))
theorem cover_47989 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_47989 := by
  apply coveredState_split_literal (state := state_47989) 3
    state_47990 state_48001
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_47990
  · exact cover_48001
#print axioms cover_47989

def state_48116 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 9) else (if j.val < 3 then 10 else (if j.val < 4 then 23 else 10)))
theorem cover_48116 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_48116 := by
  apply coveredState_split_literal (state := state_48116) 2
    state_48117 state_48150
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_48117
  · exact cover_48150
#print axioms cover_48116

def state_48115 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 9) else (if j.val < 3 then 10 else (if j.val < 4 then 23 else 10)))
theorem cover_48115 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_48115 := by
  apply coveredState_split_literal (state := state_48115) 0
    state_48116 state_48181
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_48116
  · exact cover_48181
#print axioms cover_48115

def state_48105 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 9) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 10)))
theorem cover_48105 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_48105 := by
  apply coveredState_split_literal (state := state_48105) 3
    state_48106 state_48115
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_48106
  · exact cover_48115
#print axioms cover_48105

def state_48097 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 10)))
theorem cover_48097 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_48097 := by
  apply coveredState_split_literal (state := state_48097) 1
    state_48098 state_48105
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_48098
  · exact cover_48105
#print axioms cover_48097

def state_48096 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 5)))
theorem cover_48096 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_48096 := by
  apply coveredState_split_literal (state := state_48096) 4
    state_48097 state_48188
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_48097
  · exact cover_48188
#print axioms cover_48096

def state_48094 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 10 else (if j.val < 4 then 5 else 5)))
theorem cover_48094 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_48094 := by
  apply coveredState_split_literal (state := state_48094) 3
    state_48095 state_48096
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_48095
  · exact cover_48096
#print axioms cover_48094

def state_48093 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 5)))
theorem cover_48093 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_48093 := by
  apply coveredState_split_literal (state := state_48093) 2
    state_48094 state_48199
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_48094
  · exact cover_48199
#print axioms cover_48093

def state_48092 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 5)))
theorem cover_48092 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_48092 := by
  apply coveredState_split_literal (state := state_48092) 0
    state_48093 state_48218
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_48093
  · exact cover_48218
#print axioms cover_48092

def state_48090 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 2)))
theorem cover_48090 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_48090 := by
  apply coveredState_split_literal (state := state_48090) 4
    state_48091 state_48092
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_48091
  · exact cover_48092
#print axioms cover_48090

def state_48072 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 2)))
theorem cover_48072 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_48072 := by
  apply coveredState_split_literal (state := state_48072) 3
    state_48073 state_48090
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_48073
  · exact cover_48090
#print axioms cover_48072

def state_47988 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_47988 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_47988 := by
  apply coveredState_split_literal (state := state_47988) 2
    state_47989 state_48072
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_47989
  · exact cover_48072
#print axioms cover_47988

def state_48260 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 4 else (if j.val < 4 then 4 else 4)))
theorem cover_48260 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_48260 := by
  apply coveredState_split_literal (state := state_48260) 2
    state_48261 state_48298
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_48261
  · exact cover_48298
#print axioms cover_48260

def state_48250 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 4 else 4)))
theorem cover_48250 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_48250 := by
  apply coveredState_split_literal (state := state_48250) 1
    state_48251 state_48260
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_48251
  · exact cover_48260
#print axioms cover_48250

def state_48230 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 4 else 4)))
theorem cover_48230 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_48230 := by
  apply coveredState_split_literal (state := state_48230) 0
    state_48231 state_48250
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_48231
  · exact cover_48250
#print axioms cover_48230

def state_48229 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 4 else 2)))
theorem cover_48229 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_48229 := by
  apply coveredState_split_literal (state := state_48229) 4
    state_48230 state_48345
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_48230
  · exact cover_48345
#print axioms cover_48229

def state_48407 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 4)))
theorem cover_48407 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_48407 := by
  apply coveredState_split_literal (state := state_48407) 3
    state_48408 state_48465
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_48408
  · exact cover_48465
#print axioms cover_48407

def state_48397 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 4)))
theorem cover_48397 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_48397 := by
  apply coveredState_split_literal (state := state_48397) 1
    state_48398 state_48407
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_48398
  · exact cover_48407
#print axioms cover_48397

def state_48365 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 4)))
theorem cover_48365 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_48365 := by
  apply coveredState_split_literal (state := state_48365) 0
    state_48366 state_48397
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_48366
  · exact cover_48397
#print axioms cover_48365
end Mub6.Numerical.CircleFullPrototype.Forest
