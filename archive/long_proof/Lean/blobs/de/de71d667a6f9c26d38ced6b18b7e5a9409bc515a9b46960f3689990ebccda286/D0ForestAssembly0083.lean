import D0FullInterface
import D0ForestAssembly0081
import D0ForestAssembly0082
import D0ForestChunk0326
import D0ForestChunk0329
import D0ForestChunk0330
import D0ForestChunk0333
import D0ForestChunk0334
import D0ForestChunk0335
import D0ForestChunk0336
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1016828 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 57) else (if j.val < 3 then 43 else (if j.val < 4 then 62 else 44)))
theorem cover_1016828 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1016828 := by
  apply coveredState_split_literal (state := state_1016828) 4
    state_1016829 state_1017364
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1016829
  · exact cover_1017364
#print axioms cover_1016828

def state_1016712 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 57) else (if j.val < 3 then 43 else (if j.val < 4 then 62 else 44)))
theorem cover_1016712 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1016712 := by
  apply coveredState_split_literal (state := state_1016712) 0
    state_1016713 state_1016828
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1016713
  · exact cover_1016828
#print axioms cover_1016712

def state_1017589 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 115) else (if j.val < 3 then 87 else (if j.val < 4 then 126 else 176)))
theorem cover_1017589 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1017589 := by
  apply coveredState_split_literal (state := state_1017589) 2
    state_1017590 state_1017625
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1017590
  · exact cover_1017625
#print axioms cover_1017589

def state_1017588 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 115) else (if j.val < 3 then 87 else (if j.val < 4 then 126 else 88)))
theorem cover_1017588 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1017588 := by
  apply coveredState_split_literal (state := state_1017588) 4
    state_1017589 state_1017666
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1017589
  · exact cover_1017666
#print axioms cover_1017588

def state_1017680 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 115) else (if j.val < 3 then 87 else (if j.val < 4 then 126 else 176)))
theorem cover_1017680 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1017680 := by
  apply coveredState_split_literal (state := state_1017680) 2
    state_1017681 state_1017722
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1017681
  · exact cover_1017722
#print axioms cover_1017680

def state_1017775 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 115) else (if j.val < 3 then 87 else (if j.val < 4 then 126 else 177)))
theorem cover_1017775 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1017775 := by
  apply coveredState_split_literal (state := state_1017775) 2
    state_1017776 state_1017791
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1017776
  · exact cover_1017791
#print axioms cover_1017775

def state_1017679 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 115) else (if j.val < 3 then 87 else (if j.val < 4 then 126 else 88)))
theorem cover_1017679 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1017679 := by
  apply coveredState_split_literal (state := state_1017679) 4
    state_1017680 state_1017775
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1017680
  · exact cover_1017775
#print axioms cover_1017679

def state_1017587 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 115) else (if j.val < 3 then 87 else (if j.val < 4 then 126 else 88)))
theorem cover_1017587 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1017587 := by
  apply coveredState_split_literal (state := state_1017587) 0
    state_1017588 state_1017679
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1017588
  · exact cover_1017679
#print axioms cover_1017587

def state_1017586 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 115) else (if j.val < 3 then 87 else (if j.val < 4 then 63 else 88)))
theorem cover_1017586 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1017586 := by
  apply coveredState_split_literal (state := state_1017586) 3
    state_1017587 state_1017840
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1017587
  · exact cover_1017840
#print axioms cover_1017586

def state_1017528 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 57) else (if j.val < 3 then 87 else (if j.val < 4 then 63 else 88)))
theorem cover_1017528 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1017528 := by
  apply coveredState_split_literal (state := state_1017528) 1
    state_1017529 state_1017586
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1017529
  · exact cover_1017586
#print axioms cover_1017528

def state_1017494 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 57) else (if j.val < 3 then 43 else (if j.val < 4 then 63 else 88)))
theorem cover_1017494 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1017494 := by
  apply coveredState_split_literal (state := state_1017494) 2
    state_1017495 state_1017528
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1017495
  · exact cover_1017528
#print axioms cover_1017494

def state_1017493 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 57) else (if j.val < 3 then 43 else (if j.val < 4 then 63 else 44)))
theorem cover_1017493 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1017493 := by
  apply coveredState_split_literal (state := state_1017493) 4
    state_1017494 state_1017841
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1017494
  · exact cover_1017841
#print axioms cover_1017493

def state_1017437 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 57) else (if j.val < 3 then 43 else (if j.val < 4 then 63 else 44)))
theorem cover_1017437 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1017437 := by
  apply coveredState_split_literal (state := state_1017437) 0
    state_1017438 state_1017493
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1017438
  · exact cover_1017493
#print axioms cover_1017437

def state_1016711 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 57) else (if j.val < 3 then 43 else (if j.val < 4 then 31 else 44)))
theorem cover_1016711 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1016711 := by
  apply coveredState_split_literal (state := state_1016711) 3
    state_1016712 state_1017437
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1016712
  · exact cover_1017437
