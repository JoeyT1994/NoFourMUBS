import D0FullInterface
import D0ForestAssembly0011
import D0ForestChunk0024
import D0ForestChunk0025
import D0ForestChunk0026
import D0ForestChunk0027
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
def state_1534437 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 4)))
theorem cover_1534437 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1534437 := by
  apply coveredState_split_literal (state := state_1534437) 4
    state_1534438 state_1535571
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1534438
  · exact cover_1535571
#print axioms cover_1534437

def state_1534423 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 4)))
theorem cover_1534423 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1534423 := by
  apply coveredState_split_literal (state := state_1534423) 3
    state_1534424 state_1534437
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1534424
  · exact cover_1534437
#print axioms cover_1534423

def state_1531357 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 4)))
theorem cover_1531357 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1531357 := by
  apply coveredState_split_literal (state := state_1531357) 2
    state_1531358 state_1534423
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1531358
  · exact cover_1534423
#print axioms cover_1531357

def state_1530907 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 4)))
theorem cover_1530907 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1530907 := by
  apply coveredState_split_literal (state := state_1530907) 1
    state_1530908 state_1531357
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1530908
  · exact cover_1531357
#print axioms cover_1530907

def state_1530906 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 4)))
theorem cover_1530906 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1530906 := by
  apply coveredState_split_literal (state := state_1530906) 0
    state_1530907 state_1535970
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1530907
  · exact cover_1535970
#print axioms cover_1530906

def state_1530905 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 2)))
theorem cover_1530905 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1530905 := by
  apply coveredState_split_literal (state := state_1530905) 4
    state_1530906 state_1536009
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1530906
  · exact cover_1536009
#print axioms cover_1530905

def state_1536126 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 13) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 4)))
theorem cover_1536126 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1536126 := by
  apply coveredState_split_literal (state := state_1536126) 2
    state_1536127 state_1536494
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1536127
  · exact cover_1536494
#print axioms cover_1536126

def state_1536102 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 4)))
theorem cover_1536102 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1536102 := by
  apply coveredState_split_literal (state := state_1536102) 1
    state_1536103 state_1536126
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1536103
  · exact cover_1536126
#print axioms cover_1536102

def state_1536101 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 4)))
theorem cover_1536101 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1536101 := by
  apply coveredState_split_literal (state := state_1536101) 0
    state_1536102 state_1537513
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1536102
  · exact cover_1537513
#print axioms cover_1536101

def state_1536100 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 2)))
theorem cover_1536100 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1536100 := by
  apply coveredState_split_literal (state := state_1536100) 4
    state_1536101 state_1537584
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1536101
  · exact cover_1537584
#print axioms cover_1536100

def state_1530904 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 2)))
theorem cover_1530904 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1530904 := by
  apply coveredState_split_literal (state := state_1530904) 3
    state_1530905 state_1536100
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1530905
  · exact cover_1536100
#print axioms cover_1530904

def state_1530903 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_1530903 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1530903 := by
  apply coveredState_split_literal (state := state_1530903) 2
    state_1530904 state_1537765
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1530904
  · exact cover_1537765
#print axioms cover_1530903

def state_1539169 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 25 else (if j.val < 4 then 9 else 10)))
theorem cover_1539169 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1539169 := by
  apply coveredState_split_literal (state := state_1539169) 4
    state_1539170 state_1539555
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1539170
  · exact cover_1539555
#print axioms cover_1539169

def state_1538275 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 10)))
theorem cover_1538275 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1538275 := by
  apply coveredState_split_literal (state := state_1538275) 2
    state_1538276 state_1539169
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1538276
  · exact cover_1539169
#print axioms cover_1538275

def state_1538274 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 10)))
theorem cover_1538274 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1538274 := by
  apply coveredState_split_literal (state := state_1538274) 0
    state_1538275 state_1540324
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1538275
  · exact cover_1540324
#print axioms cover_1538274

def state_1538212 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 10)))
theorem cover_1538212 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1538212 := by
  apply coveredState_split_literal (state := state_1538212) 3
    state_1538213 state_1538274
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1538213
  · exact cover_1538274
#print axioms cover_1538212

