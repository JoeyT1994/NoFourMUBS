import D0FullInterface
import D0ForestAssembly0367
import D0ForestChunk1431
import D0ForestChunk1432
import D0ForestChunk1433
import D0ForestChunk1434
import D0ForestChunk1435
import D0ForestChunk1436
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1644593 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 100) else (if j.val < 3 then 60 else (if j.val < 4 then 103 else 80)))
theorem cover_1644593 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1644593 := by
  apply coveredState_split_literal (state := state_1644593) 2
    state_1644594 state_1644651
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1644594
  · exact cover_1644651
#print axioms cover_1644593

def state_1644592 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 100) else (if j.val < 3 then 60 else (if j.val < 4 then 103 else 40)))
theorem cover_1644592 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1644592 := by
  apply coveredState_split_literal (state := state_1644592) 4
    state_1644593 state_1644698
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1644593
  · exact cover_1644698
#print axioms cover_1644592

def state_1644536 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 100) else (if j.val < 3 then 60 else (if j.val < 4 then 103 else 40)))
theorem cover_1644536 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1644536 := by
  apply coveredState_split_literal (state := state_1644536) 0
    state_1644537 state_1644592
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1644537
  · exact cover_1644592
#print axioms cover_1644536

def state_1644508 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 100) else (if j.val < 3 then 60 else (if j.val < 4 then 51 else 40)))
theorem cover_1644508 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1644508 := by
  apply coveredState_split_literal (state := state_1644508) 3
    state_1644509 state_1644536
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1644509
  · exact cover_1644536
#print axioms cover_1644508

def state_1644743 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 101) else (if j.val < 3 then 60 else (if j.val < 4 then 51 else 40)))
theorem cover_1644743 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1644743 := by
  apply coveredState_split_literal (state := state_1644743) 3
    state_1644744 state_1644749
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1644744
  · exact cover_1644749
#print axioms cover_1644743

def state_1644507 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 50) else (if j.val < 3 then 60 else (if j.val < 4 then 51 else 40)))
theorem cover_1644507 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1644507 := by
  apply coveredState_split_literal (state := state_1644507) 1
    state_1644508 state_1644743
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1644508
  · exact cover_1644743
#print axioms cover_1644507

def state_1644808 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 50) else (if j.val < 3 then 61 else (if j.val < 4 then 51 else 40)))
theorem cover_1644808 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1644808 := by
  apply coveredState_split_literal (state := state_1644808) 1
    state_1644809 state_1644860
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1644809
  · exact cover_1644860
#print axioms cover_1644808

def state_1644506 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 50) else (if j.val < 3 then 30 else (if j.val < 4 then 51 else 40)))
theorem cover_1644506 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1644506 := by
  apply coveredState_split_literal (state := state_1644506) 2
    state_1644507 state_1644808
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1644507
  · exact cover_1644808
#print axioms cover_1644506

def state_1644874 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 50) else (if j.val < 3 then 60 else (if j.val < 4 then 51 else 41)))
theorem cover_1644874 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1644874 := by
  apply coveredState_split_literal (state := state_1644874) 1
    state_1644875 state_1644924
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1644875
  · exact cover_1644924
#print axioms cover_1644874

def state_1644873 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 50) else (if j.val < 3 then 30 else (if j.val < 4 then 51 else 41)))
theorem cover_1644873 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1644873 := by
  apply coveredState_split_literal (state := state_1644873) 2
    state_1644874 state_1644943
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1644874
  · exact cover_1644943
#print axioms cover_1644873

def state_1644505 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 50) else (if j.val < 3 then 30 else (if j.val < 4 then 51 else 20)))
theorem cover_1644505 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1644505 := by
  apply coveredState_split_literal (state := state_1644505) 4
    state_1644506 state_1644873
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1644506
  · exact cover_1644873
#print axioms cover_1644505

def state_1644473 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 50) else (if j.val < 3 then 30 else (if j.val < 4 then 51 else 20)))
theorem cover_1644473 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1644473 := by
  apply coveredState_split_literal (state := state_1644473) 0
    state_1644474 state_1644505
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1644474
  · exact cover_1644505
#print axioms cover_1644473

def state_1644463 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 50) else (if j.val < 3 then 30 else (if j.val < 4 then 25 else 20)))
theorem cover_1644463 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1644463 := by
  apply coveredState_split_literal (state := state_1644463) 3
    state_1644464 state_1644473
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1644464
  · exact cover_1644473
#print axioms cover_1644463

def state_1644462 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 30 else (if j.val < 4 then 25 else 20)))
theorem cover_1644462 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1644462 := by
  apply coveredState_split_literal (state := state_1644462) 1
    state_1644463 state_1644970
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1644463
  · exact cover_1644970
#print axioms cover_1644462

def state_1644461 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 25 else 20)))
theorem cover_1644461 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1644461 := by
  apply coveredState_split_literal (state := state_1644461) 2
    state_1644462 state_1645009
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1644462
  · exact cover_1645009
#print axioms cover_1644461

