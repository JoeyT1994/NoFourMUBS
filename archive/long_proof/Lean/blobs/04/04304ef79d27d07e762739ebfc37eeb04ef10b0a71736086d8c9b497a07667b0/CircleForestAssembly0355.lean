import CircleFullInterface
import CircleForestAssembly0354
import CircleForestChunk1375
import CircleForestChunk1376
import CircleForestChunk1377
import CircleForestChunk1378
import CircleForestChunk1379
import CircleForestChunk1380
import CircleForestChunk1381
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1630659 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 2)))
theorem cover_1630659 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1630659 := by
  apply coveredState_split_literal (state := state_1630659) 4
    state_1630660 state_1630919
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1630660
  · exact cover_1630919
#print axioms cover_1630659

def state_1630658 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 2)))
theorem cover_1630658 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1630658 := by
  apply coveredState_split_literal (state := state_1630658) 3
    state_1630659 state_1631020
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1630659
  · exact cover_1631020
#print axioms cover_1630658

def state_1620086 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_1620086 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620086 := by
  apply coveredState_split_literal (state := state_1620086) 2
    state_1620087 state_1630658
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1620087
  · exact cover_1630658
#print axioms cover_1620086

def state_1631029 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 2)))
theorem cover_1631029 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1631029 := by
  apply coveredState_split_literal (state := state_1631029) 4
    state_1631030 state_1631079
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1631030
  · exact cover_1631079
#print axioms cover_1631029

def state_1631028 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 2)))
theorem cover_1631028 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1631028 := by
  apply coveredState_split_literal (state := state_1631028) 3
    state_1631029 state_1631094
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1631029
  · exact cover_1631094
#print axioms cover_1631028

def state_1631027 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_1631027 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1631027 := by
  apply coveredState_split_literal (state := state_1631027) 2
    state_1631028 state_1631095
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1631028
  · exact cover_1631095
#print axioms cover_1631027

def state_1620085 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_1620085 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1620085 := by
  apply coveredState_split_literal (state := state_1620085) 1
    state_1620086 state_1631027
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1620086
  · exact cover_1631027
#print axioms cover_1620085

def state_1631239 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 26 else (if j.val < 4 then 24 else 17)))
theorem cover_1631239 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1631239 := by
  apply coveredState_split_literal (state := state_1631239) 3
    state_1631240 state_1631275
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1631240
  · exact cover_1631275
#print axioms cover_1631239

def state_1631199 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 26 else (if j.val < 4 then 24 else 8)))
theorem cover_1631199 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1631199 := by
  apply coveredState_split_literal (state := state_1631199) 4
    state_1631200 state_1631239
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1631200
  · exact cover_1631239
#print axioms cover_1631199

def state_1631402 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 51) else (if j.val < 3 then 27 else (if j.val < 4 then 48 else 17)))
theorem cover_1631402 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1631402 := by
  apply coveredState_split_literal (state := state_1631402) 2
    state_1631403 state_1631466
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1631403
  · exact cover_1631466
#print axioms cover_1631402

def state_1631401 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 51) else (if j.val < 3 then 27 else (if j.val < 4 then 48 else 17)))
theorem cover_1631401 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1631401 := by
  apply coveredState_split_literal (state := state_1631401) 0
    state_1631402 state_1631469
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1631402
  · exact cover_1631469
#print axioms cover_1631401

def state_1631373 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 27 else (if j.val < 4 then 48 else 17)))
theorem cover_1631373 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1631373 := by
  apply coveredState_split_literal (state := state_1631373) 1
    state_1631374 state_1631401
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1631374
  · exact cover_1631401
#print axioms cover_1631373

def state_1631543 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 51) else (if j.val < 3 then 54 else (if j.val < 4 then 98 else 35)))
theorem cover_1631543 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1631543 := by
  apply coveredState_split_literal (state := state_1631543) 1
    state_1631544 state_1631593
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1631544
  · exact cover_1631593
#print axioms cover_1631543

def state_1631542 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 51) else (if j.val < 3 then 54 else (if j.val < 4 then 49 else 35)))
theorem cover_1631542 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1631542 := by
  apply coveredState_split_literal (state := state_1631542) 3
    state_1631543 state_1631638
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1631543
  · exact cover_1631638
#print axioms cover_1631542

def state_1631526 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 51) else (if j.val < 3 then 54 else (if j.val < 4 then 49 else 17)))
theorem cover_1631526 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1631526 := by
  apply coveredState_split_literal (state := state_1631526) 4
    state_1631527 state_1631542
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1631527
  · exact cover_1631542
#print axioms cover_1631526

def state_1631525 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 51) else (if j.val < 3 then 27 else (if j.val < 4 then 49 else 17)))
theorem cover_1631525 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1631525 := by
  apply coveredState_split_literal (state := state_1631525) 2
    state_1631526 state_1631665
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1631526
  · exact cover_1631665
#print axioms cover_1631525

