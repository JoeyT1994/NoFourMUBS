import D0FullInterface
import D0ForestChunk1197
import D0ForestChunk1198
import D0ForestChunk1199
import D0ForestChunk1200
import D0ForestChunk1201
import D0ForestChunk1202
import D0ForestChunk1203
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1588006 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 36) else (if j.val < 3 then 49 else (if j.val < 4 then 27 else 50)))
theorem cover_1588006 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1588006 := by
  apply coveredState_split_literal (state := state_1588006) 0
    state_1588007 state_1588062
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1588007
  · exact cover_1588062
#print axioms cover_1588006

def state_1588086 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 37) else (if j.val < 3 then 49 else (if j.val < 4 then 27 else 50)))
theorem cover_1588086 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1588086 := by
  apply coveredState_split_literal (state := state_1588086) 3
    state_1588087 state_1588098
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1588087
  · exact cover_1588098
#print axioms cover_1588086

def state_1588085 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 37) else (if j.val < 3 then 49 else (if j.val < 4 then 27 else 50)))
theorem cover_1588085 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1588085 := by
  apply coveredState_split_literal (state := state_1588085) 0
    state_1588086 state_1588153
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1588086
  · exact cover_1588153
#print axioms cover_1588085

def state_1588005 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 18) else (if j.val < 3 then 49 else (if j.val < 4 then 27 else 50)))
theorem cover_1588005 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1588005 := by
  apply coveredState_split_literal (state := state_1588005) 1
    state_1588006 state_1588085
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1588006
  · exact cover_1588085
#print axioms cover_1588005

def state_1588231 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 36) else (if j.val < 3 then 99 else (if j.val < 4 then 54 else 51)))
theorem cover_1588231 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1588231 := by
  apply coveredState_split_literal (state := state_1588231) 4
    state_1588232 state_1588293
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1588232
  · exact cover_1588293
#print axioms cover_1588231

def state_1588171 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 36) else (if j.val < 3 then 49 else (if j.val < 4 then 54 else 51)))
theorem cover_1588171 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1588171 := by
  apply coveredState_split_literal (state := state_1588171) 2
    state_1588172 state_1588231
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1588172
  · exact cover_1588231
#print axioms cover_1588171

def state_1588371 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 36) else (if j.val < 3 then 99 else (if j.val < 4 then 55 else 102)))
theorem cover_1588371 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1588371 := by
  apply coveredState_split_literal (state := state_1588371) 0
    state_1588372 state_1588411
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1588372
  · exact cover_1588411
#print axioms cover_1588371

def state_1588370 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 36) else (if j.val < 3 then 99 else (if j.val < 4 then 55 else 51)))
theorem cover_1588370 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1588370 := by
  apply coveredState_split_literal (state := state_1588370) 4
    state_1588371 state_1588448
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1588371
  · exact cover_1588448
#print axioms cover_1588370

def state_1588344 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 36) else (if j.val < 3 then 49 else (if j.val < 4 then 55 else 51)))
theorem cover_1588344 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1588344 := by
  apply coveredState_split_literal (state := state_1588344) 2
    state_1588345 state_1588370
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1588345
  · exact cover_1588370
#print axioms cover_1588344

def state_1588170 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 36) else (if j.val < 3 then 49 else (if j.val < 4 then 27 else 51)))
theorem cover_1588170 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1588170 := by
  apply coveredState_split_literal (state := state_1588170) 3
    state_1588171 state_1588344
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1588171
  · exact cover_1588344
#print axioms cover_1588170

def state_1588169 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 36) else (if j.val < 3 then 49 else (if j.val < 4 then 27 else 51)))
theorem cover_1588169 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1588169 := by
  apply coveredState_split_literal (state := state_1588169) 0
    state_1588170 state_1588499
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1588170
  · exact cover_1588499
#print axioms cover_1588169

def state_1588600 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 37) else (if j.val < 3 then 99 else (if j.val < 4 then 55 else 102)))
theorem cover_1588600 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1588600 := by
  apply coveredState_split_literal (state := state_1588600) 1
    state_1588601 state_1588650
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1588601
  · exact cover_1588650
#print axioms cover_1588600

def state_1588599 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 37) else (if j.val < 3 then 99 else (if j.val < 4 then 55 else 51)))
theorem cover_1588599 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1588599 := by
  apply coveredState_split_literal (state := state_1588599) 4
    state_1588600 state_1588675
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1588600
  · exact cover_1588675
#print axioms cover_1588599

def state_1588589 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 37) else (if j.val < 3 then 49 else (if j.val < 4 then 55 else 51)))
theorem cover_1588589 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1588589 := by
  apply coveredState_split_literal (state := state_1588589) 2
    state_1588590 state_1588599
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1588590
  · exact cover_1588599
#print axioms cover_1588589

def state_1588535 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 37) else (if j.val < 3 then 49 else (if j.val < 4 then 27 else 51)))
theorem cover_1588535 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1588535 := by
  apply coveredState_split_literal (state := state_1588535) 3
    state_1588536 state_1588589
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1588536
  · exact cover_1588589
#print axioms cover_1588535

