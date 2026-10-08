import CircleFullInterface
import CircleForestAssembly0045
import CircleForestChunk0178
import CircleForestChunk0179
import CircleForestChunk0180
import CircleForestChunk0181
import CircleForestChunk0182
import CircleForestChunk0183
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_64382 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 10)))
theorem cover_64382 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_64382 := by
  apply coveredState_split_literal (state := state_64382) 0
    state_64383 state_64392
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_64383
  · exact cover_64392
#print axioms cover_64382

def state_64381 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 5)))
theorem cover_64381 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_64381 := by
  apply coveredState_split_literal (state := state_64381) 4
    state_64382 state_64455
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_64382
  · exact cover_64455
#print axioms cover_64381

def state_64367 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 5 else 5)))
theorem cover_64367 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_64367 := by
  apply coveredState_split_literal (state := state_64367) 3
    state_64368 state_64381
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_64368
  · exact cover_64381
#print axioms cover_64367

def state_64366 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 5)))
theorem cover_64366 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_64366 := by
  apply coveredState_split_literal (state := state_64366) 2
    state_64367 state_64466
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_64367
  · exact cover_64466
#print axioms cover_64366

def state_64365 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 5)))
theorem cover_64365 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_64365 := by
  apply coveredState_split_literal (state := state_64365) 1
    state_64366 state_64481
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_64366
  · exact cover_64481
#print axioms cover_64365

def state_64359 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 5)))
theorem cover_64359 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_64359 := by
  apply coveredState_split_literal (state := state_64359) 0
    state_64360 state_64365
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_64360
  · exact cover_64365
#print axioms cover_64359

def state_64321 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 2)))
theorem cover_64321 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_64321 := by
  apply coveredState_split_literal (state := state_64321) 4
    state_64322 state_64359
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_64322
  · exact cover_64359
#print axioms cover_64321

def state_64295 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 2)))
theorem cover_64295 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_64295 := by
  apply coveredState_split_literal (state := state_64295) 3
    state_64296 state_64321
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_64296
  · exact cover_64321
#print axioms cover_64295

def state_64117 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_64117 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_64117 := by
  apply coveredState_split_literal (state := state_64117) 2
    state_64118 state_64295
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_64118
  · exact cover_64295
#print axioms cover_64117

def state_64116 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_64116 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_64116 := by
  apply coveredState_split_literal (state := state_64116) 1
    state_64117 state_64490
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_64117
  · exact cover_64490
#print axioms cover_64116

def state_64090 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_64090 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_64090 := by
  apply coveredState_split_literal (state := state_64090) 0
    state_64091 state_64116
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_64091
  · exact cover_64116
#print axioms cover_64090

def state_64593 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 3)))
theorem cover_64593 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_64593 := by
  apply coveredState_split_literal (state := state_64593) 3
    state_64594 state_64627
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_64594
  · exact cover_64627
#print axioms cover_64593

def state_64541 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_64541 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_64541 := by
  apply coveredState_split_literal (state := state_64541) 2
    state_64542 state_64593
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_64542
  · exact cover_64593
#print axioms cover_64541

def state_64789 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 7)))
theorem cover_64789 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_64789 := by
  apply coveredState_split_literal (state := state_64789) 2
    state_64790 state_64841
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_64790
  · exact cover_64841
#print axioms cover_64789

def state_64741 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 4 else 3)))
theorem cover_64741 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_64741 := by
  apply coveredState_split_literal (state := state_64741) 4
    state_64742 state_64789
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_64742
  · exact cover_64789
#print axioms cover_64741

def state_64884 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 14) else (if j.val < 3 then 10 else (if j.val < 4 then 10 else 7)))
theorem cover_64884 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_64884 := by
  apply coveredState_split_literal (state := state_64884) 4
    state_64885 state_64906
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_64885
  · exact cover_64906
#print axioms cover_64884

