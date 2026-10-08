import CircleFullInterface
import CircleForestAssembly0285
import CircleForestChunk1099
import CircleForestChunk1100
import CircleForestChunk1101
import CircleForestChunk1102
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1563244 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 61) else (if j.val < 3 then 53 else (if j.val < 4 then 42 else 44)))
theorem cover_1563244 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1563244 := by
  apply coveredState_split_literal (state := state_1563244) 4
    state_1563245 state_1563648
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1563245
  · exact cover_1563648
#print axioms cover_1563244

def state_1564074 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 61) else (if j.val < 3 then 53 else (if j.val < 4 then 42 else 88)))
theorem cover_1564074 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1564074 := by
  apply coveredState_split_literal (state := state_1564074) 2
    state_1564075 state_1564112
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1564075
  · exact cover_1564112
#print axioms cover_1564074

def state_1564141 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 61) else (if j.val < 3 then 106 else (if j.val < 4 then 84 else 89)))
theorem cover_1564141 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1564141 := by
  apply coveredState_split_literal (state := state_1564141) 1
    state_1564142 state_1564185
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1564142
  · exact cover_1564185
#print axioms cover_1564141

def state_1564140 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 61) else (if j.val < 3 then 106 else (if j.val < 4 then 42 else 89)))
theorem cover_1564140 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1564140 := by
  apply coveredState_split_literal (state := state_1564140) 3
    state_1564141 state_1564222
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1564141
  · exact cover_1564222
#print axioms cover_1564140

def state_1564271 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 61) else (if j.val < 3 then 107 else (if j.val < 4 then 85 else 89)))
theorem cover_1564271 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1564271 := by
  apply coveredState_split_literal (state := state_1564271) 1
    state_1564272 state_1564295
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1564272
  · exact cover_1564295
#print axioms cover_1564271

def state_1564251 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 61) else (if j.val < 3 then 107 else (if j.val < 4 then 42 else 89)))
theorem cover_1564251 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1564251 := by
  apply coveredState_split_literal (state := state_1564251) 3
    state_1564252 state_1564271
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1564252
  · exact cover_1564271
#print axioms cover_1564251

def state_1564139 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 61) else (if j.val < 3 then 53 else (if j.val < 4 then 42 else 89)))
theorem cover_1564139 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1564139 := by
  apply coveredState_split_literal (state := state_1564139) 2
    state_1564140 state_1564251
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1564140
  · exact cover_1564251
#print axioms cover_1564139

def state_1564073 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 61) else (if j.val < 3 then 53 else (if j.val < 4 then 42 else 44)))
theorem cover_1564073 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1564073 := by
  apply coveredState_split_literal (state := state_1564073) 4
    state_1564074 state_1564139
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1564074
  · exact cover_1564139
#print axioms cover_1564073

def state_1563243 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 61) else (if j.val < 3 then 53 else (if j.val < 4 then 42 else 44)))
theorem cover_1563243 : CoveredState taoTables (toCarrier R carrier) T R targets
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
theorem cover_1562831 : CoveredState taoTables (toCarrier R carrier) T R targets
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
theorem cover_1562830 : CoveredState taoTables (toCarrier R carrier) T R targets
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
theorem cover_1562390 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1562390 := by
  apply coveredState_split_literal (state := state_1562390) 2
    state_1562391 state_1562830
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1562391
  · exact cover_1562830
#print axioms cover_1562390

def state_1564405 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 61) else (if j.val < 3 then 52 else (if j.val < 4 then 42 else 45)))
theorem cover_1564405 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1564405 := by
  apply coveredState_split_literal (state := state_1564405) 0
    state_1564406 state_1564457
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1564406
  · exact cover_1564457
#print axioms cover_1564405

def state_1564395 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 52 else (if j.val < 4 then 42 else 45)))
theorem cover_1564395 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1564395 := by
  apply coveredState_split_literal (state := state_1564395) 1
    state_1564396 state_1564405
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1564396
  · exact cover_1564405
#print axioms cover_1564395

def state_1564394 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 52 else (if j.val < 4 then 21 else 45)))
theorem cover_1564394 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1564394 := by
  apply coveredState_split_literal (state := state_1564394) 3
    state_1564395 state_1564476
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1564395
  · exact cover_1564476
#print axioms cover_1564394

def state_1564498 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 61) else (if j.val < 3 then 53 else (if j.val < 4 then 42 else 90)))
theorem cover_1564498 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1564498 := by
  apply coveredState_split_literal (state := state_1564498) 2
    state_1564499 state_1564550
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1564499
  · exact cover_1564550
#print axioms cover_1564498

def state_1564497 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 61) else (if j.val < 3 then 53 else (if j.val < 4 then 42 else 45)))
theorem cover_1564497 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1564497 := by
  apply coveredState_split_literal (state := state_1564497) 4
    state_1564498 state_1564575
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1564498
  · exact cover_1564575
