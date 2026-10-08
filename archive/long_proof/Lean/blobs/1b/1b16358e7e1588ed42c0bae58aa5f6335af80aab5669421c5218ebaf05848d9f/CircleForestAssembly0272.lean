import CircleFullInterface
import CircleForestAssembly0271
import CircleForestChunk1040
import CircleForestChunk1041
import CircleForestChunk1042
import CircleForestChunk1043
import CircleForestChunk1044
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1550111 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 102 else (if j.val < 4 then 40 else 44)))
theorem cover_1550111 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1550111 := by
  apply coveredState_split_literal (state := state_1550111) 4
    state_1550112 state_1550219
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1550112
  · exact cover_1550219
#print axioms cover_1550111

def state_1550277 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 121) else (if j.val < 3 then 103 else (if j.val < 4 then 81 else 88)))
theorem cover_1550277 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1550277 := by
  apply coveredState_split_literal (state := state_1550277) 0
    state_1550278 state_1550329
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1550278
  · exact cover_1550329
#print axioms cover_1550277

def state_1550241 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 103 else (if j.val < 4 then 81 else 88)))
theorem cover_1550241 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1550241 := by
  apply coveredState_split_literal (state := state_1550241) 1
    state_1550242 state_1550277
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1550242
  · exact cover_1550277
#print axioms cover_1550241

def state_1550235 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 103 else (if j.val < 4 then 40 else 88)))
theorem cover_1550235 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1550235 := by
  apply coveredState_split_literal (state := state_1550235) 3
    state_1550236 state_1550241
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1550236
  · exact cover_1550241
#print axioms cover_1550235

def state_1550234 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 103 else (if j.val < 4 then 40 else 44)))
theorem cover_1550234 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1550234 := by
  apply coveredState_split_literal (state := state_1550234) 4
    state_1550235 state_1550354
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1550235
  · exact cover_1550354
#print axioms cover_1550234

def state_1550110 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 51 else (if j.val < 4 then 40 else 44)))
theorem cover_1550110 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1550110 := by
  apply coveredState_split_literal (state := state_1550110) 2
    state_1550111 state_1550234
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1550111
  · exact cover_1550234
#print axioms cover_1550110

def state_1550109 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 60) else (if j.val < 3 then 51 else (if j.val < 4 then 40 else 44)))
theorem cover_1550109 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1550109 := by
  apply coveredState_split_literal (state := state_1550109) 0
    state_1550110 state_1550365
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1550110
  · exact cover_1550365
#print axioms cover_1550109

def state_1550383 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 61) else (if j.val < 3 then 51 else (if j.val < 4 then 40 else 44)))
theorem cover_1550383 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1550383 := by
  apply coveredState_split_literal (state := state_1550383) 2
    state_1550384 state_1550419
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1550384
  · exact cover_1550419
#print axioms cover_1550383

def state_1550382 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 61) else (if j.val < 3 then 51 else (if j.val < 4 then 40 else 44)))
theorem cover_1550382 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1550382 := by
  apply coveredState_split_literal (state := state_1550382) 0
    state_1550383 state_1550462
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1550383
  · exact cover_1550462
#print axioms cover_1550382

def state_1550108 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 51 else (if j.val < 4 then 40 else 44)))
theorem cover_1550108 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1550108 := by
  apply coveredState_split_literal (state := state_1550108) 1
    state_1550109 state_1550382
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1550109
  · exact cover_1550382
#print axioms cover_1550108

def state_1550507 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 121) else (if j.val < 3 then 103 else (if j.val < 4 then 82 else 88)))
theorem cover_1550507 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1550507 := by
  apply coveredState_split_literal (state := state_1550507) 0
    state_1550508 state_1550565
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1550508
  · exact cover_1550565
#print axioms cover_1550507

def state_1550489 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 103 else (if j.val < 4 then 82 else 88)))
theorem cover_1550489 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1550489 := by
  apply coveredState_split_literal (state := state_1550489) 1
    state_1550490 state_1550507
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1550490
  · exact cover_1550507
#print axioms cover_1550489

def state_1550488 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 103 else (if j.val < 4 then 41 else 88)))
theorem cover_1550488 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1550488 := by
  apply coveredState_split_literal (state := state_1550488) 3
    state_1550489 state_1550582
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1550489
  · exact cover_1550582
#print axioms cover_1550488

def state_1550487 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 103 else (if j.val < 4 then 41 else 44)))
theorem cover_1550487 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1550487 := by
  apply coveredState_split_literal (state := state_1550487) 4
    state_1550488 state_1550591
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1550488
  · exact cover_1550591
#print axioms cover_1550487

def state_1550477 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 60) else (if j.val < 3 then 51 else (if j.val < 4 then 41 else 44)))
theorem cover_1550477 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1550477 := by
  apply coveredState_split_literal (state := state_1550477) 2
    state_1550478 state_1550487
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1550478
  · exact cover_1550487
#print axioms cover_1550477

