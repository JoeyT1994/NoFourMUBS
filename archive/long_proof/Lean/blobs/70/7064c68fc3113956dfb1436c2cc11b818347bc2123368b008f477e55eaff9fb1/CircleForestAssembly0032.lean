import CircleFullInterface
import CircleForestAssembly0031
import CircleForestChunk0127
import CircleForestChunk0128
import CircleForestChunk0129
import CircleForestChunk0130
import CircleForestChunk0131
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_968124 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 14)))
theorem cover_968124 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_968124 := by
  apply coveredState_split_literal (state := state_968124) 2
    state_968125 state_968130
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_968125
  · exact cover_968130
#print axioms cover_968124

def state_968022 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 14)))
theorem cover_968022 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_968022 := by
  apply coveredState_split_literal (state := state_968022) 1
    state_968023 state_968124
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_968023
  · exact cover_968124
#print axioms cover_968022

def state_967950 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 14)))
theorem cover_967950 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_967950 := by
  apply coveredState_split_literal (state := state_967950) 0
    state_967951 state_968022
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_967951
  · exact cover_968022
#print axioms cover_967950

def state_967949 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 9 else 7)))
theorem cover_967949 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_967949 := by
  apply coveredState_split_literal (state := state_967949) 4
    state_967950 state_968401
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_967950
  · exact cover_968401
#print axioms cover_967949

def state_966981 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 7)))
theorem cover_966981 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_966981 := by
  apply coveredState_split_literal (state := state_966981) 3
    state_966982 state_967949
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_966982
  · exact cover_967949
#print axioms cover_966981

def state_968528 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 45) else (if j.val < 3 then 52 else (if j.val < 4 then 35 else 56)))
theorem cover_968528 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_968528 := by
  apply coveredState_split_literal (state := state_968528) 0
    state_968529 state_968590
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_968529
  · exact cover_968590
#print axioms cover_968528

def state_968516 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 45) else (if j.val < 3 then 52 else (if j.val < 4 then 17 else 56)))
theorem cover_968516 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_968516 := by
  apply coveredState_split_literal (state := state_968516) 3
    state_968517 state_968528
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_968517
  · exact cover_968528
#print axioms cover_968516

def state_968515 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 45) else (if j.val < 3 then 52 else (if j.val < 4 then 17 else 28)))
theorem cover_968515 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_968515 := by
  apply coveredState_split_literal (state := state_968515) 4
    state_968516 state_968607
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_968516
  · exact cover_968607
#print axioms cover_968515

def state_968514 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 45) else (if j.val < 3 then 26 else (if j.val < 4 then 17 else 28)))
theorem cover_968514 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_968514 := by
  apply coveredState_split_literal (state := state_968514) 2
    state_968515 state_968614
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_968515
  · exact cover_968614
#print axioms cover_968514

def state_968490 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 22) else (if j.val < 3 then 26 else (if j.val < 4 then 17 else 28)))
theorem cover_968490 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_968490 := by
  apply coveredState_split_literal (state := state_968490) 1
    state_968491 state_968514
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_968491
  · exact cover_968514
#print axioms cover_968490

def state_968489 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 26 else (if j.val < 4 then 17 else 28)))
theorem cover_968489 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_968489 := by
  apply coveredState_split_literal (state := state_968489) 0
    state_968490 state_968631
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_968490
  · exact cover_968631
#print axioms cover_968489

def state_968479 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 26 else (if j.val < 4 then 8 else 28)))
theorem cover_968479 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_968479 := by
  apply coveredState_split_literal (state := state_968479) 3
    state_968480 state_968489
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_968480
  · exact cover_968489
#print axioms cover_968479

def state_968478 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 26 else (if j.val < 4 then 8 else 14)))
theorem cover_968478 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_968478 := by
  apply coveredState_split_literal (state := state_968478) 4
    state_968479 state_968646
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_968479
  · exact cover_968646
#print axioms cover_968478

def state_968477 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 13 else (if j.val < 4 then 8 else 14)))
theorem cover_968477 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_968477 := by
  apply coveredState_split_literal (state := state_968477) 2
    state_968478 state_968653
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_968478
  · exact cover_968653
#print axioms cover_968477

def state_968681 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 23) else (if j.val < 3 then 26 else (if j.val < 4 then 17 else 28)))
theorem cover_968681 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_968681 := by
  apply coveredState_split_literal (state := state_968681) 1
    state_968682 state_968735
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_968682
  · exact cover_968735
