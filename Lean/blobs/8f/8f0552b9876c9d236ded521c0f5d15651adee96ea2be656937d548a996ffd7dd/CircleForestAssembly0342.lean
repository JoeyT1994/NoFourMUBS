import CircleFullInterface
import CircleForestAssembly0341
import CircleForestChunk1322
import CircleForestChunk1323
import CircleForestChunk1324
import CircleForestChunk1325
import CircleForestChunk1326
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1618138 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 11 else 8)))
theorem cover_1618138 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618138 := by
  apply coveredState_split_literal (state := state_1618138) 3
    state_1618139 state_1618144
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1618139
  · exact cover_1618144
#print axioms cover_1618138

def state_1618122 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 8)))
theorem cover_1618122 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618122 := by
  apply coveredState_split_literal (state := state_1618122) 2
    state_1618123 state_1618138
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1618123
  · exact cover_1618138
#print axioms cover_1618122

def state_1618104 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 8)))
theorem cover_1618104 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618104 := by
  apply coveredState_split_literal (state := state_1618104) 1
    state_1618105 state_1618122
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1618105
  · exact cover_1618122
#print axioms cover_1618104

def state_1618103 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 4)))
theorem cover_1618103 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618103 := by
  apply coveredState_split_literal (state := state_1618103) 4
    state_1618104 state_1618365
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1618104
  · exact cover_1618365
#print axioms cover_1618103

def state_1618093 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 4)))
theorem cover_1618093 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618093 := by
  apply coveredState_split_literal (state := state_1618093) 0
    state_1618094 state_1618103
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1618094
  · exact cover_1618103
#print axioms cover_1618093

def state_1618085 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 5 else 4)))
theorem cover_1618085 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618085 := by
  apply coveredState_split_literal (state := state_1618085) 3
    state_1618086 state_1618093
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1618086
  · exact cover_1618093
#print axioms cover_1618085

def state_1618446 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 26 else (if j.val < 4 then 47 else 16)))
theorem cover_1618446 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618446 := by
  apply coveredState_split_literal (state := state_1618446) 1
    state_1618447 state_1618472
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1618447
  · exact cover_1618472
#print axioms cover_1618446

def state_1618442 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 26 else (if j.val < 4 then 23 else 16)))
theorem cover_1618442 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618442 := by
  apply coveredState_split_literal (state := state_1618442) 3
    state_1618443 state_1618446
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1618443
  · exact cover_1618446
#print axioms cover_1618442

def state_1618441 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 26 else (if j.val < 4 then 23 else 8)))
theorem cover_1618441 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618441 := by
  apply coveredState_split_literal (state := state_1618441) 4
    state_1618442 state_1618519
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1618442
  · exact cover_1618519
#print axioms cover_1618441

def state_1618594 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 51) else (if j.val < 3 then 52 else (if j.val < 4 then 95 else 32)))
theorem cover_1618594 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618594 := by
  apply coveredState_split_literal (state := state_1618594) 1
    state_1618595 state_1618632
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1618595
  · exact cover_1618632
#print axioms cover_1618594

def state_1618582 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 51) else (if j.val < 3 then 52 else (if j.val < 4 then 47 else 32)))
theorem cover_1618582 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618582 := by
  apply coveredState_split_literal (state := state_1618582) 3
    state_1618583 state_1618594
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1618583
  · exact cover_1618594
#print axioms cover_1618582

def state_1618581 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 51) else (if j.val < 3 then 52 else (if j.val < 4 then 47 else 16)))
theorem cover_1618581 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618581 := by
  apply coveredState_split_literal (state := state_1618581) 4
    state_1618582 state_1618687
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1618582
  · exact cover_1618687
#print axioms cover_1618581

def state_1618580 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 51) else (if j.val < 3 then 52 else (if j.val < 4 then 47 else 16)))
theorem cover_1618580 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618580 := by
  apply coveredState_split_literal (state := state_1618580) 0
    state_1618581 state_1618750
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1618581
  · exact cover_1618750
#print axioms cover_1618580

def state_1618579 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 51) else (if j.val < 3 then 26 else (if j.val < 4 then 47 else 16)))
theorem cover_1618579 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618579 := by
  apply coveredState_split_literal (state := state_1618579) 2
    state_1618580 state_1618771
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1618580
  · exact cover_1618771
#print axioms cover_1618579

def state_1618539 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 26 else (if j.val < 4 then 47 else 16)))
theorem cover_1618539 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618539 := by
  apply coveredState_split_literal (state := state_1618539) 1
    state_1618540 state_1618579
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1618540
  · exact cover_1618579
#print axioms cover_1618539