def state_1538211 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 10)))
theorem cover_1538211 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1538211 := by
  apply coveredState_split_literal (state := state_1538211) 1
    state_1538212 state_1540533
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1538212
  · exact cover_1540533
#print axioms cover_1538211

def state_1540944 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 11)))
theorem cover_1540944 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1540944 := by
  apply coveredState_split_literal (state := state_1540944) 1
    state_1540945 state_1541410
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1540945
  · exact cover_1541410
#print axioms cover_1540944

def state_1538210 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 5)))
theorem cover_1538210 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1538210 := by
  apply coveredState_split_literal (state := state_1538210) 4
    state_1538211 state_1540944
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1538211
  · exact cover_1540944
#print axioms cover_1538210

def state_1538209 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 5)))
theorem cover_1538209 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1538209 := by
  apply coveredState_split_literal (state := state_1538209) 2
    state_1538210 state_1542377
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1538210
  · exact cover_1542377
#print axioms cover_1538209

def state_1538208 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 5)))
theorem cover_1538208 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1538208 := by
  apply coveredState_split_literal (state := state_1538208) 0
    state_1538209 state_1542588
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1538209
  · exact cover_1542588
#print axioms cover_1538208

def state_1537912 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 2)))
theorem cover_1537912 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1537912 := by
  apply coveredState_split_literal (state := state_1537912) 4
    state_1537913 state_1538208
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1537913
  · exact cover_1538208
#print axioms cover_1537912

def state_1545498 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 59) else (if j.val < 3 then 51 else (if j.val < 4 then 20 else 43)))
theorem cover_1545498 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1545498 := by
  apply coveredState_split_literal (state := state_1545498) 3
    state_1545499 state_1546486
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1545499
  · exact cover_1546486
#print axioms cover_1545498

def state_1545474 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 51 else (if j.val < 4 then 20 else 43)))
theorem cover_1545474 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1545474 := by
  apply coveredState_split_literal (state := state_1545474) 1
    state_1545475 state_1545498
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1545475
  · exact cover_1545498
#print axioms cover_1545474

def state_1544536 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 51 else (if j.val < 4 then 20 else 21)))
theorem cover_1544536 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1544536 := by
  apply coveredState_split_literal (state := state_1544536) 4
    state_1544537 state_1545474
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1544537
  · exact cover_1545474
#print axioms cover_1544536

def state_1544242 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 25 else (if j.val < 4 then 20 else 21)))
theorem cover_1544242 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1544242 := by
  apply coveredState_split_literal (state := state_1544242) 2
    state_1544243 state_1544536
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1544243
  · exact cover_1544536
#print axioms cover_1544242

def state_1544220 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 25 else (if j.val < 4 then 20 else 21)))
theorem cover_1544220 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1544220 := by
  apply coveredState_split_literal (state := state_1544220) 0
    state_1544221 state_1544242
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1544221
  · exact cover_1544242
#print axioms cover_1544220

def state_1544204 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 25 else (if j.val < 4 then 20 else 21)))
theorem cover_1544204 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1544204 := by
  apply coveredState_split_literal (state := state_1544204) 1
    state_1544205 state_1544220
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1544205
  · exact cover_1544220
#print axioms cover_1544204

def state_1543648 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 25 else (if j.val < 4 then 20 else 10)))
theorem cover_1543648 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1543648 := by
  apply coveredState_split_literal (state := state_1543648) 4
    state_1543649 state_1544204
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1543649
  · exact cover_1544204
#print axioms cover_1543648

def state_1543647 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 25 else (if j.val < 4 then 10 else 10)))
theorem cover_1543647 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1543647 := by
  apply coveredState_split_literal (state := state_1543647) 3
    state_1543648 state_1546567
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1543648
  · exact cover_1546567
#print axioms cover_1543647

def state_1543605 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 12 else (if j.val < 4 then 10 else 10)))
theorem cover_1543605 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1543605 := by
  apply coveredState_split_literal (state := state_1543605) 2
    state_1543606 state_1543647
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1543606
  · exact cover_1543647
#print axioms cover_1543605

