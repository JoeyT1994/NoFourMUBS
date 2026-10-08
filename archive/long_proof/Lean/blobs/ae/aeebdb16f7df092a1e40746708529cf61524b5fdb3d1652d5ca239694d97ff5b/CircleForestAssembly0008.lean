import CircleFullInterface
import CircleForestAssembly0007
import CircleForestChunk0035
import CircleForestChunk0036
import CircleForestChunk0037
import CircleForestChunk0038
import CircleForestChunk0039
import CircleForestChunk0040
import CircleForestChunk0041
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_946027 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 42) else (if j.val < 3 then 103 else (if j.val < 4 then 34 else 53)))
theorem cover_946027 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_946027 := by
  apply coveredState_split_literal (state := state_946027) 1
    state_946028 state_946055
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_946028
  · exact cover_946055
#print axioms cover_946027

def state_945827 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 42) else (if j.val < 3 then 51 else (if j.val < 4 then 34 else 53)))
theorem cover_945827 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_945827 := by
  apply coveredState_split_literal (state := state_945827) 2
    state_945828 state_946027
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_945828
  · exact cover_946027
#print axioms cover_945827

def state_946095 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 84) else (if j.val < 3 then 102 else (if j.val < 4 then 34 else 106)))
theorem cover_946095 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_946095 := by
  apply coveredState_split_literal (state := state_946095) 3
    state_946096 state_946155
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_946096
  · exact cover_946155
#print axioms cover_946095

def state_946172 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 84) else (if j.val < 3 then 102 else (if j.val < 4 then 34 else 107)))
theorem cover_946172 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_946172 := by
  apply coveredState_split_literal (state := state_946172) 3
    state_946173 state_946218
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_946173
  · exact cover_946218
#print axioms cover_946172

def state_946094 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 84) else (if j.val < 3 then 102 else (if j.val < 4 then 34 else 53)))
theorem cover_946094 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_946094 := by
  apply coveredState_split_literal (state := state_946094) 4
    state_946095 state_946172
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_946095
  · exact cover_946172
#print axioms cover_946094

def state_946289 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 85) else (if j.val < 3 then 102 else (if j.val < 4 then 68 else 107)))
theorem cover_946289 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_946289 := by
  apply coveredState_split_literal (state := state_946289) 2
    state_946290 state_946343
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_946290
  · exact cover_946343
#print axioms cover_946289

def state_946288 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 85) else (if j.val < 3 then 102 else (if j.val < 4 then 68 else 107)))
theorem cover_946288 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_946288 := by
  apply coveredState_split_literal (state := state_946288) 0
    state_946289 state_946380
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_946289
  · exact cover_946380
#print axioms cover_946288

def state_946408 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 85) else (if j.val < 3 then 205 else (if j.val < 4 then 69 else 107)))
theorem cover_946408 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_946408 := by
  apply coveredState_split_literal (state := state_946408) 1
    state_946409 state_946448
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_946409
  · exact cover_946448
#print axioms cover_946408

def state_946396 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 85) else (if j.val < 3 then 102 else (if j.val < 4 then 69 else 107)))
theorem cover_946396 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_946396 := by
  apply coveredState_split_literal (state := state_946396) 2
    state_946397 state_946408
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_946397
  · exact cover_946408
#print axioms cover_946396

def state_946395 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 85) else (if j.val < 3 then 102 else (if j.val < 4 then 69 else 107)))
theorem cover_946395 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_946395 := by
  apply coveredState_split_literal (state := state_946395) 0
    state_946396 state_946509
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_946396
  · exact cover_946509
#print axioms cover_946395

def state_946287 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 85) else (if j.val < 3 then 102 else (if j.val < 4 then 34 else 107)))
theorem cover_946287 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_946287 := by
  apply coveredState_split_literal (state := state_946287) 3
    state_946288 state_946395
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_946288
  · exact cover_946395
#print axioms cover_946287

def state_946257 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 85) else (if j.val < 3 then 102 else (if j.val < 4 then 34 else 53)))
theorem cover_946257 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_946257 := by
  apply coveredState_split_literal (state := state_946257) 4
    state_946258 state_946287
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_946258
  · exact cover_946287
#print axioms cover_946257

def state_946093 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 42) else (if j.val < 3 then 102 else (if j.val < 4 then 34 else 53)))
theorem cover_946093 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_946093 := by
  apply coveredState_split_literal (state := state_946093) 1
    state_946094 state_946257
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_946094
  · exact cover_946257
#print axioms cover_946093

def state_946520 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 84) else (if j.val < 3 then 103 else (if j.val < 4 then 34 else 106)))
theorem cover_946520 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_946520 := by
  apply coveredState_split_literal (state := state_946520) 3
    state_946521 state_946552
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_946521
  · exact cover_946552
#print axioms cover_946520

def state_946519 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 84) else (if j.val < 3 then 103 else (if j.val < 4 then 34 else 53)))
theorem cover_946519 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_946519 := by
  apply coveredState_split_literal (state := state_946519) 4
    state_946520 state_946587
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_946520
  · exact cover_946587
#print axioms cover_946519

