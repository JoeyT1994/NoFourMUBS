import CircleFullInterface
import CircleForestAssembly0061
import CircleForestChunk0250
import CircleForestChunk0251
import CircleForestChunk0252
import CircleForestChunk0253
import CircleForestChunk0254
import CircleForestChunk0255
import CircleForestChunk0256
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_997657 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 26) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 21)))
theorem cover_997657 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_997657 := by
  apply coveredState_split_literal (state := state_997657) 0
    state_997658 state_997815
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_997658
  · exact cover_997815
#print axioms cover_997657

def state_997656 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 26) else (if j.val < 3 then 9 else (if j.val < 4 then 26 else 21)))
theorem cover_997656 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_997656 := by
  apply coveredState_split_literal (state := state_997656) 2
    state_997657 state_997822
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_997657
  · exact cover_997822
#print axioms cover_997656

def state_997592 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 26) else (if j.val < 3 then 9 else (if j.val < 4 then 26 else 10)))
theorem cover_997592 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_997592 := by
  apply coveredState_split_literal (state := state_997592) 4
    state_997593 state_997656
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_997593
  · exact cover_997656
#print axioms cover_997592

def state_997824 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 26) else (if j.val < 3 then 9 else (if j.val < 4 then 27 else 20)))
theorem cover_997824 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_997824 := by
  apply coveredState_split_literal (state := state_997824) 2
    state_997825 state_997868
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_997825
  · exact cover_997868
#print axioms cover_997824

def state_997891 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 26) else (if j.val < 3 then 9 else (if j.val < 4 then 27 else 21)))
theorem cover_997891 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_997891 := by
  apply coveredState_split_literal (state := state_997891) 2
    state_997892 state_997927
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_997892
  · exact cover_997927
#print axioms cover_997891

def state_997823 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 26) else (if j.val < 3 then 9 else (if j.val < 4 then 27 else 10)))
theorem cover_997823 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_997823 := by
  apply coveredState_split_literal (state := state_997823) 4
    state_997824 state_997891
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_997824
  · exact cover_997891
#print axioms cover_997823

def state_997591 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 26) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 10)))
theorem cover_997591 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_997591 := by
  apply coveredState_split_literal (state := state_997591) 3
    state_997592 state_997823
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_997592
  · exact cover_997823
#print axioms cover_997591

def state_998082 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 108) else (if j.val < 3 then 72 else (if j.val < 4 then 105 else 86)))
theorem cover_998082 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_998082 := by
  apply coveredState_split_literal (state := state_998082) 0
    state_998083 state_998134
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_998083
  · exact cover_998134
#print axioms cover_998082

def state_998081 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 54) else (if j.val < 3 then 72 else (if j.val < 4 then 105 else 86)))
theorem cover_998081 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_998081 := by
  apply coveredState_split_literal (state := state_998081) 1
    state_998082 state_998147
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_998082
  · exact cover_998147
#print axioms cover_998081

def state_998080 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 54) else (if j.val < 3 then 36 else (if j.val < 4 then 105 else 86)))
theorem cover_998080 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_998080 := by
  apply coveredState_split_literal (state := state_998080) 2
    state_998081 state_998168
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_998081
  · exact cover_998168
#print axioms cover_998080

def state_998255 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 109) else (if j.val < 3 then 72 else (if j.val < 4 then 211 else 175)))
theorem cover_998255 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_998255 := by
  apply coveredState_split_literal (state := state_998255) 2
    state_998256 state_998273
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_998256
  · exact cover_998273
#print axioms cover_998255

def state_998253 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 109) else (if j.val < 3 then 72 else (if j.val < 4 then 105 else 175)))
theorem cover_998253 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_998253 := by
  apply coveredState_split_literal (state := state_998253) 3
    state_998254 state_998255
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_998254
  · exact cover_998255
#print axioms cover_998253

def state_998203 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 109) else (if j.val < 3 then 72 else (if j.val < 4 then 105 else 87)))
theorem cover_998203 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_998203 := by
  apply coveredState_split_literal (state := state_998203) 4
    state_998204 state_998253
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_998204
  · exact cover_998253
#print axioms cover_998203

def state_998202 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 109) else (if j.val < 3 then 72 else (if j.val < 4 then 105 else 87)))
theorem cover_998202 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_998202 := by
  apply coveredState_split_literal (state := state_998202) 0
    state_998203 state_998326
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_998203
  · exact cover_998326
#print axioms cover_998202

def state_998188 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 54) else (if j.val < 3 then 72 else (if j.val < 4 then 105 else 87)))
theorem cover_998188 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_998188 := by
  apply coveredState_split_literal (state := state_998188) 1
    state_998189 state_998202
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_998189
  · exact cover_998202
#print axioms cover_998188

def state_998187 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 54) else (if j.val < 3 then 36 else (if j.val < 4 then 105 else 87)))
theorem cover_998187 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_998187 := by
  apply coveredState_split_literal (state := state_998187) 2
    state_998188 state_998343
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_998188
  · exact cover_998343
