import D0FullInterface
import D0ForestAssembly0117
import D0ForestChunk0461
import D0ForestChunk0462
import D0ForestChunk0463
import D0ForestChunk0464
import D0ForestChunk0465
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1048777 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 25) else (if j.val < 3 then 26 else (if j.val < 4 then 19 else 31)))
theorem cover_1048777 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1048777 := by
  apply coveredState_split_literal (state := state_1048777) 1
    state_1048778 state_1048839
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1048778
  · exact cover_1048839
#print axioms cover_1048777

def state_1048776 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 25) else (if j.val < 3 then 26 else (if j.val < 4 then 19 else 31)))
theorem cover_1048776 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1048776 := by
  apply coveredState_split_literal (state := state_1048776) 0
    state_1048777 state_1048978
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1048777
  · exact cover_1048978
#print axioms cover_1048776

def state_1048750 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 25) else (if j.val < 3 then 26 else (if j.val < 4 then 19 else 15)))
theorem cover_1048750 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1048750 := by
  apply coveredState_split_literal (state := state_1048750) 4
    state_1048751 state_1048776
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1048751
  · exact cover_1048776
#print axioms cover_1048750

def state_1048642 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 25) else (if j.val < 3 then 26 else (if j.val < 4 then 9 else 15)))
theorem cover_1048642 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1048642 := by
  apply coveredState_split_literal (state := state_1048642) 3
    state_1048643 state_1048750
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1048643
  · exact cover_1048750
#print axioms cover_1048642

def state_1048641 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 25) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 15)))
theorem cover_1048641 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1048641 := by
  apply coveredState_split_literal (state := state_1048641) 2
    state_1048642 state_1048987
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1048642
  · exact cover_1048987
#print axioms cover_1048641

def state_1048553 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 15)))
theorem cover_1048553 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1048553 := by
  apply coveredState_split_literal (state := state_1048553) 1
    state_1048554 state_1048641
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1048554
  · exact cover_1048641
#print axioms cover_1048553

def state_1048552 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 15)))
theorem cover_1048552 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1048552 := by
  apply coveredState_split_literal (state := state_1048552) 0
    state_1048553 state_1049026
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1048553
  · exact cover_1049026
#print axioms cover_1048552

def state_1048500 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 7)))
theorem cover_1048500 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1048500 := by
  apply coveredState_split_literal (state := state_1048500) 4
    state_1048501 state_1048552
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1048501
  · exact cover_1048552
#print axioms cover_1048500

def state_1048468 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 7)))
theorem cover_1048468 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1048468 := by
  apply coveredState_split_literal (state := state_1048468) 3
    state_1048469 state_1048500
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1048469
  · exact cover_1048500
#print axioms cover_1048468

def state_1047926 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 7)))
theorem cover_1047926 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1047926 := by
  apply coveredState_split_literal (state := state_1047926) 2
    state_1047927 state_1048468
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1047927
  · exact cover_1048468
#print axioms cover_1047926

def state_1049133 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 52) else (if j.val < 3 then 51 else (if j.val < 4 then 38 else 31)))
theorem cover_1049133 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049133 := by
  apply coveredState_split_literal (state := state_1049133) 4
    state_1049134 state_1049145
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1049134
  · exact cover_1049145
#print axioms cover_1049133

def state_1049132 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 52) else (if j.val < 3 then 51 else (if j.val < 4 then 19 else 31)))
theorem cover_1049132 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049132 := by
  apply coveredState_split_literal (state := state_1049132) 3
    state_1049133 state_1049204
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1049133
  · exact cover_1049204
#print axioms cover_1049132

def state_1049131 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 26) else (if j.val < 3 then 51 else (if j.val < 4 then 19 else 31)))
theorem cover_1049131 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049131 := by
  apply coveredState_split_literal (state := state_1049131) 1
    state_1049132 state_1049211
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1049132
  · exact cover_1049211
#print axioms cover_1049131

def state_1049123 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 26) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 31)))
theorem cover_1049123 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049123 := by
  apply coveredState_split_literal (state := state_1049123) 2
    state_1049124 state_1049131
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1049124
  · exact cover_1049131
#print axioms cover_1049123

def state_1049122 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 26) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 31)))
theorem cover_1049122 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049122 := by
  apply coveredState_split_literal (state := state_1049122) 0
    state_1049123 state_1049226
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1049123
  · exact cover_1049226
#print axioms cover_1049122

