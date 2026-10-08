import D0FullInterface
import D0ForestAssembly0009
import D0ForestAssembly0010
import D0ForestChunk0019
import D0ForestChunk0020
import D0ForestChunk0022
import D0ForestChunk0023
import D0ForestChunk0024
import D0ForestChunk0025
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1512986 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 22) else (if j.val < 3 then 21 else (if j.val < 4 then 26 else 30)))
theorem cover_1512986 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1512986 := by
  apply coveredState_split_literal (state := state_1512986) 0
    state_1512987 state_1515304
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1512987
  · exact cover_1515304
#print axioms cover_1512986

def state_1512985 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 22) else (if j.val < 3 then 21 else (if j.val < 4 then 26 else 15)))
theorem cover_1512985 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1512985 := by
  apply coveredState_split_literal (state := state_1512985) 4
    state_1512986 state_1515393
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1512986
  · exact cover_1515393
#print axioms cover_1512985

def state_1515984 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 22) else (if j.val < 3 then 21 else (if j.val < 4 then 27 else 15)))
theorem cover_1515984 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1515984 := by
  apply coveredState_split_literal (state := state_1515984) 4
    state_1515985 state_1516482
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1515985
  · exact cover_1516482
#print axioms cover_1515984

def state_1512984 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 22) else (if j.val < 3 then 21 else (if j.val < 4 then 13 else 15)))
theorem cover_1512984 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1512984 := by
  apply coveredState_split_literal (state := state_1512984) 3
    state_1512985 state_1515984
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1512985
  · exact cover_1515984
#print axioms cover_1512984

def state_1510524 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 22) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 15)))
theorem cover_1510524 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1510524 := by
  apply coveredState_split_literal (state := state_1510524) 2
    state_1510525 state_1512984
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1510525
  · exact cover_1512984
#print axioms cover_1510524

def state_1510523 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 15)))
theorem cover_1510523 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1510523 := by
  apply coveredState_split_literal (state := state_1510523) 1
    state_1510524 state_1517353
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1510524
  · exact cover_1517353
#print axioms cover_1510523

def state_1509577 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 15)))
theorem cover_1509577 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1509577 := by
  apply coveredState_split_literal (state := state_1509577) 0
    state_1509578 state_1510523
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1509578
  · exact cover_1510523
#print axioms cover_1509577

def state_1509305 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 7)))
theorem cover_1509305 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1509305 := by
  apply coveredState_split_literal (state := state_1509305) 4
    state_1509306 state_1509577
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1509306
  · exact cover_1509577
#print axioms cover_1509305

def state_1507545 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 6 else 7)))
theorem cover_1507545 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1507545 := by
  apply coveredState_split_literal (state := state_1507545) 3
    state_1507546 state_1509305
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1507546
  · exact cover_1509305
#print axioms cover_1507545

def state_1507544 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 7)))
theorem cover_1507544 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1507544 := by
  apply coveredState_split_literal (state := state_1507544) 2
    state_1507545 state_1517952
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1507545
  · exact cover_1517952
#print axioms cover_1507544

def state_1494038 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 7)))
theorem cover_1494038 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1494038 := by
  apply coveredState_split_literal (state := state_1494038) 1
    state_1494039 state_1507544
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1494039
  · exact cover_1507544
#print axioms cover_1494038

def state_1494037 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 7)))
theorem cover_1494037 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1494037 := by
  apply coveredState_split_literal (state := state_1494037) 0
    state_1494038 state_1518345
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1494038
  · exact cover_1518345
#print axioms cover_1494037

def state_1493865 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 3)))
theorem cover_1493865 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1493865 := by
  apply coveredState_split_literal (state := state_1493865) 4
    state_1493866 state_1494037
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1493866
  · exact cover_1494037
#print axioms cover_1493865

def state_1493864 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 3)))
theorem cover_1493864 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1493864 := by
  apply coveredState_split_literal (state := state_1493864) 3
    state_1493865 state_1518690
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1493865
  · exact cover_1518690
#print axioms cover_1493864

def state_1489312 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_1489312 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1489312 := by
  apply coveredState_split_literal (state := state_1489312) 2
    state_1489313 state_1493864
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1489313
  · exact cover_1493864
#print axioms cover_1489312

