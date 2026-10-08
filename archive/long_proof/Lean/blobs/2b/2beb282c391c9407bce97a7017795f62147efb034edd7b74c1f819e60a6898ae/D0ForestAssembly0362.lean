import D0FullInterface
import D0ForestAssembly0358
import D0ForestAssembly0359
import D0ForestAssembly0360
import D0ForestAssembly0361
import D0ForestChunk1408
import D0ForestChunk1409
import D0ForestChunk1410
import D0ForestChunk1411
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1638757 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 51) else (if j.val < 3 then 29 else (if j.val < 4 then 51 else 19)))
theorem cover_1638757 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1638757 := by
  apply coveredState_split_literal (state := state_1638757) 0
    state_1638758 state_1638851
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1638758
  · exact cover_1638851
#print axioms cover_1638757

def state_1638701 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 51) else (if j.val < 3 then 29 else (if j.val < 4 then 25 else 19)))
theorem cover_1638701 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1638701 := by
  apply coveredState_split_literal (state := state_1638701) 3
    state_1638702 state_1638757
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1638702
  · exact cover_1638757
#print axioms cover_1638701

def state_1638067 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 29 else (if j.val < 4 then 25 else 19)))
theorem cover_1638067 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1638067 := by
  apply coveredState_split_literal (state := state_1638067) 1
    state_1638068 state_1638701
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1638068
  · exact cover_1638701
#print axioms cover_1638067

def state_1637985 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 29 else (if j.val < 4 then 25 else 9)))
theorem cover_1637985 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1637985 := by
  apply coveredState_split_literal (state := state_1637985) 4
    state_1637986 state_1638067
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1637986
  · exact cover_1638067
#print axioms cover_1637985

def state_1637497 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 14 else (if j.val < 4 then 25 else 9)))
theorem cover_1637497 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1637497 := by
  apply coveredState_split_literal (state := state_1637497) 2
    state_1637498 state_1637985
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1637498
  · exact cover_1637985
#print axioms cover_1637497

def state_1636145 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 25) else (if j.val < 3 then 14 else (if j.val < 4 then 25 else 9)))
theorem cover_1636145 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1636145 := by
  apply coveredState_split_literal (state := state_1636145) 0
    state_1636146 state_1637497
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1636146
  · exact cover_1637497
#print axioms cover_1636145

def state_1635767 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 25) else (if j.val < 3 then 14 else (if j.val < 4 then 12 else 9)))
theorem cover_1635767 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1635767 := by
  apply coveredState_split_literal (state := state_1635767) 3
    state_1635768 state_1636145
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1635768
  · exact cover_1636145
#print axioms cover_1635767

def state_1635211 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 14 else (if j.val < 4 then 12 else 9)))
theorem cover_1635211 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1635211 := by
  apply coveredState_split_literal (state := state_1635211) 1
    state_1635212 state_1635767
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1635212
  · exact cover_1635767
#print axioms cover_1635211

def state_1635047 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 14 else (if j.val < 4 then 12 else 4)))
theorem cover_1635047 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1635047 := by
  apply coveredState_split_literal (state := state_1635047) 4
    state_1635048 state_1635211
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1635048
  · exact cover_1635211
#print axioms cover_1635047

def state_1639002 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 49) else (if j.val < 3 then 30 else (if j.val < 4 then 51 else 19)))
theorem cover_1639002 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1639002 := by
  apply coveredState_split_literal (state := state_1639002) 0
    state_1639003 state_1639014
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1639003
  · exact cover_1639014
#print axioms cover_1639002

def state_1638968 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 49) else (if j.val < 3 then 30 else (if j.val < 4 then 25 else 19)))
theorem cover_1638968 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1638968 := by
  apply coveredState_split_literal (state := state_1638968) 3
    state_1638969 state_1639002
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1638969
  · exact cover_1639002
#print axioms cover_1638968

def state_1638944 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 30 else (if j.val < 4 then 25 else 19)))
theorem cover_1638944 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1638944 := by
  apply coveredState_split_literal (state := state_1638944) 1
    state_1638945 state_1638968
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1638945
  · exact cover_1638968
#print axioms cover_1638944

def state_1638943 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 15 else (if j.val < 4 then 25 else 19)))
theorem cover_1638943 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1638943 := by
  apply coveredState_split_literal (state := state_1638943) 2
    state_1638944 state_1639075
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1638944
  · exact cover_1639075
#print axioms cover_1638943

def state_1638933 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 15 else (if j.val < 4 then 25 else 9)))
theorem cover_1638933 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1638933 := by
  apply coveredState_split_literal (state := state_1638933) 4
    state_1638934 state_1638943
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1638934
  · exact cover_1638943
#print axioms cover_1638933

def state_1638921 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 24) else (if j.val < 3 then 15 else (if j.val < 4 then 25 else 9)))
theorem cover_1638921 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1638921 := by
  apply coveredState_split_literal (state := state_1638921) 0
    state_1638922 state_1638933
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1638922
  · exact cover_1638933
