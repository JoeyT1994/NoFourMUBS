import CircleFullInterface
import CircleForestAssembly0144
import CircleForestChunk0568
import CircleForestChunk0569
import CircleForestChunk0570
import CircleForestChunk0571
import CircleForestChunk0572
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_375415 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 45) else (if j.val < 3 then 19 else (if j.val < 4 then 46 else 48)))
theorem cover_375415 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_375415 := by
  apply coveredState_split_literal (state := state_375415) 2
    state_375416 state_375461
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_375416
  · exact cover_375461
#print axioms cover_375415

def state_375511 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 45) else (if j.val < 3 then 39 else (if j.val < 4 then 46 else 96)))
theorem cover_375511 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_375511 := by
  apply coveredState_split_literal (state := state_375511) 3
    state_375512 state_375563
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_375512
  · exact cover_375563
#print axioms cover_375511

def state_375510 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 45) else (if j.val < 3 then 39 else (if j.val < 4 then 46 else 48)))
theorem cover_375510 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_375510 := by
  apply coveredState_split_literal (state := state_375510) 4
    state_375511 state_375584
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_375511
  · exact cover_375584
#print axioms cover_375510

def state_375500 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 45) else (if j.val < 3 then 19 else (if j.val < 4 then 46 else 48)))
theorem cover_375500 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_375500 := by
  apply coveredState_split_literal (state := state_375500) 2
    state_375501 state_375510
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_375501
  · exact cover_375510
#print axioms cover_375500

def state_375414 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 45) else (if j.val < 3 then 19 else (if j.val < 4 then 46 else 48)))
theorem cover_375414 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_375414 := by
  apply coveredState_split_literal (state := state_375414) 0
    state_375415 state_375500
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_375415
  · exact cover_375500
#print axioms cover_375414

def state_375394 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 22) else (if j.val < 3 then 19 else (if j.val < 4 then 46 else 48)))
theorem cover_375394 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_375394 := by
  apply coveredState_split_literal (state := state_375394) 1
    state_375395 state_375414
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_375395
  · exact cover_375414
#print axioms cover_375394

def state_375393 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 22) else (if j.val < 3 then 19 else (if j.val < 4 then 46 else 24)))
theorem cover_375393 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_375393 := by
  apply coveredState_split_literal (state := state_375393) 4
    state_375394 state_375603
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_375394
  · exact cover_375603
#print axioms cover_375393

def state_375392 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 22) else (if j.val < 3 then 19 else (if j.val < 4 then 23 else 24)))
theorem cover_375392 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_375392 := by
  apply coveredState_split_literal (state := state_375392) 3
    state_375393 state_375612
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_375393
  · exact cover_375612
#print axioms cover_375392

def state_375390 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 22) else (if j.val < 3 then 9 else (if j.val < 4 then 23 else 24)))
theorem cover_375390 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_375390 := by
  apply coveredState_split_literal (state := state_375390) 2
    state_375391 state_375392
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_375391
  · exact cover_375392
#print axioms cover_375390

def state_375350 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 22) else (if j.val < 3 then 9 else (if j.val < 4 then 23 else 24)))
theorem cover_375350 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_375350 := by
  apply coveredState_split_literal (state := state_375350) 0
    state_375351 state_375390
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_375351
  · exact cover_375390
#print axioms cover_375350

def state_375349 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 22) else (if j.val < 3 then 9 else (if j.val < 4 then 23 else 12)))
theorem cover_375349 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_375349 := by
  apply coveredState_split_literal (state := state_375349) 4
    state_375350 state_375629
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_375350
  · exact cover_375629
#print axioms cover_375349

def state_375025 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 22) else (if j.val < 3 then 9 else (if j.val < 4 then 11 else 12)))
theorem cover_375025 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_375025 := by
  apply coveredState_split_literal (state := state_375025) 3
    state_375026 state_375349
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_375026
  · exact cover_375349
#print axioms cover_375025

def state_375801 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 46) else (if j.val < 3 then 39 else (if j.val < 4 then 45 else 96)))
theorem cover_375801 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_375801 := by
  apply coveredState_split_literal (state := state_375801) 1
    state_375802 state_375849
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_375802
  · exact cover_375849
#print axioms cover_375801

def state_375800 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 46) else (if j.val < 3 then 39 else (if j.val < 4 then 45 else 48)))
theorem cover_375800 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_375800 := by
  apply coveredState_split_literal (state := state_375800) 4
    state_375801 state_375866
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_375801
  · exact cover_375866
#print axioms cover_375800

def state_375760 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 46) else (if j.val < 3 then 19 else (if j.val < 4 then 45 else 48)))
theorem cover_375760 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_375760 := by
  apply coveredState_split_literal (state := state_375760) 2
    state_375761 state_375800
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_375761
  · exact cover_375800
#print axioms cover_375760

def state_375706 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 46) else (if j.val < 3 then 19 else (if j.val < 4 then 45 else 48)))
theorem cover_375706 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_375706 := by
  apply coveredState_split_literal (state := state_375706) 0
    state_375707 state_375760
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_375707
  · exact cover_375760
