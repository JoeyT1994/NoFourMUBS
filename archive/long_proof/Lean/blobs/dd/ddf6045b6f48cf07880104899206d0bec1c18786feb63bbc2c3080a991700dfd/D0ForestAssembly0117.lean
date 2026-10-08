import D0FullInterface
import D0ForestChunk0459
import D0ForestChunk0460
import D0ForestChunk0461
import D0ForestChunk0462
import D0ForestChunk0463
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1048188 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 102) else (if j.val < 3 then 51 else (if j.val < 4 then 37 else 63)))
theorem cover_1048188 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1048188 := by
  apply coveredState_split_literal (state := state_1048188) 2
    state_1048189 state_1048204
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1048189
  · exact cover_1048204
#print axioms cover_1048188

def state_1048187 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 51) else (if j.val < 3 then 51 else (if j.val < 4 then 37 else 63)))
theorem cover_1048187 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1048187 := by
  apply coveredState_split_literal (state := state_1048187) 1
    state_1048188 state_1048255
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1048188
  · exact cover_1048255
#print axioms cover_1048187

def state_1048186 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 51) else (if j.val < 3 then 51 else (if j.val < 4 then 37 else 63)))
theorem cover_1048186 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1048186 := by
  apply coveredState_split_literal (state := state_1048186) 0
    state_1048187 state_1048290
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1048187
  · exact cover_1048290
#print axioms cover_1048186

def state_1048142 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 51) else (if j.val < 3 then 51 else (if j.val < 4 then 37 else 31)))
theorem cover_1048142 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1048142 := by
  apply coveredState_split_literal (state := state_1048142) 4
    state_1048143 state_1048186
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1048143
  · exact cover_1048186
#print axioms cover_1048142

def state_1048132 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 51) else (if j.val < 3 then 51 else (if j.val < 4 then 18 else 31)))
theorem cover_1048132 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1048132 := by
  apply coveredState_split_literal (state := state_1048132) 3
    state_1048133 state_1048142
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1048133
  · exact cover_1048142
#print axioms cover_1048132

def state_1048128 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 51) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 31)))
theorem cover_1048128 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1048128 := by
  apply coveredState_split_literal (state := state_1048128) 2
    state_1048129 state_1048132
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1048129
  · exact cover_1048132
#print axioms cover_1048128

def state_1048084 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 31)))
theorem cover_1048084 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1048084 := by
  apply coveredState_split_literal (state := state_1048084) 1
    state_1048085 state_1048128
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1048085
  · exact cover_1048128
#print axioms cover_1048084

def state_1048083 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 31)))
theorem cover_1048083 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1048083 := by
  apply coveredState_split_literal (state := state_1048083) 0
    state_1048084 state_1048305
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1048084
  · exact cover_1048305
#print axioms cover_1048083

def state_1048041 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 15)))
theorem cover_1048041 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1048041 := by
  apply coveredState_split_literal (state := state_1048041) 4
    state_1048042 state_1048083
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1048042
  · exact cover_1048083
#print axioms cover_1048041

def state_1048361 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 51) else (if j.val < 3 then 51 else (if j.val < 4 then 38 else 63)))
theorem cover_1048361 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1048361 := by
  apply coveredState_split_literal (state := state_1048361) 1
    state_1048362 state_1048401
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1048362
  · exact cover_1048401
#print axioms cover_1048361

def state_1048360 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 51) else (if j.val < 3 then 51 else (if j.val < 4 then 38 else 63)))
theorem cover_1048360 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1048360 := by
  apply coveredState_split_literal (state := state_1048360) 0
    state_1048361 state_1048446
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1048361
  · exact cover_1048446
#print axioms cover_1048360

def state_1048350 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 51) else (if j.val < 3 then 51 else (if j.val < 4 then 38 else 31)))
theorem cover_1048350 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1048350 := by
  apply coveredState_split_literal (state := state_1048350) 4
    state_1048351 state_1048360
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1048351
  · exact cover_1048360
#print axioms cover_1048350

def state_1048349 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 51) else (if j.val < 3 then 51 else (if j.val < 4 then 19 else 31)))
theorem cover_1048349 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1048349 := by
  apply coveredState_split_literal (state := state_1048349) 3
    state_1048350 state_1048453
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1048350
  · exact cover_1048453
#print axioms cover_1048349

def state_1048345 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 51) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 31)))
theorem cover_1048345 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1048345 := by
  apply coveredState_split_literal (state := state_1048345) 2
    state_1048346 state_1048349
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1048346
  · exact cover_1048349
#print axioms cover_1048345

def state_1048323 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 31)))
theorem cover_1048323 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1048323 := by
  apply coveredState_split_literal (state := state_1048323) 1
    state_1048324 state_1048345
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1048324
  · exact cover_1048345