#print axioms cover_968681

def state_968680 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 26 else (if j.val < 4 then 17 else 28)))
theorem cover_968680 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_968680 := by
  apply coveredState_split_literal (state := state_968680) 0
    state_968681 state_968750
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_968681
  · exact cover_968750
#print axioms cover_968680

def state_968672 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 26 else (if j.val < 4 then 8 else 28)))
theorem cover_968672 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_968672 := by
  apply coveredState_split_literal (state := state_968672) 3
    state_968673 state_968680
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_968673
  · exact cover_968680
#print axioms cover_968672

def state_968671 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 26 else (if j.val < 4 then 8 else 14)))
theorem cover_968671 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_968671 := by
  apply coveredState_split_literal (state := state_968671) 4
    state_968672 state_968763
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_968672
  · exact cover_968763
#print axioms cover_968671

def state_968670 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 23) else (if j.val < 3 then 13 else (if j.val < 4 then 8 else 14)))
theorem cover_968670 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_968670 := by
  apply coveredState_split_literal (state := state_968670) 2
    state_968671 state_968810
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_968671
  · exact cover_968810
#print axioms cover_968670

def state_968476 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 8 else 14)))
theorem cover_968476 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_968476 := by
  apply coveredState_split_literal (state := state_968476) 1
    state_968477 state_968670
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_968477
  · exact cover_968670
#print axioms cover_968476

def state_968416 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 8 else 14)))
theorem cover_968416 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_968416 := by
  apply coveredState_split_literal (state := state_968416) 0
    state_968417 state_968476
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_968417
  · exact cover_968476
#print axioms cover_968416

def state_968415 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 8 else 7)))
theorem cover_968415 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_968415 := by
  apply coveredState_split_literal (state := state_968415) 4
    state_968416 state_968813
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_968416
  · exact cover_968813
#print axioms cover_968415

def state_968874 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 45) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 28)))
theorem cover_968874 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_968874 := by
  apply coveredState_split_literal (state := state_968874) 2
    state_968875 state_968930
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_968875
  · exact cover_968930
#print axioms cover_968874

def state_968838 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 22) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 28)))
theorem cover_968838 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_968838 := by
  apply coveredState_split_literal (state := state_968838) 1
    state_968839 state_968874
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_968839
  · exact cover_968874
#print axioms cover_968838

def state_968832 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 28)))
theorem cover_968832 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_968832 := by
  apply coveredState_split_literal (state := state_968832) 0
    state_968833 state_968838
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_968833
  · exact cover_968838
#print axioms cover_968832

def state_968831 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 14)))
theorem cover_968831 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_968831 := by
  apply coveredState_split_literal (state := state_968831) 4
    state_968832 state_968939
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_968832
  · exact cover_968939
#print axioms cover_968831

def state_968830 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 26 else (if j.val < 4 then 9 else 14)))
theorem cover_968830 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_968830 := by
  apply coveredState_split_literal (state := state_968830) 3
    state_968831 state_968948
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_968831
  · exact cover_968948
#print axioms cover_968830

def state_968829 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 14)))
theorem cover_968829 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_968829 := by
  apply coveredState_split_literal (state := state_968829) 2
    state_968830 state_968961
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_968830
  · exact cover_968961
#print axioms cover_968829

def state_968828 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 14)))
theorem cover_968828 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_968828 := by
  apply coveredState_split_literal (state := state_968828) 1
    state_968829 state_968982
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_968829
  · exact cover_968982
#print axioms cover_968828

def state_969102 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 44) else (if j.val < 3 then 53 else (if j.val < 4 then 18 else 56)))
theorem cover_969102 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_969102 := by
  apply coveredState_split_literal (state := state_969102) 3
    state_969103 state_969136
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_969103
  · exact cover_969136
#print axioms cover_969102

def state_969101 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 44) else (if j.val < 3 then 53 else (if j.val < 4 then 18 else 28)))
theorem cover_969101 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_969101 := by
  apply coveredState_split_literal (state := state_969101) 4
    state_969102 state_969193
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_969102
  · exact cover_969193
#print axioms cover_969101

def state_969043 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 44) else (if j.val < 3 then 26 else (if j.val < 4 then 18 else 28)))
theorem cover_969043 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_969043 := by
  apply coveredState_split_literal (state := state_969043) 2
    state_969044 state_969101
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_969044
  · exact cover_969101
#print axioms cover_969043
end Mub6.Numerical.CircleFullD0.Forest
