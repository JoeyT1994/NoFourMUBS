import D0FullInterface
import D0ForestAssembly0009
import D0ForestChunk0020
import D0ForestChunk0021
import D0ForestChunk0022
import D0ForestChunk0023
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
def state_1486774 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 3)))
theorem cover_1486774 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486774 := by
  apply coveredState_split_literal (state := state_1486774) 4
    state_1486775 state_1488222
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1486775
  · exact cover_1488222
#print axioms cover_1486774

def state_1486773 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 3)))
theorem cover_1486773 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1486773 := by
  apply coveredState_split_literal (state := state_1486773) 3
    state_1486774 state_1489177
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1486774
  · exact cover_1489177
#print axioms cover_1486773

def state_1481333 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_1481333 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481333 := by
  apply coveredState_split_literal (state := state_1481333) 2
    state_1481334 state_1486773
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1481334
  · exact cover_1486773
#print axioms cover_1481333

def state_1490375 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 10) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 14)))
theorem cover_1490375 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1490375 := by
  apply coveredState_split_literal (state := state_1490375) 1
    state_1490376 state_1490757
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1490376
  · exact cover_1490757
#print axioms cover_1490375

def state_1489485 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 10) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 14)))
theorem cover_1489485 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1489485 := by
  apply coveredState_split_literal (state := state_1489485) 3
    state_1489486 state_1490375
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1489486
  · exact cover_1490375
#print axioms cover_1489485

def state_1489484 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 14)))
theorem cover_1489484 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1489484 := by
  apply coveredState_split_literal (state := state_1489484) 0
    state_1489485 state_1491526
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1489485
  · exact cover_1491526
#print axioms cover_1489484

def state_1489483 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 7)))
theorem cover_1489483 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1489483 := by
  apply coveredState_split_literal (state := state_1489483) 4
    state_1489484 state_1491731
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1489484
  · exact cover_1491731
#print axioms cover_1489483

def state_1489407 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 7)))
theorem cover_1489407 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1489407 := by
  apply coveredState_split_literal (state := state_1489407) 2
    state_1489408 state_1489483
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1489408
  · exact cover_1489483
#print axioms cover_1489407

def state_1489406 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 7)))
theorem cover_1489406 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1489406 := by
  apply coveredState_split_literal (state := state_1489406) 3
    state_1489407 state_1492128
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1489407
  · exact cover_1492128
#print axioms cover_1489406

def state_1492300 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 7)))
theorem cover_1492300 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1492300 := by
  apply coveredState_split_literal (state := state_1492300) 4
    state_1492301 state_1492742
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1492301
  · exact cover_1492742
#print axioms cover_1492300

def state_1492266 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 7)))
theorem cover_1492266 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1492266 := by
  apply coveredState_split_literal (state := state_1492266) 2
    state_1492267 state_1492300
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1492267
  · exact cover_1492300
#print axioms cover_1492266

def state_1492265 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 7)))
theorem cover_1492265 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1492265 := by
  apply coveredState_split_literal (state := state_1492265) 3
    state_1492266 state_1493697
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1492266
  · exact cover_1493697
#print axioms cover_1492265

def state_1489405 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 7)))
theorem cover_1489405 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1489405 := by
  apply coveredState_split_literal (state := state_1489405) 1
    state_1489406 state_1492265
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1489406
  · exact cover_1492265
#print axioms cover_1489405

def state_1489404 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 7)))
theorem cover_1489404 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1489404 := by
  apply coveredState_split_literal (state := state_1489404) 0
    state_1489405 state_1493766
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1489405
  · exact cover_1493766
#print axioms cover_1489404

def state_1489314 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 3)))
theorem cover_1489314 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1489314 := by
  apply coveredState_split_literal (state := state_1489314) 4
    state_1489315 state_1489404
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1489315
  · exact cover_1489404
#print axioms cover_1489314

def state_1489313 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 3)))
theorem cover_1489313 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1489313 := by
  apply coveredState_split_literal (state := state_1489313) 3
    state_1489314 state_1493833
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1489314
  · exact cover_1493833
#print axioms cover_1489313

def state_1495952 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 43) else (if j.val < 3 then 20 else (if j.val < 4 then 51 else 59)))
theorem cover_1495952 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1495952 := by
  apply coveredState_split_literal (state := state_1495952) 2
    state_1495953 state_1496940
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1495953
  · exact cover_1496940