def state_1481332 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_1481332 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481332 := by
  apply coveredState_split_literal (state := state_1481332) 1
    state_1481333 state_1489312
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1481333
  · exact cover_1489312
#print axioms cover_1481332

def state_1481331 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_1481331 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481331 := by
  apply coveredState_split_literal (state := state_1481331) 0
    state_1481332 state_1519581
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1481332
  · exact cover_1519581
#print axioms cover_1481331

def state_1481141 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 1)))
theorem cover_1481141 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481141 := by
  apply coveredState_split_literal (state := state_1481141) 4
    state_1481142 state_1481331
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1481142
  · exact cover_1481331
#print axioms cover_1481141

def state_1471199 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_1471199 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1471199 := by
  apply coveredState_split_literal (state := state_1471199) 3
    state_1471200 state_1481141
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1471200
  · exact cover_1481141
#print axioms cover_1471199

def state_1471198 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_1471198 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1471198 := by
  apply coveredState_split_literal (state := state_1471198) 2
    state_1471199 state_1519720
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1471199
  · exact cover_1519720
#print axioms cover_1471198

def state_1521326 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 22 else (if j.val < 4 then 8 else 21)))
theorem cover_1521326 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1521326 := by
  apply coveredState_split_literal (state := state_1521326) 1
    state_1521327 state_1521930
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1521327
  · exact cover_1521930
#print axioms cover_1521326

def state_1521312 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 22 else (if j.val < 4 then 8 else 10)))
theorem cover_1521312 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1521312 := by
  apply coveredState_split_literal (state := state_1521312) 4
    state_1521313 state_1521326
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1521313
  · exact cover_1521326
#print axioms cover_1521312

def state_1521311 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 11 else (if j.val < 4 then 8 else 10)))
theorem cover_1521311 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1521311 := by
  apply coveredState_split_literal (state := state_1521311) 2
    state_1521312 state_1522677
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1521312
  · exact cover_1522677
#print axioms cover_1521311

def state_1521310 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 11 else (if j.val < 4 then 8 else 10)))
theorem cover_1521310 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1521310 := by
  apply coveredState_split_literal (state := state_1521310) 0
    state_1521311 state_1523184
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1521311
  · exact cover_1523184
#print axioms cover_1521310

def state_1521309 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 11 else (if j.val < 4 then 4 else 10)))
theorem cover_1521309 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1521309 := by
  apply coveredState_split_literal (state := state_1521309) 3
    state_1521310 state_1523201
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1521310
  · exact cover_1523201
#print axioms cover_1521309

def state_1521308 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 11 else (if j.val < 4 then 4 else 10)))
theorem cover_1521308 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1521308 := by
  apply coveredState_split_literal (state := state_1521308) 1
    state_1521309 state_1523738
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1521309
  · exact cover_1523738
#print axioms cover_1521308

def state_1524381 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 58) else (if j.val < 3 then 44 else (if j.val < 4 then 16 else 44)))
theorem cover_1524381 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1524381 := by
  apply coveredState_split_literal (state := state_1524381) 3
    state_1524382 state_1525331
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1524382
  · exact cover_1525331
#print axioms cover_1524381

def state_1524380 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 29) else (if j.val < 3 then 44 else (if j.val < 4 then 16 else 44)))
theorem cover_1524380 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1524380 := by
  apply coveredState_split_literal (state := state_1524380) 1
    state_1524381 state_1526168
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1524381
  · exact cover_1526168
#print axioms cover_1524380

def state_1524379 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 29) else (if j.val < 3 then 44 else (if j.val < 4 then 16 else 22)))
theorem cover_1524379 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1524379 := by
  apply coveredState_split_literal (state := state_1524379) 4
    state_1524380 state_1526229
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1524380
  · exact cover_1526229
#print axioms cover_1524379

def state_1526305 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 29) else (if j.val < 3 then 45 else (if j.val < 4 then 16 else 44)))
theorem cover_1526305 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1526305 := by
  apply coveredState_split_literal (state := state_1526305) 1
    state_1526306 state_1527303
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1526306
  · exact cover_1527303
#print axioms cover_1526305

def state_1526304 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 29) else (if j.val < 3 then 45 else (if j.val < 4 then 16 else 22)))
theorem cover_1526304 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1526304 := by
  apply coveredState_split_literal (state := state_1526304) 4
    state_1526305 state_1527418
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1526305
  · exact cover_1527418