#print axioms cover_1638921

def state_1638899 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 24) else (if j.val < 3 then 15 else (if j.val < 4 then 12 else 9)))
theorem cover_1638899 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1638899 := by
  apply coveredState_split_literal (state := state_1638899) 3
    state_1638900 state_1638921
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1638900
  · exact cover_1638921
#print axioms cover_1638899

def state_1639216 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 100) else (if j.val < 3 then 60 else (if j.val < 4 then 51 else 39)))
theorem cover_1639216 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1639216 := by
  apply coveredState_split_literal (state := state_1639216) 3
    state_1639217 state_1639258
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1639217
  · exact cover_1639258
#print axioms cover_1639216

def state_1639215 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 50) else (if j.val < 3 then 60 else (if j.val < 4 then 51 else 39)))
theorem cover_1639215 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1639215 := by
  apply coveredState_split_literal (state := state_1639215) 1
    state_1639216 state_1639281
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1639216
  · exact cover_1639281
#print axioms cover_1639215

def state_1639214 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 50) else (if j.val < 3 then 30 else (if j.val < 4 then 51 else 39)))
theorem cover_1639214 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1639214 := by
  apply coveredState_split_literal (state := state_1639214) 2
    state_1639215 state_1639302
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1639215
  · exact cover_1639302
#print axioms cover_1639214

def state_1639194 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 50) else (if j.val < 3 then 30 else (if j.val < 4 then 51 else 19)))
theorem cover_1639194 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1639194 := by
  apply coveredState_split_literal (state := state_1639194) 4
    state_1639195 state_1639214
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1639195
  · exact cover_1639214
#print axioms cover_1639194

def state_1639182 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 50) else (if j.val < 3 then 30 else (if j.val < 4 then 51 else 19)))
theorem cover_1639182 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1639182 := by
  apply coveredState_split_literal (state := state_1639182) 0
    state_1639183 state_1639194
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1639183
  · exact cover_1639194
#print axioms cover_1639182

def state_1639154 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 50) else (if j.val < 3 then 30 else (if j.val < 4 then 25 else 19)))
theorem cover_1639154 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1639154 := by
  apply coveredState_split_literal (state := state_1639154) 3
    state_1639155 state_1639182
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1639155
  · exact cover_1639182
#print axioms cover_1639154

def state_1639153 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 30 else (if j.val < 4 then 25 else 19)))
theorem cover_1639153 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1639153 := by
  apply coveredState_split_literal (state := state_1639153) 1
    state_1639154 state_1639327
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1639154
  · exact cover_1639327
#print axioms cover_1639153

def state_1639152 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 25 else 19)))
theorem cover_1639152 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1639152 := by
  apply coveredState_split_literal (state := state_1639152) 2
    state_1639153 state_1639366
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1639153
  · exact cover_1639366
#print axioms cover_1639152

def state_1639122 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 25 else 9)))
theorem cover_1639122 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1639122 := by
  apply coveredState_split_literal (state := state_1639122) 4
    state_1639123 state_1639152
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1639123
  · exact cover_1639152
#print axioms cover_1639122

def state_1639112 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 25 else 9)))
theorem cover_1639112 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1639112 := by
  apply coveredState_split_literal (state := state_1639112) 0
    state_1639113 state_1639122
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1639113
  · exact cover_1639122
#print axioms cover_1639112

def state_1639100 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 12 else 9)))
theorem cover_1639100 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1639100 := by
  apply coveredState_split_literal (state := state_1639100) 3
    state_1639101 state_1639112
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1639101
  · exact cover_1639112
#print axioms cover_1639100

def state_1638898 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 15 else (if j.val < 4 then 12 else 9)))
theorem cover_1638898 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1638898 := by
  apply coveredState_split_literal (state := state_1638898) 1
    state_1638899 state_1639100
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1638899
  · exact cover_1639100
#print axioms cover_1638898

def state_1638874 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 15 else (if j.val < 4 then 12 else 4)))
theorem cover_1638874 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1638874 := by
  apply coveredState_split_literal (state := state_1638874) 4
    state_1638875 state_1638898
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1638875
  · exact cover_1638898
#print axioms cover_1638874

def state_1635046 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 12 else 4)))
theorem cover_1635046 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1635046 := by
  apply coveredState_split_literal (state := state_1635046) 2
    state_1635047 state_1638874
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1635047
  · exact cover_1638874
#print axioms cover_1635046

def state_1639459 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 14 else (if j.val < 4 then 26 else 9)))
theorem cover_1639459 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1639459 := by
  apply coveredState_split_literal (state := state_1639459) 2
    state_1639460 state_1639489
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1639460
  · exact cover_1639489
#print axioms cover_1639459

def state_1639458 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 9)))
theorem cover_1639458 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1639458 := by
  apply coveredState_split_literal (state := state_1639458) 3
    state_1639459 state_1639532
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1639459
  · exact cover_1639532
#print axioms cover_1639458
end Mub6.Numerical.CircleFullD0.Forest