#print axioms cover_1495952

def state_1495928 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 43) else (if j.val < 3 then 20 else (if j.val < 4 then 51 else 29)))
theorem cover_1495928 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1495928 := by
  apply coveredState_split_literal (state := state_1495928) 4
    state_1495929 state_1495952
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1495929
  · exact cover_1495952
#print axioms cover_1495928

def state_1494990 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 21) else (if j.val < 3 then 20 else (if j.val < 4 then 51 else 29)))
theorem cover_1494990 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1494990 := by
  apply coveredState_split_literal (state := state_1494990) 1
    state_1494991 state_1495928
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1494991
  · exact cover_1495928
#print axioms cover_1494990

def state_1494696 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 21) else (if j.val < 3 then 20 else (if j.val < 4 then 25 else 29)))
theorem cover_1494696 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1494696 := by
  apply coveredState_split_literal (state := state_1494696) 3
    state_1494697 state_1494990
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1494697
  · exact cover_1494990
#print axioms cover_1494696

def state_1494674 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 20 else (if j.val < 4 then 25 else 29)))
theorem cover_1494674 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1494674 := by
  apply coveredState_split_literal (state := state_1494674) 0
    state_1494675 state_1494696
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1494675
  · exact cover_1494696
#print axioms cover_1494674

def state_1494658 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 20 else (if j.val < 4 then 25 else 14)))
theorem cover_1494658 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1494658 := by
  apply coveredState_split_literal (state := state_1494658) 4
    state_1494659 state_1494674
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1494659
  · exact cover_1494674
#print axioms cover_1494658

def state_1494657 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 10 else (if j.val < 4 then 25 else 14)))
theorem cover_1494657 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1494657 := by
  apply coveredState_split_literal (state := state_1494657) 2
    state_1494658 state_1497021
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1494658
  · exact cover_1497021
#print axioms cover_1494657

def state_1494083 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 25 else 14)))
theorem cover_1494083 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1494083 := by
  apply coveredState_split_literal (state := state_1494083) 1
    state_1494084 state_1494657
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1494084
  · exact cover_1494657
#print axioms cover_1494083

def state_1494043 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 14)))
theorem cover_1494043 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1494043 := by
  apply coveredState_split_literal (state := state_1494043) 3
    state_1494044 state_1494083
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1494044
  · exact cover_1494083
#print axioms cover_1494043

def state_1497058 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 25 else 14)))
theorem cover_1497058 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1497058 := by
  apply coveredState_split_literal (state := state_1497058) 1
    state_1497059 state_1497224
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1497059
  · exact cover_1497224
#print axioms cover_1497058

def state_1497034 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 14)))
theorem cover_1497034 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1497034 := by
  apply coveredState_split_literal (state := state_1497034) 3
    state_1497035 state_1497058
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1497035
  · exact cover_1497058
#print axioms cover_1497034

def state_1494042 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 14)))
theorem cover_1494042 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1494042 := by
  apply coveredState_split_literal (state := state_1494042) 0
    state_1494043 state_1497034
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1494043
  · exact cover_1497034
#print axioms cover_1494042

def state_1498135 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 15)))
theorem cover_1498135 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1498135 := by
  apply coveredState_split_literal (state := state_1498135) 0
    state_1498136 state_1498915
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1498136
  · exact cover_1498915
#print axioms cover_1498135

def state_1494041 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 7)))
theorem cover_1494041 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1494041 := by
  apply coveredState_split_literal (state := state_1494041) 4
    state_1494042 state_1498135
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1494042
  · exact cover_1498135
#print axioms cover_1494041

def state_1500692 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 21) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 29)))
theorem cover_1500692 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1500692 := by
  apply coveredState_split_literal (state := state_1500692) 1
    state_1500693 state_1501474
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1500693
  · exact cover_1501474
#print axioms cover_1500692

def state_1500658 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 29)))
theorem cover_1500658 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1500658 := by
  apply coveredState_split_literal (state := state_1500658) 0
    state_1500659 state_1500692
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1500659
  · exact cover_1500692
#print axioms cover_1500658

def state_1500632 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 14)))
theorem cover_1500632 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1500632 := by
  apply coveredState_split_literal (state := state_1500632) 4
    state_1500633 state_1500658
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1500633
  · exact cover_1500658
