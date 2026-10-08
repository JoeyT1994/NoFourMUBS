import CircleFullInterface
import CircleForestAssembly0175
import CircleForestAssembly0177
import CircleForestAssembly0178
import CircleForestChunk0670
import CircleForestChunk0675
import CircleForestChunk0676
import CircleForestChunk0677
import CircleForestChunk0678
import CircleForestChunk0679
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1462959 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 7)))
theorem cover_1462959 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1462959 := by
  apply coveredState_split_literal (state := state_1462959) 3
    state_1462960 state_1463111
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1462960
  · exact cover_1463111
#print axioms cover_1462959

def state_1462958 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 7)))
theorem cover_1462958 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1462958 := by
  apply coveredState_split_literal (state := state_1462958) 1
    state_1462959 state_1463128
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1462959
  · exact cover_1463128
#print axioms cover_1462958

def state_1462946 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 7)))
theorem cover_1462946 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1462946 := by
  apply coveredState_split_literal (state := state_1462946) 0
    state_1462947 state_1462958
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1462947
  · exact cover_1462958
#print axioms cover_1462946

def state_1462884 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 3)))
theorem cover_1462884 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1462884 := by
  apply coveredState_split_literal (state := state_1462884) 4
    state_1462885 state_1462946
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1462885
  · exact cover_1462946
#print axioms cover_1462884

def state_1462883 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 3)))
theorem cover_1462883 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1462883 := by
  apply coveredState_split_literal (state := state_1462883) 3
    state_1462884 state_1463187
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1462884
  · exact cover_1463187
#print axioms cover_1462883

def state_1463233 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 6 else 7)))
theorem cover_1463233 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1463233 := by
  apply coveredState_split_literal (state := state_1463233) 3
    state_1463234 state_1463253
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1463234
  · exact cover_1463253
#print axioms cover_1463233

def state_1463232 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 7)))
theorem cover_1463232 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1463232 := by
  apply coveredState_split_literal (state := state_1463232) 2
    state_1463233 state_1463310
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1463233
  · exact cover_1463310
#print axioms cover_1463232

def state_1463321 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 7)))
theorem cover_1463321 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1463321 := by
  apply coveredState_split_literal (state := state_1463321) 2
    state_1463322 state_1463383
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1463322
  · exact cover_1463383
#print axioms cover_1463321

def state_1463231 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 7)))
theorem cover_1463231 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1463231 := by
  apply coveredState_split_literal (state := state_1463231) 1
    state_1463232 state_1463321
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1463232
  · exact cover_1463321
#print axioms cover_1463231

def state_1463221 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 7)))
theorem cover_1463221 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1463221 := by
  apply coveredState_split_literal (state := state_1463221) 0
    state_1463222 state_1463231
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1463222
  · exact cover_1463231
#print axioms cover_1463221

def state_1463205 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 3)))
theorem cover_1463205 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1463205 := by
  apply coveredState_split_literal (state := state_1463205) 4
    state_1463206 state_1463221
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1463206
  · exact cover_1463221
#print axioms cover_1463205

def state_1463404 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 7)))
theorem cover_1463404 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1463404 := by
  apply coveredState_split_literal (state := state_1463404) 0
    state_1463405 state_1463418
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1463405
  · exact cover_1463418
#print axioms cover_1463404

def state_1463396 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 3)))
theorem cover_1463396 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1463396 := by
  apply coveredState_split_literal (state := state_1463396) 4
    state_1463397 state_1463404
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1463397
  · exact cover_1463404
#print axioms cover_1463396

def state_1463204 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 3)))
theorem cover_1463204 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1463204 := by
  apply coveredState_split_literal (state := state_1463204) 3
    state_1463205 state_1463396
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1463205
  · exact cover_1463396
#print axioms cover_1463204

def state_1462882 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_1462882 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1462882 := by
  apply coveredState_split_literal (state := state_1462882) 2
    state_1462883 state_1463204
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1462883
  · exact cover_1463204
#print axioms cover_1462882

def state_1461788 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_1461788 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461788 := by
  apply coveredState_split_literal (state := state_1461788) 1
    state_1461789 state_1462882
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1461789
  · exact cover_1462882
#print axioms cover_1461788

