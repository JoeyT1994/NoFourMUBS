import D0FullInterface
import D0ForestAssembly0179
import D0ForestChunk0679
import D0ForestChunk0680
import D0ForestChunk0681
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1463897 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 16) else (if j.val < 3 then 31 else (if j.val < 4 then 22 else 22)))
theorem cover_1463897 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1463897 := by
  apply coveredState_split_literal (state := state_1463897) 3
    state_1463898 state_1463955
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1463898
  · exact cover_1463955
#print axioms cover_1463897

def state_1463893 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 16) else (if j.val < 3 then 15 else (if j.val < 4 then 22 else 22)))
theorem cover_1463893 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1463893 := by
  apply coveredState_split_literal (state := state_1463893) 2
    state_1463894 state_1463897
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1463894
  · exact cover_1463897
#print axioms cover_1463893

def state_1463892 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 8) else (if j.val < 3 then 15 else (if j.val < 4 then 22 else 22)))
theorem cover_1463892 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1463892 := by
  apply coveredState_split_literal (state := state_1463892) 1
    state_1463893 state_1463962
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1463893
  · exact cover_1463962
#print axioms cover_1463892

def state_1463890 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 8) else (if j.val < 3 then 15 else (if j.val < 4 then 22 else 22)))
theorem cover_1463890 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1463890 := by
  apply coveredState_split_literal (state := state_1463890) 0
    state_1463891 state_1463892
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1463891
  · exact cover_1463892
#print axioms cover_1463890

def state_1463889 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 8) else (if j.val < 3 then 15 else (if j.val < 4 then 22 else 11)))
theorem cover_1463889 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1463889 := by
  apply coveredState_split_literal (state := state_1463889) 4
    state_1463890 state_1463967
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1463890
  · exact cover_1463967
#print axioms cover_1463889

def state_1463888 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 8) else (if j.val < 3 then 15 else (if j.val < 4 then 11 else 11)))
theorem cover_1463888 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1463888 := by
  apply coveredState_split_literal (state := state_1463888) 3
    state_1463889 state_1463978
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1463889
  · exact cover_1463978
#print axioms cover_1463888

def state_1463886 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 8) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 11)))
theorem cover_1463886 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1463886 := by
  apply coveredState_split_literal (state := state_1463886) 2
    state_1463887 state_1463888
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1463887
  · exact cover_1463888
#print axioms cover_1463886

def state_1463885 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 11)))
theorem cover_1463885 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1463885 := by
  apply coveredState_split_literal (state := state_1463885) 1
    state_1463886 state_1463983
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1463886
  · exact cover_1463983
#print axioms cover_1463885

def state_1463773 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 5)))
theorem cover_1463773 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1463773 := by
  apply coveredState_split_literal (state := state_1463773) 4
    state_1463774 state_1463885
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1463774
  · exact cover_1463885
#print axioms cover_1463773

def state_1463623 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 5)))
theorem cover_1463623 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1463623 := by
  apply coveredState_split_literal (state := state_1463623) 3
    state_1463624 state_1463773
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1463624
  · exact cover_1463773
#print axioms cover_1463623

def state_1464050 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 8) else (if j.val < 3 then 15 else (if j.val < 4 then 22 else 21)))
theorem cover_1464050 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1464050 := by
  apply coveredState_split_literal (state := state_1464050) 1
    state_1464051 state_1464108
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1464051
  · exact cover_1464108
#print axioms cover_1464050

def state_1464048 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 8) else (if j.val < 3 then 15 else (if j.val < 4 then 22 else 10)))
theorem cover_1464048 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1464048 := by
  apply coveredState_split_literal (state := state_1464048) 4
    state_1464049 state_1464050
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1464049
  · exact cover_1464050
#print axioms cover_1464048

def state_1464047 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 8) else (if j.val < 3 then 15 else (if j.val < 4 then 11 else 10)))
theorem cover_1464047 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1464047 := by
  apply coveredState_split_literal (state := state_1464047) 3
    state_1464048 state_1464115
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1464048
  · exact cover_1464115
#print axioms cover_1464047

def state_1464046 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 8) else (if j.val < 3 then 15 else (if j.val < 4 then 11 else 10)))
theorem cover_1464046 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1464046 := by
  apply coveredState_split_literal (state := state_1464046) 0
    state_1464047 state_1464118
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1464047
  · exact cover_1464118
#print axioms cover_1464046

def state_1464040 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 8) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 10)))
theorem cover_1464040 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1464040 := by
  apply coveredState_split_literal (state := state_1464040) 2
    state_1464041 state_1464046
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1464041
  · exact cover_1464046
#print axioms cover_1464040

def state_1464039 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 10)))
theorem cover_1464039 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1464039 := by
  apply coveredState_split_literal (state := state_1464039) 1
    state_1464040 state_1464121
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1464040
  · exact cover_1464121
#print axioms cover_1464039

