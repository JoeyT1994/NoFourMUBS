import D0FullInterface
import D0ForestAssembly0387
import D0ForestAssembly0388
import D0ForestAssembly0389
import D0ForestAssembly0390
import D0ForestAssembly0391
import D0ForestAssembly0392
import D0ForestChunk1530
import D0ForestChunk1531
import D0ForestChunk1532
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1666166 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 1)))
theorem cover_1666166 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1666166 := by
  apply coveredState_split_literal (state := state_1666166) 4
    state_1666167 state_1666380
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1666167
  · exact cover_1666380
#print axioms cover_1666166

def state_1665116 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
theorem cover_1665116 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1665116 := by
  apply coveredState_split_literal (state := state_1665116) 3
    state_1665117 state_1666166
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1665117
  · exact cover_1666166
#print axioms cover_1665116

def state_1663784 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_1663784 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1663784 := by
  apply coveredState_split_literal (state := state_1663784) 2
    state_1663785 state_1665116
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1663785
  · exact cover_1665116
#print axioms cover_1663784

def state_1662862 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 1) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_1662862 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1662862 := by
  apply coveredState_split_literal (state := state_1662862) 1
    state_1662863 state_1663784
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1662863
  · exact cover_1663784
#print axioms cover_1662862

def state_1570132 : State := rootState
theorem cover_1570132 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1570132 := by
  apply coveredState_split_literal (state := state_1570132) 0
    state_1570133 state_1662862
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1570133
  · exact cover_1662862
#print axioms cover_1570132

def state_2240857 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_2240857 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2240857 := by
  apply coveredState_split_literal (state := state_2240857) 1
    state_2240858 state_2240879
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2240858
  · exact cover_2240879
#print axioms cover_2240857

def state_2240985 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 21) else (if j.val < 3 then 10 else (if j.val < 4 then 8 else 8)))
theorem cover_2240985 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2240985 := by
  apply coveredState_split_literal (state := state_2240985) 2
    state_2240986 state_2240987
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2240986
  · exact cover_2240987
#print axioms cover_2240985

def state_2240977 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 8 else 8)))
theorem cover_2240977 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2240977 := by
  apply coveredState_split_literal (state := state_2240977) 1
    state_2240978 state_2240985
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2240978
  · exact cover_2240985
#print axioms cover_2240977

def state_2240971 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 8 else 8)))
theorem cover_2240971 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2240971 := by
  apply coveredState_split_literal (state := state_2240971) 0
    state_2240972 state_2240977
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2240972
  · exact cover_2240977
#print axioms cover_2240971

def state_2240970 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 8 else 4)))
theorem cover_2240970 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2240970 := by
  apply coveredState_split_literal (state := state_2240970) 4
    state_2240971 state_2241050
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2240971
  · exact cover_2241050
#print axioms cover_2240970

def state_2240969 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 4 else 4)))
theorem cover_2240969 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2240969 := by
  apply coveredState_split_literal (state := state_2240969) 3
    state_2240970 state_2241055
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2240970
  · exact cover_2241055
#print axioms cover_2240969

def state_2240968 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 10) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 4)))
theorem cover_2240968 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2240968 := by
  apply coveredState_split_literal (state := state_2240968) 2
    state_2240969 state_2241062
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2240969
  · exact cover_2241062
#print axioms cover_2240968

def state_2241129 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 22) else (if j.val < 3 then 22 else (if j.val < 4 then 16 else 16)))
theorem cover_2241129 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2241129 := by
  apply coveredState_split_literal (state := state_2241129) 1
    state_2241130 state_2241191
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2241130
  · exact cover_2241191
#print axioms cover_2241129

def state_2241128 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 22) else (if j.val < 3 then 22 else (if j.val < 4 then 16 else 8)))
theorem cover_2241128 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2241128 := by
  apply coveredState_split_literal (state := state_2241128) 4
    state_2241129 state_2241194
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2241129
  · exact cover_2241194
#print axioms cover_2241128

def state_2241127 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 22) else (if j.val < 3 then 22 else (if j.val < 4 then 8 else 8)))
theorem cover_2241127 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2241127 := by
  apply coveredState_split_literal (state := state_2241127) 3
    state_2241128 state_2241207
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2241128
  · exact cover_2241207
#print axioms cover_2241127

def state_2241125 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 22) else (if j.val < 3 then 22 else (if j.val < 4 then 8 else 8)))
theorem cover_2241125 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2241125 := by
  apply coveredState_split_literal (state := state_2241125) 0
    state_2241126 state_2241127
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2241126
  · exact cover_2241127
