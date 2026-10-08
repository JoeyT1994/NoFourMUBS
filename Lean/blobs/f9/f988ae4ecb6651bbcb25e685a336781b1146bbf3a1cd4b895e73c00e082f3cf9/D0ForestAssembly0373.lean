import D0FullInterface
import D0ForestAssembly0372
import D0ForestChunk1451
import D0ForestChunk1454
import D0ForestChunk1455
import D0ForestChunk1456
import D0ForestChunk1457
import D0ForestChunk1458
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1649765 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 99) else (if j.val < 3 then 60 else (if j.val < 4 then 52 else 42)))
theorem cover_1649765 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1649765 := by
  apply coveredState_split_literal (state := state_1649765) 3
    state_1649766 state_1649775
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1649766
  · exact cover_1649775
#print axioms cover_1649765

def state_1649749 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 99) else (if j.val < 3 then 60 else (if j.val < 4 then 52 else 42)))
theorem cover_1649749 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1649749 := by
  apply coveredState_split_literal (state := state_1649749) 0
    state_1649750 state_1649765
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1649750
  · exact cover_1649765
#print axioms cover_1649749

def state_1649723 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 49) else (if j.val < 3 then 60 else (if j.val < 4 then 52 else 42)))
theorem cover_1649723 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1649723 := by
  apply coveredState_split_literal (state := state_1649723) 1
    state_1649724 state_1649749
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1649724
  · exact cover_1649749
#print axioms cover_1649723

def state_1649722 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 49) else (if j.val < 3 then 30 else (if j.val < 4 then 52 else 42)))
theorem cover_1649722 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1649722 := by
  apply coveredState_split_literal (state := state_1649722) 2
    state_1649723 state_1649916
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1649723
  · exact cover_1649916
#print axioms cover_1649722

def state_1649721 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 49) else (if j.val < 3 then 30 else (if j.val < 4 then 52 else 21)))
theorem cover_1649721 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1649721 := by
  apply coveredState_split_literal (state := state_1649721) 4
    state_1649722 state_1649943
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1649722
  · exact cover_1649943
#print axioms cover_1649721

def state_1650019 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 99) else (if j.val < 3 then 60 else (if j.val < 4 then 106 else 85)))
theorem cover_1650019 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1650019 := by
  apply coveredState_split_literal (state := state_1650019) 2
    state_1650020 state_1650065
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1650020
  · exact cover_1650065
#print axioms cover_1650019

def state_1649979 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 99) else (if j.val < 3 then 60 else (if j.val < 4 then 106 else 42)))
theorem cover_1649979 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1649979 := by
  apply coveredState_split_literal (state := state_1649979) 4
    state_1649980 state_1650019
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1649980
  · exact cover_1650019
#print axioms cover_1649979

def state_1649978 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 99) else (if j.val < 3 then 60 else (if j.val < 4 then 53 else 42)))
theorem cover_1649978 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1649978 := by
  apply coveredState_split_literal (state := state_1649978) 3
    state_1649979 state_1650084
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1649979
  · exact cover_1650084
#print axioms cover_1649978

def state_1649964 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 99) else (if j.val < 3 then 60 else (if j.val < 4 then 53 else 42)))
theorem cover_1649964 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1649964 := by
  apply coveredState_split_literal (state := state_1649964) 0
    state_1649965 state_1649978
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1649965
  · exact cover_1649978
#print axioms cover_1649964

def state_1649946 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 49) else (if j.val < 3 then 60 else (if j.val < 4 then 53 else 42)))
theorem cover_1649946 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1649946 := by
  apply coveredState_split_literal (state := state_1649946) 1
    state_1649947 state_1649964
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1649947
  · exact cover_1649964
#print axioms cover_1649946

def state_1649945 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 49) else (if j.val < 3 then 30 else (if j.val < 4 then 53 else 42)))
theorem cover_1649945 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1649945 := by
  apply coveredState_split_literal (state := state_1649945) 2
    state_1649946 state_1650097
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1649946
  · exact cover_1650097
#print axioms cover_1649945

def state_1650119 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 49) else (if j.val < 3 then 60 else (if j.val < 4 then 53 else 43)))
theorem cover_1650119 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1650119 := by
  apply coveredState_split_literal (state := state_1650119) 1
    state_1650120 state_1650127
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1650120
  · exact cover_1650127
#print axioms cover_1650119

def state_1650118 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 49) else (if j.val < 3 then 30 else (if j.val < 4 then 53 else 43)))
theorem cover_1650118 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1650118 := by
  apply coveredState_split_literal (state := state_1650118) 2
    state_1650119 state_1650190
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1650119
  · exact cover_1650190
#print axioms cover_1650118

def state_1649944 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 49) else (if j.val < 3 then 30 else (if j.val < 4 then 53 else 21)))
theorem cover_1649944 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1649944 := by
  apply coveredState_split_literal (state := state_1649944) 4
    state_1649945 state_1650118
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1649945
  · exact cover_1650118
#print axioms cover_1649944

def state_1649720 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 49) else (if j.val < 3 then 30 else (if j.val < 4 then 26 else 21)))
theorem cover_1649720 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1649720 := by
  apply coveredState_split_literal (state := state_1649720) 3
    state_1649721 state_1649944
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1649721
  · exact cover_1649944
#print axioms cover_1649720