def state_1049108 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 26) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 15)))
theorem cover_1049108 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049108 := by
  apply coveredState_split_literal (state := state_1049108) 4
    state_1049109 state_1049122
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1049109
  · exact cover_1049122
#print axioms cover_1049108

def state_1049072 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 26) else (if j.val < 3 then 25 else (if j.val < 4 then 9 else 15)))
theorem cover_1049072 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049072 := by
  apply coveredState_split_literal (state := state_1049072) 3
    state_1049073 state_1049108
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1049073
  · exact cover_1049108
#print axioms cover_1049072

def state_1049071 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 13) else (if j.val < 3 then 25 else (if j.val < 4 then 9 else 15)))
theorem cover_1049071 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049071 := by
  apply coveredState_split_literal (state := state_1049071) 1
    state_1049072 state_1049233
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1049072
  · exact cover_1049233
#print axioms cover_1049071

def state_1049065 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 15)))
theorem cover_1049065 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049065 := by
  apply coveredState_split_literal (state := state_1049065) 2
    state_1049066 state_1049071
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1049066
  · exact cover_1049071
#print axioms cover_1049065

def state_1049064 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 15)))
theorem cover_1049064 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049064 := by
  apply coveredState_split_literal (state := state_1049064) 0
    state_1049065 state_1049250
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1049065
  · exact cover_1049250
#print axioms cover_1049064

def state_1049052 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 7)))
theorem cover_1049052 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049052 := by
  apply coveredState_split_literal (state := state_1049052) 4
    state_1049053 state_1049064
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1049053
  · exact cover_1049064
#print axioms cover_1049052

def state_1049036 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 7)))
theorem cover_1049036 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049036 := by
  apply coveredState_split_literal (state := state_1049036) 3
    state_1049037 state_1049052
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1049037
  · exact cover_1049052
#print axioms cover_1049036

def state_1049266 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 26) else (if j.val < 3 then 26 else (if j.val < 4 then 19 else 15)))
theorem cover_1049266 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049266 := by
  apply coveredState_split_literal (state := state_1049266) 4
    state_1049267 state_1049276
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1049267
  · exact cover_1049276
#print axioms cover_1049266

def state_1049264 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 26) else (if j.val < 3 then 26 else (if j.val < 4 then 9 else 15)))
theorem cover_1049264 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049264 := by
  apply coveredState_split_literal (state := state_1049264) 3
    state_1049265 state_1049266
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1049265
  · exact cover_1049266
#print axioms cover_1049264

def state_1049263 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 26) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 15)))
theorem cover_1049263 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049263 := by
  apply coveredState_split_literal (state := state_1049263) 2
    state_1049264 state_1049333
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1049264
  · exact cover_1049333
#print axioms cover_1049263

def state_1049262 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 15)))
theorem cover_1049262 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049262 := by
  apply coveredState_split_literal (state := state_1049262) 1
    state_1049263 state_1049334
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1049263
  · exact cover_1049334
#print axioms cover_1049262

def state_1049261 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 15)))
theorem cover_1049261 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049261 := by
  apply coveredState_split_literal (state := state_1049261) 0
    state_1049262 state_1049335
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1049262
  · exact cover_1049335
#print axioms cover_1049261

def state_1049259 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 7)))
theorem cover_1049259 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049259 := by
  apply coveredState_split_literal (state := state_1049259) 4
    state_1049260 state_1049261
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1049260
  · exact cover_1049261
#print axioms cover_1049259

def state_1049257 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 7)))
theorem cover_1049257 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049257 := by
  apply coveredState_split_literal (state := state_1049257) 3
    state_1049258 state_1049259
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1049258
  · exact cover_1049259
#print axioms cover_1049257

def state_1049035 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 7)))
theorem cover_1049035 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1049035 := by
  apply coveredState_split_literal (state := state_1049035) 2
    state_1049036 state_1049257
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1049036
  · exact cover_1049257
#print axioms cover_1049035

def state_1047925 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 7)))
theorem cover_1047925 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1047925 := by
  apply coveredState_split_literal (state := state_1047925) 1
    state_1047926 state_1049035
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1047926
  · exact cover_1049035
#print axioms cover_1047925

def state_1047924 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 7)))
theorem cover_1047924 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1047924 := by
  apply coveredState_split_literal (state := state_1047924) 0
    state_1047925 state_1049336
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1047925
  · exact cover_1049336
#print axioms cover_1047924
end Mub6.Numerical.CircleFullD0.Forest
