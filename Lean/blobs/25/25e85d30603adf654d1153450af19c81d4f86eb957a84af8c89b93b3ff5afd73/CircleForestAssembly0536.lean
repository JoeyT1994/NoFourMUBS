import CircleFullInterface
import CircleForestAssembly0534
import CircleForestAssembly0535
import CircleForestChunk2107
import CircleForestChunk2110
import CircleForestChunk2114
import CircleForestChunk2115
import CircleForestChunk2116
import CircleForestChunk2117
import CircleForestChunk2118
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_2588135 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 36) else (if j.val < 3 then 97 else (if j.val < 4 then 94 else 39)))
theorem cover_2588135 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2588135 := by
  apply coveredState_split_literal (state := state_2588135) 0
    state_2588136 state_2588155
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2588136
  · exact cover_2588155
#print axioms cover_2588135

def state_2588134 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 36) else (if j.val < 3 then 97 else (if j.val < 4 then 47 else 39)))
theorem cover_2588134 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2588134 := by
  apply coveredState_split_literal (state := state_2588134) 3
    state_2588135 state_2588250
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2588135
  · exact cover_2588250
#print axioms cover_2588134

def state_2588086 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 36) else (if j.val < 3 then 48 else (if j.val < 4 then 47 else 39)))
theorem cover_2588086 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2588086 := by
  apply coveredState_split_literal (state := state_2588086) 2
    state_2588087 state_2588134
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2588087
  · exact cover_2588134
#print axioms cover_2588086

def state_2588314 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 37) else (if j.val < 3 then 97 else (if j.val < 4 then 94 else 39)))
theorem cover_2588314 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2588314 := by
  apply coveredState_split_literal (state := state_2588314) 0
    state_2588315 state_2588322
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2588315
  · exact cover_2588322
#print axioms cover_2588314

def state_2588313 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 37) else (if j.val < 3 then 97 else (if j.val < 4 then 47 else 39)))
theorem cover_2588313 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2588313 := by
  apply coveredState_split_literal (state := state_2588313) 3
    state_2588314 state_2588379
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2588314
  · exact cover_2588379
#print axioms cover_2588313

def state_2588271 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 37) else (if j.val < 3 then 48 else (if j.val < 4 then 47 else 39)))
theorem cover_2588271 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2588271 := by
  apply coveredState_split_literal (state := state_2588271) 2
    state_2588272 state_2588313
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2588272
  · exact cover_2588313
#print axioms cover_2588271

def state_2588085 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 18) else (if j.val < 3 then 48 else (if j.val < 4 then 47 else 39)))
theorem cover_2588085 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2588085 := by
  apply coveredState_split_literal (state := state_2588085) 1
    state_2588086 state_2588271
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2588086
  · exact cover_2588271
#print axioms cover_2588085

def state_2587025 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 18) else (if j.val < 3 then 48 else (if j.val < 4 then 47 else 19)))
theorem cover_2587025 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2587025 := by
  apply coveredState_split_literal (state := state_2587025) 4
    state_2587026 state_2588085
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2587026
  · exact cover_2588085
#print axioms cover_2587025

def state_2586967 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 18) else (if j.val < 3 then 48 else (if j.val < 4 then 47 else 19)))
theorem cover_2586967 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2586967 := by
  apply coveredState_split_literal (state := state_2586967) 0
    state_2586968 state_2587025
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2586968
  · exact cover_2587025
#print axioms cover_2586967

def state_2586665 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 18) else (if j.val < 3 then 48 else (if j.val < 4 then 23 else 19)))
theorem cover_2586665 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2586665 := by
  apply coveredState_split_literal (state := state_2586665) 3
    state_2586666 state_2586967
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2586666
  · exact cover_2586967
#print axioms cover_2586665

def state_2588431 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 18) else (if j.val < 3 then 49 else (if j.val < 4 then 46 else 19)))
theorem cover_2588431 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2588431 := by
  apply coveredState_split_literal (state := state_2588431) 4
    state_2588432 state_2588451
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2588432
  · exact cover_2588451
#print axioms cover_2588431

def state_2588427 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 18) else (if j.val < 3 then 49 else (if j.val < 4 then 46 else 19)))
theorem cover_2588427 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2588427 := by
  apply coveredState_split_literal (state := state_2588427) 0
    state_2588428 state_2588431
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2588428
  · exact cover_2588431
#print axioms cover_2588427

def state_2588564 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 18) else (if j.val < 3 then 49 else (if j.val < 4 then 47 else 39)))
theorem cover_2588564 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2588564 := by
  apply coveredState_split_literal (state := state_2588564) 1
    state_2588565 state_2588622
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2588565
  · exact cover_2588622
#print axioms cover_2588564

def state_2588510 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 18) else (if j.val < 3 then 49 else (if j.val < 4 then 47 else 19)))
theorem cover_2588510 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2588510 := by
  apply coveredState_split_literal (state := state_2588510) 4
    state_2588511 state_2588564
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2588511
  · exact cover_2588564
#print axioms cover_2588510

def state_2588506 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 18) else (if j.val < 3 then 49 else (if j.val < 4 then 47 else 19)))
theorem cover_2588506 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2588506 := by
  apply coveredState_split_literal (state := state_2588506) 0
    state_2588507 state_2588510
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2588507
  · exact cover_2588510
