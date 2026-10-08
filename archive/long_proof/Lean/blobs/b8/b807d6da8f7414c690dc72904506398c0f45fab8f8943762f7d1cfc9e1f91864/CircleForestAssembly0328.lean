import CircleFullInterface
import CircleForestAssembly0327
import CircleForestChunk1270
import CircleForestChunk1271
import CircleForestChunk1272
import CircleForestChunk1273
import CircleForestChunk1274
import CircleForestChunk1275
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1605837 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 41) else (if j.val < 3 then 104 else (if j.val < 4 then 61 else 99)))
theorem cover_1605837 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1605837 := by
  apply coveredState_split_literal (state := state_1605837) 1
    state_1605838 state_1605919
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1605838
  · exact cover_1605919
#print axioms cover_1605837

def state_1605836 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 41) else (if j.val < 3 then 52 else (if j.val < 4 then 61 else 99)))
theorem cover_1605836 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1605836 := by
  apply coveredState_split_literal (state := state_1605836) 2
    state_1605837 state_1605940
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1605837
  · exact cover_1605940
#print axioms cover_1605836

def state_1605830 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 41) else (if j.val < 3 then 52 else (if j.val < 4 then 61 else 99)))
theorem cover_1605830 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1605830 := by
  apply coveredState_split_literal (state := state_1605830) 0
    state_1605831 state_1605836
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1605831
  · exact cover_1605836
#print axioms cover_1605830

def state_1605822 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 41) else (if j.val < 3 then 52 else (if j.val < 4 then 61 else 49)))
theorem cover_1605822 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1605822 := by
  apply coveredState_split_literal (state := state_1605822) 4
    state_1605823 state_1605830
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1605823
  · exact cover_1605830
#print axioms cover_1605822

def state_1605584 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 41) else (if j.val < 3 then 52 else (if j.val < 4 then 30 else 49)))
theorem cover_1605584 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1605584 := by
  apply coveredState_split_literal (state := state_1605584) 3
    state_1605585 state_1605822
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1605585
  · exact cover_1605822
#print axioms cover_1605584

def state_1605532 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 20) else (if j.val < 3 then 52 else (if j.val < 4 then 30 else 49)))
theorem cover_1605532 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1605532 := by
  apply coveredState_split_literal (state := state_1605532) 1
    state_1605533 state_1605584
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1605533
  · exact cover_1605584
#print axioms cover_1605532

def state_1605531 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 20) else (if j.val < 3 then 26 else (if j.val < 4 then 30 else 49)))
theorem cover_1605531 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1605531 := by
  apply coveredState_split_literal (state := state_1605531) 2
    state_1605532 state_1605961
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1605532
  · exact cover_1605961
#print axioms cover_1605531

def state_1605515 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 20) else (if j.val < 3 then 26 else (if j.val < 4 then 30 else 49)))
theorem cover_1605515 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1605515 := by
  apply coveredState_split_literal (state := state_1605515) 0
    state_1605516 state_1605531
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1605516
  · exact cover_1605531
#print axioms cover_1605515

def state_1605507 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 20) else (if j.val < 3 then 26 else (if j.val < 4 then 30 else 24)))
theorem cover_1605507 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1605507 := by
  apply coveredState_split_literal (state := state_1605507) 4
    state_1605508 state_1605515
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1605508
  · exact cover_1605515
#print axioms cover_1605507

def state_1605506 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 20) else (if j.val < 3 then 26 else (if j.val < 4 then 15 else 24)))
theorem cover_1605506 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1605506 := by
  apply coveredState_split_literal (state := state_1605506) 3
    state_1605507 state_1605974
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1605507
  · exact cover_1605974
#print axioms cover_1605506

def state_1605505 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 20) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 24)))
theorem cover_1605505 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1605505 := by
  apply coveredState_split_literal (state := state_1605505) 2
    state_1605506 state_1605995
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1605506
  · exact cover_1605995
#print axioms cover_1605505

def state_1606091 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 84) else (if j.val < 3 then 105 else (if j.val < 4 then 120 else 99)))
theorem cover_1606091 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1606091 := by
  apply coveredState_split_literal (state := state_1606091) 4
    state_1606092 state_1606123
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1606092
  · exact cover_1606123
#print axioms cover_1606091

def state_1606090 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 84) else (if j.val < 3 then 105 else (if j.val < 4 then 60 else 99)))
theorem cover_1606090 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1606090 := by
  apply coveredState_split_literal (state := state_1606090) 3
    state_1606091 state_1606186
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1606091
  · exact cover_1606186
#print axioms cover_1606090

def state_1606089 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 42) else (if j.val < 3 then 105 else (if j.val < 4 then 60 else 99)))
theorem cover_1606089 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1606089 := by
  apply coveredState_split_literal (state := state_1606089) 1
    state_1606090 state_1606223
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1606090
  · exact cover_1606223
#print axioms cover_1606089

def state_1606079 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 42) else (if j.val < 3 then 52 else (if j.val < 4 then 60 else 99)))
theorem cover_1606079 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1606079 := by
  apply coveredState_split_literal (state := state_1606079) 2
    state_1606080 state_1606089
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1606080
  · exact cover_1606089
#print axioms cover_1606079

