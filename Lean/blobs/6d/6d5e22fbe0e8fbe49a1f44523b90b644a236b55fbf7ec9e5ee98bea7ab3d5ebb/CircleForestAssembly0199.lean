import CircleFullInterface
import CircleForestAssembly0189
import CircleForestAssembly0190
import CircleForestAssembly0193
import CircleForestAssembly0198
import CircleForestChunk0711
import CircleForestChunk0749
import CircleForestChunk0750
import CircleForestChunk0751
import CircleForestChunk0752
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1480709 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 9 else (if j.val < 4 then 23 else 15)))
theorem cover_1480709 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1480709 := by
  apply coveredState_split_literal (state := state_1480709) 2
    state_1480710 state_1480859
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1480710
  · exact cover_1480859
#print axioms cover_1480709

def state_1480681 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 9 else (if j.val < 4 then 11 else 15)))
theorem cover_1480681 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1480681 := by
  apply coveredState_split_literal (state := state_1480681) 3
    state_1480682 state_1480709
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1480682
  · exact cover_1480709
#print axioms cover_1480681

def state_1480680 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 11) else (if j.val < 3 then 9 else (if j.val < 4 then 11 else 15)))
theorem cover_1480680 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1480680 := by
  apply coveredState_split_literal (state := state_1480680) 1
    state_1480681 state_1480880
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1480681
  · exact cover_1480880
#print axioms cover_1480680

def state_1480899 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 11) else (if j.val < 3 then 9 else (if j.val < 4 then 11 else 15)))
theorem cover_1480899 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1480899 := by
  apply coveredState_split_literal (state := state_1480899) 1
    state_1480900 state_1480949
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1480900
  · exact cover_1480949
#print axioms cover_1480899

def state_1480679 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 9 else (if j.val < 4 then 11 else 15)))
theorem cover_1480679 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1480679 := by
  apply coveredState_split_literal (state := state_1480679) 0
    state_1480680 state_1480899
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1480680
  · exact cover_1480899
#print axioms cover_1480679

def state_1480259 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 9 else (if j.val < 4 then 11 else 7)))
theorem cover_1480259 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1480259 := by
  apply coveredState_split_literal (state := state_1480259) 4
    state_1480260 state_1480679
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1480260
  · exact cover_1480679
#print axioms cover_1480259

def state_1474757 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 7)))
theorem cover_1474757 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1474757 := by
  apply coveredState_split_literal (state := state_1474757) 2
    state_1474758 state_1480259
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1474758
  · exact cover_1480259
#print axioms cover_1474757

def state_1474519 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 7)))
theorem cover_1474519 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1474519 := by
  apply coveredState_split_literal (state := state_1474519) 3
    state_1474520 state_1474757
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1474520
  · exact cover_1474757
#print axioms cover_1474519

def state_1471787 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 7)))
theorem cover_1471787 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1471787 := by
  apply coveredState_split_literal (state := state_1471787) 1
    state_1471788 state_1474519
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1471788
  · exact cover_1474519
#print axioms cover_1471787

def state_1471786 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 7)))
theorem cover_1471786 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1471786 := by
  apply coveredState_split_literal (state := state_1471786) 0
    state_1471787 state_1480970
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1471787
  · exact cover_1480970
#print axioms cover_1471786

def state_1471578 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 5 else 3)))
theorem cover_1471578 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1471578 := by
  apply coveredState_split_literal (state := state_1471578) 4
    state_1471579 state_1471786
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1471579
  · exact cover_1471786
#print axioms cover_1471578

def state_1471528 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 2 else 3)))
theorem cover_1471528 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1471528 := by
  apply coveredState_split_literal (state := state_1471528) 3
    state_1471529 state_1471578
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1471529
  · exact cover_1471578
#print axioms cover_1471528

def state_1481033 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 3)))
theorem cover_1481033 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481033 := by
  apply coveredState_split_literal (state := state_1481033) 4
    state_1481034 state_1481043
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1481034
  · exact cover_1481043
#print axioms cover_1481033

def state_1481019 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 3)))
theorem cover_1481019 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481019 := by
  apply coveredState_split_literal (state := state_1481019) 3
    state_1481020 state_1481033
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1481020
  · exact cover_1481033
#print axioms cover_1481019

def state_1471527 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_1471527 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1471527 := by
  apply coveredState_split_literal (state := state_1471527) 2
    state_1471528 state_1481019
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1471528
  · exact cover_1481019
#print axioms cover_1471527