#print axioms cover_1564497

def state_1564583 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 61) else (if j.val < 3 then 53 else (if j.val < 4 then 42 else 90)))
theorem cover_1564583 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1564583 := by
  apply coveredState_split_literal (state := state_1564583) 2
    state_1564584 state_1564627
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1564584
  · exact cover_1564627
#print axioms cover_1564583

def state_1564582 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 61) else (if j.val < 3 then 53 else (if j.val < 4 then 42 else 45)))
theorem cover_1564582 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1564582 := by
  apply coveredState_split_literal (state := state_1564582) 4
    state_1564583 state_1564668
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1564583
  · exact cover_1564668
#print axioms cover_1564582

def state_1564496 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 61) else (if j.val < 3 then 53 else (if j.val < 4 then 42 else 45)))
theorem cover_1564496 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1564496 := by
  apply coveredState_split_literal (state := state_1564496) 0
    state_1564497 state_1564582
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1564497
  · exact cover_1564582
#print axioms cover_1564496

def state_1564478 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 53 else (if j.val < 4 then 42 else 45)))
theorem cover_1564478 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1564478 := by
  apply coveredState_split_literal (state := state_1564478) 1
    state_1564479 state_1564496
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1564479
  · exact cover_1564496
#print axioms cover_1564478

def state_1564477 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 53 else (if j.val < 4 then 21 else 45)))
theorem cover_1564477 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1564477 := by
  apply coveredState_split_literal (state := state_1564477) 3
    state_1564478 state_1564673
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1564478
  · exact cover_1564673
#print axioms cover_1564477

def state_1564393 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 26 else (if j.val < 4 then 21 else 45)))
theorem cover_1564393 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1564393 := by
  apply coveredState_split_literal (state := state_1564393) 2
    state_1564394 state_1564477
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1564394
  · exact cover_1564477
#print axioms cover_1564393

def state_1562389 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 26 else (if j.val < 4 then 21 else 22)))
theorem cover_1562389 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1562389 := by
  apply coveredState_split_literal (state := state_1562389) 4
    state_1562390 state_1564393
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1562390
  · exact cover_1564393
#print axioms cover_1562389

def state_1564698 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 30) else (if j.val < 3 then 26 else (if j.val < 4 then 21 else 22)))
theorem cover_1564698 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1564698 := by
  apply coveredState_split_literal (state := state_1564698) 4
    state_1564699 state_1564762
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1564699
  · exact cover_1564762
#print axioms cover_1564698

def state_1562388 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 30) else (if j.val < 3 then 26 else (if j.val < 4 then 21 else 22)))
theorem cover_1562388 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1562388 := by
  apply coveredState_split_literal (state := state_1562388) 0
    state_1562389 state_1564698
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1562389
  · exact cover_1564698
#print axioms cover_1562388

def state_1564803 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 62) else (if j.val < 3 then 53 else (if j.val < 4 then 42 else 44)))
theorem cover_1564803 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1564803 := by
  apply coveredState_split_literal (state := state_1564803) 0
    state_1564804 state_1564855
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1564804
  · exact cover_1564855
#print axioms cover_1564803

def state_1564802 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 31) else (if j.val < 3 then 53 else (if j.val < 4 then 42 else 44)))
theorem cover_1564802 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1564802 := by
  apply coveredState_split_literal (state := state_1564802) 1
    state_1564803 state_1564878
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1564803
  · exact cover_1564878
#print axioms cover_1564802

def state_1564801 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 31) else (if j.val < 3 then 53 else (if j.val < 4 then 21 else 44)))
theorem cover_1564801 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1564801 := by
  apply coveredState_split_literal (state := state_1564801) 3
    state_1564802 state_1564881
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1564802
  · exact cover_1564881
#print axioms cover_1564801

def state_1564791 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 31) else (if j.val < 3 then 26 else (if j.val < 4 then 21 else 44)))
theorem cover_1564791 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1564791 := by
  apply coveredState_split_literal (state := state_1564791) 2
    state_1564792 state_1564801
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1564792
  · exact cover_1564801
#print axioms cover_1564791

def state_1564932 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 62) else (if j.val < 3 then 53 else (if j.val < 4 then 42 else 90)))
theorem cover_1564932 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1564932 := by
  apply coveredState_split_literal (state := state_1564932) 2
    state_1564933 state_1564960
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1564933
  · exact cover_1564960
#print axioms cover_1564932

def state_1564931 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 100 else 62) else (if j.val < 3 then 53 else (if j.val < 4 then 42 else 45)))
theorem cover_1564931 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1564931 := by
  apply coveredState_split_literal (state := state_1564931) 4
    state_1564932 state_1565017
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1564932
  · exact cover_1565017
#print axioms cover_1564931
end Mub6.Numerical.CircleFullD0.Forest
