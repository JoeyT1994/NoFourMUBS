import D0FullInterface
import D0ForestAssembly0009
import D0ForestAssembly0011
import D0ForestAssembly0012
import D0ForestChunk0025
import D0ForestChunk0027
import D0ForestChunk0028
import D0ForestChunk0029
import D0ForestChunk0030
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
def state_1559966 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 22)))
theorem cover_1559966 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1559966 := by
  apply coveredState_split_literal (state := state_1559966) 4
    state_1559967 state_1562030
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1559967
  · exact cover_1562030
#print axioms cover_1559966

def state_1559965 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 30) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 22)))
theorem cover_1559965 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1559965 := by
  apply coveredState_split_literal (state := state_1559965) 0
    state_1559966 state_1562185
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1559966
  · exact cover_1562185
#print axioms cover_1559965

def state_1559964 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 26 else (if j.val < 4 then 20 else 22)))
theorem cover_1559964 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1559964 := by
  apply coveredState_split_literal (state := state_1559964) 1
    state_1559965 state_1562230
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1559965
  · exact cover_1562230
#print axioms cover_1559964

def state_1563243 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 61) else (if j.val < 3 then 53 else (if j.val < 4 then 42 else 44)))
theorem cover_1563243 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1563243 := by
  apply coveredState_split_literal (state := state_1563243) 0
    state_1563244 state_1564073
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1563244
  · exact cover_1564073
#print axioms cover_1563243

def state_1562831 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 53 else (if j.val < 4 then 42 else 44)))
theorem cover_1562831 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1562831 := by
  apply coveredState_split_literal (state := state_1562831) 1
    state_1562832 state_1563243
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1562832
  · exact cover_1563243
#print axioms cover_1562831

def state_1562830 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 53 else (if j.val < 4 then 21 else 44)))
theorem cover_1562830 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1562830 := by
  apply coveredState_split_literal (state := state_1562830) 3
    state_1562831 state_1564338
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1562831
  · exact cover_1564338
#print axioms cover_1562830

def state_1562390 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 26 else (if j.val < 4 then 21 else 44)))
theorem cover_1562390 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1562390 := by
  apply coveredState_split_literal (state := state_1562390) 2
    state_1562391 state_1562830
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1562391
  · exact cover_1562830
#print axioms cover_1562390

def state_1562389 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 26 else (if j.val < 4 then 21 else 22)))
theorem cover_1562389 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1562389 := by
  apply coveredState_split_literal (state := state_1562389) 4
    state_1562390 state_1564393
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1562390
  · exact cover_1564393
#print axioms cover_1562389

def state_1562388 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 30) else (if j.val < 3 then 26 else (if j.val < 4 then 21 else 22)))
theorem cover_1562388 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1562388 := by
  apply coveredState_split_literal (state := state_1562388) 0
    state_1562389 state_1564698
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1562389
  · exact cover_1564698
#print axioms cover_1562388

def state_1562387 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 26 else (if j.val < 4 then 21 else 22)))
theorem cover_1562387 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1562387 := by
  apply coveredState_split_literal (state := state_1562387) 1
    state_1562388 state_1564789
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1562388
  · exact cover_1564789
#print axioms cover_1562387

def state_1559963 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 26 else (if j.val < 4 then 10 else 22)))
theorem cover_1559963 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1559963 := by
  apply coveredState_split_literal (state := state_1559963) 3
    state_1559964 state_1562387
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1559964
  · exact cover_1562387
#print axioms cover_1559963

def state_1565416 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 27 else (if j.val < 4 then 21 else 22)))
theorem cover_1565416 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1565416 := by
  apply coveredState_split_literal (state := state_1565416) 1
    state_1565417 state_1565914
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1565417
  · exact cover_1565914
#print axioms cover_1565416

def state_1565382 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 27 else (if j.val < 4 then 10 else 22)))
theorem cover_1565382 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1565382 := by
  apply coveredState_split_literal (state := state_1565382) 3
    state_1565383 state_1565416
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1565383
  · exact cover_1565416
#print axioms cover_1565382

def state_1559962 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 22)))
theorem cover_1559962 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1559962 := by
  apply coveredState_split_literal (state := state_1559962) 2
    state_1559963 state_1565382
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1559963
  · exact cover_1565382
#print axioms cover_1559962

