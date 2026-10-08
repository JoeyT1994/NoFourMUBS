import D0FullInterface
import D0ForestAssembly0521
import D0ForestAssembly0546
import D0ForestAssembly0547
import D0ForestAssembly0548
import D0ForestChunk2161
import D0ForestChunk2166
import D0ForestChunk2167
import D0ForestChunk2168
import D0ForestChunk2169
import D0ForestChunk2170
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2599551 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 7)))
theorem cover_2599551 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2599551 := by
  apply coveredState_split_literal (state := state_2599551) 2
    state_2599552 state_2600507
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2599552
  · exact cover_2600507
#print axioms cover_2599551

def state_2600638 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 15) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 15)))
theorem cover_2600638 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2600638 := by
  apply coveredState_split_literal (state := state_2600638) 2
    state_2600639 state_2600640
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2600639
  · exact cover_2600640
#print axioms cover_2600638

def state_2600628 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 15) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 7)))
theorem cover_2600628 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2600628 := by
  apply coveredState_split_literal (state := state_2600628) 4
    state_2600629 state_2600638
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2600629
  · exact cover_2600638
#print axioms cover_2600628

def state_2600606 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 7) else (if j.val < 3 then 12 else (if j.val < 4 then 12 else 7)))
theorem cover_2600606 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2600606 := by
  apply coveredState_split_literal (state := state_2600606) 1
    state_2600607 state_2600628
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2600607
  · exact cover_2600628
#print axioms cover_2600606

def state_2600605 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 7) else (if j.val < 3 then 12 else (if j.val < 4 then 6 else 7)))
theorem cover_2600605 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2600605 := by
  apply coveredState_split_literal (state := state_2600605) 3
    state_2600606 state_2600703
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2600606
  · exact cover_2600703
#print axioms cover_2600605

def state_2600730 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 6 else 7)))
theorem cover_2600730 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2600730 := by
  apply coveredState_split_literal (state := state_2600730) 3
    state_2600731 state_2600760
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2600731
  · exact cover_2600760
#print axioms cover_2600730

def state_2600604 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 7)))
theorem cover_2600604 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2600604 := by
  apply coveredState_split_literal (state := state_2600604) 2
    state_2600605 state_2600730
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2600605
  · exact cover_2600730
#print axioms cover_2600604

def state_2599550 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 7)))
theorem cover_2599550 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2599550 := by
  apply coveredState_split_literal (state := state_2599550) 0
    state_2599551 state_2600604
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2599551
  · exact cover_2600604
#print axioms cover_2599550

def state_2599522 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 3)))
theorem cover_2599522 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2599522 := by
  apply coveredState_split_literal (state := state_2599522) 4
    state_2599523 state_2599550
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2599523
  · exact cover_2599550
#print axioms cover_2599522

def state_2599521 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 3)))
theorem cover_2599521 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2599521 := by
  apply coveredState_split_literal (state := state_2599521) 3
    state_2599522 state_2600823
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2599522
  · exact cover_2600823
#print axioms cover_2599521

def state_2599520 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_2599520 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2599520 := by
  apply coveredState_split_literal (state := state_2599520) 2
    state_2599521 state_2600830
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2599521
  · exact cover_2600830
#print axioms cover_2599520

def state_2599402 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_2599402 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2599402 := by
  apply coveredState_split_literal (state := state_2599402) 1
    state_2599403 state_2599520
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2599403
  · exact cover_2599520
#print axioms cover_2599402

def state_2600841 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_2600841 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2600841 := by
  apply coveredState_split_literal (state := state_2600841) 1
    state_2600842 state_2600893
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2600842
  · exact cover_2600893
#print axioms cover_2600841

def state_2599401 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_2599401 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2599401 := by
  apply coveredState_split_literal (state := state_2599401) 0
    state_2599402 state_2600841
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2599402
  · exact cover_2600841
#print axioms cover_2599401

def state_2598913 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 1)))
theorem cover_2598913 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2598913 := by
  apply coveredState_split_literal (state := state_2598913) 4
    state_2598914 state_2599401
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2598914
  · exact cover_2599401