def state_1546617 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 14) else (if j.val < 3 then 25 else (if j.val < 4 then 20 else 10)))
theorem cover_1546617 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1546617 := by
  apply coveredState_split_literal (state := state_1546617) 4
    state_1546618 state_1546765
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1546618
  · exact cover_1546765
#print axioms cover_1546617

def state_1546616 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 14) else (if j.val < 3 then 25 else (if j.val < 4 then 10 else 10)))
theorem cover_1546616 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1546616 := by
  apply coveredState_split_literal (state := state_1546616) 3
    state_1546617 state_1547658
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1546617
  · exact cover_1547658
#print axioms cover_1546616

def state_1546594 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 14) else (if j.val < 3 then 12 else (if j.val < 4 then 10 else 10)))
theorem cover_1546594 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1546594 := by
  apply coveredState_split_literal (state := state_1546594) 2
    state_1546595 state_1546616
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1546595
  · exact cover_1546616
#print axioms cover_1546594

def state_1543604 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 12 else (if j.val < 4 then 10 else 10)))
theorem cover_1543604 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1543604 := by
  apply coveredState_split_literal (state := state_1543604) 0
    state_1543605 state_1546594
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1543605
  · exact cover_1546594
#print axioms cover_1543604

def state_1547689 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 12 else (if j.val < 4 then 10 else 10)))
theorem cover_1547689 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1547689 := by
  apply coveredState_split_literal (state := state_1547689) 0
    state_1547690 state_1548471
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1547690
  · exact cover_1548471
#print axioms cover_1547689

def state_1543603 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 12 else (if j.val < 4 then 10 else 10)))
theorem cover_1543603 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1543603 := by
  apply coveredState_split_literal (state := state_1543603) 1
    state_1543604 state_1547689
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1543604
  · exact cover_1547689
#print axioms cover_1543603

def state_1549944 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 12 else (if j.val < 4 then 10 else 11)))
theorem cover_1549944 : CoveredState d0Tables (toCarrier R carrier) T R targets
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
theorem cover_1549352 : CoveredState d0Tables (toCarrier R carrier) T R targets
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
theorem cover_1549216 : CoveredState d0Tables (toCarrier R carrier) T R targets
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
theorem cover_1543602 : CoveredState d0Tables (toCarrier R carrier) T R targets
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
theorem cover_1543601 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1543601 := by
  apply coveredState_split_literal (state := state_1543601) 3
    state_1543602 state_1550983
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1543602
  · exact cover_1550983
#print axioms cover_1543601

def state_1551857 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 52 else (if j.val < 4 then 20 else 21)))
theorem cover_1551857 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1551857 := by
  apply coveredState_split_literal (state := state_1551857) 4
    state_1551858 state_1552561
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1551858
  · exact cover_1552561
#print axioms cover_1551857

def state_1551856 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 21)))
theorem cover_1551856 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1551856 := by
  apply coveredState_split_literal (state := state_1551856) 2
    state_1551857 state_1553032
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1551857
  · exact cover_1553032
#print axioms cover_1551856

def state_1551822 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 21)))
theorem cover_1551822 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1551822 := by
  apply coveredState_split_literal (state := state_1551822) 0
    state_1551823 state_1551856
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1551823
  · exact cover_1551856
#print axioms cover_1551822

def state_1551798 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 21)))
theorem cover_1551798 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1551798 := by
  apply coveredState_split_literal (state := state_1551798) 1
    state_1551799 state_1551822
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1551799
  · exact cover_1551822
#print axioms cover_1551798

def state_1551006 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 10)))
theorem cover_1551006 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1551006 := by
  apply coveredState_split_literal (state := state_1551006) 4
    state_1551007 state_1551798
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1551007
  · exact cover_1551798
#print axioms cover_1551006

def state_1551005 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 26 else (if j.val < 4 then 10 else 10)))
theorem cover_1551005 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1551005 := by
  apply coveredState_split_literal (state := state_1551005) 3
    state_1551006 state_1553163
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1551006
  · exact cover_1553163
#print axioms cover_1551005

def state_1551004 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 14) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 10)))
theorem cover_1551004 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1551004 := by
  apply coveredState_split_literal (state := state_1551004) 2
    state_1551005 state_1553410
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1551005
  · exact cover_1553410