def state_1461752 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_1461752 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461752 := by
  apply coveredState_split_literal (state := state_1461752) 0
    state_1461753 state_1461788
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1461753
  · exact cover_1461788
#print axioms cover_1461752

def state_1460774 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 1)))
theorem cover_1460774 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1460774 := by
  apply coveredState_split_literal (state := state_1460774) 4
    state_1460775 state_1461752
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1460775
  · exact cover_1461752
#print axioms cover_1460774

def state_1458686 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_1458686 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1458686 := by
  apply coveredState_split_literal (state := state_1458686) 3
    state_1458687 state_1460774
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1458687
  · exact cover_1460774
#print axioms cover_1458686

def state_1463473 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_1463473 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1463473 := by
  apply coveredState_split_literal (state := state_1463473) 2
    state_1463474 state_1463489
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1463474
  · exact cover_1463489
#print axioms cover_1463473

def state_1463472 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_1463472 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1463472 := by
  apply coveredState_split_literal (state := state_1463472) 1
    state_1463473 state_1463552
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1463473
  · exact cover_1463552
#print axioms cover_1463472

def state_1463632 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 8) else (if j.val < 3 then 15 else (if j.val < 4 then 10 else 10)))
theorem cover_1463632 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1463632 := by
  apply coveredState_split_literal (state := state_1463632) 0
    state_1463633 state_1463644
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1463633
  · exact cover_1463644
#print axioms cover_1463632

def state_1463626 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 8) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 10)))
theorem cover_1463626 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1463626 := by
  apply coveredState_split_literal (state := state_1463626) 2
    state_1463627 state_1463632
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1463627
  · exact cover_1463632
#print axioms cover_1463626

def state_1463625 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 10)))
theorem cover_1463625 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1463625 := by
  apply coveredState_split_literal (state := state_1463625) 1
    state_1463626 state_1463699
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1463626
  · exact cover_1463699
#print axioms cover_1463625

def state_1463706 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 11)))
theorem cover_1463706 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1463706 := by
  apply coveredState_split_literal (state := state_1463706) 1
    state_1463707 state_1463770
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1463707
  · exact cover_1463770
#print axioms cover_1463706

def state_1463624 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 5)))
theorem cover_1463624 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1463624 := by
  apply coveredState_split_literal (state := state_1463624) 4
    state_1463625 state_1463706
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1463625
  · exact cover_1463706
#print axioms cover_1463624

def state_1463798 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 8) else (if j.val < 3 then 15 else (if j.val < 4 then 22 else 21)))
theorem cover_1463798 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1463798 := by
  apply coveredState_split_literal (state := state_1463798) 1
    state_1463799 state_1463858
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1463799
  · exact cover_1463858
#print axioms cover_1463798

def state_1463788 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 8) else (if j.val < 3 then 15 else (if j.val < 4 then 22 else 10)))
theorem cover_1463788 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1463788 := by
  apply coveredState_split_literal (state := state_1463788) 4
    state_1463789 state_1463798
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1463789
  · exact cover_1463798
#print axioms cover_1463788

def state_1463784 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 8) else (if j.val < 3 then 15 else (if j.val < 4 then 22 else 10)))
theorem cover_1463784 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1463784 := by
  apply coveredState_split_literal (state := state_1463784) 0
    state_1463785 state_1463788
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1463785
  · exact cover_1463788
#print axioms cover_1463784

def state_1463783 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 8) else (if j.val < 3 then 15 else (if j.val < 4 then 11 else 10)))
theorem cover_1463783 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1463783 := by
  apply coveredState_split_literal (state := state_1463783) 3
    state_1463784 state_1463869
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1463784
  · exact cover_1463869
#print axioms cover_1463783

def state_1463775 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 8) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 10)))
theorem cover_1463775 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1463775 := by
  apply coveredState_split_literal (state := state_1463775) 2
    state_1463776 state_1463783
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1463776
  · exact cover_1463783
#print axioms cover_1463775

def state_1463774 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 10)))
theorem cover_1463774 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1463774 := by
  apply coveredState_split_literal (state := state_1463774) 1
    state_1463775 state_1463874
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1463775
  · exact cover_1463874
#print axioms cover_1463774
end Mub6.Numerical.CircleFullD0.Forest