def state_1644460 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 25 else 10)))
theorem cover_1644460 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1644460 := by
  apply coveredState_split_literal (state := state_1644460) 4
    state_1644461 state_1645040
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1644461
  · exact cover_1645040
#print axioms cover_1644460

def state_1644444 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 25 else 10)))
theorem cover_1644444 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1644444 := by
  apply coveredState_split_literal (state := state_1644444) 0
    state_1644445 state_1644460
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1644445
  · exact cover_1644460
#print axioms cover_1644444

def state_1644438 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 25) else (if j.val < 3 then 15 else (if j.val < 4 then 12 else 10)))
theorem cover_1644438 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1644438 := by
  apply coveredState_split_literal (state := state_1644438) 3
    state_1644439 state_1644444
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1644439
  · exact cover_1644444
#print axioms cover_1644438

def state_1643882 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 15 else (if j.val < 4 then 12 else 10)))
theorem cover_1643882 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1643882 := by
  apply coveredState_split_literal (state := state_1643882) 1
    state_1643883 state_1644438
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1643883
  · exact cover_1644438
#print axioms cover_1643882

def state_1640878 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 12 else 10)))
theorem cover_1640878 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1640878 := by
  apply coveredState_split_literal (state := state_1640878) 2
    state_1640879 state_1643882
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1640879
  · exact cover_1643882
#print axioms cover_1640878

def state_1640877 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 7 else (if j.val < 4 then 12 else 5)))
theorem cover_1640877 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1640877 := by
  apply coveredState_split_literal (state := state_1640877) 4
    state_1640878 state_1645061
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1640878
  · exact cover_1645061
#print axioms cover_1640877

def state_1645085 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 26 else 10)))
theorem cover_1645085 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1645085 := by
  apply coveredState_split_literal (state := state_1645085) 4
    state_1645086 state_1645119
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1645086
  · exact cover_1645119
#print axioms cover_1645085

def state_1645084 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 24) else (if j.val < 3 then 14 else (if j.val < 4 then 13 else 10)))
theorem cover_1645084 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1645084 := by
  apply coveredState_split_literal (state := state_1645084) 3
    state_1645085 state_1645160
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1645085
  · exact cover_1645160
#print axioms cover_1645084

def state_1645243 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 49) else (if j.val < 3 then 29 else (if j.val < 4 then 52 else 20)))
theorem cover_1645243 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1645243 := by
  apply coveredState_split_literal (state := state_1645243) 2
    state_1645244 state_1645285
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1645244
  · exact cover_1645285
#print axioms cover_1645243

def state_1645242 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 49) else (if j.val < 3 then 29 else (if j.val < 4 then 26 else 20)))
theorem cover_1645242 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1645242 := by
  apply coveredState_split_literal (state := state_1645242) 3
    state_1645243 state_1645316
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1645243
  · exact cover_1645316
#print axioms cover_1645242

def state_1645442 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 99) else (if j.val < 3 then 59 else (if j.val < 4 then 104 else 41)))
theorem cover_1645442 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1645442 := by
  apply coveredState_split_literal (state := state_1645442) 2
    state_1645443 state_1645480
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1645443
  · exact cover_1645480
#print axioms cover_1645442

def state_1645441 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 99) else (if j.val < 3 then 59 else (if j.val < 4 then 52 else 41)))
theorem cover_1645441 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1645441 := by
  apply coveredState_split_literal (state := state_1645441) 3
    state_1645442 state_1645525
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1645442
  · exact cover_1645525
#print axioms cover_1645441

def state_1645554 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 99) else (if j.val < 3 then 59 else (if j.val < 4 then 52 else 41)))
theorem cover_1645554 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1645554 := by
  apply coveredState_split_literal (state := state_1645554) 3
    state_1645555 state_1645584
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1645555
  · exact cover_1645584
#print axioms cover_1645554

def state_1645440 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 99) else (if j.val < 3 then 59 else (if j.val < 4 then 52 else 41)))
theorem cover_1645440 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1645440 := by
  apply coveredState_split_literal (state := state_1645440) 0
    state_1645441 state_1645554
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1645441
  · exact cover_1645554
#print axioms cover_1645440

def state_1645396 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 49) else (if j.val < 3 then 59 else (if j.val < 4 then 52 else 41)))
theorem cover_1645396 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1645396 := by
  apply coveredState_split_literal (state := state_1645396) 1
    state_1645397 state_1645440
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1645397
  · exact cover_1645440
#print axioms cover_1645396

def state_1645366 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 49) else (if j.val < 3 then 59 else (if j.val < 4 then 52 else 20)))
theorem cover_1645366 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1645366 := by
  apply coveredState_split_literal (state := state_1645366) 4
    state_1645367 state_1645396
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1645367
  · exact cover_1645396
#print axioms cover_1645366

def state_1645318 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 49) else (if j.val < 3 then 29 else (if j.val < 4 then 52 else 20)))
theorem cover_1645318 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1645318 := by
  apply coveredState_split_literal (state := state_1645318) 2
    state_1645319 state_1645366
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1645319
  · exact cover_1645366
#print axioms cover_1645318
end Mub6.Numerical.CircleFullD0.Forest
