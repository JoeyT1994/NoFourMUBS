import CircleFullInterface
import CircleForestAssembly0104
import CircleForestChunk0417
import CircleForestChunk0418
import CircleForestChunk0419
import CircleForestChunk0420
import CircleForestChunk0421
import CircleForestChunk0422
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_175940 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 50) else (if j.val < 3 then 19 else (if j.val < 4 then 29 else 48)))
theorem cover_175940 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_175940 := by
  apply coveredState_split_literal (state := state_175940) 0
    state_175941 state_176030
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_175941
  · exact cover_176030
#print axioms cover_175940

def state_175939 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 19 else (if j.val < 4 then 29 else 48)))
theorem cover_175939 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_175939 := by
  apply coveredState_split_literal (state := state_175939) 1
    state_175940 state_176057
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_175940
  · exact cover_176057
#print axioms cover_175939

def state_175938 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 19 else (if j.val < 4 then 29 else 24)))
theorem cover_175938 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_175938 := by
  apply coveredState_split_literal (state := state_175938) 4
    state_175939 state_176086
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_175939
  · exact cover_176086
#print axioms cover_175938

def state_175932 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 19 else (if j.val < 4 then 14 else 24)))
theorem cover_175932 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_175932 := by
  apply coveredState_split_literal (state := state_175932) 3
    state_175933 state_175938
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_175933
  · exact cover_175938
#print axioms cover_175932

def state_175908 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 24)))
theorem cover_175908 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_175908 := by
  apply coveredState_split_literal (state := state_175908) 2
    state_175909 state_175932
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_175909
  · exact cover_175932
#print axioms cover_175908

def state_175868 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 24)))
theorem cover_175868 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_175868 := by
  apply coveredState_split_literal (state := state_175868) 0
    state_175869 state_175908
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_175869
  · exact cover_175908
#print axioms cover_175868

def state_175867 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 12)))
theorem cover_175867 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_175867 := by
  apply coveredState_split_literal (state := state_175867) 4
    state_175868 state_176099
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_175868
  · exact cover_176099
#print axioms cover_175867

def state_175779 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 12) else (if j.val < 3 then 9 else (if j.val < 4 then 14 else 12)))
theorem cover_175779 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_175779 := by
  apply coveredState_split_literal (state := state_175779) 1
    state_175780 state_175867
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_175780
  · exact cover_175867
#print axioms cover_175779

def state_176153 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 49) else (if j.val < 3 then 19 else (if j.val < 4 then 30 else 48)))
theorem cover_176153 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_176153 := by
  apply coveredState_split_literal (state := state_176153) 2
    state_176154 state_176189
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_176154
  · exact cover_176189
#print axioms cover_176153

def state_176152 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 49) else (if j.val < 3 then 19 else (if j.val < 4 then 30 else 48)))
theorem cover_176152 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_176152 := by
  apply coveredState_split_literal (state := state_176152) 0
    state_176153 state_176234
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_176153
  · exact cover_176234
#print axioms cover_176152

def state_176151 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 49) else (if j.val < 3 then 19 else (if j.val < 4 then 30 else 24)))
theorem cover_176151 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_176151 := by
  apply coveredState_split_literal (state := state_176151) 4
    state_176152 state_176287
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_176152
  · exact cover_176287
#print axioms cover_176151

def state_176143 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 24) else (if j.val < 3 then 19 else (if j.val < 4 then 30 else 24)))
theorem cover_176143 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_176143 := by
  apply coveredState_split_literal (state := state_176143) 1
    state_176144 state_176151
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_176144
  · exact cover_176151
#print axioms cover_176143

def state_176142 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 24) else (if j.val < 3 then 19 else (if j.val < 4 then 15 else 24)))
theorem cover_176142 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_176142 := by
  apply coveredState_split_literal (state := state_176142) 3
    state_176143 state_176292
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_176143
  · exact cover_176292
#print axioms cover_176142

def state_176132 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 24) else (if j.val < 3 then 9 else (if j.val < 4 then 15 else 24)))
theorem cover_176132 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_176132 := by
  apply coveredState_split_literal (state := state_176132) 2
    state_176133 state_176142
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_176133
  · exact cover_176142
#print axioms cover_176132

def state_176108 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 24) else (if j.val < 3 then 9 else (if j.val < 4 then 15 else 24)))
theorem cover_176108 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_176108 := by
  apply coveredState_split_literal (state := state_176108) 0
    state_176109 state_176132
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_176109
  · exact cover_176132
#print axioms cover_176108

def state_176107 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 24) else (if j.val < 3 then 9 else (if j.val < 4 then 15 else 12)))
theorem cover_176107 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_176107 := by
  apply coveredState_split_literal (state := state_176107) 4
    state_176108 state_176315
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_176108
  · exact cover_176315