def state_1471355 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_1471355 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1471355 := by
  apply coveredState_split_literal (state := state_1471355) 1
    state_1471356 state_1471527
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1471356
  · exact cover_1471527
#print axioms cover_1471355

def state_1471354 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_1471354 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1471354 := by
  apply coveredState_split_literal (state := state_1471354) 0
    state_1471355 state_1481106
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1471355
  · exact cover_1481106
#print axioms cover_1471354

def state_1471200 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 1)))
theorem cover_1471200 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1471200 := by
  apply coveredState_split_literal (state := state_1471200) 4
    state_1471201 state_1471354
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1471201
  · exact cover_1471354
#print axioms cover_1471200

def state_1481203 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_1481203 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481203 := by
  apply coveredState_split_literal (state := state_1481203) 2
    state_1481204 state_1481225
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1481204
  · exact cover_1481225
#print axioms cover_1481203

def state_1481143 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_1481143 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481143 := by
  apply coveredState_split_literal (state := state_1481143) 1
    state_1481144 state_1481203
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1481144
  · exact cover_1481203
#print axioms cover_1481143

def state_1481142 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_1481142 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481142 := by
  apply coveredState_split_literal (state := state_1481142) 0
    state_1481143 state_1481288
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1481143
  · exact cover_1481288
#print axioms cover_1481142

def state_1481378 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 16) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 25)))
theorem cover_1481378 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481378 := by
  apply coveredState_split_literal (state := state_1481378) 3
    state_1481379 state_1481398
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1481379
  · exact cover_1481398
#print axioms cover_1481378

def state_1481377 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 16) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 25)))
theorem cover_1481377 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481377 := by
  apply coveredState_split_literal (state := state_1481377) 0
    state_1481378 state_1481445
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1481378
  · exact cover_1481445
#print axioms cover_1481377

def state_1481376 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 8) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 25)))
theorem cover_1481376 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481376 := by
  apply coveredState_split_literal (state := state_1481376) 1
    state_1481377 state_1481448
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1481377
  · exact cover_1481448
#print axioms cover_1481376

def state_1481484 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 32) else (if j.val < 3 then 38 else (if j.val < 4 then 103 else 51)))
theorem cover_1481484 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481484 := by
  apply coveredState_split_literal (state := state_1481484) 4
    state_1481485 state_1481500
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1481485
  · exact cover_1481500
#print axioms cover_1481484

def state_1481462 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 32) else (if j.val < 3 then 38 else (if j.val < 4 then 51 else 51)))
theorem cover_1481462 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481462 := by
  apply coveredState_split_literal (state := state_1481462) 3
    state_1481463 state_1481484
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1481463
  · exact cover_1481484
#print axioms cover_1481462

def state_1481461 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 32) else (if j.val < 3 then 38 else (if j.val < 4 then 51 else 51)))
theorem cover_1481461 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481461 := by
  apply coveredState_split_literal (state := state_1481461) 0
    state_1481462 state_1481555
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1481462
  · exact cover_1481555
#print axioms cover_1481461

def state_1481460 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 16) else (if j.val < 3 then 38 else (if j.val < 4 then 51 else 51)))
theorem cover_1481460 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481460 := by
  apply coveredState_split_literal (state := state_1481460) 1
    state_1481461 state_1481556
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1481461
  · exact cover_1481556
#print axioms cover_1481460

def state_1481459 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 16) else (if j.val < 3 then 19 else (if j.val < 4 then 51 else 51)))
theorem cover_1481459 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481459 := by
  apply coveredState_split_literal (state := state_1481459) 2
    state_1481460 state_1481591
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1481460
  · exact cover_1481591
#print axioms cover_1481459

def state_1481457 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 16) else (if j.val < 3 then 19 else (if j.val < 4 then 51 else 25)))
theorem cover_1481457 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481457 := by
  apply coveredState_split_literal (state := state_1481457) 4
    state_1481458 state_1481459
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1481458
  · exact cover_1481459
#print axioms cover_1481457

def state_1481455 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 16) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 25)))
theorem cover_1481455 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481455 := by
  apply coveredState_split_literal (state := state_1481455) 3
    state_1481456 state_1481457
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1481456
  · exact cover_1481457
#print axioms cover_1481455

def state_1481454 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 16) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 25)))
theorem cover_1481454 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481454 := by
  apply coveredState_split_literal (state := state_1481454) 0
    state_1481455 state_1481592
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1481455
  · exact cover_1481592
#print axioms cover_1481454
end Mub6.Numerical.CircleFullD0.Forest