def state_64883 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 7) else (if j.val < 3 then 10 else (if j.val < 4 then 10 else 7)))
theorem cover_64883 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_64883 := by
  apply coveredState_split_literal (state := state_64883) 1
    state_64884 state_64959
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_64884
  · exact cover_64959
#print axioms cover_64883

def state_64882 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 10 else (if j.val < 4 then 10 else 7)))
theorem cover_64882 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_64882 := by
  apply coveredState_split_literal (state := state_64882) 0
    state_64883 state_64998
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_64883
  · exact cover_64998
#print axioms cover_64882

def state_64881 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 10 else (if j.val < 4 then 5 else 7)))
theorem cover_64881 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_64881 := by
  apply coveredState_split_literal (state := state_64881) 3
    state_64882 state_65013
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_64882
  · exact cover_65013
#print axioms cover_64881

def state_65042 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 15) else (if j.val < 3 then 11 else (if j.val < 4 then 10 else 7)))
theorem cover_65042 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_65042 := by
  apply coveredState_split_literal (state := state_65042) 4
    state_65043 state_65056
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_65043
  · exact cover_65056
#print axioms cover_65042

def state_65020 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 7) else (if j.val < 3 then 11 else (if j.val < 4 then 10 else 7)))
theorem cover_65020 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_65020 := by
  apply coveredState_split_literal (state := state_65020) 1
    state_65021 state_65042
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_65021
  · exact cover_65042
#print axioms cover_65020

def state_65019 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 11 else (if j.val < 4 then 10 else 7)))
theorem cover_65019 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_65019 := by
  apply coveredState_split_literal (state := state_65019) 0
    state_65020 state_65109
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_65020
  · exact cover_65109
#print axioms cover_65019

def state_65018 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 11 else (if j.val < 4 then 5 else 7)))
theorem cover_65018 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_65018 := by
  apply coveredState_split_literal (state := state_65018) 3
    state_65019 state_65122
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_65019
  · exact cover_65122
#print axioms cover_65018

def state_64880 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 7)))
theorem cover_64880 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_64880 := by
  apply coveredState_split_literal (state := state_64880) 2
    state_64881 state_65018
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_64881
  · exact cover_65018
#print axioms cover_64880

def state_64866 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 3)))
theorem cover_64866 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_64866 := by
  apply coveredState_split_literal (state := state_64866) 4
    state_64867 state_64880
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_64867
  · exact cover_64880
#print axioms cover_64866

def state_64740 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 3)))
theorem cover_64740 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_64740 := by
  apply coveredState_split_literal (state := state_64740) 3
    state_64741 state_64866
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_64741
  · exact cover_64866
#print axioms cover_64740

def state_64688 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_64688 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_64688 := by
  apply coveredState_split_literal (state := state_64688) 2
    state_64689 state_64740
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_64689
  · exact cover_64740
#print axioms cover_64688

def state_64540 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_64540 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_64540 := by
  apply coveredState_split_literal (state := state_64540) 1
    state_64541 state_64688
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_64541
  · exact cover_64688
#print axioms cover_64540

def state_65160 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_65160 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_65160 := by
  apply coveredState_split_literal (state := state_65160) 2
    state_65161 state_65224
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_65161
  · exact cover_65224
#print axioms cover_65160

def state_65263 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_65263 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_65263 := by
  apply coveredState_split_literal (state := state_65263) 2
    state_65264 state_65327
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_65264
  · exact cover_65327
#print axioms cover_65263

def state_65159 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_65159 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_65159 := by
  apply coveredState_split_literal (state := state_65159) 1
    state_65160 state_65263
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_65160
  · exact cover_65263
#print axioms cover_65159

def state_64539 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_64539 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_64539 := by
  apply coveredState_split_literal (state := state_64539) 0
    state_64540 state_65159
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_64540
  · exact cover_65159
#print axioms cover_64539
end Mub6.Numerical.CircleFullPrototype.Forest
