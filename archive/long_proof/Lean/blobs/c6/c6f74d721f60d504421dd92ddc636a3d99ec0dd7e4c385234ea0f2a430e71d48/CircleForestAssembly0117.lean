import CircleFullInterface
import CircleForestAssembly0115
import CircleForestAssembly0116
import CircleForestChunk0463
import CircleForestChunk0464
import CircleForestChunk0465
import CircleForestChunk0466
import CircleForestChunk0467
import CircleForestChunk0468
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_185924 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_185924 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_185924 := by
  apply coveredState_split_literal (state := state_185924) 2
    state_185925 state_186174
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_185925
  · exact cover_186174
#print axioms cover_185924

def state_184932 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 1) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_184932 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_184932 := by
  apply coveredState_split_literal (state := state_184932) 1
    state_184933 state_185924
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_184933
  · exact cover_185924
#print axioms cover_184932

def state_164410 : State := rootState
theorem cover_164410 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_164410 := by
  apply coveredState_split_literal (state := state_164410) 0
    state_164411 state_184932
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_164411
  · exact cover_184932
#print axioms cover_164410

def state_272715 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 3)))
theorem cover_272715 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_272715 := by
  apply coveredState_split_literal (state := state_272715) 4
    state_272716 state_272719
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_272716
  · exact cover_272719
#print axioms cover_272715

def state_272665 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 3)))
theorem cover_272665 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_272665 := by
  apply coveredState_split_literal (state := state_272665) 3
    state_272666 state_272715
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_272666
  · exact cover_272715
#print axioms cover_272665

def state_272657 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 4) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_272657 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_272657 := by
  apply coveredState_split_literal (state := state_272657) 2
    state_272658 state_272665
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_272658
  · exact cover_272665
#print axioms cover_272657

def state_272656 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_272656 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_272656 := by
  apply coveredState_split_literal (state := state_272656) 1
    state_272657 state_272780
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_272657
  · exact cover_272780
#print axioms cover_272656

def state_272620 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_272620 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_272620 := by
  apply coveredState_split_literal (state := state_272620) 0
    state_272621 state_272656
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_272621
  · exact cover_272656
#print axioms cover_272620

def state_272560 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 1)))
theorem cover_272560 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_272560 := by
  apply coveredState_split_literal (state := state_272560) 4
    state_272561 state_272620
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_272561
  · exact cover_272620
#print axioms cover_272560

def state_272871 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_272871 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_272871 := by
  apply coveredState_split_literal (state := state_272871) 2
    state_272872 state_272909
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_272872
  · exact cover_272909
#print axioms cover_272871

def state_272835 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_272835 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_272835 := by
  apply coveredState_split_literal (state := state_272835) 1
    state_272836 state_272871
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_272836
  · exact cover_272871
#print axioms cover_272835

def state_273024 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 8)))
theorem cover_273024 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_273024 := by
  apply coveredState_split_literal (state := state_273024) 1
    state_273025 state_273080
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_273025
  · exact cover_273080
#print axioms cover_273024

def state_273023 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 4)))
theorem cover_273023 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_273023 := by
  apply coveredState_split_literal (state := state_273023) 4
    state_273024 state_273097
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_273024
  · exact cover_273097
#print axioms cover_273023

def state_273022 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 4)))
theorem cover_273022 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_273022 := by
  apply coveredState_split_literal (state := state_273022) 2
    state_273023 state_273112
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_273023
  · exact cover_273112
#print axioms cover_273022

def state_273016 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 4)))
theorem cover_273016 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_273016 := by
  apply coveredState_split_literal (state := state_273016) 3
    state_273017 state_273022
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_273017
  · exact cover_273022
#print axioms cover_273016

def state_273002 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 5) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 4)))
theorem cover_273002 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_273002 := by
  apply coveredState_split_literal (state := state_273002) 1
    state_273003 state_273016
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_273003
  · exact cover_273016
#print axioms cover_273002

def state_273132 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 8)))
theorem cover_273132 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_273132 := by
  apply coveredState_split_literal (state := state_273132) 0
    state_273133 state_273190
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_273133
  · exact cover_273190
