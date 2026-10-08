import CircleFullInterface
import CircleForestAssembly0372
import CircleForestAssembly0373
import CircleForestChunk1456
import CircleForestChunk1458
import CircleForestChunk1459
import CircleForestChunk1460
import CircleForestChunk1461
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1650660 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 50) else (if j.val < 3 then 61 else (if j.val < 4 then 52 else 41)))
theorem cover_1650660 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1650660 := by
  apply coveredState_split_literal (state := state_1650660) 1
    state_1650661 state_1650762
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1650661
  · exact cover_1650762
#print axioms cover_1650660

def state_1650386 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 50) else (if j.val < 3 then 30 else (if j.val < 4 then 52 else 41)))
theorem cover_1650386 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1650386 := by
  apply coveredState_split_literal (state := state_1650386) 2
    state_1650387 state_1650660
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1650387
  · exact cover_1650660
#print axioms cover_1650386

def state_1650298 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 50) else (if j.val < 3 then 30 else (if j.val < 4 then 52 else 20)))
theorem cover_1650298 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1650298 := by
  apply coveredState_split_literal (state := state_1650298) 4
    state_1650299 state_1650386
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1650299
  · exact cover_1650386
#print axioms cover_1650298

def state_1650297 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 50) else (if j.val < 3 then 30 else (if j.val < 4 then 26 else 20)))
theorem cover_1650297 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1650297 := by
  apply coveredState_split_literal (state := state_1650297) 3
    state_1650298 state_1650769
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1650298
  · exact cover_1650769
#print axioms cover_1650297

def state_1650281 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 50) else (if j.val < 3 then 30 else (if j.val < 4 then 26 else 20)))
theorem cover_1650281 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1650281 := by
  apply coveredState_split_literal (state := state_1650281) 0
    state_1650282 state_1650297
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1650282
  · exact cover_1650297
#print axioms cover_1650281

def state_1650280 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 30 else (if j.val < 4 then 26 else 20)))
theorem cover_1650280 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1650280 := by
  apply coveredState_split_literal (state := state_1650280) 1
    state_1650281 state_1650814
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1650281
  · exact cover_1650814
#print axioms cover_1650280

def state_1650279 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 26 else 20)))
theorem cover_1650279 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1650279 := by
  apply coveredState_split_literal (state := state_1650279) 2
    state_1650280 state_1650853
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1650280
  · exact cover_1650853
#print axioms cover_1650279

def state_1650908 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 100) else (if j.val < 3 then 120 else (if j.val < 4 then 105 else 84)))
theorem cover_1650908 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1650908 := by
  apply coveredState_split_literal (state := state_1650908) 1
    state_1650909 state_1650966
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1650909
  · exact cover_1650966
#print axioms cover_1650908

def state_1650907 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 100) else (if j.val < 3 then 60 else (if j.val < 4 then 105 else 84)))
theorem cover_1650907 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1650907 := by
  apply coveredState_split_literal (state := state_1650907) 2
    state_1650908 state_1650993
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1650908
  · exact cover_1650993
#print axioms cover_1650907

def state_1650906 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 100) else (if j.val < 3 then 60 else (if j.val < 4 then 105 else 42)))
theorem cover_1650906 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1650906 := by
  apply coveredState_split_literal (state := state_1650906) 4
    state_1650907 state_1651028
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1650907
  · exact cover_1651028
#print axioms cover_1650906

def state_1650904 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 100) else (if j.val < 3 then 60 else (if j.val < 4 then 52 else 42)))
theorem cover_1650904 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1650904 := by
  apply coveredState_split_literal (state := state_1650904) 3
    state_1650905 state_1650906
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1650905
  · exact cover_1650906
#print axioms cover_1650904

def state_1650882 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 100) else (if j.val < 3 then 60 else (if j.val < 4 then 52 else 42)))
theorem cover_1650882 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1650882 := by
  apply coveredState_split_literal (state := state_1650882) 0
    state_1650883 state_1650904
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1650883
  · exact cover_1650904
#print axioms cover_1650882

def state_1650881 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 50) else (if j.val < 3 then 60 else (if j.val < 4 then 52 else 42)))
theorem cover_1650881 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1650881 := by
  apply coveredState_split_literal (state := state_1650881) 1
    state_1650882 state_1651029
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1650882
  · exact cover_1651029
#print axioms cover_1650881

def state_1650880 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 50) else (if j.val < 3 then 30 else (if j.val < 4 then 52 else 42)))
theorem cover_1650880 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1650880 := by
  apply coveredState_split_literal (state := state_1650880) 2
    state_1650881 state_1651058
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1650881
  · exact cover_1651058
#print axioms cover_1650880

def state_1650879 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 50) else (if j.val < 3 then 30 else (if j.val < 4 then 52 else 21)))
theorem cover_1650879 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1650879 := by
  apply coveredState_split_literal (state := state_1650879) 4
    state_1650880 state_1651079
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1650880
  · exact cover_1651079
