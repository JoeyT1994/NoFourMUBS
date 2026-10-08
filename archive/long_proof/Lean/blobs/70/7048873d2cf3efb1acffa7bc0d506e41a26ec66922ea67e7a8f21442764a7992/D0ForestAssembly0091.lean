import D0FullInterface
import D0ForestChunk0366
import D0ForestChunk0367
import D0ForestChunk0368
import D0ForestChunk0369
import D0ForestChunk0370
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1025302 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 29) else (if j.val < 3 then 18 else (if j.val < 4 then 52 else 48)))
theorem cover_1025302 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1025302 := by
  apply coveredState_split_literal (state := state_1025302) 1
    state_1025303 state_1025344
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1025303
  · exact cover_1025344
#print axioms cover_1025302

def state_1025301 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 29) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 48)))
theorem cover_1025301 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1025301 := by
  apply coveredState_split_literal (state := state_1025301) 3
    state_1025302 state_1025377
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1025302
  · exact cover_1025377
#print axioms cover_1025301

def state_1025300 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 29) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 24)))
theorem cover_1025300 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1025300 := by
  apply coveredState_split_literal (state := state_1025300) 4
    state_1025301 state_1025378
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1025301
  · exact cover_1025378
#print axioms cover_1025300

def state_1025449 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 59) else (if j.val < 3 then 18 else (if j.val < 4 then 52 else 48)))
theorem cover_1025449 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1025449 := by
  apply coveredState_split_literal (state := state_1025449) 2
    state_1025450 state_1025481
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1025450
  · exact cover_1025481
#print axioms cover_1025449

def state_1025415 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 29) else (if j.val < 3 then 18 else (if j.val < 4 then 52 else 48)))
theorem cover_1025415 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1025415 := by
  apply coveredState_split_literal (state := state_1025415) 1
    state_1025416 state_1025449
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1025416
  · exact cover_1025449
#print axioms cover_1025415

def state_1025414 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 29) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 48)))
theorem cover_1025414 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1025414 := by
  apply coveredState_split_literal (state := state_1025414) 3
    state_1025415 state_1025518
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1025415
  · exact cover_1025518
#print axioms cover_1025414

def state_1025544 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 29) else (if j.val < 3 then 18 else (if j.val < 4 then 52 else 49)))
theorem cover_1025544 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1025544 := by
  apply coveredState_split_literal (state := state_1025544) 1
    state_1025545 state_1025552
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1025545
  · exact cover_1025552
#print axioms cover_1025544

def state_1025543 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 29) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 49)))
theorem cover_1025543 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1025543 := by
  apply coveredState_split_literal (state := state_1025543) 3
    state_1025544 state_1025609
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1025544
  · exact cover_1025609
#print axioms cover_1025543

def state_1025413 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 29) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 24)))
theorem cover_1025413 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1025413 := by
  apply coveredState_split_literal (state := state_1025413) 4
    state_1025414 state_1025543
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1025414
  · exact cover_1025543
#print axioms cover_1025413

def state_1025299 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 29) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 24)))
theorem cover_1025299 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1025299 := by
  apply coveredState_split_literal (state := state_1025299) 0
    state_1025300 state_1025413
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1025300
  · exact cover_1025413
#print axioms cover_1025299

def state_1025298 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 29) else (if j.val < 3 then 9 else (if j.val < 4 then 26 else 24)))
theorem cover_1025298 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1025298 := by
  apply coveredState_split_literal (state := state_1025298) 2
    state_1025299 state_1025616
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1025299
  · exact cover_1025616
#print axioms cover_1025298

def state_1025262 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 26 else 24)))
theorem cover_1025262 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1025262 := by
  apply coveredState_split_literal (state := state_1025262) 1
    state_1025263 state_1025298
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1025263
  · exact cover_1025298
#print axioms cover_1025262

def state_1025261 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 24)))
theorem cover_1025261 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1025261 := by
  apply coveredState_split_literal (state := state_1025261) 3
    state_1025262 state_1025671
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1025262
  · exact cover_1025671
#print axioms cover_1025261

def state_1025260 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 12)))
theorem cover_1025260 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1025260 := by
  apply coveredState_split_literal (state := state_1025260) 4
    state_1025261 state_1025718
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1025261
  · exact cover_1025718
#print axioms cover_1025260

def state_1025232 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 12)))
theorem cover_1025232 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1025232 := by
  apply coveredState_split_literal (state := state_1025232) 0
    state_1025233 state_1025260
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1025233
  · exact cover_1025260
#print axioms cover_1025232

def state_1025168 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 12)))
theorem cover_1025168 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1025168 := by
  apply coveredState_split_literal (state := state_1025168) 2
    state_1025169 state_1025232
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1025169
  · exact cover_1025232