def state_1559961 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 11)))
theorem cover_1559961 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1559961 := by
  apply coveredState_split_literal (state := state_1559961) 4
    state_1559962 state_1566785
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1559962
  · exact cover_1566785
#print axioms cover_1559961

def state_1559021 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 11)))
theorem cover_1559021 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1559021 := by
  apply coveredState_split_literal (state := state_1559021) 0
    state_1559022 state_1559961
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1559022
  · exact cover_1559961
#print axioms cover_1559021

def state_1558749 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 11)))
theorem cover_1558749 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1558749 := by
  apply coveredState_split_literal (state := state_1558749) 1
    state_1558750 state_1559021
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1558750
  · exact cover_1559021
#print axioms cover_1558749

def state_1551001 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 10 else 5)))
theorem cover_1551001 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1551001 := by
  apply coveredState_split_literal (state := state_1551001) 4
    state_1551002 state_1558749
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1551002
  · exact cover_1558749
#print axioms cover_1551001

def state_1551000 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 5 else 5)))
theorem cover_1551000 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1551000 := by
  apply coveredState_split_literal (state := state_1551000) 3
    state_1551001 state_1567380
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1551001
  · exact cover_1567380
#print axioms cover_1551000

def state_1543600 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 5)))
theorem cover_1543600 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1543600 := by
  apply coveredState_split_literal (state := state_1543600) 2
    state_1543601 state_1551000
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1543601
  · exact cover_1551000
#print axioms cover_1543600

def state_1543599 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 5)))
theorem cover_1543599 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1543599 := by
  apply coveredState_split_literal (state := state_1543599) 0
    state_1543600 state_1567909
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1543600
  · exact cover_1567909
#print axioms cover_1543599

def state_1542655 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 5 else 2)))
theorem cover_1542655 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1542655 := by
  apply coveredState_split_literal (state := state_1542655) 4
    state_1542656 state_1543599
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1542656
  · exact cover_1543599
#print axioms cover_1542655

def state_1537911 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 2)))
theorem cover_1537911 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1537911 := by
  apply coveredState_split_literal (state := state_1537911) 3
    state_1537912 state_1542655
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1537912
  · exact cover_1542655
#print axioms cover_1537911

def state_1537910 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_1537910 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1537910 := by
  apply coveredState_split_literal (state := state_1537910) 2
    state_1537911 state_1568260
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1537911
  · exact cover_1568260
#print axioms cover_1537910

def state_1530902 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_1530902 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1530902 := by
  apply coveredState_split_literal (state := state_1530902) 1
    state_1530903 state_1537910
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1530903
  · exact cover_1537910
#print axioms cover_1530902

def state_1530901 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_1530901 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1530901 := by
  apply coveredState_split_literal (state := state_1530901) 0
    state_1530902 state_1569195
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1530902
  · exact cover_1569195
#print axioms cover_1530901

def state_1530900 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 1)))
theorem cover_1530900 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1530900 := by
  apply coveredState_split_literal (state := state_1530900) 4
    state_1530901 state_1569324
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1530901
  · exact cover_1569324
#print axioms cover_1530900

def state_1530899 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
theorem cover_1530899 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1530899 := by
  apply coveredState_split_literal (state := state_1530899) 3
    state_1530900 state_1569581
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1530900
  · exact cover_1569581
#print axioms cover_1530899

def state_1520461 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_1520461 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1520461 := by
  apply coveredState_split_literal (state := state_1520461) 2
    state_1520462 state_1530899
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1520462
  · exact cover_1530899
#print axioms cover_1520461

def state_1471197 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 1) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_1471197 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1471197 := by
  apply coveredState_split_literal (state := state_1471197) 1
    state_1471198 state_1520461
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1471198
  · exact cover_1520461
#print axioms cover_1471197

def state_1458683 : State := rootState
theorem cover_1458683 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1458683 := by
  apply coveredState_split_literal (state := state_1458683) 0
    state_1458684 state_1471197
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1458684
  · exact cover_1471197
#print axioms cover_1458683

def state_1570679 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 11 else (if j.val < 4 then 6 else 6)))
theorem cover_1570679 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1570679 := by
  apply coveredState_split_literal (state := state_1570679) 3
    state_1570680 state_1571173
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1570680
  · exact cover_1571173