#print axioms cover_375706

def state_375686 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 46) else (if j.val < 3 then 19 else (if j.val < 4 then 22 else 48)))
theorem cover_375686 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_375686 := by
  apply coveredState_split_literal (state := state_375686) 3
    state_375687 state_375706
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_375687
  · exact cover_375706
#print axioms cover_375686

def state_375685 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 46) else (if j.val < 3 then 19 else (if j.val < 4 then 22 else 24)))
theorem cover_375685 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_375685 := by
  apply coveredState_split_literal (state := state_375685) 4
    state_375686 state_375883
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_375686
  · exact cover_375883
#print axioms cover_375685

def state_375684 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 23) else (if j.val < 3 then 19 else (if j.val < 4 then 22 else 24)))
theorem cover_375684 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_375684 := by
  apply coveredState_split_literal (state := state_375684) 1
    state_375685 state_375888
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_375685
  · exact cover_375888
#print axioms cover_375684

def state_375654 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 23) else (if j.val < 3 then 9 else (if j.val < 4 then 22 else 24)))
theorem cover_375654 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_375654 := by
  apply coveredState_split_literal (state := state_375654) 2
    state_375655 state_375684
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_375655
  · exact cover_375684
#print axioms cover_375654

def state_375640 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 23) else (if j.val < 3 then 9 else (if j.val < 4 then 22 else 24)))
theorem cover_375640 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_375640 := by
  apply coveredState_split_literal (state := state_375640) 0
    state_375641 state_375654
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_375641
  · exact cover_375654
#print axioms cover_375640

def state_375639 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 23) else (if j.val < 3 then 9 else (if j.val < 4 then 22 else 12)))
theorem cover_375639 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_375639 := by
  apply coveredState_split_literal (state := state_375639) 4
    state_375640 state_375903
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_375640
  · exact cover_375903
#print axioms cover_375639

def state_376017 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 92) else (if j.val < 3 then 39 else (if j.val < 4 then 92 else 96)))
theorem cover_376017 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_376017 := by
  apply coveredState_split_literal (state := state_376017) 0
    state_376018 state_376065
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_376018
  · exact cover_376065
#print axioms cover_376017

def state_376016 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 92) else (if j.val < 3 then 39 else (if j.val < 4 then 46 else 96)))
theorem cover_376016 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_376016 := by
  apply coveredState_split_literal (state := state_376016) 3
    state_376017 state_376094
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_376017
  · exact cover_376094
#print axioms cover_376016

def state_376015 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 46) else (if j.val < 3 then 39 else (if j.val < 4 then 46 else 96)))
theorem cover_376015 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_376015 := by
  apply coveredState_split_literal (state := state_376015) 1
    state_376016 state_376115
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_376016
  · exact cover_376115
#print axioms cover_376015

def state_376014 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 46) else (if j.val < 3 then 39 else (if j.val < 4 then 46 else 48)))
theorem cover_376014 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_376014 := by
  apply coveredState_split_literal (state := state_376014) 4
    state_376015 state_376140
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_376015
  · exact cover_376140
#print axioms cover_376014

def state_375984 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 46) else (if j.val < 3 then 19 else (if j.val < 4 then 46 else 48)))
theorem cover_375984 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_375984 := by
  apply coveredState_split_literal (state := state_375984) 2
    state_375985 state_376014
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_375985
  · exact cover_376014
#print axioms cover_375984

def state_375936 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 46) else (if j.val < 3 then 19 else (if j.val < 4 then 46 else 48)))
theorem cover_375936 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_375936 := by
  apply coveredState_split_literal (state := state_375936) 0
    state_375937 state_375984
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_375937
  · exact cover_375984
#print axioms cover_375936

def state_375935 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 46) else (if j.val < 3 then 19 else (if j.val < 4 then 46 else 24)))
theorem cover_375935 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_375935 := by
  apply coveredState_split_literal (state := state_375935) 4
    state_375936 state_376191
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_375936
  · exact cover_376191
#print axioms cover_375935

def state_375934 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 46) else (if j.val < 3 then 19 else (if j.val < 4 then 23 else 24)))
theorem cover_375934 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_375934 := by
  apply coveredState_split_literal (state := state_375934) 3
    state_375935 state_376208
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_375935
  · exact cover_376208
#print axioms cover_375934

def state_375933 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 23) else (if j.val < 3 then 19 else (if j.val < 4 then 23 else 24)))
theorem cover_375933 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_375933 := by
  apply coveredState_split_literal (state := state_375933) 1
    state_375934 state_376223
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_375934
  · exact cover_376223
#print axioms cover_375933

def state_375923 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 23) else (if j.val < 3 then 9 else (if j.val < 4 then 23 else 24)))
theorem cover_375923 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨15, by decide⟩ : Fin 32)) state_375923 := by
  apply coveredState_split_literal (state := state_375923) 2
    state_375924 state_375933
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_375924
  · exact cover_375933
#print axioms cover_375923
end Mub6.Numerical.CircleFullPrototype.Forest