#print axioms cover_1025168

def state_1025772 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 15) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 12)))
theorem cover_1025772 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1025772 := by
  apply coveredState_split_literal (state := state_1025772) 4
    state_1025773 state_1025814
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1025773
  · exact cover_1025814
#print axioms cover_1025772

def state_1025770 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 15) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 12)))
theorem cover_1025770 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1025770 := by
  apply coveredState_split_literal (state := state_1025770) 0
    state_1025771 state_1025772
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1025771
  · exact cover_1025772
#print axioms cover_1025770

def state_1025909 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 30) else (if j.val < 3 then 36 else (if j.val < 4 then 52 else 49)))
theorem cover_1025909 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1025909 := by
  apply coveredState_split_literal (state := state_1025909) 1
    state_1025910 state_1025965
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1025910
  · exact cover_1025965
#print axioms cover_1025909

def state_1025986 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 60) else (if j.val < 3 then 37 else (if j.val < 4 then 52 else 49)))
theorem cover_1025986 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1025986 := by
  apply coveredState_split_literal (state := state_1025986) 4
    state_1025987 state_1026024
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1025987
  · exact cover_1026024
#print axioms cover_1025986

def state_1025985 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 60) else (if j.val < 3 then 37 else (if j.val < 4 then 52 else 49)))
theorem cover_1025985 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1025985 := by
  apply coveredState_split_literal (state := state_1025985) 0
    state_1025986 state_1026079
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1025986
  · exact cover_1026079
#print axioms cover_1025985

def state_1025984 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 30) else (if j.val < 3 then 37 else (if j.val < 4 then 52 else 49)))
theorem cover_1025984 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1025984 := by
  apply coveredState_split_literal (state := state_1025984) 1
    state_1025985 state_1026106
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1025985
  · exact cover_1026106
#print axioms cover_1025984

def state_1025908 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 30) else (if j.val < 3 then 18 else (if j.val < 4 then 52 else 49)))
theorem cover_1025908 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1025908 := by
  apply coveredState_split_literal (state := state_1025908) 2
    state_1025909 state_1025984
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1025909
  · exact cover_1025984
#print axioms cover_1025908

def state_1025907 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 30) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 49)))
theorem cover_1025907 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1025907 := by
  apply coveredState_split_literal (state := state_1025907) 3
    state_1025908 state_1026149
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1025908
  · exact cover_1026149
#print axioms cover_1025907

def state_1025879 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 30) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 24)))
theorem cover_1025879 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1025879 := by
  apply coveredState_split_literal (state := state_1025879) 4
    state_1025880 state_1025907
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1025880
  · exact cover_1025907
#print axioms cover_1025879

def state_1025861 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 30) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 24)))
theorem cover_1025861 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1025861 := by
  apply coveredState_split_literal (state := state_1025861) 0
    state_1025862 state_1025879
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1025862
  · exact cover_1025879
#print axioms cover_1025861

def state_1025860 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 15) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 24)))
theorem cover_1025860 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1025860 := by
  apply coveredState_split_literal (state := state_1025860) 1
    state_1025861 state_1026162
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1025861
  · exact cover_1026162
#print axioms cover_1025860

def state_1026244 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 30) else (if j.val < 3 then 19 else (if j.val < 4 then 26 else 49)))
theorem cover_1026244 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1026244 := by
  apply coveredState_split_literal (state := state_1026244) 3
    state_1026245 state_1026300
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1026245
  · exact cover_1026300
#print axioms cover_1026244

def state_1026220 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 30) else (if j.val < 3 then 19 else (if j.val < 4 then 26 else 24)))
theorem cover_1026220 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1026220 := by
  apply coveredState_split_literal (state := state_1026220) 4
    state_1026221 state_1026244
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1026221
  · exact cover_1026244
#print axioms cover_1026220

def state_1026188 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 30) else (if j.val < 3 then 19 else (if j.val < 4 then 26 else 24)))
theorem cover_1026188 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1026188 := by
  apply coveredState_split_literal (state := state_1026188) 0
    state_1026189 state_1026220
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1026189
  · exact cover_1026220
#print axioms cover_1026188

def state_1026187 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 15) else (if j.val < 3 then 19 else (if j.val < 4 then 26 else 24)))
theorem cover_1026187 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1026187 := by
  apply coveredState_split_literal (state := state_1026187) 1
    state_1026188 state_1026325
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1026188
  · exact cover_1026325
#print axioms cover_1026187

def state_1025859 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 26 else 24)))
theorem cover_1025859 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1025859 := by
  apply coveredState_split_literal (state := state_1025859) 2
    state_1025860 state_1026187
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1025860
  · exact cover_1026187
#print axioms cover_1025859
end Mub6.Numerical.CircleFullD0.Forest