#print axioms cover_1570679

def state_1570651 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 6)))
theorem cover_1570651 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1570651 := by
  apply coveredState_split_literal (state := state_1570651) 2
    state_1570652 state_1570679
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1570652
  · exact cover_1570679
#print axioms cover_1570651

def state_1570650 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 3)))
theorem cover_1570650 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1570650 := by
  apply coveredState_split_literal (state := state_1570650) 4
    state_1570651 state_1571982
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1570651
  · exact cover_1571982
#print axioms cover_1570650

def state_1570649 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 3)))
theorem cover_1570649 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1570649 := by
  apply coveredState_split_literal (state := state_1570649) 3
    state_1570650 state_1572013
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1570650
  · exact cover_1572013
#print axioms cover_1570649

def state_1570635 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_1570635 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1570635 := by
  apply coveredState_split_literal (state := state_1570635) 2
    state_1570636 state_1570649
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1570636
  · exact cover_1570649
#print axioms cover_1570635

def state_1570634 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_1570634 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1570634 := by
  apply coveredState_split_literal (state := state_1570634) 1
    state_1570635 state_1572062
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1570635
  · exact cover_1572062
#print axioms cover_1570634

def state_1570633 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_1570633 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1570633 := by
  apply coveredState_split_literal (state := state_1570633) 0
    state_1570634 state_1572111
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1570634
  · exact cover_1572111
#print axioms cover_1570633

def state_1570409 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 1)))
theorem cover_1570409 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1570409 := by
  apply coveredState_split_literal (state := state_1570409) 4
    state_1570410 state_1570633
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1570410
  · exact cover_1570633
#print axioms cover_1570409

def state_1570135 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_1570135 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1570135 := by
  apply coveredState_split_literal (state := state_1570135) 3
    state_1570136 state_1570409
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1570136
  · exact cover_1570409
#print axioms cover_1570135

def state_1574389 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 2)))
theorem cover_1574389 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1574389 := by
  apply coveredState_split_literal (state := state_1574389) 3
    state_1574390 state_1575169
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1574390
  · exact cover_1575169
#print axioms cover_1574389

def state_1573477 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_1573477 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1573477 := by
  apply coveredState_split_literal (state := state_1573477) 2
    state_1573478 state_1574389
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1573478
  · exact cover_1574389
#print axioms cover_1573477

def state_1573187 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_1573187 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1573187 := by
  apply coveredState_split_literal (state := state_1573187) 1
    state_1573188 state_1573477
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1573188
  · exact cover_1573477
#print axioms cover_1573187

def state_1572863 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_1572863 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1572863 := by
  apply coveredState_split_literal (state := state_1572863) 0
    state_1572864 state_1573187
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1572864
  · exact cover_1573187
#print axioms cover_1572863

def state_1576121 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 6)))
theorem cover_1576121 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1576121 := by
  apply coveredState_split_literal (state := state_1576121) 4
    state_1576122 state_1576737
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1576122
  · exact cover_1576737
#print axioms cover_1576121

def state_1578861 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 33) else (if j.val < 3 then 96 else (if j.val < 4 then 52 else 103)))
theorem cover_1578861 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1578861 := by
  apply coveredState_split_literal (state := state_1578861) 3
    state_1578862 state_1579481
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1578862
  · exact cover_1579481
#print axioms cover_1578861

def state_1578673 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 33) else (if j.val < 3 then 96 else (if j.val < 4 then 52 else 51)))
theorem cover_1578673 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1578673 := by
  apply coveredState_split_literal (state := state_1578673) 4
    state_1578674 state_1578861
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1578674
  · exact cover_1578861
#print axioms cover_1578673

def state_1578672 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 33) else (if j.val < 3 then 48 else (if j.val < 4 then 52 else 51)))
theorem cover_1578672 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1578672 := by
  apply coveredState_split_literal (state := state_1578672) 2
    state_1578673 state_1580136
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1578673
  · exact cover_1580136
#print axioms cover_1578672

def state_1577752 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 16) else (if j.val < 3 then 48 else (if j.val < 4 then 52 else 51)))
theorem cover_1577752 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1577752 := by
  apply coveredState_split_literal (state := state_1577752) 1
    state_1577753 state_1578672
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1577753
  · exact cover_1578672
#print axioms cover_1577752