#print axioms cover_1650879

def state_1651096 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 100) else (if j.val < 3 then 60 else (if j.val < 4 then 106 else 42)))
theorem cover_1651096 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1651096 := by
  apply coveredState_split_literal (state := state_1651096) 4
    state_1651097 state_1651154
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1651097
  · exact cover_1651154
#print axioms cover_1651096

def state_1651095 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 100) else (if j.val < 3 then 60 else (if j.val < 4 then 53 else 42)))
theorem cover_1651095 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1651095 := by
  apply coveredState_split_literal (state := state_1651095) 3
    state_1651096 state_1651189
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1651096
  · exact cover_1651189
#print axioms cover_1651095

def state_1651083 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 100) else (if j.val < 3 then 60 else (if j.val < 4 then 53 else 42)))
theorem cover_1651083 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1651083 := by
  apply coveredState_split_literal (state := state_1651083) 0
    state_1651084 state_1651095
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1651084
  · exact cover_1651095
#print axioms cover_1651083

def state_1651082 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 50) else (if j.val < 3 then 60 else (if j.val < 4 then 53 else 42)))
theorem cover_1651082 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1651082 := by
  apply coveredState_split_literal (state := state_1651082) 1
    state_1651083 state_1651202
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1651083
  · exact cover_1651202
#print axioms cover_1651082

def state_1651081 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 50) else (if j.val < 3 then 30 else (if j.val < 4 then 53 else 42)))
theorem cover_1651081 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1651081 := by
  apply coveredState_split_literal (state := state_1651081) 2
    state_1651082 state_1651229
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1651082
  · exact cover_1651229
#print axioms cover_1651081

def state_1651080 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 50) else (if j.val < 3 then 30 else (if j.val < 4 then 53 else 21)))
theorem cover_1651080 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1651080 := by
  apply coveredState_split_literal (state := state_1651080) 4
    state_1651081 state_1651244
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1651081
  · exact cover_1651244
#print axioms cover_1651080

def state_1650878 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 50) else (if j.val < 3 then 30 else (if j.val < 4 then 26 else 21)))
theorem cover_1650878 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1650878 := by
  apply coveredState_split_literal (state := state_1650878) 3
    state_1650879 state_1651080
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1650879
  · exact cover_1651080
#print axioms cover_1650878

def state_1650864 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 50) else (if j.val < 3 then 30 else (if j.val < 4 then 26 else 21)))
theorem cover_1650864 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1650864 := by
  apply coveredState_split_literal (state := state_1650864) 0
    state_1650865 state_1650878
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1650865
  · exact cover_1650878
#print axioms cover_1650864

def state_1650863 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 30 else (if j.val < 4 then 26 else 21)))
theorem cover_1650863 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1650863 := by
  apply coveredState_split_literal (state := state_1650863) 1
    state_1650864 state_1651289
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1650864
  · exact cover_1651289
#print axioms cover_1650863

def state_1650862 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 26 else 21)))
theorem cover_1650862 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1650862 := by
  apply coveredState_split_literal (state := state_1650862) 2
    state_1650863 state_1651330
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1650863
  · exact cover_1651330
#print axioms cover_1650862

def state_1650278 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 26 else 10)))
theorem cover_1650278 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1650278 := by
  apply coveredState_split_literal (state := state_1650278) 4
    state_1650279 state_1650862
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1650279
  · exact cover_1650862
#print axioms cover_1650278

def state_1650277 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 10)))
theorem cover_1650277 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1650277 := by
  apply coveredState_split_literal (state := state_1650277) 3
    state_1650278 state_1651349
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1650278
  · exact cover_1651349
#print axioms cover_1650277

def state_1650265 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 10)))
theorem cover_1650265 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1650265 := by
  apply coveredState_split_literal (state := state_1650265) 0
    state_1650266 state_1650277
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1650266
  · exact cover_1650277
#print axioms cover_1650265

def state_1649185 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 10)))
theorem cover_1649185 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1649185 := by
  apply coveredState_split_literal (state := state_1649185) 1
    state_1649186 state_1650265
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1649186
  · exact cover_1650265
#print axioms cover_1649185

def state_1645081 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 13 else 10)))
theorem cover_1645081 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1645081 := by
  apply coveredState_split_literal (state := state_1645081) 2
    state_1645082 state_1649185
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1645082
  · exact cover_1649185
#print axioms cover_1645081

def state_1651394 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 26 else 22)))
theorem cover_1651394 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1651394 := by
  apply coveredState_split_literal (state := state_1651394) 2
    state_1651395 state_1651422
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1651395
  · exact cover_1651422
#print axioms cover_1651394

def state_1651472 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 28 else (if j.val < 4 then 27 else 22)))
theorem cover_1651472 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1651472 := by
  apply coveredState_split_literal (state := state_1651472) 1
    state_1651473 state_1651516
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1651473
  · exact cover_1651516
#print axioms cover_1651472
end Mub6.Numerical.CircleFullD0.Forest