#print axioms cover_1016711

def state_1016669 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 43 else (if j.val < 4 then 31 else 44)))
theorem cover_1016669 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1016669 := by
  apply coveredState_split_literal (state := state_1016669) 1
    state_1016670 state_1016711
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1016670
  · exact cover_1016711
#print axioms cover_1016669

def state_1016611 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 31 else 44)))
theorem cover_1016611 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1016611 := by
  apply coveredState_split_literal (state := state_1016611) 2
    state_1016612 state_1016669
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1016612
  · exact cover_1016669
#print axioms cover_1016611

def state_1016610 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 31 else 22)))
theorem cover_1016610 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1016610 := by
  apply coveredState_split_literal (state := state_1016610) 4
    state_1016611 state_1017878
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1016611
  · exact cover_1017878
#print axioms cover_1016610

def state_1016574 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 31 else 22)))
theorem cover_1016574 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1016574 := by
  apply coveredState_split_literal (state := state_1016574) 0
    state_1016575 state_1016610
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1016575
  · exact cover_1016610
#print axioms cover_1016574

def state_1015834 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 21 else (if j.val < 4 then 15 else 22)))
theorem cover_1015834 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1015834 := by
  apply coveredState_split_literal (state := state_1015834) 3
    state_1015835 state_1016574
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1015835
  · exact cover_1016574
#print axioms cover_1015834

def state_1017907 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 29) else (if j.val < 3 then 21 else (if j.val < 4 then 15 else 22)))
theorem cover_1017907 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1017907 := by
  apply coveredState_split_literal (state := state_1017907) 3
    state_1017908 state_1017937
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1017908
  · exact cover_1017937
#print axioms cover_1017907

def state_1015833 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 21 else (if j.val < 4 then 15 else 22)))
theorem cover_1015833 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1015833 := by
  apply coveredState_split_literal (state := state_1015833) 1
    state_1015834 state_1017907
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1015834
  · exact cover_1017907
#print axioms cover_1015833

def state_1015747 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 15 else 22)))
theorem cover_1015747 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1015747 := by
  apply coveredState_split_literal (state := state_1015747) 2
    state_1015748 state_1015833
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1015748
  · exact cover_1015833
#print axioms cover_1015747

def state_1015746 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 15 else 11)))
theorem cover_1015746 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1015746 := by
  apply coveredState_split_literal (state := state_1015746) 4
    state_1015747 state_1017994
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1015747
  · exact cover_1017994
#print axioms cover_1015746

def state_1015724 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 15 else 11)))
theorem cover_1015724 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1015724 := by
  apply coveredState_split_literal (state := state_1015724) 0
    state_1015725 state_1015746
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1015725
  · exact cover_1015746
#print axioms cover_1015724

def state_1015002 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 11)))
theorem cover_1015002 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1015002 := by
  apply coveredState_split_literal (state := state_1015002) 3
    state_1015003 state_1015724
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1015003
  · exact cover_1015724
#print axioms cover_1015002

def state_1015001 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 11)))
theorem cover_1015001 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1015001 := by
  apply coveredState_split_literal (state := state_1015001) 1
    state_1015002 state_1018029
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1015002
  · exact cover_1018029
#print axioms cover_1015001

def state_1013453 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 10 else (if j.val < 4 then 7 else 5)))
theorem cover_1013453 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1013453 := by
  apply coveredState_split_literal (state := state_1013453) 4
    state_1013454 state_1015001
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1013454
  · exact cover_1015001
#print axioms cover_1013453

def state_1018094 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 22 else (if j.val < 4 then 15 else 21)))
theorem cover_1018094 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018094 := by
  apply coveredState_split_literal (state := state_1018094) 3
    state_1018095 state_1018110
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1018095
  · exact cover_1018110
#print axioms cover_1018094

def state_1018093 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 22 else (if j.val < 4 then 15 else 21)))
theorem cover_1018093 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018093 := by
  apply coveredState_split_literal (state := state_1018093) 1
    state_1018094 state_1018169
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1018094
  · exact cover_1018169
#print axioms cover_1018093

def state_1018089 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 22 else (if j.val < 4 then 15 else 10)))
theorem cover_1018089 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018089 := by
  apply coveredState_split_literal (state := state_1018089) 4
    state_1018090 state_1018093
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1018090
  · exact cover_1018093
#print axioms cover_1018089

def state_1018088 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 11 else (if j.val < 4 then 15 else 10)))
theorem cover_1018088 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018088 := by
  apply coveredState_split_literal (state := state_1018088) 2
    state_1018089 state_1018192
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1018089
  · exact cover_1018192
#print axioms cover_1018088

def state_1018082 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 11 else (if j.val < 4 then 15 else 10)))
theorem cover_1018082 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1018082 := by
  apply coveredState_split_literal (state := state_1018082) 0
    state_1018083 state_1018088
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1018083
  · exact cover_1018088
#print axioms cover_1018082
end Mub6.Numerical.CircleFullD0.Forest
