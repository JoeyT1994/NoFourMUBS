import CircleFullInterface
import CircleForestAssembly0017
import CircleForestChunk0071
import CircleForestChunk0072
import CircleForestChunk0073
import CircleForestChunk0074
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_17018 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 14) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 4)))
theorem cover_17018 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_17018 := by
  apply coveredState_split_literal (state := state_17018) 2
    state_17019 state_17128
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_17019
  · exact cover_17128
#print axioms cover_17018

def state_17017 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 4)))
theorem cover_17017 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_17017 := by
  apply coveredState_split_literal (state := state_17017) 1
    state_17018 state_17229
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_17018
  · exact cover_17229
#print axioms cover_17017

def state_17016 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 4)))
theorem cover_17016 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_17016 := by
  apply coveredState_split_literal (state := state_17016) 3
    state_17017 state_17248
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_17017
  · exact cover_17248
#print axioms cover_17016

def state_16966 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 4)))
theorem cover_16966 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_16966 := by
  apply coveredState_split_literal (state := state_16966) 0
    state_16967 state_17016
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_16967
  · exact cover_17016
#print axioms cover_16966

def state_17409 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 59) else (if j.val < 3 then 29 else (if j.val < 4 then 20 else 20)))
theorem cover_17409 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_17409 := by
  apply coveredState_split_literal (state := state_17409) 2
    state_17410 state_17433
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_17410
  · exact cover_17433
#print axioms cover_17409

def state_17365 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 29) else (if j.val < 3 then 29 else (if j.val < 4 then 20 else 20)))
theorem cover_17365 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_17365 := by
  apply coveredState_split_literal (state := state_17365) 1
    state_17366 state_17409
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_17366
  · exact cover_17409
#print axioms cover_17365

def state_17347 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 29) else (if j.val < 3 then 14 else (if j.val < 4 then 20 else 20)))
theorem cover_17347 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_17347 := by
  apply coveredState_split_literal (state := state_17347) 2
    state_17348 state_17365
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_17348
  · exact cover_17365
#print axioms cover_17347

def state_17331 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 20 else 20)))
theorem cover_17331 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_17331 := by
  apply coveredState_split_literal (state := state_17331) 1
    state_17332 state_17347
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_17332
  · exact cover_17347
#print axioms cover_17331

def state_17330 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 20 else 10)))
theorem cover_17330 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_17330 := by
  apply coveredState_split_literal (state := state_17330) 4
    state_17331 state_17488
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_17331
  · exact cover_17488
#print axioms cover_17330

def state_17329 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 10)))
theorem cover_17329 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_17329 := by
  apply coveredState_split_literal (state := state_17329) 3
    state_17330 state_17493
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_17330
  · exact cover_17493
#print axioms cover_17329

def state_17313 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 10)))
theorem cover_17313 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_17313 := by
  apply coveredState_split_literal (state := state_17313) 0
    state_17314 state_17329
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_17314
  · exact cover_17329
#print axioms cover_17313

def state_17525 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 29) else (if j.val < 3 then 30 else (if j.val < 4 then 20 else 20)))
theorem cover_17525 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_17525 := by
  apply coveredState_split_literal (state := state_17525) 1
    state_17526 state_17553
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_17526
  · exact cover_17553
#print axioms cover_17525

def state_17524 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 29) else (if j.val < 3 then 15 else (if j.val < 4 then 20 else 20)))
theorem cover_17524 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_17524 := by
  apply coveredState_split_literal (state := state_17524) 2
    state_17525 state_17602
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_17525
  · exact cover_17602
#print axioms cover_17524

def state_17518 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 14) else (if j.val < 3 then 15 else (if j.val < 4 then 20 else 20)))
theorem cover_17518 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_17518 := by
  apply coveredState_split_literal (state := state_17518) 1
    state_17519 state_17524
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_17519
  · exact cover_17524
#print axioms cover_17518

def state_17517 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 14) else (if j.val < 3 then 15 else (if j.val < 4 then 20 else 10)))
theorem cover_17517 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_17517 := by
  apply coveredState_split_literal (state := state_17517) 4
    state_17518 state_17607
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_17518
  · exact cover_17607
#print axioms cover_17517

def state_17516 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 14) else (if j.val < 3 then 15 else (if j.val < 4 then 10 else 10)))
theorem cover_17516 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_17516 := by
  apply coveredState_split_literal (state := state_17516) 3
    state_17517 state_17620
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_17517
  · exact cover_17620