#print axioms cover_2598913

def state_2598719 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
theorem cover_2598719 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2598719 := by
  apply coveredState_split_literal (state := state_2598719) 3
    state_2598720 state_2598913
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2598720
  · exact cover_2598913
#print axioms cover_2598719

def state_2597847 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_2597847 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2597847 := by
  apply coveredState_split_literal (state := state_2597847) 2
    state_2597848 state_2598719
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2597848
  · exact cover_2598719
#print axioms cover_2597847

def state_2573591 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 1) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_2573591 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2573591 := by
  apply coveredState_split_literal (state := state_2573591) 1
    state_2573592 state_2597847
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2573592
  · exact cover_2597847
#print axioms cover_2573591

def state_2546291 : State := rootState
theorem cover_2546291 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2546291 := by
  apply coveredState_split_literal (state := state_2546291) 0
    state_2546292 state_2573591
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2546292
  · exact cover_2573591
#print axioms cover_2546291

def state_2600946 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_2600946 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2600946 := by
  apply coveredState_split_literal (state := state_2600946) 1
    state_2600947 state_2600976
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2600947
  · exact cover_2600976
#print axioms cover_2600946

def state_2601107 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 2)))
theorem cover_2601107 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2601107 := by
  apply coveredState_split_literal (state := state_2601107) 3
    state_2601108 state_2601141
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2601108
  · exact cover_2601141
#print axioms cover_2601107

def state_2601073 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_2601073 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2601073 := by
  apply coveredState_split_literal (state := state_2601073) 2
    state_2601074 state_2601107
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2601074
  · exact cover_2601107
#print axioms cover_2601073

def state_2601027 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_2601027 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2601027 := by
  apply coveredState_split_literal (state := state_2601027) 1
    state_2601028 state_2601073
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2601028
  · exact cover_2601073
#print axioms cover_2601027

def state_2600945 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_2600945 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2600945 := by
  apply coveredState_split_literal (state := state_2600945) 0
    state_2600946 state_2601027
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2600946
  · exact cover_2601027
#print axioms cover_2600945

def state_2601208 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_2601208 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2601208 := by
  apply coveredState_split_literal (state := state_2601208) 1
    state_2601209 state_2601238
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2601209
  · exact cover_2601238
#print axioms cover_2601208

def state_2601176 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_2601176 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2601176 := by
  apply coveredState_split_literal (state := state_2601176) 0
    state_2601177 state_2601208
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2601177
  · exact cover_2601208
#print axioms cover_2601176

def state_2600944 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 1)))
theorem cover_2600944 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2600944 := by
  apply coveredState_split_literal (state := state_2600944) 4
    state_2600945 state_2601176
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2600945
  · exact cover_2601176
#print axioms cover_2600944

def state_2601274 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_2601274 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2601274 := by
  apply coveredState_split_literal (state := state_2601274) 0
    state_2601275 state_2601316
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2601275
  · exact cover_2601316
#print axioms cover_2601274

def state_2601401 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_2601401 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2601401 := by
  apply coveredState_split_literal (state := state_2601401) 1
    state_2601402 state_2601445
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2601402
  · exact cover_2601445
#print axioms cover_2601401

def state_2601365 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_2601365 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2601365 := by
  apply coveredState_split_literal (state := state_2601365) 0
    state_2601366 state_2601401
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2601366
  · exact cover_2601401
#print axioms cover_2601365

def state_2601273 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 1)))
theorem cover_2601273 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2601273 := by
  apply coveredState_split_literal (state := state_2601273) 4
    state_2601274 state_2601365
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2601274
  · exact cover_2601365
#print axioms cover_2601273

def state_2600943 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_2600943 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2600943 := by
  apply coveredState_split_literal (state := state_2600943) 3
    state_2600944 state_2601273
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2600944
  · exact cover_2601273
#print axioms cover_2600943
end Mub6.Numerical.CircleFullD0.Forest