def state_1550476 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 60) else (if j.val < 3 then 51 else (if j.val < 4 then 41 else 44)))
theorem cover_1550476 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1550476 := by
  apply coveredState_split_literal (state := state_1550476) 0
    state_1550477 state_1550624
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1550477
  · exact cover_1550624
#print axioms cover_1550476

def state_1550639 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 61) else (if j.val < 3 then 51 else (if j.val < 4 then 41 else 44)))
theorem cover_1550639 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1550639 := by
  apply coveredState_split_literal (state := state_1550639) 0
    state_1550640 state_1550685
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1550640
  · exact cover_1550685
#print axioms cover_1550639

def state_1550475 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 51 else (if j.val < 4 then 41 else 44)))
theorem cover_1550475 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1550475 := by
  apply coveredState_split_literal (state := state_1550475) 1
    state_1550476 state_1550639
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1550476
  · exact cover_1550639
#print axioms cover_1550475

def state_1550107 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 51 else (if j.val < 4 then 20 else 44)))
theorem cover_1550107 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1550107 := by
  apply coveredState_split_literal (state := state_1550107) 3
    state_1550108 state_1550475
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1550108
  · exact cover_1550475
#print axioms cover_1550107

def state_1550714 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 51 else (if j.val < 4 then 20 else 45)))
theorem cover_1550714 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1550714 := by
  apply coveredState_split_literal (state := state_1550714) 3
    state_1550715 state_1550750
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1550715
  · exact cover_1550750
#print axioms cover_1550714

def state_1550106 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 51 else (if j.val < 4 then 20 else 22)))
theorem cover_1550106 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1550106 := by
  apply coveredState_split_literal (state := state_1550106) 4
    state_1550107 state_1550714
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1550107
  · exact cover_1550714
#print axioms cover_1550106

def state_1549978 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 25 else (if j.val < 4 then 20 else 22)))
theorem cover_1549978 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1549978 := by
  apply coveredState_split_literal (state := state_1549978) 2
    state_1549979 state_1550106
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1549979
  · exact cover_1550106
#print axioms cover_1549978

def state_1549977 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 30) else (if j.val < 3 then 25 else (if j.val < 4 then 20 else 22)))
theorem cover_1549977 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1549977 := by
  apply coveredState_split_literal (state := state_1549977) 0
    state_1549978 state_1550805
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1549978
  · exact cover_1550805
#print axioms cover_1549977

def state_1550836 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 31) else (if j.val < 3 then 25 else (if j.val < 4 then 20 else 22)))
theorem cover_1550836 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1550836 := by
  apply coveredState_split_literal (state := state_1550836) 0
    state_1550837 state_1550888
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1550837
  · exact cover_1550888
#print axioms cover_1550836

def state_1549976 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 25 else (if j.val < 4 then 20 else 22)))
theorem cover_1549976 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1549976 := by
  apply coveredState_split_literal (state := state_1549976) 1
    state_1549977 state_1550836
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1549977
  · exact cover_1550836
#print axioms cover_1549976

def state_1549975 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 25 else (if j.val < 4 then 10 else 22)))
theorem cover_1549975 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1549975 := by
  apply coveredState_split_literal (state := state_1549975) 3
    state_1549976 state_1550903
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1549976
  · exact cover_1550903
#print axioms cover_1549975

def state_1549974 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 25 else (if j.val < 4 then 10 else 11)))
theorem cover_1549974 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1549974 := by
  apply coveredState_split_literal (state := state_1549974) 4
    state_1549975 state_1550924
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1549975
  · exact cover_1550924
#print axioms cover_1549974

def state_1549944 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 12 else (if j.val < 4 then 10 else 11)))
theorem cover_1549944 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1549944 := by
  apply coveredState_split_literal (state := state_1549944) 2
    state_1549945 state_1549974
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1549945
  · exact cover_1549974
#print axioms cover_1549944

def state_1549352 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 12 else (if j.val < 4 then 10 else 11)))
theorem cover_1549352 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1549352 := by
  apply coveredState_split_literal (state := state_1549352) 0
    state_1549353 state_1549944
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1549353
  · exact cover_1549944
#print axioms cover_1549352

def state_1549216 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 12 else (if j.val < 4 then 10 else 11)))
theorem cover_1549216 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1549216 := by
  apply coveredState_split_literal (state := state_1549216) 1
    state_1549217 state_1549352
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1549217
  · exact cover_1549352
#print axioms cover_1549216

def state_1543602 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 12 else (if j.val < 4 then 10 else 5)))
theorem cover_1543602 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1543602 := by
  apply coveredState_split_literal (state := state_1543602) 4
    state_1543603 state_1549216
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1543603
  · exact cover_1549216
#print axioms cover_1543602

def state_1543601 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 12 else (if j.val < 4 then 5 else 5)))
theorem cover_1543601 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1543601 := by
  apply coveredState_split_literal (state := state_1543601) 3
    state_1543602 state_1550983
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1543602
  · exact cover_1550983
#print axioms cover_1543601
end Mub6.Numerical.CircleFullD0.Forest