#print axioms cover_1551004

def state_1554043 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 29) else (if j.val < 3 then 52 else (if j.val < 4 then 20 else 21)))
theorem cover_1554043 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1554043 := by
  apply coveredState_split_literal (state := state_1554043) 4
    state_1554044 state_1554729
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1554044
  · exact cover_1554729
#print axioms cover_1554043

def state_1554042 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 29) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 21)))
theorem cover_1554042 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1554042 := by
  apply coveredState_split_literal (state := state_1554042) 2
    state_1554043 state_1555296
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1554043
  · exact cover_1555296
#print axioms cover_1554042

def state_1554041 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 29) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 21)))
theorem cover_1554041 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1554041 := by
  apply coveredState_split_literal (state := state_1554041) 0
    state_1554042 state_1555429
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1554042
  · exact cover_1555429
#print axioms cover_1554041

def state_1554033 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 14) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 21)))
theorem cover_1554033 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1554033 := by
  apply coveredState_split_literal (state := state_1554033) 1
    state_1554034 state_1554041
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1554034
  · exact cover_1554041
#print axioms cover_1554033

def state_1553587 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 14) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 10)))
theorem cover_1553587 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1553587 := by
  apply coveredState_split_literal (state := state_1553587) 4
    state_1553588 state_1554033
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1553588
  · exact cover_1554033
#print axioms cover_1553587

def state_1553586 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 14) else (if j.val < 3 then 26 else (if j.val < 4 then 10 else 10)))
theorem cover_1553586 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1553586 := by
  apply coveredState_split_literal (state := state_1553586) 3
    state_1553587 state_1555468
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1553587
  · exact cover_1555468
#print axioms cover_1553586

def state_1553585 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 14) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 10)))
theorem cover_1553585 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1553585 := by
  apply coveredState_split_literal (state := state_1553585) 2
    state_1553586 state_1555867
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1553586
  · exact cover_1555867
#print axioms cover_1553585

def state_1551003 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 10)))
theorem cover_1551003 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1551003 := by
  apply coveredState_split_literal (state := state_1551003) 0
    state_1551004 state_1553585
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1551004
  · exact cover_1553585
#print axioms cover_1551003

def state_1556679 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 26 else (if j.val < 4 then 10 else 10)))
theorem cover_1556679 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1556679 := by
  apply coveredState_split_literal (state := state_1556679) 3
    state_1556680 state_1557685
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1556680
  · exact cover_1557685
#print axioms cover_1556679

def state_1556678 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 10)))
theorem cover_1556678 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1556678 := by
  apply coveredState_split_literal (state := state_1556678) 2
    state_1556679 state_1558510
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1556679
  · exact cover_1558510
#print axioms cover_1556678

def state_1556086 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 10)))
theorem cover_1556086 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1556086 := by
  apply coveredState_split_literal (state := state_1556086) 0
    state_1556087 state_1556678
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1556087
  · exact cover_1556678
#print axioms cover_1556086

def state_1551002 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 10)))
theorem cover_1551002 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1551002 := by
  apply coveredState_split_literal (state := state_1551002) 1
    state_1551003 state_1556086
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1551003
  · exact cover_1556086
#print axioms cover_1551002

def state_1560022 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 52 else (if j.val < 4 then 41 else 44)))
theorem cover_1560022 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1560022 := by
  apply coveredState_split_literal (state := state_1560022) 1
    state_1560023 state_1560928
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1560023
  · exact cover_1560928
#print axioms cover_1560022

def state_1559968 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 52 else (if j.val < 4 then 20 else 44)))
theorem cover_1559968 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1559968 := by
  apply coveredState_split_literal (state := state_1559968) 3
    state_1559969 state_1560022
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1559969
  · exact cover_1560022
#print axioms cover_1559968

def state_1559967 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 44)))
theorem cover_1559967 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1559967 := by
  apply coveredState_split_literal (state := state_1559967) 2
    state_1559968 state_1561741
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1559968
  · exact cover_1561741
#print axioms cover_1559967
end Mub6.Numerical.CircleFullD0.Forest