#print axioms cover_1526304

def state_1524378 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 29) else (if j.val < 3 then 22 else (if j.val < 4 then 16 else 22)))
theorem cover_1524378 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1524378 := by
  apply coveredState_split_literal (state := state_1524378) 2
    state_1524379 state_1526304
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1524379
  · exact cover_1526304
#print axioms cover_1524378

def state_1524377 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 22 else (if j.val < 4 then 16 else 22)))
theorem cover_1524377 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1524377 := by
  apply coveredState_split_literal (state := state_1524377) 0
    state_1524378 state_1527457
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1524378
  · exact cover_1527457
#print axioms cover_1524377

def state_1524376 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 22 else (if j.val < 4 then 8 else 22)))
theorem cover_1524376 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1524376 := by
  apply coveredState_split_literal (state := state_1524376) 3
    state_1524377 state_1527538
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1524377
  · exact cover_1527538
#print axioms cover_1524376

def state_1523876 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 22 else (if j.val < 4 then 8 else 22)))
theorem cover_1523876 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1523876 := by
  apply coveredState_split_literal (state := state_1523876) 1
    state_1523877 state_1524376
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1523877
  · exact cover_1524376
#print axioms cover_1523876

def state_1523875 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 22 else (if j.val < 4 then 8 else 11)))
theorem cover_1523875 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1523875 := by
  apply coveredState_split_literal (state := state_1523875) 4
    state_1523876 state_1528341
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1523876
  · exact cover_1528341
#print axioms cover_1523875

def state_1523874 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 11 else (if j.val < 4 then 8 else 11)))
theorem cover_1523874 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1523874 := by
  apply coveredState_split_literal (state := state_1523874) 2
    state_1523875 state_1528372
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1523875
  · exact cover_1528372
#print axioms cover_1523874

def state_1523873 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 11 else (if j.val < 4 then 8 else 11)))
theorem cover_1523873 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1523873 := by
  apply coveredState_split_literal (state := state_1523873) 0
    state_1523874 state_1529039
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1523874
  · exact cover_1529039
#print axioms cover_1523873

def state_1523872 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 11 else (if j.val < 4 then 4 else 11)))
theorem cover_1523872 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1523872 := by
  apply coveredState_split_literal (state := state_1523872) 3
    state_1523873 state_1529102
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1523873
  · exact cover_1529102
#print axioms cover_1523872

def state_1523871 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 11 else (if j.val < 4 then 4 else 11)))
theorem cover_1523871 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1523871 := by
  apply coveredState_split_literal (state := state_1523871) 1
    state_1523872 state_1529521
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1523872
  · exact cover_1529521
#print axioms cover_1523871

def state_1521307 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 11 else (if j.val < 4 then 4 else 5)))
theorem cover_1521307 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1521307 := by
  apply coveredState_split_literal (state := state_1521307) 4
    state_1521308 state_1523871
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1521308
  · exact cover_1523871
#print axioms cover_1521307

def state_1520901 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 5)))
theorem cover_1520901 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1520901 := by
  apply coveredState_split_literal (state := state_1520901) 2
    state_1520902 state_1521307
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1520902
  · exact cover_1521307
#print axioms cover_1520901

def state_1520900 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 5)))
theorem cover_1520900 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1520900 := by
  apply coveredState_split_literal (state := state_1520900) 0
    state_1520901 state_1530070
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1520901
  · exact cover_1530070
#print axioms cover_1520900

def state_1520870 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 2)))
theorem cover_1520870 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1520870 := by
  apply coveredState_split_literal (state := state_1520870) 4
    state_1520871 state_1520900
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1520871
  · exact cover_1520900
#print axioms cover_1520870

def state_1520869 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 2)))
theorem cover_1520869 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1520869 := by
  apply coveredState_split_literal (state := state_1520869) 3
    state_1520870 state_1530115
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1520870
  · exact cover_1530115
#print axioms cover_1520869

def state_1520849 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_1520849 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1520849 := by
  apply coveredState_split_literal (state := state_1520849) 2
    state_1520850 state_1520869
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1520850
  · exact cover_1520869
#print axioms cover_1520849

def state_1520465 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_1520465 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1520465 := by
  apply coveredState_split_literal (state := state_1520465) 1
    state_1520466 state_1520849
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1520466
  · exact cover_1520849
#print axioms cover_1520465