def state_1577751 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 16) else (if j.val < 3 then 48 else (if j.val < 4 then 52 else 51)))
theorem cover_1577751 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1577751 := by
  apply coveredState_split_literal (state := state_1577751) 0
    state_1577752 state_1580525
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1577752
  · exact cover_1580525
#print axioms cover_1577751

def state_1577750 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 16) else (if j.val < 3 then 48 else (if j.val < 4 then 26 else 51)))
theorem cover_1577750 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1577750 := by
  apply coveredState_split_literal (state := state_1577750) 3
    state_1577751 state_1580740
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1577751
  · exact cover_1580740
#print axioms cover_1577750

def state_1577658 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 16) else (if j.val < 3 then 48 else (if j.val < 4 then 26 else 25)))
theorem cover_1577658 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1577658 := by
  apply coveredState_split_literal (state := state_1577658) 4
    state_1577659 state_1577750
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1577659
  · exact cover_1577750
#print axioms cover_1577658

def state_1577657 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 16) else (if j.val < 3 then 24 else (if j.val < 4 then 26 else 25)))
theorem cover_1577657 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1577657 := by
  apply coveredState_split_literal (state := state_1577657) 2
    state_1577658 state_1581093
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1577658
  · exact cover_1581093
#print axioms cover_1577657

def state_1581263 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 17) else (if j.val < 3 then 48 else (if j.val < 4 then 26 else 51)))
theorem cover_1581263 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1581263 := by
  apply coveredState_split_literal (state := state_1581263) 3
    state_1581264 state_1581611
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1581264
  · exact cover_1581611
#print axioms cover_1581263

def state_1581167 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 17) else (if j.val < 3 then 48 else (if j.val < 4 then 26 else 25)))
theorem cover_1581167 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1581167 := by
  apply coveredState_split_literal (state := state_1581167) 4
    state_1581168 state_1581263
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1581168
  · exact cover_1581263
#print axioms cover_1581167

def state_1581166 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 17) else (if j.val < 3 then 24 else (if j.val < 4 then 26 else 25)))
theorem cover_1581166 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1581166 := by
  apply coveredState_split_literal (state := state_1581166) 2
    state_1581167 state_1582594
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1581167
  · exact cover_1582594
#print axioms cover_1581166

def state_1577656 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 26 else 25)))
theorem cover_1577656 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1577656 := by
  apply coveredState_split_literal (state := state_1577656) 1
    state_1577657 state_1581166
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1577657
  · exact cover_1581166
#print axioms cover_1577656

def state_1577322 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 26 else 25)))
theorem cover_1577322 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1577322 := by
  apply coveredState_split_literal (state := state_1577322) 0
    state_1577323 state_1577656
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1577323
  · exact cover_1577656
#print axioms cover_1577322

def state_1577321 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 13 else 25)))
theorem cover_1577321 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1577321 := by
  apply coveredState_split_literal (state := state_1577321) 3
    state_1577322 state_1583047
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1577322
  · exact cover_1583047
#print axioms cover_1577321

def state_1577243 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 13 else 12)))
theorem cover_1577243 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1577243 := by
  apply coveredState_split_literal (state := state_1577243) 4
    state_1577244 state_1577321
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1577244
  · exact cover_1577321
#print axioms cover_1577243

def state_1577242 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 12)))
theorem cover_1577242 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1577242 := by
  apply coveredState_split_literal (state := state_1577242) 2
    state_1577243 state_1583592
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1577243
  · exact cover_1583592
#print axioms cover_1577242

def state_1577241 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 12)))
theorem cover_1577241 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1577241 := by
  apply coveredState_split_literal (state := state_1577241) 1
    state_1577242 state_1583671
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1577242
  · exact cover_1583671
#print axioms cover_1577241

def state_1577177 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 12)))
theorem cover_1577177 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1577177 := by
  apply coveredState_split_literal (state := state_1577177) 0
    state_1577178 state_1577241
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1577178
  · exact cover_1577241
#print axioms cover_1577177

def state_1584704 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 26 else 26)))
theorem cover_1584704 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1584704 := by
  apply coveredState_split_literal (state := state_1584704) 1
    state_1584705 state_1585506
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1584705
  · exact cover_1585506
#print axioms cover_1584704
end Mub6.Numerical.CircleFullD0.Forest
