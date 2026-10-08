import D0FullInterface
import D0ForestAssembly0534
import D0ForestChunk2110
import D0ForestChunk2111
import D0ForestChunk2112
import D0ForestChunk2113
import D0ForestChunk2114
import D0ForestChunk2115
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2587029 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 36) else (if j.val < 3 then 96 else (if j.val < 4 then 94 else 38)))
theorem cover_2587029 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2587029 := by
  apply coveredState_split_literal (state := state_2587029) 0
    state_2587030 state_2587069
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2587030
  · exact cover_2587069
#print axioms cover_2587029

def state_2587028 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 36) else (if j.val < 3 then 96 else (if j.val < 4 then 47 else 38)))
theorem cover_2587028 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2587028 := by
  apply coveredState_split_literal (state := state_2587028) 3
    state_2587029 state_2587146
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2587029
  · exact cover_2587146
#print axioms cover_2587028

def state_2587206 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 36) else (if j.val < 3 then 97 else (if j.val < 4 then 94 else 77)))
theorem cover_2587206 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2587206 := by
  apply coveredState_split_literal (state := state_2587206) 1
    state_2587207 state_2587220
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2587207
  · exact cover_2587220
#print axioms cover_2587206

def state_2587188 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 36) else (if j.val < 3 then 97 else (if j.val < 4 then 94 else 38)))
theorem cover_2587188 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2587188 := by
  apply coveredState_split_literal (state := state_2587188) 4
    state_2587189 state_2587206
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2587189
  · exact cover_2587206
#print axioms cover_2587188

def state_2587162 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 36) else (if j.val < 3 then 97 else (if j.val < 4 then 94 else 38)))
theorem cover_2587162 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2587162 := by
  apply coveredState_split_literal (state := state_2587162) 0
    state_2587163 state_2587188
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2587163
  · exact cover_2587188
#print axioms cover_2587162

def state_2587161 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 36) else (if j.val < 3 then 97 else (if j.val < 4 then 47 else 38)))
theorem cover_2587161 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2587161 := by
  apply coveredState_split_literal (state := state_2587161) 3
    state_2587162 state_2587277
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2587162
  · exact cover_2587277
#print axioms cover_2587161

def state_2587027 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 36) else (if j.val < 3 then 48 else (if j.val < 4 then 47 else 38)))
theorem cover_2587027 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2587027 := by
  apply coveredState_split_literal (state := state_2587027) 2
    state_2587028 state_2587161
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2587028
  · exact cover_2587161
#print axioms cover_2587027

def state_2587332 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 74) else (if j.val < 3 then 96 else (if j.val < 4 then 94 else 76)))
theorem cover_2587332 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2587332 := by
  apply coveredState_split_literal (state := state_2587332) 2
    state_2587333 state_2587388
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2587333
  · exact cover_2587388
#print axioms cover_2587332

def state_2587331 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 37) else (if j.val < 3 then 96 else (if j.val < 4 then 94 else 76)))
theorem cover_2587331 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2587331 := by
  apply coveredState_split_literal (state := state_2587331) 1
    state_2587332 state_2587417
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2587332
  · exact cover_2587417
#print axioms cover_2587331

def state_2587503 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 74) else (if j.val < 3 then 193 else (if j.val < 4 then 189 else 77)))
theorem cover_2587503 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2587503 := by
  apply coveredState_split_literal (state := state_2587503) 0
    state_2587504 state_2587547
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2587504
  · exact cover_2587547
#print axioms cover_2587503

def state_2587491 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 74) else (if j.val < 3 then 193 else (if j.val < 4 then 94 else 77)))
theorem cover_2587491 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2587491 := by
  apply coveredState_split_literal (state := state_2587491) 3
    state_2587492 state_2587503
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2587492
  · exact cover_2587503
#print axioms cover_2587491

def state_2587447 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 74) else (if j.val < 3 then 96 else (if j.val < 4 then 94 else 77)))
theorem cover_2587447 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2587447 := by
  apply coveredState_split_literal (state := state_2587447) 2
    state_2587448 state_2587491
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2587448
  · exact cover_2587491
#print axioms cover_2587447

def state_2587446 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 37) else (if j.val < 3 then 96 else (if j.val < 4 then 94 else 77)))
theorem cover_2587446 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2587446 := by
  apply coveredState_split_literal (state := state_2587446) 1
    state_2587447 state_2587610
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2587447
  · exact cover_2587610
#print axioms cover_2587446

def state_2587330 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 37) else (if j.val < 3 then 96 else (if j.val < 4 then 94 else 38)))
theorem cover_2587330 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2587330 := by
  apply coveredState_split_literal (state := state_2587330) 4
    state_2587331 state_2587446
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2587331
  · exact cover_2587446
#print axioms cover_2587330

def state_2587304 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 37) else (if j.val < 3 then 96 else (if j.val < 4 then 94 else 38)))
theorem cover_2587304 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2587304 := by
  apply coveredState_split_literal (state := state_2587304) 0
    state_2587305 state_2587330
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2587305
  · exact cover_2587330
#print axioms cover_2587304

def state_2587642 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 102 else 37) else (if j.val < 3 then 96 else (if j.val < 4 then 95 else 38)))
theorem cover_2587642 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2587642 := by
  apply coveredState_split_literal (state := state_2587642) 4
    state_2587643 state_2587684
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2587643
  · exact cover_2587684