#print axioms cover_273132

def state_273131 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 4)))
theorem cover_273131 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_273131 := by
  apply coveredState_split_literal (state := state_273131) 4
    state_273132 state_273207
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_273132
  · exact cover_273207
#print axioms cover_273131

def state_273130 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 4)))
theorem cover_273130 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_273130 := by
  apply coveredState_split_literal (state := state_273130) 2
    state_273131 state_273208
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_273131
  · exact cover_273208
#print axioms cover_273130

def state_273124 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 4)))
theorem cover_273124 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_273124 := by
  apply coveredState_split_literal (state := state_273124) 3
    state_273125 state_273130
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_273125
  · exact cover_273130
#print axioms cover_273124

def state_273301 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 22) else (if j.val < 3 then 16 else (if j.val < 4 then 27 else 17)))
theorem cover_273301 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_273301 := by
  apply coveredState_split_literal (state := state_273301) 1
    state_273302 state_273327
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_273302
  · exact cover_273327
#print axioms cover_273301

def state_273300 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 16 else (if j.val < 4 then 27 else 17)))
theorem cover_273300 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_273300 := by
  apply coveredState_split_literal (state := state_273300) 0
    state_273301 state_273376
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_273301
  · exact cover_273376
#print axioms cover_273300

def state_273270 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 16 else (if j.val < 4 then 27 else 8)))
theorem cover_273270 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_273270 := by
  apply coveredState_split_literal (state := state_273270) 4
    state_273271 state_273300
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_273271
  · exact cover_273300
#print axioms cover_273270

def state_273384 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 17 else (if j.val < 4 then 27 else 16)))
theorem cover_273384 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_273384 := by
  apply coveredState_split_literal (state := state_273384) 0
    state_273385 state_273414
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_273385
  · exact cover_273414
#print axioms cover_273384

def state_273529 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 45) else (if j.val < 3 then 17 else (if j.val < 4 then 27 else 17)))
theorem cover_273529 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_273529 := by
  apply coveredState_split_literal (state := state_273529) 3
    state_273530 state_273537
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_273530
  · exact cover_273537
#print axioms cover_273529

def state_273501 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 22) else (if j.val < 3 then 17 else (if j.val < 4 then 27 else 17)))
theorem cover_273501 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_273501 := by
  apply coveredState_split_literal (state := state_273501) 1
    state_273502 state_273529
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_273502
  · exact cover_273529
#print axioms cover_273501

def state_273469 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 17 else (if j.val < 4 then 27 else 17)))
theorem cover_273469 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_273469 := by
  apply coveredState_split_literal (state := state_273469) 0
    state_273470 state_273501
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_273470
  · exact cover_273501
#print axioms cover_273469

def state_273383 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 17 else (if j.val < 4 then 27 else 8)))
theorem cover_273383 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_273383 := by
  apply coveredState_split_literal (state := state_273383) 4
    state_273384 state_273469
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_273384
  · exact cover_273469
#print axioms cover_273383

def state_273269 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 8 else (if j.val < 4 then 27 else 8)))
theorem cover_273269 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_273269 := by
  apply coveredState_split_literal (state := state_273269) 2
    state_273270 state_273383
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_273270
  · exact cover_273383
#print axioms cover_273269

def state_273249 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 8)))
theorem cover_273249 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_273249 := by
  apply coveredState_split_literal (state := state_273249) 3
    state_273250 state_273269
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_273250
  · exact cover_273269
#print axioms cover_273249

def state_273248 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 11) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 8)))
theorem cover_273248 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_273248 := by
  apply coveredState_split_literal (state := state_273248) 1
    state_273249 state_273594
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_273249
  · exact cover_273594
#print axioms cover_273248

def state_273247 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 8)))
theorem cover_273247 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_273247 := by
  apply coveredState_split_literal (state := state_273247) 0
    state_273248 state_273629
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_273248
  · exact cover_273629
#print axioms cover_273247
end Mub6.Numerical.CircleFullPrototype.Forest