#print axioms cover_2588506

def state_2588426 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 18) else (if j.val < 3 then 49 else (if j.val < 4 then 23 else 19)))
theorem cover_2588426 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2588426 := by
  apply coveredState_split_literal (state := state_2588426) 3
    state_2588427 state_2588506
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2588427
  · exact cover_2588506
#print axioms cover_2588426

def state_2586664 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 18) else (if j.val < 3 then 24 else (if j.val < 4 then 23 else 19)))
theorem cover_2586664 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2586664 := by
  apply coveredState_split_literal (state := state_2586664) 2
    state_2586665 state_2588426
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2586665
  · exact cover_2588426
#print axioms cover_2586664

def state_2586444 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 18) else (if j.val < 3 then 24 else (if j.val < 4 then 23 else 9)))
theorem cover_2586444 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2586444 := by
  apply coveredState_split_literal (state := state_2586444) 4
    state_2586445 state_2586664
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2586445
  · exact cover_2586664
#print axioms cover_2586444

def state_2588669 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 19) else (if j.val < 3 then 48 else (if j.val < 4 then 23 else 18)))
theorem cover_2588669 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2588669 := by
  apply coveredState_split_literal (state := state_2588669) 3
    state_2588670 state_2588683
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2588670
  · exact cover_2588683
#print axioms cover_2588669

def state_2588668 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 19) else (if j.val < 3 then 24 else (if j.val < 4 then 23 else 18)))
theorem cover_2588668 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2588668 := by
  apply coveredState_split_literal (state := state_2588668) 2
    state_2588669 state_2588736
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2588669
  · exact cover_2588736
#print axioms cover_2588668

def state_2588802 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 38) else (if j.val < 3 then 97 else (if j.val < 4 then 47 else 38)))
theorem cover_2588802 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2588802 := by
  apply coveredState_split_literal (state := state_2588802) 3
    state_2588803 state_2588816
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2588803
  · exact cover_2588816
#print axioms cover_2588802

def state_2588770 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 38) else (if j.val < 3 then 48 else (if j.val < 4 then 47 else 38)))
theorem cover_2588770 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2588770 := by
  apply coveredState_split_literal (state := state_2588770) 2
    state_2588771 state_2588802
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2588771
  · exact cover_2588802
#print axioms cover_2588770

def state_2588769 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 38) else (if j.val < 3 then 48 else (if j.val < 4 then 47 else 19)))
theorem cover_2588769 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2588769 := by
  apply coveredState_split_literal (state := state_2588769) 4
    state_2588770 state_2588879
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2588770
  · exact cover_2588879
#print axioms cover_2588769

def state_2588768 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 19) else (if j.val < 3 then 48 else (if j.val < 4 then 47 else 19)))
theorem cover_2588768 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2588768 := by
  apply coveredState_split_literal (state := state_2588768) 1
    state_2588769 state_2588926
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2588769
  · exact cover_2588926
#print axioms cover_2588768

def state_2588760 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 19) else (if j.val < 3 then 48 else (if j.val < 4 then 47 else 19)))
theorem cover_2588760 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2588760 := by
  apply coveredState_split_literal (state := state_2588760) 0
    state_2588761 state_2588768
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2588761
  · exact cover_2588768
#print axioms cover_2588760

def state_2588746 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 19) else (if j.val < 3 then 48 else (if j.val < 4 then 23 else 19)))
theorem cover_2588746 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2588746 := by
  apply coveredState_split_literal (state := state_2588746) 3
    state_2588747 state_2588760
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2588747
  · exact cover_2588760
#print axioms cover_2588746

def state_2588745 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 19) else (if j.val < 3 then 24 else (if j.val < 4 then 23 else 19)))
theorem cover_2588745 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2588745 := by
  apply coveredState_split_literal (state := state_2588745) 2
    state_2588746 state_2588935
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2588746
  · exact cover_2588935
#print axioms cover_2588745

def state_2588667 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 19) else (if j.val < 3 then 24 else (if j.val < 4 then 23 else 9)))
theorem cover_2588667 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2588667 := by
  apply coveredState_split_literal (state := state_2588667) 4
    state_2588668 state_2588745
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2588668
  · exact cover_2588745
#print axioms cover_2588667

def state_2586443 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 23 else 9)))
theorem cover_2586443 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2586443 := by
  apply coveredState_split_literal (state := state_2586443) 1
    state_2586444 state_2588667
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2586444
  · exact cover_2588667
#print axioms cover_2586443

def state_2586397 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 11 else 9)))
theorem cover_2586397 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2586397 := by
  apply coveredState_split_literal (state := state_2586397) 3
    state_2586398 state_2586443
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2586398
  · exact cover_2586443
#print axioms cover_2586397

def state_2586396 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 9)))
theorem cover_2586396 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2586396 := by
  apply coveredState_split_literal (state := state_2586396) 2
    state_2586397 state_2588990
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2586397
  · exact cover_2588990
#print axioms cover_2586396

def state_2586360 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 9) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 9)))
theorem cover_2586360 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2586360 := by
  apply coveredState_split_literal (state := state_2586360) 0
    state_2586361 state_2586396
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2586361
  · exact cover_2586396
#print axioms cover_2586360
end Mub6.Numerical.CircleFullD0.Forest