#print axioms cover_2587642

def state_2587719 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 37) else (if j.val < 3 then 96 else (if j.val < 4 then 95 else 38)))
theorem cover_2587719 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2587719 := by
  apply coveredState_split_literal (state := state_2587719) 4
    state_2587720 state_2587767
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2587720
  · exact cover_2587767
#print axioms cover_2587719

def state_2587641 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 37) else (if j.val < 3 then 96 else (if j.val < 4 then 95 else 38)))
theorem cover_2587641 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2587641 := by
  apply coveredState_split_literal (state := state_2587641) 0
    state_2587642 state_2587719
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2587642
  · exact cover_2587719
#print axioms cover_2587641

def state_2587303 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 37) else (if j.val < 3 then 96 else (if j.val < 4 then 47 else 38)))
theorem cover_2587303 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2587303 := by
  apply coveredState_split_literal (state := state_2587303) 3
    state_2587304 state_2587641
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2587304
  · exact cover_2587641
#print axioms cover_2587303

def state_2587825 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 37) else (if j.val < 3 then 97 else (if j.val < 4 then 94 else 38)))
theorem cover_2587825 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2587825 := by
  apply coveredState_split_literal (state := state_2587825) 0
    state_2587826 state_2587831
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2587826
  · exact cover_2587831
#print axioms cover_2587825

def state_2587940 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 74) else (if j.val < 3 then 97 else (if j.val < 4 then 190 else 77)))
theorem cover_2587940 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2587940 := by
  apply coveredState_split_literal (state := state_2587940) 2
    state_2587941 state_2588000
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2587941
  · exact cover_2588000
#print axioms cover_2587940

def state_2587939 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 74) else (if j.val < 3 then 97 else (if j.val < 4 then 95 else 77)))
theorem cover_2587939 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2587939 := by
  apply coveredState_split_literal (state := state_2587939) 3
    state_2587940 state_2588007
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2587940
  · exact cover_2588007
#print axioms cover_2587939

def state_2588020 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 75) else (if j.val < 3 then 97 else (if j.val < 4 then 95 else 77)))
theorem cover_2588020 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2588020 := by
  apply coveredState_split_literal (state := state_2588020) 3
    state_2588021 state_2588046
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2588021
  · exact cover_2588046
#print axioms cover_2588020

def state_2587938 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 37) else (if j.val < 3 then 97 else (if j.val < 4 then 95 else 77)))
theorem cover_2587938 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2587938 := by
  apply coveredState_split_literal (state := state_2587938) 1
    state_2587939 state_2588020
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2587939
  · exact cover_2588020
#print axioms cover_2587938

def state_2587900 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 37) else (if j.val < 3 then 97 else (if j.val < 4 then 95 else 38)))
theorem cover_2587900 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2587900 := by
  apply coveredState_split_literal (state := state_2587900) 4
    state_2587901 state_2587938
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2587901
  · exact cover_2587938
#print axioms cover_2587900

def state_2587892 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 37) else (if j.val < 3 then 97 else (if j.val < 4 then 95 else 38)))
theorem cover_2587892 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2587892 := by
  apply coveredState_split_literal (state := state_2587892) 0
    state_2587893 state_2587900
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2587893
  · exact cover_2587900
#print axioms cover_2587892

def state_2587824 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 37) else (if j.val < 3 then 97 else (if j.val < 4 then 47 else 38)))
theorem cover_2587824 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2587824 := by
  apply coveredState_split_literal (state := state_2587824) 3
    state_2587825 state_2587892
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2587825
  · exact cover_2587892
#print axioms cover_2587824

def state_2587302 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 37) else (if j.val < 3 then 48 else (if j.val < 4 then 47 else 38)))
theorem cover_2587302 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2587302 := by
  apply coveredState_split_literal (state := state_2587302) 2
    state_2587303 state_2587824
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2587303
  · exact cover_2587824
#print axioms cover_2587302

def state_2587026 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 18) else (if j.val < 3 then 48 else (if j.val < 4 then 47 else 38)))
theorem cover_2587026 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2587026 := by
  apply coveredState_split_literal (state := state_2587026) 1
    state_2587027 state_2587302
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2587027
  · exact cover_2587302
#print axioms cover_2587026

def state_2588180 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 73) else (if j.val < 3 then 97 else (if j.val < 4 then 94 else 78)))
theorem cover_2588180 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2588180 := by
  apply coveredState_split_literal (state := state_2588180) 2
    state_2588181 state_2588218
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2588181
  · exact cover_2588218
#print axioms cover_2588180

def state_2588156 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 36) else (if j.val < 3 then 97 else (if j.val < 4 then 94 else 78)))
theorem cover_2588156 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2588156 := by
  apply coveredState_split_literal (state := state_2588156) 1
    state_2588157 state_2588180
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2588157
  · exact cover_2588180
#print axioms cover_2588156

def state_2588155 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 103 else 36) else (if j.val < 3 then 97 else (if j.val < 4 then 94 else 39)))
theorem cover_2588155 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2588155 := by
  apply coveredState_split_literal (state := state_2588155) 4
    state_2588156 state_2588249
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2588156
  · exact cover_2588249
#print axioms cover_2588155
end Mub6.Numerical.CircleFullD0.Forest