#print axioms cover_1500632

def state_1500631 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 20 else (if j.val < 4 then 13 else 14)))
theorem cover_1500631 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1500631 := by
  apply coveredState_split_literal (state := state_1500631) 3
    state_1500632 state_1501999
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1500632
  · exact cover_1501999
#print axioms cover_1500631

def state_1500630 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 21) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 14)))
theorem cover_1500630 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1500630 := by
  apply coveredState_split_literal (state := state_1500630) 2
    state_1500631 state_1502010
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1500631
  · exact cover_1502010
#print axioms cover_1500630

def state_1499660 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 14)))
theorem cover_1499660 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1499660 := by
  apply coveredState_split_literal (state := state_1499660) 1
    state_1499661 state_1500630
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1499661
  · exact cover_1500630
#print axioms cover_1499660

def state_1502934 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 21) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 29)))
theorem cover_1502934 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1502934 := by
  apply coveredState_split_literal (state := state_1502934) 1
    state_1502935 state_1503716
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1502935
  · exact cover_1503716
#print axioms cover_1502934

def state_1502933 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 21) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 29)))
theorem cover_1502933 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1502933 := by
  apply coveredState_split_literal (state := state_1502933) 0
    state_1502934 state_1504317
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1502934
  · exact cover_1504317
#print axioms cover_1502933

def state_1502927 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 21) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 14)))
theorem cover_1502927 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1502927 := by
  apply coveredState_split_literal (state := state_1502927) 4
    state_1502928 state_1502933
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1502928
  · exact cover_1502933
#print axioms cover_1502927

def state_1502926 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 21) else (if j.val < 3 then 20 else (if j.val < 4 then 13 else 14)))
theorem cover_1502926 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1502926 := by
  apply coveredState_split_literal (state := state_1502926) 3
    state_1502927 state_1504356
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1502927
  · exact cover_1504356
#print axioms cover_1502926

def state_1502925 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 21) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 14)))
theorem cover_1502925 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1502925 := by
  apply coveredState_split_literal (state := state_1502925) 2
    state_1502926 state_1504373
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1502926
  · exact cover_1504373
#print axioms cover_1502925

def state_1502247 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 14)))
theorem cover_1502247 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1502247 := by
  apply coveredState_split_literal (state := state_1502247) 1
    state_1502248 state_1502925
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1502248
  · exact cover_1502925
#print axioms cover_1502247

def state_1499659 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 14)))
theorem cover_1499659 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1499659 := by
  apply coveredState_split_literal (state := state_1499659) 0
    state_1499660 state_1502247
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1499660
  · exact cover_1502247
#print axioms cover_1499659

def state_1505368 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 21) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 15)))
theorem cover_1505368 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1505368 := by
  apply coveredState_split_literal (state := state_1505368) 2
    state_1505369 state_1506390
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1505369
  · exact cover_1506390
#print axioms cover_1505368

def state_1505340 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 15)))
theorem cover_1505340 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1505340 := by
  apply coveredState_split_literal (state := state_1505340) 1
    state_1505341 state_1505368
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1505341
  · exact cover_1505368
#print axioms cover_1505340

def state_1504738 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 15)))
theorem cover_1504738 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1504738 := by
  apply coveredState_split_literal (state := state_1504738) 0
    state_1504739 state_1505340
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1504739
  · exact cover_1505340
#print axioms cover_1504738

def state_1499658 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 7)))
theorem cover_1499658 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1499658 := by
  apply coveredState_split_literal (state := state_1499658) 4
    state_1499659 state_1504738
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1499659
  · exact cover_1504738
#print axioms cover_1499658

def state_1494040 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 6 else 7)))
theorem cover_1494040 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1494040 := by
  apply coveredState_split_literal (state := state_1494040) 3
    state_1494041 state_1499658
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1494041
  · exact cover_1499658
#print axioms cover_1494040

def state_1494039 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 10) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 7)))
theorem cover_1494039 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1494039 := by
  apply coveredState_split_literal (state := state_1494039) 2
    state_1494040 state_1507397
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1494040
  · exact cover_1507397
#print axioms cover_1494039