def state_1520464 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_1520464 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1520464 := by
  apply coveredState_split_literal (state := state_1520464) 0
    state_1520465 state_1530178
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1520465
  · exact cover_1530178
#print axioms cover_1520464

def state_1520463 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 1)))
theorem cover_1520463 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1520463 := by
  apply coveredState_split_literal (state := state_1520463) 4
    state_1520464 state_1530211
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1520464
  · exact cover_1530211
#print axioms cover_1520463

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

def state_1531557 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 52) else (if j.val < 3 then 51 else (if j.val < 4 then 38 else 16)))
theorem cover_1531557 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531557 := by
  apply coveredState_split_literal (state := state_1531557) 4
    state_1531558 state_1531999
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1531558
  · exact cover_1531999
#print axioms cover_1531557

def state_1531556 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 52) else (if j.val < 3 then 51 else (if j.val < 4 then 19 else 16)))
theorem cover_1531556 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531556 := by
  apply coveredState_split_literal (state := state_1531556) 3
    state_1531557 state_1532724
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1531557
  · exact cover_1532724
#print axioms cover_1531556

def state_1531555 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 26) else (if j.val < 3 then 51 else (if j.val < 4 then 19 else 16)))
theorem cover_1531555 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531555 := by
  apply coveredState_split_literal (state := state_1531555) 1
    state_1531556 state_1532765
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1531556
  · exact cover_1532765
#print axioms cover_1531555

def state_1531525 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 26) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 16)))
theorem cover_1531525 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531525 := by
  apply coveredState_split_literal (state := state_1531525) 2
    state_1531526 state_1531555
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1531526
  · exact cover_1531555
#print axioms cover_1531525

def state_1531524 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 26) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 16)))
theorem cover_1531524 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531524 := by
  apply coveredState_split_literal (state := state_1531524) 0
    state_1531525 state_1532822
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1531525
  · exact cover_1532822
#print axioms cover_1531524

def state_1531523 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 26) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 8)))
theorem cover_1531523 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531523 := by
  apply coveredState_split_literal (state := state_1531523) 4
    state_1531524 state_1532857
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1531524
  · exact cover_1532857
#print axioms cover_1531523

def state_1531435 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 26) else (if j.val < 3 then 25 else (if j.val < 4 then 9 else 8)))
theorem cover_1531435 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531435 := by
  apply coveredState_split_literal (state := state_1531435) 3
    state_1531436 state_1531523
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1531436
  · exact cover_1531523
#print axioms cover_1531435

def state_1531434 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 13) else (if j.val < 3 then 25 else (if j.val < 4 then 9 else 8)))
theorem cover_1531434 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531434 := by
  apply coveredState_split_literal (state := state_1531434) 1
    state_1531435 state_1533596
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1531435
  · exact cover_1533596
#print axioms cover_1531434

def state_1531398 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 8)))
theorem cover_1531398 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531398 := by
  apply coveredState_split_literal (state := state_1531398) 2
    state_1531399 state_1531434
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1531399
  · exact cover_1531434
#print axioms cover_1531398

def state_1531397 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 8)))
theorem cover_1531397 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531397 := by
  apply coveredState_split_literal (state := state_1531397) 0
    state_1531398 state_1533681
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1531398
  · exact cover_1533681
#print axioms cover_1531397

def state_1531396 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 4)))
theorem cover_1531396 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531396 := by
  apply coveredState_split_literal (state := state_1531396) 4
    state_1531397 state_1533702
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1531397
  · exact cover_1533702
#print axioms cover_1531396

def state_1531358 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 4)))
theorem cover_1531358 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531358 := by
  apply coveredState_split_literal (state := state_1531358) 3
    state_1531359 state_1531396
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1531359
  · exact cover_1531396
#print axioms cover_1531358

def state_1534439 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 8)))
theorem cover_1534439 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1534439 := by
  apply coveredState_split_literal (state := state_1534439) 1
    state_1534440 state_1535405
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1534440
  · exact cover_1535405
#print axioms cover_1534439

def state_1534438 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 8)))
theorem cover_1534438 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1534438 := by
  apply coveredState_split_literal (state := state_1534438) 0
    state_1534439 state_1535530
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1534439
  · exact cover_1535530
#print axioms cover_1534438
end Mub6.Numerical.CircleFullD0.Forest