def state_1606063 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 42) else (if j.val < 3 then 52 else (if j.val < 4 then 60 else 99)))
theorem cover_1606063 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1606063 := by
  apply coveredState_split_literal (state := state_1606063) 0
    state_1606064 state_1606079
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1606064
  · exact cover_1606079
#print axioms cover_1606063

def state_1606037 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 42) else (if j.val < 3 then 52 else (if j.val < 4 then 60 else 49)))
theorem cover_1606037 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1606037 := by
  apply coveredState_split_literal (state := state_1606037) 4
    state_1606038 state_1606063
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1606038
  · exact cover_1606063
#print axioms cover_1606037

def state_1606036 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 42) else (if j.val < 3 then 52 else (if j.val < 4 then 30 else 49)))
theorem cover_1606036 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1606036 := by
  apply coveredState_split_literal (state := state_1606036) 3
    state_1606037 state_1606230
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1606037
  · exact cover_1606230
#print axioms cover_1606036

def state_1606335 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 85) else (if j.val < 3 then 106 else (if j.val < 4 then 60 else 99)))
theorem cover_1606335 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1606335 := by
  apply coveredState_split_literal (state := state_1606335) 3
    state_1606336 state_1606383
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1606336
  · exact cover_1606383
#print axioms cover_1606335

def state_1606334 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 85) else (if j.val < 3 then 53 else (if j.val < 4 then 60 else 99)))
theorem cover_1606334 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1606334 := by
  apply coveredState_split_literal (state := state_1606334) 2
    state_1606335 state_1606402
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1606335
  · exact cover_1606402
#print axioms cover_1606334

def state_1606292 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 42) else (if j.val < 3 then 53 else (if j.val < 4 then 60 else 99)))
theorem cover_1606292 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1606292 := by
  apply coveredState_split_literal (state := state_1606292) 1
    state_1606293 state_1606334
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1606293
  · exact cover_1606334
#print axioms cover_1606292

def state_1606276 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 42) else (if j.val < 3 then 53 else (if j.val < 4 then 60 else 99)))
theorem cover_1606276 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1606276 := by
  apply coveredState_split_literal (state := state_1606276) 0
    state_1606277 state_1606292
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1606277
  · exact cover_1606292
#print axioms cover_1606276

def state_1606258 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 42) else (if j.val < 3 then 53 else (if j.val < 4 then 60 else 49)))
theorem cover_1606258 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1606258 := by
  apply coveredState_split_literal (state := state_1606258) 4
    state_1606259 state_1606276
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1606259
  · exact cover_1606276
#print axioms cover_1606258

def state_1606257 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 42) else (if j.val < 3 then 53 else (if j.val < 4 then 30 else 49)))
theorem cover_1606257 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1606257 := by
  apply coveredState_split_literal (state := state_1606257) 3
    state_1606258 state_1606413
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1606258
  · exact cover_1606413
#print axioms cover_1606257

def state_1606035 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 42) else (if j.val < 3 then 26 else (if j.val < 4 then 30 else 49)))
theorem cover_1606035 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1606035 := by
  apply coveredState_split_literal (state := state_1606035) 2
    state_1606036 state_1606257
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1606036
  · exact cover_1606257
#print axioms cover_1606035

def state_1606439 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 43) else (if j.val < 3 then 53 else (if j.val < 4 then 60 else 49)))
theorem cover_1606439 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1606439 := by
  apply coveredState_split_literal (state := state_1606439) 4
    state_1606440 state_1606447
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1606440
  · exact cover_1606447
#print axioms cover_1606439

def state_1606438 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 43) else (if j.val < 3 then 53 else (if j.val < 4 then 30 else 49)))
theorem cover_1606438 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1606438 := by
  apply coveredState_split_literal (state := state_1606438) 3
    state_1606439 state_1606510
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1606439
  · exact cover_1606510
#print axioms cover_1606438

def state_1606436 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 43) else (if j.val < 3 then 26 else (if j.val < 4 then 30 else 49)))
theorem cover_1606436 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1606436 := by
  apply coveredState_split_literal (state := state_1606436) 2
    state_1606437 state_1606438
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1606437
  · exact cover_1606438
#print axioms cover_1606436

def state_1606034 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 30 else 49)))
theorem cover_1606034 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1606034 := by
  apply coveredState_split_literal (state := state_1606034) 1
    state_1606035 state_1606436
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1606035
  · exact cover_1606436
#print axioms cover_1606034

def state_1606028 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 30 else 49)))
theorem cover_1606028 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1606028 := by
  apply coveredState_split_literal (state := state_1606028) 0
    state_1606029 state_1606034
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1606029
  · exact cover_1606034
#print axioms cover_1606028

def state_1605998 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 30 else 24)))
theorem cover_1605998 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1605998 := by
  apply coveredState_split_literal (state := state_1605998) 4
    state_1605999 state_1606028
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1605999
  · exact cover_1606028
#print axioms cover_1605998

def state_1605997 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 21) else (if j.val < 3 then 26 else (if j.val < 4 then 15 else 24)))
theorem cover_1605997 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1605997 := by
  apply coveredState_split_literal (state := state_1605997) 3
    state_1605998 state_1606523
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1605998
  · exact cover_1606523
#print axioms cover_1605997
end Mub6.Numerical.CircleFullD0.Forest