def state_1508274 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 15)))
theorem cover_1508274 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1508274 := by
  apply coveredState_split_literal (state := state_1508274) 1
    state_1508275 state_1509244
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1508275
  · exact cover_1509244
#print axioms cover_1508274

def state_1507684 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 15)))
theorem cover_1507684 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1507684 := by
  apply coveredState_split_literal (state := state_1507684) 0
    state_1507685 state_1508274
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1507685
  · exact cover_1508274
#print axioms cover_1507684

def state_1507546 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 7)))
theorem cover_1507546 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1507546 := by
  apply coveredState_split_literal (state := state_1507546) 4
    state_1507547 state_1507684
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1507547
  · exact cover_1507684
#print axioms cover_1507546

def state_1510584 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 44) else (if j.val < 3 then 41 else (if j.val < 4 then 52 else 30)))
theorem cover_1510584 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1510584 := by
  apply coveredState_split_literal (state := state_1510584) 4
    state_1510585 state_1511490
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1510585
  · exact cover_1511490
#print axioms cover_1510584

def state_1510530 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 44) else (if j.val < 3 then 20 else (if j.val < 4 then 52 else 30)))
theorem cover_1510530 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1510530 := by
  apply coveredState_split_literal (state := state_1510530) 2
    state_1510531 state_1510584
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1510531
  · exact cover_1510584
#print axioms cover_1510530

def state_1510529 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 44) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 30)))
theorem cover_1510529 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1510529 := by
  apply coveredState_split_literal (state := state_1510529) 3
    state_1510530 state_1512303
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1510530
  · exact cover_1512303
#print axioms cover_1510529

def state_1510528 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 22) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 30)))
theorem cover_1510528 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1510528 := by
  apply coveredState_split_literal (state := state_1510528) 1
    state_1510529 state_1512592
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1510529
  · exact cover_1512592
#print axioms cover_1510528

def state_1510527 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 22) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 30)))
theorem cover_1510527 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1510527 := by
  apply coveredState_split_literal (state := state_1510527) 0
    state_1510528 state_1512747
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1510528
  · exact cover_1512747
#print axioms cover_1510527

def state_1510526 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 22) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 15)))
theorem cover_1510526 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1510526 := by
  apply coveredState_split_literal (state := state_1510526) 4
    state_1510527 state_1512792
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1510527
  · exact cover_1512792
#print axioms cover_1510526

def state_1510525 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 22) else (if j.val < 3 then 20 else (if j.val < 4 then 13 else 15)))
theorem cover_1510525 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1510525 := by
  apply coveredState_split_literal (state := state_1510525) 3
    state_1510526 state_1512949
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1510526
  · exact cover_1512949
#print axioms cover_1510525

def state_1513835 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 44) else (if j.val < 3 then 42 else (if j.val < 4 then 53 else 61)))
theorem cover_1513835 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1513835 := by
  apply coveredState_split_literal (state := state_1513835) 0
    state_1513836 state_1514669
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1513836
  · exact cover_1514669
#print axioms cover_1513835

def state_1513423 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 44) else (if j.val < 3 then 42 else (if j.val < 4 then 53 else 30)))
theorem cover_1513423 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1513423 := by
  apply coveredState_split_literal (state := state_1513423) 4
    state_1513424 state_1513835
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1513424
  · exact cover_1513835
#print axioms cover_1513423

def state_1512989 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 44) else (if j.val < 3 then 42 else (if j.val < 4 then 26 else 30)))
theorem cover_1512989 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1512989 := by
  apply coveredState_split_literal (state := state_1512989) 3
    state_1512990 state_1513423
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1512990
  · exact cover_1513423
#print axioms cover_1512989

def state_1512988 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 44) else (if j.val < 3 then 21 else (if j.val < 4 then 26 else 30)))
theorem cover_1512988 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1512988 := by
  apply coveredState_split_literal (state := state_1512988) 2
    state_1512989 state_1514938
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1512989
  · exact cover_1514938
#print axioms cover_1512988

def state_1512987 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 22) else (if j.val < 3 then 21 else (if j.val < 4 then 26 else 30)))
theorem cover_1512987 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1512987 := by
  apply coveredState_split_literal (state := state_1512987) 1
    state_1512988 state_1514999
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1512988
  · exact cover_1514999
#print axioms cover_1512987
end Mub6.Numerical.CircleFullD0.Forest