#print axioms cover_17516

def state_17500 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 14) else (if j.val < 3 then 15 else (if j.val < 4 then 10 else 10)))
theorem cover_17500 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_17500 := by
  apply coveredState_split_literal (state := state_17500) 0
    state_17501 state_17516
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_17501
  · exact cover_17516
#print axioms cover_17500

def state_17312 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 14) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 10)))
theorem cover_17312 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_17312 := by
  apply coveredState_split_literal (state := state_17312) 2
    state_17313 state_17500
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_17313
  · exact cover_17500
#print axioms cover_17312

def state_17663 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 30) else (if j.val < 3 then 29 else (if j.val < 4 then 20 else 20)))
theorem cover_17663 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_17663 := by
  apply coveredState_split_literal (state := state_17663) 2
    state_17664 state_17693
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_17664
  · exact cover_17693
#print axioms cover_17663

def state_17662 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 15) else (if j.val < 3 then 29 else (if j.val < 4 then 20 else 20)))
theorem cover_17662 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_17662 := by
  apply coveredState_split_literal (state := state_17662) 1
    state_17663 state_17742
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_17663
  · exact cover_17742
#print axioms cover_17662

def state_17656 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 15) else (if j.val < 3 then 14 else (if j.val < 4 then 20 else 20)))
theorem cover_17656 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_17656 := by
  apply coveredState_split_literal (state := state_17656) 2
    state_17657 state_17662
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_17657
  · exact cover_17662
#print axioms cover_17656

def state_17655 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 15) else (if j.val < 3 then 14 else (if j.val < 4 then 20 else 10)))
theorem cover_17655 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_17655 := by
  apply coveredState_split_literal (state := state_17655) 4
    state_17656 state_17747
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_17656
  · exact cover_17747
#print axioms cover_17655

def state_17654 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 15) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 10)))
theorem cover_17654 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_17654 := by
  apply coveredState_split_literal (state := state_17654) 3
    state_17655 state_17762
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_17655
  · exact cover_17762
#print axioms cover_17654

def state_17638 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 15) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 10)))
theorem cover_17638 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_17638 := by
  apply coveredState_split_literal (state := state_17638) 0
    state_17639 state_17654
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_17639
  · exact cover_17654
#print axioms cover_17638

def state_17791 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 15) else (if j.val < 3 then 15 else (if j.val < 4 then 10 else 10)))
theorem cover_17791 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_17791 := by
  apply coveredState_split_literal (state := state_17791) 3
    state_17792 state_17841
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_17792
  · exact cover_17841
#print axioms cover_17791

def state_17777 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 15) else (if j.val < 3 then 15 else (if j.val < 4 then 10 else 10)))
theorem cover_17777 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_17777 := by
  apply coveredState_split_literal (state := state_17777) 0
    state_17778 state_17791
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_17778
  · exact cover_17791
#print axioms cover_17777

def state_17637 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 15) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 10)))
theorem cover_17637 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_17637 := by
  apply coveredState_split_literal (state := state_17637) 2
    state_17638 state_17777
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_17638
  · exact cover_17777
#print axioms cover_17637

def state_17311 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 10)))
theorem cover_17311 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_17311 := by
  apply coveredState_split_literal (state := state_17311) 1
    state_17312 state_17637
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_17312
  · exact cover_17637
#print axioms cover_17311

def state_17310 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 5)))
theorem cover_17310 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_17310 := by
  apply coveredState_split_literal (state := state_17310) 4
    state_17311 state_17878
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_17311
  · exact cover_17878
#print axioms cover_17310

def state_17309 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 5)))
theorem cover_17309 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_17309 := by
  apply coveredState_split_literal (state := state_17309) 3
    state_17310 state_17891
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_17310
  · exact cover_17891
#print axioms cover_17309

def state_17265 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 5)))
theorem cover_17265 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_17265 := by
  apply coveredState_split_literal (state := state_17265) 0
    state_17266 state_17309
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_17266
  · exact cover_17309
#print axioms cover_17265

def state_16965 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 2)))
theorem cover_16965 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_16965 := by
  apply coveredState_split_literal (state := state_16965) 4
    state_16966 state_17265
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_16966
  · exact cover_17265
#print axioms cover_16965
end Mub6.Numerical.CircleFullPrototype.Forest
