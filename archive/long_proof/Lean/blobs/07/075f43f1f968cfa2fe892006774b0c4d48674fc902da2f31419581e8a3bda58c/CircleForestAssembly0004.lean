import CircleFullInterface
import CircleForestAssembly0002
import CircleForestAssembly0003
import CircleForestChunk0013
import CircleForestChunk0014
import CircleForestChunk0015
import CircleForestChunk0016
import CircleForestChunk0017
import CircleForestChunk0018
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_15 : State := rootState
theorem cover_15 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨0, by decide⟩ : Fin 32)) state_15 := by
  apply coveredState_split_literal (state := state_15) 0
    state_16 state_1449
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_16
  · exact cover_1449
#print axioms cover_15

def state_2938 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_2938 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_2938 := by
  apply coveredState_split_literal (state := state_2938) 1
    state_2939 state_2960
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2939
  · exact cover_2960
#print axioms cover_2938

def state_3003 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_3003 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_3003 := by
  apply coveredState_split_literal (state := state_3003) 1
    state_3004 state_3051
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_3004
  · exact cover_3051
#print axioms cover_3003

def state_2937 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_2937 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_2937 := by
  apply coveredState_split_literal (state := state_2937) 0
    state_2938 state_3003
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2938
  · exact cover_3003
#print axioms cover_2937

def state_3114 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 3)))
theorem cover_3114 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_3114 := by
  apply coveredState_split_literal (state := state_3114) 3
    state_3115 state_3154
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_3115
  · exact cover_3154
#print axioms cover_3114

def state_3108 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_3108 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_3108 := by
  apply coveredState_split_literal (state := state_3108) 2
    state_3109 state_3114
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_3109
  · exact cover_3114
#print axioms cover_3108

def state_3107 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_3107 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_3107 := by
  apply coveredState_split_literal (state := state_3107) 1
    state_3108 state_3201
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_3108
  · exact cover_3201
#print axioms cover_3107

def state_3218 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_3218 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_3218 := by
  apply coveredState_split_literal (state := state_3218) 1
    state_3219 state_3266
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_3219
  · exact cover_3266
#print axioms cover_3218

def state_3106 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_3106 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_3106 := by
  apply coveredState_split_literal (state := state_3106) 0
    state_3107 state_3218
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_3107
  · exact cover_3218
#print axioms cover_3106

def state_2936 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 1)))
theorem cover_2936 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_2936 := by
  apply coveredState_split_literal (state := state_2936) 4
    state_2937 state_3106
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2937
  · exact cover_3106
#print axioms cover_2936

def state_3312 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 2)))
theorem cover_3312 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_3312 := by
  apply coveredState_split_literal (state := state_3312) 3
    state_3313 state_3342
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_3313
  · exact cover_3342
#print axioms cover_3312

def state_3311 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_3311 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_3311 := by
  apply coveredState_split_literal (state := state_3311) 2
    state_3312 state_3401
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_3312
  · exact cover_3401
#print axioms cover_3311

def state_3297 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_3297 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_3297 := by
  apply coveredState_split_literal (state := state_3297) 1
    state_3298 state_3311
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_3298
  · exact cover_3311
#print axioms cover_3297

def state_3410 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_3410 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_3410 := by
  apply coveredState_split_literal (state := state_3410) 1
    state_3411 state_3450
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_3411
  · exact cover_3450
#print axioms cover_3410

def state_3296 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_3296 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_3296 := by
  apply coveredState_split_literal (state := state_3296) 0
    state_3297 state_3410
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_3297
  · exact cover_3410
#print axioms cover_3296

def state_3515 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_3515 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_3515 := by
  apply coveredState_split_literal (state := state_3515) 1
    state_3516 state_3541
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_3516
  · exact cover_3541
#print axioms cover_3515

def state_3489 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_3489 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_3489 := by
  apply coveredState_split_literal (state := state_3489) 0
    state_3490 state_3515
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_3490
  · exact cover_3515
#print axioms cover_3489

def state_3295 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 1)))
theorem cover_3295 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_3295 := by
  apply coveredState_split_literal (state := state_3295) 4
    state_3296 state_3489
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_3296
  · exact cover_3489
#print axioms cover_3295

def state_2935 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_2935 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_2935 := by
  apply coveredState_split_literal (state := state_2935) 3
    state_2936 state_3295
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2936
  · exact cover_3295
#print axioms cover_2935

def state_3609 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 5)))
theorem cover_3609 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_3609 := by
  apply coveredState_split_literal (state := state_3609) 4
    state_3610 state_3625
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_3610
  · exact cover_3625
#print axioms cover_3609

def state_3607 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 2)))
theorem cover_3607 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_3607 := by
  apply coveredState_split_literal (state := state_3607) 4
    state_3608 state_3609
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_3608
  · exact cover_3609
#print axioms cover_3607

def state_3606 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 2)))
theorem cover_3606 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_3606 := by
  apply coveredState_split_literal (state := state_3606) 3
    state_3607 state_3678
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_3607
  · exact cover_3678
#print axioms cover_3606

def state_3588 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_3588 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_3588 := by
  apply coveredState_split_literal (state := state_3588) 2
    state_3589 state_3606
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_3589
  · exact cover_3606
#print axioms cover_3588

def state_3689 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_3689 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_3689 := by
  apply coveredState_split_literal (state := state_3689) 2
    state_3690 state_3723
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_3690
  · exact cover_3723
#print axioms cover_3689

def state_3587 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_3587 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_3587 := by
  apply coveredState_split_literal (state := state_3587) 1
    state_3588 state_3689
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_3588
  · exact cover_3689
#print axioms cover_3587

def state_3784 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_3784 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_3784 := by
  apply coveredState_split_literal (state := state_3784) 1
    state_3785 state_3834
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_3785
  · exact cover_3834
#print axioms cover_3784

def state_3586 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_3586 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_3586 := by
  apply coveredState_split_literal (state := state_3586) 0
    state_3587 state_3784
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_3587
  · exact cover_3784
#print axioms cover_3586

def state_3892 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 3)))
theorem cover_3892 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_3892 := by
  apply coveredState_split_literal (state := state_3892) 3
    state_3893 state_3920
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_3893
  · exact cover_3920
#print axioms cover_3892

def state_3961 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 3)))
theorem cover_3961 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_3961 := by
  apply coveredState_split_literal (state := state_3961) 3
    state_3962 state_3983
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_3962
  · exact cover_3983
#print axioms cover_3961

def state_3891 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_3891 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_3891 := by
  apply coveredState_split_literal (state := state_3891) 2
    state_3892 state_3961
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_3892
  · exact cover_3961
#print axioms cover_3891

def state_3890 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_3890 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_3890 := by
  apply coveredState_split_literal (state := state_3890) 1
    state_3891 state_4044
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_3891
  · exact cover_4044
#print axioms cover_3890

def state_4145 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_4145 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨1, by decide⟩ : Fin 32)) state_4145 := by
  apply coveredState_split_literal (state := state_4145) 2
    state_4146 state_4189
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_4146
  · exact cover_4189
#print axioms cover_4145
end Mub6.Numerical.CircleFullPrototype.Forest
