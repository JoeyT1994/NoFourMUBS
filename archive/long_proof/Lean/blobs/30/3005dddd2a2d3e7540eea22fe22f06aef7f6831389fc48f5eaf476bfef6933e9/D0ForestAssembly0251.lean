import D0FullInterface
import D0ForestAssembly0250
import D0ForestChunk0959
import D0ForestChunk0960
import D0ForestChunk0961
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1530706 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 3)))
theorem cover_1530706 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1530706 := by
  apply coveredState_split_literal (state := state_1530706) 3
    state_1530707 state_1530818
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1530707
  · exact cover_1530818
#print axioms cover_1530706

def state_1530646 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_1530646 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1530646 := by
  apply coveredState_split_literal (state := state_1530646) 2
    state_1530647 state_1530706
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1530647
  · exact cover_1530706
#print axioms cover_1530646

def state_1530645 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_1530645 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1530645 := by
  apply coveredState_split_literal (state := state_1530645) 1
    state_1530646 state_1530883
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1530646
  · exact cover_1530883
#print axioms cover_1530645

def state_1530644 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_1530644 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1530644 := by
  apply coveredState_split_literal (state := state_1530644) 0
    state_1530645 state_1530890
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1530645
  · exact cover_1530890
#print axioms cover_1530644

def state_1530564 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 1)))
theorem cover_1530564 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1530564 := by
  apply coveredState_split_literal (state := state_1530564) 4
    state_1530565 state_1530644
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1530565
  · exact cover_1530644
#print axioms cover_1530564

def state_1520462 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_1520462 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1520462 := by
  apply coveredState_split_literal (state := state_1520462) 3
    state_1520463 state_1530564
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1520463
  · exact cover_1530564
#print axioms cover_1520462

def state_1530950 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 16)))
theorem cover_1530950 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1530950 := by
  apply coveredState_split_literal (state := state_1530950) 1
    state_1530951 state_1530966
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1530951
  · exact cover_1530966
#print axioms cover_1530950

def state_1530949 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 16)))
theorem cover_1530949 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1530949 := by
  apply coveredState_split_literal (state := state_1530949) 0
    state_1530950 state_1531017
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1530950
  · exact cover_1531017
#print axioms cover_1530949

def state_1530948 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 8)))
theorem cover_1530948 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1530948 := by
  apply coveredState_split_literal (state := state_1530948) 4
    state_1530949 state_1531022
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1530949
  · exact cover_1531022
#print axioms cover_1530948

def state_1531054 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 103) else (if j.val < 3 then 51 else (if j.val < 4 then 38 else 32)))
theorem cover_1531054 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531054 := by
  apply coveredState_split_literal (state := state_1531054) 2
    state_1531055 state_1531074
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1531055
  · exact cover_1531074
#print axioms cover_1531054

def state_1531036 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 51) else (if j.val < 3 then 51 else (if j.val < 4 then 38 else 32)))
theorem cover_1531036 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531036 := by
  apply coveredState_split_literal (state := state_1531036) 1
    state_1531037 state_1531054
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1531037
  · exact cover_1531054
#print axioms cover_1531036

def state_1531035 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 51) else (if j.val < 3 then 51 else (if j.val < 4 then 38 else 32)))
theorem cover_1531035 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531035 := by
  apply coveredState_split_literal (state := state_1531035) 0
    state_1531036 state_1531131
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1531036
  · exact cover_1531131
#print axioms cover_1531035

def state_1531034 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 51) else (if j.val < 3 then 51 else (if j.val < 4 then 38 else 16)))
theorem cover_1531034 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531034 := by
  apply coveredState_split_literal (state := state_1531034) 4
    state_1531035 state_1531132
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1531035
  · exact cover_1531132
#print axioms cover_1531034

def state_1531033 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 51) else (if j.val < 3 then 51 else (if j.val < 4 then 19 else 16)))
theorem cover_1531033 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531033 := by
  apply coveredState_split_literal (state := state_1531033) 3
    state_1531034 state_1531167
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1531034
  · exact cover_1531167
#print axioms cover_1531033

def state_1531031 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 51) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 16)))
theorem cover_1531031 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531031 := by
  apply coveredState_split_literal (state := state_1531031) 2
    state_1531032 state_1531033
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1531032
  · exact cover_1531033
#print axioms cover_1531031