def state_1618527 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 26 else (if j.val < 4 then 23 else 16)))
theorem cover_1618527 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618527 := by
  apply coveredState_split_literal (state := state_1618527) 3
    state_1618528 state_1618539
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1618528
  · exact cover_1618539
#print axioms cover_1618527

def state_1618526 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 26 else (if j.val < 4 then 23 else 8)))
theorem cover_1618526 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618526 := by
  apply coveredState_split_literal (state := state_1618526) 4
    state_1618527 state_1618780
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1618527
  · exact cover_1618780
#print axioms cover_1618526

def state_1618440 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 26 else (if j.val < 4 then 23 else 8)))
theorem cover_1618440 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618440 := by
  apply coveredState_split_literal (state := state_1618440) 0
    state_1618441 state_1618526
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1618441
  · exact cover_1618526
#print axioms cover_1618440

def state_1618439 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 13 else (if j.val < 4 then 23 else 8)))
theorem cover_1618439 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618439 := by
  apply coveredState_split_literal (state := state_1618439) 2
    state_1618440 state_1618841
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1618440
  · exact cover_1618841
#print axioms cover_1618439

def state_1618429 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 13 else (if j.val < 4 then 11 else 8)))
theorem cover_1618429 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618429 := by
  apply coveredState_split_literal (state := state_1618429) 3
    state_1618430 state_1618439
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1618430
  · exact cover_1618439
#print axioms cover_1618429

def state_1618389 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 11 else 8)))
theorem cover_1618389 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618389 := by
  apply coveredState_split_literal (state := state_1618389) 1
    state_1618390 state_1618429
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1618390
  · exact cover_1618429
#print axioms cover_1618389

def state_1618388 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 11 else 4)))
theorem cover_1618388 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618388 := by
  apply coveredState_split_literal (state := state_1618388) 4
    state_1618389 state_1618850
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1618389
  · exact cover_1618850
#print axioms cover_1618388

def state_1618376 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 11 else 4)))
theorem cover_1618376 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618376 := by
  apply coveredState_split_literal (state := state_1618376) 0
    state_1618377 state_1618388
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1618377
  · exact cover_1618388
#print axioms cover_1618376

def state_1618374 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 13 else (if j.val < 4 then 5 else 4)))
theorem cover_1618374 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618374 := by
  apply coveredState_split_literal (state := state_1618374) 3
    state_1618375 state_1618376
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1618375
  · exact cover_1618376
#print axioms cover_1618374

def state_1618084 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 12) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 4)))
theorem cover_1618084 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618084 := by
  apply coveredState_split_literal (state := state_1618084) 2
    state_1618085 state_1618374
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1618085
  · exact cover_1618374
#print axioms cover_1618084

def state_1618943 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 26) else (if j.val < 3 then 25 else (if j.val < 4 then 23 else 8)))
theorem cover_1618943 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618943 := by
  apply coveredState_split_literal (state := state_1618943) 4
    state_1618944 state_1619005
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1618944
  · exact cover_1619005
#print axioms cover_1618943

def state_1619013 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 25 else (if j.val < 4 then 23 else 16)))
theorem cover_1619013 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1619013 := by
  apply coveredState_split_literal (state := state_1619013) 3
    state_1619014 state_1619019
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1619014
  · exact cover_1619019
#print axioms cover_1619013

def state_1619012 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 26) else (if j.val < 3 then 25 else (if j.val < 4 then 23 else 8)))
theorem cover_1619012 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1619012 := by
  apply coveredState_split_literal (state := state_1619012) 4
    state_1619013 state_1619080
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1619013
  · exact cover_1619080
#print axioms cover_1619012

def state_1618942 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 26) else (if j.val < 3 then 25 else (if j.val < 4 then 23 else 8)))
theorem cover_1618942 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618942 := by
  apply coveredState_split_literal (state := state_1618942) 0
    state_1618943 state_1619012
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1618943
  · exact cover_1619012
#print axioms cover_1618942

def state_1618941 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 25 else (if j.val < 4 then 23 else 8)))
theorem cover_1618941 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618941 := by
  apply coveredState_split_literal (state := state_1618941) 1
    state_1618942 state_1619087
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1618942
  · exact cover_1619087
#print axioms cover_1618941

def state_1618935 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 25 else (if j.val < 4 then 11 else 8)))
theorem cover_1618935 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618935 := by
  apply coveredState_split_literal (state := state_1618935) 3
    state_1618936 state_1618941
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1618936
  · exact cover_1618941
#print axioms cover_1618935

def state_1618905 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 13) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 8)))
theorem cover_1618905 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1618905 := by
  apply coveredState_split_literal (state := state_1618905) 2
    state_1618906 state_1618935
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1618906
  · exact cover_1618935
#print axioms cover_1618905
end Mub6.Numerical.CircleFullD0.Forest