def state_1631524 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 51) else (if j.val < 3 then 27 else (if j.val < 4 then 49 else 17)))
theorem cover_1631524 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1631524 := by
  apply coveredState_split_literal (state := state_1631524) 0
    state_1631525 state_1631712
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1631525
  · exact cover_1631712
#print axioms cover_1631524

def state_1631480 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 27 else (if j.val < 4 then 49 else 17)))
theorem cover_1631480 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1631480 := by
  apply coveredState_split_literal (state := state_1631480) 1
    state_1631481 state_1631524
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1631481
  · exact cover_1631524
#print axioms cover_1631480

def state_1631372 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 27 else (if j.val < 4 then 24 else 17)))
theorem cover_1631372 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1631372 := by
  apply coveredState_split_literal (state := state_1631372) 3
    state_1631373 state_1631480
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1631373
  · exact cover_1631480
#print axioms cover_1631372

def state_1631332 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 27 else (if j.val < 4 then 24 else 8)))
theorem cover_1631332 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1631332 := by
  apply coveredState_split_literal (state := state_1631332) 4
    state_1631333 state_1631372
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1631333
  · exact cover_1631372
#print axioms cover_1631332

def state_1631198 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 25) else (if j.val < 3 then 13 else (if j.val < 4 then 24 else 8)))
theorem cover_1631198 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1631198 := by
  apply coveredState_split_literal (state := state_1631198) 2
    state_1631199 state_1631332
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1631199
  · exact cover_1631332
#print axioms cover_1631198

def state_1631197 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 25) else (if j.val < 3 then 13 else (if j.val < 4 then 24 else 8)))
theorem cover_1631197 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1631197 := by
  apply coveredState_split_literal (state := state_1631197) 0
    state_1631198 state_1631733
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1631198
  · exact cover_1631733
#print axioms cover_1631197

def state_1631196 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 25) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 8)))
theorem cover_1631196 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1631196 := by
  apply coveredState_split_literal (state := state_1631196) 3
    state_1631197 state_1631748
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1631197
  · exact cover_1631748
#print axioms cover_1631196

def state_1631150 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 8)))
theorem cover_1631150 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1631150 := by
  apply coveredState_split_literal (state := state_1631150) 1
    state_1631151 state_1631196
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1631151
  · exact cover_1631196
#print axioms cover_1631150

def state_1631796 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 24) else (if j.val < 3 then 13 else (if j.val < 4 then 12 else 9)))
theorem cover_1631796 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1631796 := by
  apply coveredState_split_literal (state := state_1631796) 3
    state_1631797 state_1631834
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1631797
  · exact cover_1631834
#print axioms cover_1631796

def state_1631978 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 50) else (if j.val < 3 then 27 else (if j.val < 4 then 49 else 36)))
theorem cover_1631978 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1631978 := by
  apply coveredState_split_literal (state := state_1631978) 0
    state_1631979 state_1632034
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1631979
  · exact cover_1632034
#print axioms cover_1631978

def state_1632058 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 50) else (if j.val < 3 then 27 else (if j.val < 4 then 49 else 37)))
theorem cover_1632058 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1632058 := by
  apply coveredState_split_literal (state := state_1632058) 2
    state_1632059 state_1632070
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1632059
  · exact cover_1632070
#print axioms cover_1632058

def state_1632057 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 50) else (if j.val < 3 then 27 else (if j.val < 4 then 49 else 37)))
theorem cover_1632057 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1632057 := by
  apply coveredState_split_literal (state := state_1632057) 0
    state_1632058 state_1632125
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1632058
  · exact cover_1632125
#print axioms cover_1632057

def state_1631977 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 50) else (if j.val < 3 then 27 else (if j.val < 4 then 49 else 18)))
theorem cover_1631977 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1631977 := by
  apply coveredState_split_literal (state := state_1631977) 4
    state_1631978 state_1632057
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1631978
  · exact cover_1632057
#print axioms cover_1631977

def state_1632203 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 51) else (if j.val < 3 then 54 else (if j.val < 4 then 99 else 36)))
theorem cover_1632203 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1632203 := by
  apply coveredState_split_literal (state := state_1632203) 1
    state_1632204 state_1632265
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1632204
  · exact cover_1632265
#print axioms cover_1632203

def state_1632143 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 51) else (if j.val < 3 then 54 else (if j.val < 4 then 49 else 36)))
theorem cover_1632143 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1632143 := by
  apply coveredState_split_literal (state := state_1632143) 3
    state_1632144 state_1632203
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1632144
  · exact cover_1632203
#print axioms cover_1632143

def state_1632343 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 102) else (if j.val < 3 then 55 else (if j.val < 4 then 99 else 36)))
theorem cover_1632343 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1632343 := by
  apply coveredState_split_literal (state := state_1632343) 0
    state_1632344 state_1632383
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1632344
  · exact cover_1632383
#print axioms cover_1632343
end Mub6.Numerical.CircleFullD0.Forest
