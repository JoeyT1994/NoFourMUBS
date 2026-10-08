import D0FullInterface
import D0ForestAssembly0245
import D0ForestAssembly0247
import D0ForestChunk0948
import D0ForestChunk0949
import D0ForestChunk0950
import D0ForestChunk0951
import D0ForestChunk0952
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1528109 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 59) else (if j.val < 3 then 91 else (if j.val < 4 then 34 else 44)))
theorem cover_1528109 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1528109 := by
  apply coveredState_split_literal (state := state_1528109) 4
    state_1528110 state_1528157
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1528110
  · exact cover_1528157
#print axioms cover_1528109

def state_1528077 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 59) else (if j.val < 3 then 45 else (if j.val < 4 then 34 else 44)))
theorem cover_1528077 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1528077 := by
  apply coveredState_split_literal (state := state_1528077) 2
    state_1528078 state_1528109
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1528078
  · exact cover_1528109
#print axioms cover_1528077

def state_1528061 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 59) else (if j.val < 3 then 45 else (if j.val < 4 then 34 else 44)))
theorem cover_1528061 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1528061 := by
  apply coveredState_split_literal (state := state_1528061) 0
    state_1528062 state_1528077
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1528062
  · exact cover_1528077
#print axioms cover_1528061

def state_1528060 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 59) else (if j.val < 3 then 45 else (if j.val < 4 then 17 else 44)))
theorem cover_1528060 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1528060 := by
  apply coveredState_split_literal (state := state_1528060) 3
    state_1528061 state_1528182
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1528061
  · exact cover_1528182
#print axioms cover_1528060

def state_1527614 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 29) else (if j.val < 3 then 45 else (if j.val < 4 then 17 else 44)))
theorem cover_1527614 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1527614 := by
  apply coveredState_split_literal (state := state_1527614) 1
    state_1527615 state_1528060
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1527615
  · exact cover_1528060
#print axioms cover_1527614

def state_1527613 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 29) else (if j.val < 3 then 45 else (if j.val < 4 then 17 else 22)))
theorem cover_1527613 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1527613 := by
  apply coveredState_split_literal (state := state_1527613) 4
    state_1527614 state_1528203
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1527614
  · exact cover_1528203
#print axioms cover_1527613

def state_1527539 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 29) else (if j.val < 3 then 22 else (if j.val < 4 then 17 else 22)))
theorem cover_1527539 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1527539 := by
  apply coveredState_split_literal (state := state_1527539) 2
    state_1527540 state_1527613
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1527540
  · exact cover_1527613
#print axioms cover_1527539

def state_1528245 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 45 else (if j.val < 4 then 17 else 44)))
theorem cover_1528245 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1528245 := by
  apply coveredState_split_literal (state := state_1528245) 1
    state_1528246 state_1528261
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1528246
  · exact cover_1528261
#print axioms cover_1528245

def state_1528244 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 45 else (if j.val < 4 then 17 else 22)))
theorem cover_1528244 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1528244 := by
  apply coveredState_split_literal (state := state_1528244) 4
    state_1528245 state_1528318
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1528245
  · exact cover_1528318
#print axioms cover_1528244

def state_1528236 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 22 else (if j.val < 4 then 17 else 22)))
theorem cover_1528236 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1528236 := by
  apply coveredState_split_literal (state := state_1528236) 2
    state_1528237 state_1528244
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1528237
  · exact cover_1528244
#print axioms cover_1528236

def state_1527538 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 22 else (if j.val < 4 then 17 else 22)))
theorem cover_1527538 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1527538 := by
  apply coveredState_split_literal (state := state_1527538) 0
    state_1527539 state_1528236
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1527539
  · exact cover_1528236
#print axioms cover_1527538

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

def state_1528521 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 58) else (if j.val < 3 then 46 else (if j.val < 4 then 35 else 44)))
theorem cover_1528521 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1528521 := by
  apply coveredState_split_literal (state := state_1528521) 2
    state_1528522 state_1528571
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1528522
  · exact cover_1528571
#print axioms cover_1528521

def state_1528503 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 58) else (if j.val < 3 then 46 else (if j.val < 4 then 35 else 44)))
theorem cover_1528503 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1528503 := by
  apply coveredState_split_literal (state := state_1528503) 0
    state_1528504 state_1528521
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1528504
  · exact cover_1528521
#print axioms cover_1528503

def state_1528441 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 58) else (if j.val < 3 then 46 else (if j.val < 4 then 17 else 44)))
theorem cover_1528441 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1528441 := by
  apply coveredState_split_literal (state := state_1528441) 3
    state_1528442 state_1528503
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1528442
  · exact cover_1528503
#print axioms cover_1528441