def state_1464168 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 88 else 32) else (if j.val < 3 then 63 else (if j.val < 4 then 44 else 44)))
theorem cover_1464168 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1464168 := by
  apply coveredState_split_literal (state := state_1464168) 3
    state_1464169 state_1464230
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1464169
  · exact cover_1464230
#print axioms cover_1464168

def state_1464167 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 32) else (if j.val < 3 then 63 else (if j.val < 4 then 44 else 44)))
theorem cover_1464167 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1464167 := by
  apply coveredState_split_literal (state := state_1464167) 0
    state_1464168 state_1464247
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1464168
  · exact cover_1464247
#print axioms cover_1464167

def state_1464149 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 32) else (if j.val < 3 then 31 else (if j.val < 4 then 44 else 44)))
theorem cover_1464149 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1464149 := by
  apply coveredState_split_literal (state := state_1464149) 2
    state_1464150 state_1464167
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1464150
  · exact cover_1464167
#print axioms cover_1464149

def state_1464148 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 16) else (if j.val < 3 then 31 else (if j.val < 4 then 44 else 44)))
theorem cover_1464148 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1464148 := by
  apply coveredState_split_literal (state := state_1464148) 1
    state_1464149 state_1464282
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1464149
  · exact cover_1464282
#print axioms cover_1464148

def state_1464147 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 16) else (if j.val < 3 then 31 else (if j.val < 4 then 44 else 22)))
theorem cover_1464147 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1464147 := by
  apply coveredState_split_literal (state := state_1464147) 4
    state_1464148 state_1464303
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1464148
  · exact cover_1464303
#print axioms cover_1464147

def state_1464146 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 16) else (if j.val < 3 then 31 else (if j.val < 4 then 22 else 22)))
theorem cover_1464146 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1464146 := by
  apply coveredState_split_literal (state := state_1464146) 3
    state_1464147 state_1464316
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1464147
  · exact cover_1464316
#print axioms cover_1464146

def state_1464145 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 16) else (if j.val < 3 then 31 else (if j.val < 4 then 22 else 22)))
theorem cover_1464145 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1464145 := by
  apply coveredState_split_literal (state := state_1464145) 0
    state_1464146 state_1464319
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1464146
  · exact cover_1464319
#print axioms cover_1464145

def state_1464135 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 16) else (if j.val < 3 then 15 else (if j.val < 4 then 22 else 22)))
theorem cover_1464135 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1464135 := by
  apply coveredState_split_literal (state := state_1464135) 2
    state_1464136 state_1464145
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1464136
  · exact cover_1464145
#print axioms cover_1464135

def state_1464134 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 8) else (if j.val < 3 then 15 else (if j.val < 4 then 22 else 22)))
theorem cover_1464134 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1464134 := by
  apply coveredState_split_literal (state := state_1464134) 1
    state_1464135 state_1464336
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1464135
  · exact cover_1464336
#print axioms cover_1464134

def state_1464133 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 8) else (if j.val < 3 then 15 else (if j.val < 4 then 22 else 11)))
theorem cover_1464133 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1464133 := by
  apply coveredState_split_literal (state := state_1464133) 4
    state_1464134 state_1464353
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1464134
  · exact cover_1464353
#print axioms cover_1464133

def state_1464132 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 8) else (if j.val < 3 then 15 else (if j.val < 4 then 11 else 11)))
theorem cover_1464132 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1464132 := by
  apply coveredState_split_literal (state := state_1464132) 3
    state_1464133 state_1464364
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1464133
  · exact cover_1464364
#print axioms cover_1464132

def state_1464131 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 8) else (if j.val < 3 then 15 else (if j.val < 4 then 11 else 11)))
theorem cover_1464131 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1464131 := by
  apply coveredState_split_literal (state := state_1464131) 0
    state_1464132 state_1464365
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1464132
  · exact cover_1464365
#print axioms cover_1464131

def state_1464129 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 8) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 11)))
theorem cover_1464129 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1464129 := by
  apply coveredState_split_literal (state := state_1464129) 2
    state_1464130 state_1464131
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1464130
  · exact cover_1464131
#print axioms cover_1464129

def state_1464128 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 11)))
theorem cover_1464128 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1464128 := by
  apply coveredState_split_literal (state := state_1464128) 1
    state_1464129 state_1464380
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1464129
  · exact cover_1464380
#print axioms cover_1464128

def state_1464038 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 5)))
theorem cover_1464038 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1464038 := by
  apply coveredState_split_literal (state := state_1464038) 4
    state_1464039 state_1464128
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1464039
  · exact cover_1464128
#print axioms cover_1464038

def state_1463984 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 5)))
theorem cover_1463984 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1463984 := by
  apply coveredState_split_literal (state := state_1463984) 3
    state_1463985 state_1464038
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1463985
  · exact cover_1464038
#print axioms cover_1463984
end Mub6.Numerical.CircleFullD0.Forest