def state_1531029 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 16)))
theorem cover_1531029 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531029 := by
  apply coveredState_split_literal (state := state_1531029) 1
    state_1531030 state_1531031
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1531030
  · exact cover_1531031
#print axioms cover_1531029

def state_1531028 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 16)))
theorem cover_1531028 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531028 := by
  apply coveredState_split_literal (state := state_1531028) 0
    state_1531029 state_1531168
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1531029
  · exact cover_1531168
#print axioms cover_1531028

def state_1531027 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 8)))
theorem cover_1531027 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531027 := by
  apply coveredState_split_literal (state := state_1531027) 4
    state_1531028 state_1531169
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1531028
  · exact cover_1531169
#print axioms cover_1531027

def state_1530947 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 9 else 8)))
theorem cover_1530947 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1530947 := by
  apply coveredState_split_literal (state := state_1530947) 3
    state_1530948 state_1531027
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1530948
  · exact cover_1531027
#print axioms cover_1530947

def state_1530937 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 25) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 8)))
theorem cover_1530937 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1530937 := by
  apply coveredState_split_literal (state := state_1530937) 2
    state_1530938 state_1530947
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1530938
  · exact cover_1530947
#print axioms cover_1530937

def state_1530929 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 8)))
theorem cover_1530929 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1530929 := by
  apply coveredState_split_literal (state := state_1530929) 1
    state_1530930 state_1530937
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1530930
  · exact cover_1530937
#print axioms cover_1530929

def state_1530928 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 8)))
theorem cover_1530928 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1530928 := by
  apply coveredState_split_literal (state := state_1530928) 0
    state_1530929 state_1531188
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1530929
  · exact cover_1531188
#print axioms cover_1530928

def state_1530927 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 4)))
theorem cover_1530927 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1530927 := by
  apply coveredState_split_literal (state := state_1530927) 4
    state_1530928 state_1531197
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1530928
  · exact cover_1531197
#print axioms cover_1530927

def state_1530909 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 4)))
theorem cover_1530909 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1530909 := by
  apply coveredState_split_literal (state := state_1530909) 3
    state_1530910 state_1530927
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1530910
  · exact cover_1530927
#print axioms cover_1530909

def state_1531261 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 25) else (if j.val < 3 then 26 else (if j.val < 4 then 19 else 8)))
theorem cover_1531261 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531261 := by
  apply coveredState_split_literal (state := state_1531261) 4
    state_1531262 state_1531321
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1531262
  · exact cover_1531321
#print axioms cover_1531261

def state_1531237 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 25) else (if j.val < 3 then 26 else (if j.val < 4 then 9 else 8)))
theorem cover_1531237 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531237 := by
  apply coveredState_split_literal (state := state_1531237) 3
    state_1531238 state_1531261
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1531238
  · exact cover_1531261
#print axioms cover_1531237

def state_1531236 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 25) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 8)))
theorem cover_1531236 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531236 := by
  apply coveredState_split_literal (state := state_1531236) 2
    state_1531237 state_1531336
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1531237
  · exact cover_1531336
#print axioms cover_1531236

def state_1531230 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 8)))
theorem cover_1531230 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531230 := by
  apply coveredState_split_literal (state := state_1531230) 1
    state_1531231 state_1531236
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1531231
  · exact cover_1531236
#print axioms cover_1531230

def state_1531229 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 8)))
theorem cover_1531229 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531229 := by
  apply coveredState_split_literal (state := state_1531229) 0
    state_1531230 state_1531339
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1531230
  · exact cover_1531339
#print axioms cover_1531229

def state_1531228 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 4)))
theorem cover_1531228 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531228 := by
  apply coveredState_split_literal (state := state_1531228) 4
    state_1531229 state_1531344
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1531229
  · exact cover_1531344
#print axioms cover_1531228

def state_1531222 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 4)))
theorem cover_1531222 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531222 := by
  apply coveredState_split_literal (state := state_1531222) 3
    state_1531223 state_1531228
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1531223
  · exact cover_1531228
#print axioms cover_1531222

def state_1530908 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 4)))
theorem cover_1530908 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1530908 := by
  apply coveredState_split_literal (state := state_1530908) 2
    state_1530909 state_1531222
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1530909
  · exact cover_1531222
#print axioms cover_1530908
end Mub6.Numerical.CircleFullD0.Forest
