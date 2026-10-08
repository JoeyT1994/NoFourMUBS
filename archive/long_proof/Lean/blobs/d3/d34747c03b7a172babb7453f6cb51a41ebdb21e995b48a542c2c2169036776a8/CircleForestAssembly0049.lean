import CircleFullInterface
import CircleForestAssembly0048
import CircleForestChunk0191
import CircleForestChunk0192
import CircleForestChunk0193
import CircleForestChunk0194
import CircleForestChunk0195
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_67305 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 3)))
theorem cover_67305 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_67305 := by
  apply coveredState_split_literal (state := state_67305) 3
    state_67306 state_67407
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_67306
  · exact cover_67407
#print axioms cover_67305

def state_67293 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_67293 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_67293 := by
  apply coveredState_split_literal (state := state_67293) 2
    state_67294 state_67305
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_67294
  · exact cover_67305
#print axioms cover_67293

def state_67209 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_67209 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_67209 := by
  apply coveredState_split_literal (state := state_67209) 1
    state_67210 state_67293
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_67210
  · exact cover_67293
#print axioms cover_67209

def state_67432 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_67432 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_67432 := by
  apply coveredState_split_literal (state := state_67432) 1
    state_67433 state_67474
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_67433
  · exact cover_67474
#print axioms cover_67432

def state_67208 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_67208 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_67208 := by
  apply coveredState_split_literal (state := state_67208) 0
    state_67209 state_67432
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_67209
  · exact cover_67432
#print axioms cover_67208

def state_67024 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 1)))
theorem cover_67024 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_67024 := by
  apply coveredState_split_literal (state := state_67024) 4
    state_67025 state_67208
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_67025
  · exact cover_67208
#print axioms cover_67024

def state_66446 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_66446 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_66446 := by
  apply coveredState_split_literal (state := state_66446) 3
    state_66447 state_67024
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_66447
  · exact cover_67024
#print axioms cover_66446

def state_67603 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 2)))
theorem cover_67603 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_67603 := by
  apply coveredState_split_literal (state := state_67603) 4
    state_67604 state_67623
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_67604
  · exact cover_67623
#print axioms cover_67603

def state_67577 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 2)))
theorem cover_67577 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_67577 := by
  apply coveredState_split_literal (state := state_67577) 3
    state_67578 state_67603
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_67578
  · exact cover_67603
#print axioms cover_67577

def state_67529 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_67529 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_67529 := by
  apply coveredState_split_literal (state := state_67529) 2
    state_67530 state_67577
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_67530
  · exact cover_67577
#print axioms cover_67529

def state_67671 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 2)))
theorem cover_67671 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_67671 := by
  apply coveredState_split_literal (state := state_67671) 3
    state_67672 state_67687
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_67672
  · exact cover_67687
#print axioms cover_67671

def state_67670 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_67670 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_67670 := by
  apply coveredState_split_literal (state := state_67670) 2
    state_67671 state_67738
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_67671
  · exact cover_67738
#print axioms cover_67670

def state_67528 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_67528 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_67528 := by
  apply coveredState_split_literal (state := state_67528) 1
    state_67529 state_67670
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_67529
  · exact cover_67670
#print axioms cover_67528

def state_67767 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 2)))
theorem cover_67767 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_67767 := by
  apply coveredState_split_literal (state := state_67767) 3
    state_67768 state_67823
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_67768
  · exact cover_67823
#print axioms cover_67767

def state_67861 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 5)))
theorem cover_67861 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_67861 := by
  apply coveredState_split_literal (state := state_67861) 4
    state_67862 state_67907
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_67862
  · exact cover_67907
#print axioms cover_67861

def state_67845 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 2)))
theorem cover_67845 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_67845 := by
  apply coveredState_split_literal (state := state_67845) 4
    state_67846 state_67861
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_67846
  · exact cover_67861
#print axioms cover_67845

def state_67950 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 8) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 10)))
theorem cover_67950 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_67950 := by
  apply coveredState_split_literal (state := state_67950) 2
    state_67951 state_67970
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_67951
  · exact cover_67970
#print axioms cover_67950

def state_67949 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 14 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 10)))
theorem cover_67949 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_67949 := by
  apply coveredState_split_literal (state := state_67949) 1
    state_67950 state_68021
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_67950
  · exact cover_68021
#print axioms cover_67949

def state_67948 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 10)))
theorem cover_67948 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_67948 := by
  apply coveredState_split_literal (state := state_67948) 0
    state_67949 state_68028
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_67949
  · exact cover_68028
#print axioms cover_67948

def state_68102 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 8) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 11)))
theorem cover_68102 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_68102 := by
  apply coveredState_split_literal (state := state_68102) 2
    state_68103 state_68116
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_68103
  · exact cover_68116
#print axioms cover_68102

def state_68101 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 11)))
theorem cover_68101 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_68101 := by
  apply coveredState_split_literal (state := state_68101) 1
    state_68102 state_68169
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_68102
  · exact cover_68169
#print axioms cover_68101

def state_68075 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 11)))
theorem cover_68075 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_68075 := by
  apply coveredState_split_literal (state := state_68075) 0
    state_68076 state_68101
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_68076
  · exact cover_68101
#print axioms cover_68075

def state_67947 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 5)))
theorem cover_67947 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_67947 := by
  apply coveredState_split_literal (state := state_67947) 4
    state_67948 state_68075
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_67948
  · exact cover_68075
#print axioms cover_67947

def state_67946 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 5)))
theorem cover_67946 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_67946 := by
  apply coveredState_split_literal (state := state_67946) 3
    state_67947 state_68178
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_67947
  · exact cover_68178
#print axioms cover_67946

def state_67932 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 2)))
theorem cover_67932 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_67932 := by
  apply coveredState_split_literal (state := state_67932) 4
    state_67933 state_67946
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_67933
  · exact cover_67946
#print axioms cover_67932

def state_67844 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 2)))
theorem cover_67844 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_67844 := by
  apply coveredState_split_literal (state := state_67844) 3
    state_67845 state_67932
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_67845
  · exact cover_67932
#print axioms cover_67844

def state_67766 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_67766 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_67766 := by
  apply coveredState_split_literal (state := state_67766) 2
    state_67767 state_67844
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_67767
  · exact cover_67844
#print axioms cover_67766

def state_68222 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 2)))
theorem cover_68222 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_68222 := by
  apply coveredState_split_literal (state := state_68222) 3
    state_68223 state_68276
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_68223
  · exact cover_68276
#print axioms cover_68222

def state_68221 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_68221 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_68221 := by
  apply coveredState_split_literal (state := state_68221) 2
    state_68222 state_68303
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_68222
  · exact cover_68303
#print axioms cover_68221

def state_67765 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_67765 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_67765 := by
  apply coveredState_split_literal (state := state_67765) 1
    state_67766 state_68221
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_67766
  · exact cover_68221
#print axioms cover_67765

def state_67527 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_67527 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_67527 := by
  apply coveredState_split_literal (state := state_67527) 0
    state_67528 state_67765
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_67528
  · exact cover_67765
#print axioms cover_67527

def state_68346 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_68346 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_68346 := by
  apply coveredState_split_literal (state := state_68346) 0
    state_68347 state_68368
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_68347
  · exact cover_68368
#print axioms cover_68346
end Mub6.Numerical.CircleFullPrototype.Forest