#print axioms cover_2241125

def state_2241124 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 22) else (if j.val < 3 then 11 else (if j.val < 4 then 8 else 8)))
theorem cover_2241124 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2241124 := by
  apply coveredState_split_literal (state := state_2241124) 2
    state_2241125 state_2241214
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2241125
  · exact cover_2241214
#print axioms cover_2241124

def state_2241123 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 8 else 8)))
theorem cover_2241123 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2241123 := by
  apply coveredState_split_literal (state := state_2241123) 1
    state_2241124 state_2241221
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2241124
  · exact cover_2241221
#print axioms cover_2241123

def state_2241122 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 8 else 4)))
theorem cover_2241122 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2241122 := by
  apply coveredState_split_literal (state := state_2241122) 4
    state_2241123 state_2241224
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2241123
  · exact cover_2241224
#print axioms cover_2241122

def state_2241121 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 4 else 4)))
theorem cover_2241121 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2241121 := by
  apply coveredState_split_literal (state := state_2241121) 3
    state_2241122 state_2241233
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2241122
  · exact cover_2241233
#print axioms cover_2241121

def state_2241119 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 4)))
theorem cover_2241119 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2241119 := by
  apply coveredState_split_literal (state := state_2241119) 2
    state_2241120 state_2241121
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2241120
  · exact cover_2241121
#print axioms cover_2241119

def state_2240967 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 4)))
theorem cover_2240967 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2240967 := by
  apply coveredState_split_literal (state := state_2240967) 1
    state_2240968 state_2241119
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2240968
  · exact cover_2241119
#print axioms cover_2240967

def state_2241311 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 22 else (if j.val < 4 then 16 else 16)))
theorem cover_2241311 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2241311 := by
  apply coveredState_split_literal (state := state_2241311) 0
    state_2241312 state_2241363
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2241312
  · exact cover_2241363
#print axioms cover_2241311

def state_2241310 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 22 else (if j.val < 4 then 16 else 8)))
theorem cover_2241310 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2241310 := by
  apply coveredState_split_literal (state := state_2241310) 4
    state_2241311 state_2241380
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2241311
  · exact cover_2241380
#print axioms cover_2241310

def state_2241309 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 21) else (if j.val < 3 then 22 else (if j.val < 4 then 8 else 8)))
theorem cover_2241309 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2241309 := by
  apply coveredState_split_literal (state := state_2241309) 3
    state_2241310 state_2241383
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2241310
  · exact cover_2241383
#print axioms cover_2241309

def state_2241307 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 10) else (if j.val < 3 then 22 else (if j.val < 4 then 8 else 8)))
theorem cover_2241307 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2241307 := by
  apply coveredState_split_literal (state := state_2241307) 1
    state_2241308 state_2241309
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2241308
  · exact cover_2241309
#print axioms cover_2241307

def state_2241306 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 8 else 8)))
theorem cover_2241306 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2241306 := by
  apply coveredState_split_literal (state := state_2241306) 2
    state_2241307 state_2241388
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2241307
  · exact cover_2241388
#print axioms cover_2241306

def state_2241305 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 8 else 8)))
theorem cover_2241305 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2241305 := by
  apply coveredState_split_literal (state := state_2241305) 0
    state_2241306 state_2241399
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2241306
  · exact cover_2241399
#print axioms cover_2241305

def state_2241304 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 8 else 4)))
theorem cover_2241304 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2241304 := by
  apply coveredState_split_literal (state := state_2241304) 4
    state_2241305 state_2241416
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2241305
  · exact cover_2241416
#print axioms cover_2241304

def state_2241303 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 4 else 4)))
theorem cover_2241303 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2241303 := by
  apply coveredState_split_literal (state := state_2241303) 3
    state_2241304 state_2241417
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2241304
  · exact cover_2241417
#print axioms cover_2241303

def state_2241241 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 4)))
theorem cover_2241241 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2241241 := by
  apply coveredState_split_literal (state := state_2241241) 2
    state_2241242 state_2241303
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2241242
  · exact cover_2241303
#print axioms cover_2241241

def state_2241426 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 21 else (if j.val < 4 then 16 else 8)))
theorem cover_2241426 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2241426 := by
  apply coveredState_split_literal (state := state_2241426) 4
    state_2241427 state_2241490
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2241427
  · exact cover_2241490
#print axioms cover_2241426
end Mub6.Numerical.CircleFullD0.Forest