def state_1528605 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 59) else (if j.val < 3 then 46 else (if j.val < 4 then 34 else 44)))
theorem cover_1528605 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1528605 := by
  apply coveredState_split_literal (state := state_1528605) 0
    state_1528606 state_1528611
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1528606
  · exact cover_1528611
#print axioms cover_1528605

def state_1528680 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 59) else (if j.val < 3 then 46 else (if j.val < 4 then 35 else 44)))
theorem cover_1528680 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1528680 := by
  apply coveredState_split_literal (state := state_1528680) 2
    state_1528681 state_1528736
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1528681
  · exact cover_1528736
#print axioms cover_1528680

def state_1528672 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 59) else (if j.val < 3 then 46 else (if j.val < 4 then 35 else 44)))
theorem cover_1528672 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1528672 := by
  apply coveredState_split_literal (state := state_1528672) 0
    state_1528673 state_1528680
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1528673
  · exact cover_1528680
#print axioms cover_1528672

def state_1528604 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 59) else (if j.val < 3 then 46 else (if j.val < 4 then 17 else 44)))
theorem cover_1528604 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1528604 := by
  apply coveredState_split_literal (state := state_1528604) 3
    state_1528605 state_1528672
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1528605
  · exact cover_1528672
#print axioms cover_1528604

def state_1528440 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 29) else (if j.val < 3 then 46 else (if j.val < 4 then 17 else 44)))
theorem cover_1528440 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1528440 := by
  apply coveredState_split_literal (state := state_1528440) 1
    state_1528441 state_1528604
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1528441
  · exact cover_1528604
#print axioms cover_1528440

def state_1528439 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 29) else (if j.val < 3 then 46 else (if j.val < 4 then 17 else 22)))
theorem cover_1528439 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1528439 := by
  apply coveredState_split_literal (state := state_1528439) 4
    state_1528440 state_1528773
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1528440
  · exact cover_1528773
#print axioms cover_1528439

def state_1528438 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 29) else (if j.val < 3 then 23 else (if j.val < 4 then 17 else 22)))
theorem cover_1528438 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1528438 := by
  apply coveredState_split_literal (state := state_1528438) 2
    state_1528439 state_1528806
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1528439
  · exact cover_1528806
#print axioms cover_1528438

def state_1528880 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 98 else 59) else (if j.val < 3 then 46 else (if j.val < 4 then 35 else 44)))
theorem cover_1528880 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1528880 := by
  apply coveredState_split_literal (state := state_1528880) 2
    state_1528881 state_1528920
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1528881
  · exact cover_1528920
#print axioms cover_1528880

def state_1528879 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 59) else (if j.val < 3 then 46 else (if j.val < 4 then 35 else 44)))
theorem cover_1528879 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1528879 := by
  apply coveredState_split_literal (state := state_1528879) 0
    state_1528880 state_1528973
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1528880
  · exact cover_1528973
#print axioms cover_1528879

def state_1528865 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 59) else (if j.val < 3 then 46 else (if j.val < 4 then 17 else 44)))
theorem cover_1528865 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1528865 := by
  apply coveredState_split_literal (state := state_1528865) 3
    state_1528866 state_1528879
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1528866
  · exact cover_1528879
#print axioms cover_1528865

def state_1528827 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 46 else (if j.val < 4 then 17 else 44)))
theorem cover_1528827 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1528827 := by
  apply coveredState_split_literal (state := state_1528827) 1
    state_1528828 state_1528865
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1528828
  · exact cover_1528865
#print axioms cover_1528827

def state_1528826 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 46 else (if j.val < 4 then 17 else 22)))
theorem cover_1528826 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1528826 := by
  apply coveredState_split_literal (state := state_1528826) 4
    state_1528827 state_1528982
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1528827
  · exact cover_1528982
#print axioms cover_1528826

def state_1528825 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 29) else (if j.val < 3 then 23 else (if j.val < 4 then 17 else 22)))
theorem cover_1528825 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1528825 := by
  apply coveredState_split_literal (state := state_1528825) 2
    state_1528826 state_1529001
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1528826
  · exact cover_1529001
#print axioms cover_1528825

def state_1528437 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 23 else (if j.val < 4 then 17 else 22)))
theorem cover_1528437 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1528437 := by
  apply coveredState_split_literal (state := state_1528437) 0
    state_1528438 state_1528825
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1528438
  · exact cover_1528825
#print axioms cover_1528437

def state_1528405 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 29) else (if j.val < 3 then 23 else (if j.val < 4 then 8 else 22)))
theorem cover_1528405 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1528405 := by
  apply coveredState_split_literal (state := state_1528405) 3
    state_1528406 state_1528437
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1528406
  · exact cover_1528437
#print axioms cover_1528405
end Mub6.Numerical.CircleFullD0.Forest