#print axioms cover_176107

def state_176402 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 50) else (if j.val < 3 then 38 else (if j.val < 4 then 30 else 48)))
theorem cover_176402 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_176402 := by
  apply coveredState_split_literal (state := state_176402) 3
    state_176403 state_176428
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_176403
  · exact cover_176428
#print axioms cover_176402

def state_176529 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 50) else (if j.val < 3 then 39 else (if j.val < 4 then 61 else 48)))
theorem cover_176529 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_176529 := by
  apply coveredState_split_literal (state := state_176529) 4
    state_176530 state_176587
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_176530
  · exact cover_176587
#print axioms cover_176529

def state_176469 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 50) else (if j.val < 3 then 39 else (if j.val < 4 then 30 else 48)))
theorem cover_176469 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_176469 := by
  apply coveredState_split_literal (state := state_176469) 3
    state_176470 state_176529
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_176470
  · exact cover_176529
#print axioms cover_176469

def state_176401 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 50) else (if j.val < 3 then 19 else (if j.val < 4 then 30 else 48)))
theorem cover_176401 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_176401 := by
  apply coveredState_split_literal (state := state_176401) 2
    state_176402 state_176469
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_176402
  · exact cover_176469
#print axioms cover_176401

def state_176694 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 50) else (if j.val < 3 then 39 else (if j.val < 4 then 61 else 48)))
theorem cover_176694 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_176694 := by
  apply coveredState_split_literal (state := state_176694) 4
    state_176695 state_176742
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_176695
  · exact cover_176742
#print axioms cover_176694

def state_176636 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 50) else (if j.val < 3 then 39 else (if j.val < 4 then 30 else 48)))
theorem cover_176636 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_176636 := by
  apply coveredState_split_literal (state := state_176636) 3
    state_176637 state_176694
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_176637
  · exact cover_176694
#print axioms cover_176636

def state_176604 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 50) else (if j.val < 3 then 19 else (if j.val < 4 then 30 else 48)))
theorem cover_176604 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_176604 := by
  apply coveredState_split_literal (state := state_176604) 2
    state_176605 state_176636
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_176605
  · exact cover_176636
#print axioms cover_176604

def state_176400 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 50) else (if j.val < 3 then 19 else (if j.val < 4 then 30 else 48)))
theorem cover_176400 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_176400 := by
  apply coveredState_split_literal (state := state_176400) 0
    state_176401 state_176604
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_176401
  · exact cover_176604
#print axioms cover_176400

def state_176399 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 19 else (if j.val < 4 then 30 else 48)))
theorem cover_176399 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_176399 := by
  apply coveredState_split_literal (state := state_176399) 1
    state_176400 state_176779
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_176400
  · exact cover_176779
#print axioms cover_176399

def state_176398 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 19 else (if j.val < 4 then 30 else 24)))
theorem cover_176398 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_176398 := by
  apply coveredState_split_literal (state := state_176398) 4
    state_176399 state_176834
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_176399
  · exact cover_176834
#print axioms cover_176398

def state_176397 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 19 else (if j.val < 4 then 15 else 24)))
theorem cover_176397 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_176397 := by
  apply coveredState_split_literal (state := state_176397) 3
    state_176398 state_176895
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_176398
  · exact cover_176895
#print axioms cover_176397

def state_176375 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 15 else 24)))
theorem cover_176375 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_176375 := by
  apply coveredState_split_literal (state := state_176375) 2
    state_176376 state_176397
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_176376
  · exact cover_176397
#print axioms cover_176375

def state_176317 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 15 else 24)))
theorem cover_176317 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_176317 := by
  apply coveredState_split_literal (state := state_176317) 0
    state_176318 state_176375
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_176318
  · exact cover_176375
#print axioms cover_176317

def state_176316 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 9 else (if j.val < 4 then 15 else 12)))
theorem cover_176316 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_176316 := by
  apply coveredState_split_literal (state := state_176316) 4
    state_176317 state_176940
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_176317
  · exact cover_176940
#print axioms cover_176316

def state_176106 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 12) else (if j.val < 3 then 9 else (if j.val < 4 then 15 else 12)))
theorem cover_176106 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_176106 := by
  apply coveredState_split_literal (state := state_176106) 1
    state_176107 state_176316
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_176107
  · exact cover_176316
#print axioms cover_176106

def state_175778 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 12) else (if j.val < 3 then 9 else (if j.val < 4 then 7 else 12)))
theorem cover_175778 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_175778 := by
  apply coveredState_split_literal (state := state_175778) 3
    state_175779 state_176106
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_175779
  · exact cover_176106
#print axioms cover_175778
end Mub6.Numerical.CircleFullPrototype.Forest
