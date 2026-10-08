import CircleFullInterface
import CircleForestAssembly0488
import CircleForestChunk1921
import CircleForestChunk1922
import CircleForestChunk1923
import CircleForestChunk1924
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_2334114 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 2)))
theorem cover_2334114 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2334114 := by
  apply coveredState_split_literal (state := state_2334114) 3
    state_2334115 state_2334224
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2334115
  · exact cover_2334224
#print axioms cover_2334114

def state_2334094 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_2334094 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2334094 := by
  apply coveredState_split_literal (state := state_2334094) 2
    state_2334095 state_2334114
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2334095
  · exact cover_2334114
#print axioms cover_2334094

def state_2334080 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_2334080 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2334080 := by
  apply coveredState_split_literal (state := state_2334080) 1
    state_2334081 state_2334094
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2334081
  · exact cover_2334094
#print axioms cover_2334080

def state_2334384 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 10 else 8)))
theorem cover_2334384 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2334384 := by
  apply coveredState_split_literal (state := state_2334384) 1
    state_2334385 state_2334390
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2334385
  · exact cover_2334390
#print axioms cover_2334384

def state_2334383 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 10 else 4)))
theorem cover_2334383 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2334383 := by
  apply coveredState_split_literal (state := state_2334383) 4
    state_2334384 state_2334451
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2334384
  · exact cover_2334451
#print axioms cover_2334383

def state_2334371 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 10 else 4)))
theorem cover_2334371 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2334371 := by
  apply coveredState_split_literal (state := state_2334371) 0
    state_2334372 state_2334383
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2334372
  · exact cover_2334383
#print axioms cover_2334371

def state_2334370 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 10) else (if j.val < 3 then 10 else (if j.val < 4 then 5 else 4)))
theorem cover_2334370 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2334370 := by
  apply coveredState_split_literal (state := state_2334370) 3
    state_2334371 state_2334454
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2334371
  · exact cover_2334454
#print axioms cover_2334370

def state_2334471 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 10) else (if j.val < 3 then 11 else (if j.val < 4 then 5 else 4)))
theorem cover_2334471 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2334471 := by
  apply coveredState_split_literal (state := state_2334471) 3
    state_2334472 state_2334511
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2334472
  · exact cover_2334511
#print axioms cover_2334471

def state_2334369 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 10) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 4)))
theorem cover_2334369 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2334369 := by
  apply coveredState_split_literal (state := state_2334369) 2
    state_2334370 state_2334471
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2334370
  · exact cover_2334471
#print axioms cover_2334369

def state_2334583 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 4)))
theorem cover_2334583 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2334583 := by
  apply coveredState_split_literal (state := state_2334583) 0
    state_2334584 state_2334599
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2334584
  · exact cover_2334599
#print axioms cover_2334583

def state_2334555 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 11) else (if j.val < 3 then 10 else (if j.val < 4 then 5 else 4)))
theorem cover_2334555 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2334555 := by
  apply coveredState_split_literal (state := state_2334555) 3
    state_2334556 state_2334583
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2334556
  · exact cover_2334583
#print axioms cover_2334555

def state_2334775 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 63 else 44) else (if j.val < 3 then 44 else (if j.val < 4 then 44 else 32)))
theorem cover_2334775 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2334775 := by
  apply coveredState_split_literal (state := state_2334775) 1
    state_2334776 state_2334827
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2334776
  · exact cover_2334827
#print axioms cover_2334775

def state_2334774 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 63 else 44) else (if j.val < 3 then 44 else (if j.val < 4 then 44 else 16)))
theorem cover_2334774 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2334774 := by
  apply coveredState_split_literal (state := state_2334774) 4
    state_2334775 state_2334846
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2334775
  · exact cover_2334846
#print axioms cover_2334774

def state_2334752 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 31 else 44) else (if j.val < 3 then 44 else (if j.val < 4 then 44 else 16)))
theorem cover_2334752 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2334752 := by
  apply coveredState_split_literal (state := state_2334752) 0
    state_2334753 state_2334774
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2334753
  · exact cover_2334774
#print axioms cover_2334752

def state_2334751 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 31 else 44) else (if j.val < 3 then 44 else (if j.val < 4 then 22 else 16)))
theorem cover_2334751 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2334751 := by
  apply coveredState_split_literal (state := state_2334751) 3
    state_2334752 state_2334865
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2334752
  · exact cover_2334865