def state_946736 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 171) else (if j.val < 3 then 206 else (if j.val < 4 then 69 else 107)))
theorem cover_946736 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_946736 := by
  apply coveredState_split_literal (state := state_946736) 4
    state_946737 state_946748
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_946737
  · exact cover_946748
#print axioms cover_946736

def state_946690 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 85) else (if j.val < 3 then 206 else (if j.val < 4 then 69 else 107)))
theorem cover_946690 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_946690 := by
  apply coveredState_split_literal (state := state_946690) 1
    state_946691 state_946736
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_946691
  · exact cover_946736
#print axioms cover_946690

def state_946689 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 85) else (if j.val < 3 then 103 else (if j.val < 4 then 69 else 107)))
theorem cover_946689 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_946689 := by
  apply coveredState_split_literal (state := state_946689) 2
    state_946690 state_946809
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_946690
  · exact cover_946809
#print axioms cover_946689

def state_946852 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 85) else (if j.val < 3 then 103 else (if j.val < 4 then 69 else 107)))
theorem cover_946852 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_946852 := by
  apply coveredState_split_literal (state := state_946852) 2
    state_946853 state_946888
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_946853
  · exact cover_946888
#print axioms cover_946852

def state_946688 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 85) else (if j.val < 3 then 103 else (if j.val < 4 then 69 else 107)))
theorem cover_946688 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_946688 := by
  apply coveredState_split_literal (state := state_946688) 0
    state_946689 state_946852
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_946689
  · exact cover_946852
#print axioms cover_946688

def state_946664 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 85) else (if j.val < 3 then 103 else (if j.val < 4 then 34 else 107)))
theorem cover_946664 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_946664 := by
  apply coveredState_split_literal (state := state_946664) 3
    state_946665 state_946688
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_946665
  · exact cover_946688
#print axioms cover_946664

def state_946646 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 85) else (if j.val < 3 then 103 else (if j.val < 4 then 34 else 53)))
theorem cover_946646 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_946646 := by
  apply coveredState_split_literal (state := state_946646) 4
    state_946647 state_946664
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_946647
  · exact cover_946664
#print axioms cover_946646

def state_946518 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 42) else (if j.val < 3 then 103 else (if j.val < 4 then 34 else 53)))
theorem cover_946518 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_946518 := by
  apply coveredState_split_literal (state := state_946518) 1
    state_946519 state_946646
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_946519
  · exact cover_946646
#print axioms cover_946518

def state_946092 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 42) else (if j.val < 3 then 51 else (if j.val < 4 then 34 else 53)))
theorem cover_946092 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_946092 := by
  apply coveredState_split_literal (state := state_946092) 2
    state_946093 state_946518
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_946093
  · exact cover_946518
#print axioms cover_946092

def state_945826 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 42) else (if j.val < 3 then 51 else (if j.val < 4 then 34 else 53)))
theorem cover_945826 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_945826 := by
  apply coveredState_split_literal (state := state_945826) 0
    state_945827 state_946092
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_945827
  · exact cover_946092
#print axioms cover_945826

def state_946922 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 42) else (if j.val < 3 then 51 else (if j.val < 4 then 35 else 53)))
theorem cover_946922 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_946922 := by
  apply coveredState_split_literal (state := state_946922) 2
    state_946923 state_946948
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_946923
  · exact cover_946948
#print axioms cover_946922

def state_947187 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 85) else (if j.val < 3 then 207 else (if j.val < 4 then 70 else 107)))
theorem cover_947187 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_947187 := by
  apply coveredState_split_literal (state := state_947187) 1
    state_947188 state_947223
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_947188
  · exact cover_947223
#print axioms cover_947187

def state_947135 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 85) else (if j.val < 3 then 103 else (if j.val < 4 then 70 else 107)))
theorem cover_947135 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_947135 := by
  apply coveredState_split_literal (state := state_947135) 2
    state_947136 state_947187
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_947136
  · exact cover_947187
#print axioms cover_947135

def state_947134 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 85) else (if j.val < 3 then 103 else (if j.val < 4 then 70 else 107)))
theorem cover_947134 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_947134 := by
  apply coveredState_split_literal (state := state_947134) 0
    state_947135 state_947272
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_947135
  · exact cover_947272
#print axioms cover_947134

def state_947133 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 85) else (if j.val < 3 then 103 else (if j.val < 4 then 35 else 107)))
theorem cover_947133 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_947133 := by
  apply coveredState_split_literal (state := state_947133) 3
    state_947134 state_947307
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_947134
  · exact cover_947307
#print axioms cover_947133

def state_947119 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 85) else (if j.val < 3 then 103 else (if j.val < 4 then 35 else 53)))
theorem cover_947119 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_947119 := by
  apply coveredState_split_literal (state := state_947119) 4
    state_947120 state_947133
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_947120
  · exact cover_947133
#print axioms cover_947119

def state_947061 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 42) else (if j.val < 3 then 103 else (if j.val < 4 then 35 else 53)))
theorem cover_947061 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_947061 := by
  apply coveredState_split_literal (state := state_947061) 1
    state_947062 state_947119
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_947062
  · exact cover_947119
#print axioms cover_947061
end Mub6.Numerical.CircleFullD0.Forest