#print axioms cover_1048323

def state_1048322 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 31)))
theorem cover_1048322 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1048322 := by
  apply coveredState_split_literal (state := state_1048322) 0
    state_1048323 state_1048460
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1048323
  · exact cover_1048460
#print axioms cover_1048322

def state_1048312 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 15)))
theorem cover_1048312 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1048312 := by
  apply coveredState_split_literal (state := state_1048312) 4
    state_1048313 state_1048322
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1048313
  · exact cover_1048322
#print axioms cover_1048312

def state_1048040 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 9 else 15)))
theorem cover_1048040 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1048040 := by
  apply coveredState_split_literal (state := state_1048040) 3
    state_1048041 state_1048312
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1048041
  · exact cover_1048312
#print axioms cover_1048040

def state_1048038 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 25) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 15)))
theorem cover_1048038 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1048038 := by
  apply coveredState_split_literal (state := state_1048038) 2
    state_1048039 state_1048040
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1048039
  · exact cover_1048040
#print axioms cover_1048038

def state_1048002 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 15)))
theorem cover_1048002 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1048002 := by
  apply coveredState_split_literal (state := state_1048002) 1
    state_1048003 state_1048038
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1048003
  · exact cover_1048038
#print axioms cover_1048002

def state_1048001 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 15)))
theorem cover_1048001 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1048001 := by
  apply coveredState_split_literal (state := state_1048001) 0
    state_1048002 state_1048465
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1048002
  · exact cover_1048465
#print axioms cover_1048001

def state_1047981 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 7)))
theorem cover_1047981 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1047981 := by
  apply coveredState_split_literal (state := state_1047981) 4
    state_1047982 state_1048001
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1047982
  · exact cover_1048001
#print axioms cover_1047981

def state_1047927 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 7)))
theorem cover_1047927 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1047927 := by
  apply coveredState_split_literal (state := state_1047927) 3
    state_1047928 state_1047981
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1047928
  · exact cover_1047981
#print axioms cover_1047927

def state_1048554 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 24) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 15)))
theorem cover_1048554 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1048554 := by
  apply coveredState_split_literal (state := state_1048554) 2
    state_1048555 state_1048604
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1048555
  · exact cover_1048604
#print axioms cover_1048554

def state_1048666 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 25) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 31)))
theorem cover_1048666 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1048666 := by
  apply coveredState_split_literal (state := state_1048666) 1
    state_1048667 state_1048710
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1048667
  · exact cover_1048710
#print axioms cover_1048666

def state_1048665 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 25) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 31)))
theorem cover_1048665 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1048665 := by
  apply coveredState_split_literal (state := state_1048665) 0
    state_1048666 state_1048745
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1048666
  · exact cover_1048745
#print axioms cover_1048665

def state_1048643 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 25) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 15)))
theorem cover_1048643 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1048643 := by
  apply coveredState_split_literal (state := state_1048643) 4
    state_1048644 state_1048665
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1048644
  · exact cover_1048665
#print axioms cover_1048643

def state_1048864 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 51) else (if j.val < 3 then 52 else (if j.val < 4 then 38 else 63)))
theorem cover_1048864 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1048864 := by
  apply coveredState_split_literal (state := state_1048864) 1
    state_1048865 state_1048914
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1048865
  · exact cover_1048914
#print axioms cover_1048864

def state_1048863 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 51) else (if j.val < 3 then 52 else (if j.val < 4 then 38 else 63)))
theorem cover_1048863 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1048863 := by
  apply coveredState_split_literal (state := state_1048863) 0
    state_1048864 state_1048939
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1048864
  · exact cover_1048939
#print axioms cover_1048863

def state_1048841 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 51) else (if j.val < 3 then 52 else (if j.val < 4 then 38 else 31)))
theorem cover_1048841 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1048841 := by
  apply coveredState_split_literal (state := state_1048841) 4
    state_1048842 state_1048863
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1048842
  · exact cover_1048863
#print axioms cover_1048841

def state_1048840 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 51) else (if j.val < 3 then 52 else (if j.val < 4 then 19 else 31)))
theorem cover_1048840 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1048840 := by
  apply coveredState_split_literal (state := state_1048840) 3
    state_1048841 state_1048948
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1048841
  · exact cover_1048948
#print axioms cover_1048840

def state_1048839 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 51) else (if j.val < 3 then 26 else (if j.val < 4 then 19 else 31)))
theorem cover_1048839 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1048839 := by
  apply coveredState_split_literal (state := state_1048839) 2
    state_1048840 state_1048955
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1048840
  · exact cover_1048955
#print axioms cover_1048839
end Mub6.Numerical.CircleFullD0.Forest