def state_1649714 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 49) else (if j.val < 3 then 30 else (if j.val < 4 then 26 else 21)))
theorem cover_1649714 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1649714 := by
  apply coveredState_split_literal (state := state_1649714) 0
    state_1649715 state_1649720
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1649715
  · exact cover_1649720
#print axioms cover_1649714

def state_1649684 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 30 else (if j.val < 4 then 26 else 21)))
theorem cover_1649684 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1649684 := by
  apply coveredState_split_literal (state := state_1649684) 1
    state_1649685 state_1649714
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1649685
  · exact cover_1649714
#print axioms cover_1649684

def state_1649683 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 15 else (if j.val < 4 then 26 else 21)))
theorem cover_1649683 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1649683 := by
  apply coveredState_split_literal (state := state_1649683) 2
    state_1649684 state_1650203
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1649684
  · exact cover_1650203
#print axioms cover_1649683

def state_1649193 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 15 else (if j.val < 4 then 26 else 10)))
theorem cover_1649193 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1649193 := by
  apply coveredState_split_literal (state := state_1649193) 4
    state_1649194 state_1649683
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1649194
  · exact cover_1649683
#print axioms cover_1649193

def state_1649192 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 24) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 10)))
theorem cover_1649192 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1649192 := by
  apply coveredState_split_literal (state := state_1649192) 3
    state_1649193 state_1650220
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1649193
  · exact cover_1650220
#print axioms cover_1649192

def state_1649186 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 24) else (if j.val < 3 then 15 else (if j.val < 4 then 13 else 10)))
theorem cover_1649186 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1649186 := by
  apply coveredState_split_literal (state := state_1649186) 0
    state_1649187 state_1649192
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1649187
  · exact cover_1649192
#print axioms cover_1649186

def state_1650299 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 50) else (if j.val < 3 then 30 else (if j.val < 4 then 52 else 40)))
theorem cover_1650299 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1650299 := by
  apply coveredState_split_literal (state := state_1650299) 2
    state_1650300 state_1650357
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1650300
  · exact cover_1650357
#print axioms cover_1650299

def state_1650389 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 100) else (if j.val < 3 then 60 else (if j.val < 4 then 52 else 41)))
theorem cover_1650389 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1650389 := by
  apply coveredState_split_literal (state := state_1650389) 3
    state_1650390 state_1650445
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1650390
  · exact cover_1650445
#print axioms cover_1650389

def state_1650500 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 100) else (if j.val < 3 then 60 else (if j.val < 4 then 105 else 83)))
theorem cover_1650500 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1650500 := by
  apply coveredState_split_literal (state := state_1650500) 2
    state_1650501 state_1650558
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1650501
  · exact cover_1650558
#print axioms cover_1650500

def state_1650472 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 100) else (if j.val < 3 then 60 else (if j.val < 4 then 105 else 41)))
theorem cover_1650472 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1650472 := by
  apply coveredState_split_literal (state := state_1650472) 4
    state_1650473 state_1650500
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1650473
  · exact cover_1650500
#print axioms cover_1650472

def state_1650470 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 100) else (if j.val < 3 then 60 else (if j.val < 4 then 52 else 41)))
theorem cover_1650470 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1650470 := by
  apply coveredState_split_literal (state := state_1650470) 3
    state_1650471 state_1650472
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1650471
  · exact cover_1650472
#print axioms cover_1650470

def state_1650388 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 100) else (if j.val < 3 then 60 else (if j.val < 4 then 52 else 41)))
theorem cover_1650388 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1650388 := by
  apply coveredState_split_literal (state := state_1650388) 0
    state_1650389 state_1650470
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1650389
  · exact cover_1650470
#print axioms cover_1650388

def state_1650591 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 101) else (if j.val < 3 then 60 else (if j.val < 4 then 52 else 41)))
theorem cover_1650591 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1650591 := by
  apply coveredState_split_literal (state := state_1650591) 0
    state_1650592 state_1650615
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1650592
  · exact cover_1650615
#print axioms cover_1650591

def state_1650387 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 50) else (if j.val < 3 then 60 else (if j.val < 4 then 52 else 41)))
theorem cover_1650387 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1650387 := by
  apply coveredState_split_literal (state := state_1650387) 1
    state_1650388 state_1650591
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1650388
  · exact cover_1650591
#print axioms cover_1650387

def state_1650668 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 100) else (if j.val < 3 then 61 else (if j.val < 4 then 104 else 41)))
theorem cover_1650668 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1650668 := by
  apply coveredState_split_literal (state := state_1650668) 4
    state_1650669 state_1650722
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1650669
  · exact cover_1650722
#print axioms cover_1650668

def state_1650667 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 100) else (if j.val < 3 then 61 else (if j.val < 4 then 52 else 41)))
theorem cover_1650667 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1650667 := by
  apply coveredState_split_literal (state := state_1650667) 3
    state_1650668 state_1650749
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1650668
  · exact cover_1650749
#print axioms cover_1650667

def state_1650661 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 100) else (if j.val < 3 then 61 else (if j.val < 4 then 52 else 41)))
theorem cover_1650661 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1650661 := by
  apply coveredState_split_literal (state := state_1650661) 0
    state_1650662 state_1650667
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1650662
  · exact cover_1650667
#print axioms cover_1650661
end Mub6.Numerical.CircleFullD0.Forest