def state_1588534 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 37) else (if j.val < 3 then 49 else (if j.val < 4 then 27 else 51)))
theorem cover_1588534 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1588534 := by
  apply coveredState_split_literal (state := state_1588534) 0
    state_1588535 state_1588692
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1588535
  · exact cover_1588692
#print axioms cover_1588534

def state_1588168 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 18) else (if j.val < 3 then 49 else (if j.val < 4 then 27 else 51)))
theorem cover_1588168 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1588168 := by
  apply coveredState_split_literal (state := state_1588168) 1
    state_1588169 state_1588534
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1588169
  · exact cover_1588534
#print axioms cover_1588168

def state_1588004 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 18) else (if j.val < 3 then 49 else (if j.val < 4 then 27 else 25)))
theorem cover_1588004 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1588004 := by
  apply coveredState_split_literal (state := state_1588004) 4
    state_1588005 state_1588168
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1588005
  · exact cover_1588168
#print axioms cover_1588004

def state_1587966 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 18) else (if j.val < 3 then 24 else (if j.val < 4 then 27 else 25)))
theorem cover_1587966 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1587966 := by
  apply coveredState_split_literal (state := state_1587966) 2
    state_1587967 state_1588004
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1587967
  · exact cover_1588004
#print axioms cover_1587966

def state_1588709 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 19) else (if j.val < 3 then 49 else (if j.val < 4 then 27 else 25)))
theorem cover_1588709 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1588709 := by
  apply coveredState_split_literal (state := state_1588709) 4
    state_1588710 state_1588753
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1588710
  · exact cover_1588753
#print axioms cover_1588709

def state_1588703 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 19) else (if j.val < 3 then 24 else (if j.val < 4 then 27 else 25)))
theorem cover_1588703 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1588703 := by
  apply coveredState_split_literal (state := state_1588703) 2
    state_1588704 state_1588709
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1588704
  · exact cover_1588709
#print axioms cover_1588703

def state_1587965 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 27 else 25)))
theorem cover_1587965 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1587965 := by
  apply coveredState_split_literal (state := state_1587965) 1
    state_1587966 state_1588703
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1587966
  · exact cover_1588703
#print axioms cover_1587965

def state_1587919 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 13 else 25)))
theorem cover_1587919 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1587919 := by
  apply coveredState_split_literal (state := state_1587919) 3
    state_1587920 state_1587965
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1587920
  · exact cover_1587965
#print axioms cover_1587919

def state_1587918 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 13 else 25)))
theorem cover_1587918 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1587918 := by
  apply coveredState_split_literal (state := state_1587918) 0
    state_1587919 state_1588780
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1587919
  · exact cover_1588780
#print axioms cover_1587918

def state_1587882 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 13 else 12)))
theorem cover_1587882 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1587882 := by
  apply coveredState_split_literal (state := state_1587882) 4
    state_1587883 state_1587918
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1587883
  · exact cover_1587918
#print axioms cover_1587882

def state_1588957 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 36) else (if j.val < 3 then 50 else (if j.val < 4 then 27 else 51)))
theorem cover_1588957 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1588957 := by
  apply coveredState_split_literal (state := state_1588957) 0
    state_1588958 state_1589017
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1588958
  · exact cover_1589017
#print axioms cover_1588957

def state_1589070 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 37) else (if j.val < 3 then 100 else (if j.val < 4 then 55 else 51)))
theorem cover_1589070 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1589070 := by
  apply coveredState_split_literal (state := state_1589070) 4
    state_1589071 state_1589120
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1589071
  · exact cover_1589120
#print axioms cover_1589070

def state_1589069 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 37) else (if j.val < 3 then 50 else (if j.val < 4 then 55 else 51)))
theorem cover_1589069 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1589069 := by
  apply coveredState_split_literal (state := state_1589069) 2
    state_1589070 state_1589147
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1589070
  · exact cover_1589147
#print axioms cover_1589069

def state_1589025 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 40 else 37) else (if j.val < 3 then 50 else (if j.val < 4 then 27 else 51)))
theorem cover_1589025 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1589025 := by
  apply coveredState_split_literal (state := state_1589025) 3
    state_1589026 state_1589069
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1589026
  · exact cover_1589069
#print axioms cover_1589025

def state_1589024 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 37) else (if j.val < 3 then 50 else (if j.val < 4 then 27 else 51)))
theorem cover_1589024 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1589024 := by
  apply coveredState_split_literal (state := state_1589024) 0
    state_1589025 state_1589164
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1589025
  · exact cover_1589164
#print axioms cover_1589024

def state_1588956 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 18) else (if j.val < 3 then 50 else (if j.val < 4 then 27 else 51)))
theorem cover_1588956 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1588956 := by
  apply coveredState_split_literal (state := state_1588956) 1
    state_1588957 state_1589024
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1588957
  · exact cover_1589024
#print axioms cover_1588956

def state_1588898 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 18) else (if j.val < 3 then 50 else (if j.val < 4 then 27 else 25)))
theorem cover_1588898 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1588898 := by
  apply coveredState_split_literal (state := state_1588898) 4
    state_1588899 state_1588956
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1588899
  · exact cover_1588956
#print axioms cover_1588898
end Mub6.Numerical.CircleFullD0.Forest