#print axioms cover_998187

def state_998079 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 54) else (if j.val < 3 then 36 else (if j.val < 4 then 105 else 43)))
theorem cover_998079 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_998079 := by
  apply coveredState_split_literal (state := state_998079) 4
    state_998080 state_998187
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_998080
  · exact cover_998187
#print axioms cover_998079

def state_998045 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 54) else (if j.val < 3 then 36 else (if j.val < 4 then 52 else 43)))
theorem cover_998045 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_998045 := by
  apply coveredState_split_literal (state := state_998045) 3
    state_998046 state_998079
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_998046
  · exact cover_998079
#print axioms cover_998045

def state_998044 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 54) else (if j.val < 3 then 36 else (if j.val < 4 then 52 else 43)))
theorem cover_998044 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_998044 := by
  apply coveredState_split_literal (state := state_998044) 0
    state_998045 state_998368
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_998045
  · exact cover_998368
#print axioms cover_998044

def state_998406 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 55) else (if j.val < 3 then 36 else (if j.val < 4 then 105 else 43)))
theorem cover_998406 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_998406 := by
  apply coveredState_split_literal (state := state_998406) 4
    state_998407 state_998412
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_998407
  · exact cover_998412
#print axioms cover_998406

def state_998378 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 55) else (if j.val < 3 then 36 else (if j.val < 4 then 52 else 43)))
theorem cover_998378 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_998378 := by
  apply coveredState_split_literal (state := state_998378) 3
    state_998379 state_998406
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_998379
  · exact cover_998406
#print axioms cover_998378

def state_998377 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 55) else (if j.val < 3 then 36 else (if j.val < 4 then 52 else 43)))
theorem cover_998377 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_998377 := by
  apply coveredState_split_literal (state := state_998377) 0
    state_998378 state_998471
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_998378
  · exact cover_998471
#print axioms cover_998377

def state_998043 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 36 else (if j.val < 4 then 52 else 43)))
theorem cover_998043 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_998043 := by
  apply coveredState_split_literal (state := state_998043) 1
    state_998044 state_998377
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_998044
  · exact cover_998377
#print axioms cover_998043

def state_998042 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 18 else (if j.val < 4 then 52 else 43)))
theorem cover_998042 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_998042 := by
  apply coveredState_split_literal (state := state_998042) 2
    state_998043 state_998494
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_998043
  · exact cover_998494
#print axioms cover_998042

def state_997988 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 18 else (if j.val < 4 then 52 else 21)))
theorem cover_997988 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_997988 := by
  apply coveredState_split_literal (state := state_997988) 4
    state_997989 state_998042
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_997989
  · exact cover_998042
#print axioms cover_997988

def state_998514 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 27) else (if j.val < 3 then 18 else (if j.val < 4 then 53 else 42)))
theorem cover_998514 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_998514 := by
  apply coveredState_split_literal (state := state_998514) 2
    state_998515 state_998560
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_998515
  · exact cover_998560
#print axioms cover_998514

def state_998624 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 54) else (if j.val < 3 then 73 else (if j.val < 4 then 106 else 86)))
theorem cover_998624 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_998624 := by
  apply coveredState_split_literal (state := state_998624) 1
    state_998625 state_998668
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_998625
  · exact cover_998668
#print axioms cover_998624

def state_998596 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 54) else (if j.val < 3 then 36 else (if j.val < 4 then 106 else 86)))
theorem cover_998596 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_998596 := by
  apply coveredState_split_literal (state := state_998596) 2
    state_998597 state_998624
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_998597
  · exact cover_998624
#print axioms cover_998596

def state_998595 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 54) else (if j.val < 3 then 36 else (if j.val < 4 then 53 else 86)))
theorem cover_998595 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_998595 := by
  apply coveredState_split_literal (state := state_998595) 3
    state_998596 state_998695
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_998596
  · exact cover_998695
#print axioms cover_998595

def state_998728 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 109) else (if j.val < 3 then 72 else (if j.val < 4 then 106 else 87)))
theorem cover_998728 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_998728 := by
  apply coveredState_split_literal (state := state_998728) 0
    state_998729 state_998786
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_998729
  · exact cover_998786
#print axioms cover_998728

def state_998726 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 54) else (if j.val < 3 then 72 else (if j.val < 4 then 106 else 87)))
theorem cover_998726 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_998726 := by
  apply coveredState_split_literal (state := state_998726) 1
    state_998727 state_998728
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_998727
  · exact cover_998728
#print axioms cover_998726

def state_998862 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 184 else 109) else (if j.val < 3 then 73 else (if j.val < 4 then 106 else 175)))
theorem cover_998862 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_998862 := by
  apply coveredState_split_literal (state := state_998862) 3
    state_998863 state_998904
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_998863
  · exact cover_998904
#print axioms cover_998862
end Mub6.Numerical.CircleFullD0.Forest