#print axioms cover_2334751

def state_2334750 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 31 else 44) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 16)))
theorem cover_2334750 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2334750 := by
  apply coveredState_split_literal (state := state_2334750) 2
    state_2334751 state_2334874
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2334751
  · exact cover_2334874
#print axioms cover_2334750

def state_2334749 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 31 else 22) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 16)))
theorem cover_2334749 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2334749 := by
  apply coveredState_split_literal (state := state_2334749) 1
    state_2334750 state_2334885
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2334750
  · exact cover_2334885
#print axioms cover_2334749

def state_2334748 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 31 else 22) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 8)))
theorem cover_2334748 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2334748 := by
  apply coveredState_split_literal (state := state_2334748) 4
    state_2334749 state_2334910
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2334749
  · exact cover_2334910
#print axioms cover_2334748

def state_2334728 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 22) else (if j.val < 3 then 22 else (if j.val < 4 then 22 else 8)))
theorem cover_2334728 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2334728 := by
  apply coveredState_split_literal (state := state_2334728) 0
    state_2334729 state_2334748
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2334729
  · exact cover_2334748
#print axioms cover_2334728

def state_2334727 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 22) else (if j.val < 3 then 22 else (if j.val < 4 then 11 else 8)))
theorem cover_2334727 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2334727 := by
  apply coveredState_split_literal (state := state_2334727) 3
    state_2334728 state_2334925
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2334728
  · exact cover_2334925
#print axioms cover_2334727

def state_2334726 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 22) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 8)))
theorem cover_2334726 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2334726 := by
  apply coveredState_split_literal (state := state_2334726) 2
    state_2334727 state_2334934
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2334727
  · exact cover_2334934
#print axioms cover_2334726

def state_2334725 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 8)))
theorem cover_2334725 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2334725 := by
  apply coveredState_split_literal (state := state_2334725) 1
    state_2334726 state_2334945
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2334726
  · exact cover_2334945
#print axioms cover_2334725

def state_2334724 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 15 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 4)))
theorem cover_2334724 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2334724 := by
  apply coveredState_split_literal (state := state_2334724) 4
    state_2334725 state_2334970
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2334725
  · exact cover_2334970
#print axioms cover_2334724

def state_2334706 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 11 else 4)))
theorem cover_2334706 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2334706 := by
  apply coveredState_split_literal (state := state_2334706) 0
    state_2334707 state_2334724
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2334707
  · exact cover_2334724
#print axioms cover_2334706

def state_2334654 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 5 else 4)))
theorem cover_2334654 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2334654 := by
  apply coveredState_split_literal (state := state_2334654) 3
    state_2334655 state_2334706
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2334655
  · exact cover_2334706
#print axioms cover_2334654

def state_2334554 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 11) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 4)))
theorem cover_2334554 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2334554 := by
  apply coveredState_split_literal (state := state_2334554) 2
    state_2334555 state_2334654
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2334555
  · exact cover_2334654
#print axioms cover_2334554

def state_2334368 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 4)))
theorem cover_2334368 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2334368 := by
  apply coveredState_split_literal (state := state_2334368) 1
    state_2334369 state_2334554
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2334369
  · exact cover_2334554
#print axioms cover_2334368

def state_2334367 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 2)))
theorem cover_2334367 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2334367 := by
  apply coveredState_split_literal (state := state_2334367) 4
    state_2334368 state_2334977
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2334368
  · exact cover_2334977
#print axioms cover_2334367

def state_2334323 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 2)))
theorem cover_2334323 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2334323 := by
  apply coveredState_split_literal (state := state_2334323) 3
    state_2334324 state_2334367
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2334324
  · exact cover_2334367
#print axioms cover_2334323

def state_2334309 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_2334309 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2334309 := by
  apply coveredState_split_literal (state := state_2334309) 2
    state_2334310 state_2334323
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2334310
  · exact cover_2334323
#print axioms cover_2334309

def state_2334279 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_2334279 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2334279 := by
  apply coveredState_split_literal (state := state_2334279) 1
    state_2334280 state_2334309
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2334280
  · exact cover_2334309
#print axioms cover_2334279

def state_2334079 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_2334079 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2334079 := by
  apply coveredState_split_literal (state := state_2334079) 0
    state_2334080 state_2334279
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2334080
  · exact cover_2334279
#print axioms cover_2334079
end Mub6.Numerical.CircleFullD0.Forest
