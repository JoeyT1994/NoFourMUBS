import CircleFullInterface
import CircleForestAssembly0111
import CircleForestChunk0441
import CircleForestChunk0442
import CircleForestChunk0443
import CircleForestChunk0444
import CircleForestChunk0445
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_181718 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 50) else (if j.val < 3 then 50 else (if j.val < 4 then 60 else 59)))
theorem cover_181718 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_181718 := by
  apply coveredState_split_literal (state := state_181718) 1
    state_181719 state_181796
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_181719
  · exact cover_181796
#print axioms cover_181718

def state_181717 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 50) else (if j.val < 3 then 50 else (if j.val < 4 then 30 else 59)))
theorem cover_181717 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_181717 := by
  apply coveredState_split_literal (state := state_181717) 3
    state_181718 state_181815
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_181718
  · exact cover_181815
#print axioms cover_181717

def state_181711 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 50) else (if j.val < 3 then 50 else (if j.val < 4 then 30 else 29)))
theorem cover_181711 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_181711 := by
  apply coveredState_split_literal (state := state_181711) 4
    state_181712 state_181717
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_181712
  · exact cover_181717
#print axioms cover_181711

def state_181710 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 50) else (if j.val < 3 then 50 else (if j.val < 4 then 30 else 29)))
theorem cover_181710 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_181710 := by
  apply coveredState_split_literal (state := state_181710) 0
    state_181711 state_181836
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_181711
  · exact cover_181836
#print axioms cover_181710

def state_181709 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 50) else (if j.val < 3 then 25 else (if j.val < 4 then 30 else 29)))
theorem cover_181709 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_181709 := by
  apply coveredState_split_literal (state := state_181709) 2
    state_181710 state_181887
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_181710
  · exact cover_181887
#print axioms cover_181709

def state_181708 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 30 else 29)))
theorem cover_181708 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_181708 := by
  apply coveredState_split_literal (state := state_181708) 1
    state_181709 state_181898
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_181709
  · exact cover_181898
#print axioms cover_181708

def state_181707 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 15 else 29)))
theorem cover_181707 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_181707 := by
  apply coveredState_split_literal (state := state_181707) 3
    state_181708 state_181917
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_181708
  · exact cover_181917
#print axioms cover_181707

def state_181695 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 15 else 14)))
theorem cover_181695 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_181695 := by
  apply coveredState_split_literal (state := state_181695) 4
    state_181696 state_181707
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_181696
  · exact cover_181707
#print axioms cover_181695

def state_181653 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 15 else 14)))
theorem cover_181653 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_181653 := by
  apply coveredState_split_literal (state := state_181653) 0
    state_181654 state_181695
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_181654
  · exact cover_181695
#print axioms cover_181653

def state_181275 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 25) else (if j.val < 3 then 12 else (if j.val < 4 then 15 else 14)))
theorem cover_181275 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_181275 := by
  apply coveredState_split_literal (state := state_181275) 2
    state_181276 state_181653
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_181276
  · exact cover_181653
#print axioms cover_181275

def state_180973 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 12) else (if j.val < 3 then 12 else (if j.val < 4 then 15 else 14)))
theorem cover_180973 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_180973 := by
  apply coveredState_split_literal (state := state_180973) 1
    state_180974 state_181275
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_180974
  · exact cover_181275
#print axioms cover_180973

def state_181942 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 24) else (if j.val < 3 then 24 else (if j.val < 4 then 15 else 15)))
theorem cover_181942 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_181942 := by
  apply coveredState_split_literal (state := state_181942) 0
    state_181943 state_181964
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_181943
  · exact cover_181964
#print axioms cover_181942

def state_182087 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 49) else (if j.val < 3 then 50 else (if j.val < 4 then 60 else 60)))
theorem cover_182087 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_182087 := by
  apply coveredState_split_literal (state := state_182087) 1
    state_182088 state_182103
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_182088
  · exact cover_182103
#print axioms cover_182087

def state_182086 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 49) else (if j.val < 3 then 50 else (if j.val < 4 then 60 else 30)))
theorem cover_182086 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_182086 := by
  apply coveredState_split_literal (state := state_182086) 4
    state_182087 state_182164
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_182087
  · exact cover_182164
#print axioms cover_182086

def state_182085 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 49) else (if j.val < 3 then 50 else (if j.val < 4 then 30 else 30)))
theorem cover_182085 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_182085 := by
  apply coveredState_split_literal (state := state_182085) 3
    state_182086 state_182191
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_182086
  · exact cover_182191
#print axioms cover_182085

def state_182202 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 49) else (if j.val < 3 then 50 else (if j.val < 4 then 30 else 30)))
theorem cover_182202 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_182202 := by
  apply coveredState_split_literal (state := state_182202) 3
    state_182203 state_182266
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_182203
  · exact cover_182266
#print axioms cover_182202

def state_182084 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 49) else (if j.val < 3 then 50 else (if j.val < 4 then 30 else 30)))
theorem cover_182084 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_182084 := by
  apply coveredState_split_literal (state := state_182084) 0
    state_182085 state_182202
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_182085
  · exact cover_182202
#print axioms cover_182084

def state_182083 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 49) else (if j.val < 3 then 25 else (if j.val < 4 then 30 else 30)))
theorem cover_182083 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_182083 := by
  apply coveredState_split_literal (state := state_182083) 2
    state_182084 state_182277
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_182084
  · exact cover_182277
#print axioms cover_182083

def state_182063 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 24) else (if j.val < 3 then 25 else (if j.val < 4 then 30 else 30)))
theorem cover_182063 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_182063 := by
  apply coveredState_split_literal (state := state_182063) 1
    state_182064 state_182083
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_182064
  · exact cover_182083
#print axioms cover_182063

def state_182062 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 24) else (if j.val < 3 then 25 else (if j.val < 4 then 30 else 15)))
theorem cover_182062 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_182062 := by
  apply coveredState_split_literal (state := state_182062) 4
    state_182063 state_182296
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_182063
  · exact cover_182296
#print axioms cover_182062

def state_182061 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 24) else (if j.val < 3 then 25 else (if j.val < 4 then 15 else 15)))
theorem cover_182061 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_182061 := by
  apply coveredState_split_literal (state := state_182061) 3
    state_182062 state_182311
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_182062
  · exact cover_182311
#print axioms cover_182061

def state_182023 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 24) else (if j.val < 3 then 25 else (if j.val < 4 then 15 else 15)))
theorem cover_182023 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_182023 := by
  apply coveredState_split_literal (state := state_182023) 0
    state_182024 state_182061
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_182024
  · exact cover_182061
#print axioms cover_182023

def state_181941 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 24) else (if j.val < 3 then 12 else (if j.val < 4 then 15 else 15)))
theorem cover_181941 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_181941 := by
  apply coveredState_split_literal (state := state_181941) 2
    state_181942 state_182023
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_181942
  · exact cover_182023
#print axioms cover_181941

def state_182385 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 50) else (if j.val < 3 then 49 else (if j.val < 4 then 60 else 60)))
theorem cover_182385 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_182385 := by
  apply coveredState_split_literal (state := state_182385) 2
    state_182386 state_182397
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_182386
  · exact cover_182397
#print axioms cover_182385

def state_182384 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 50) else (if j.val < 3 then 49 else (if j.val < 4 then 60 else 30)))
theorem cover_182384 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_182384 := by
  apply coveredState_split_literal (state := state_182384) 4
    state_182385 state_182458
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_182385
  · exact cover_182458
#print axioms cover_182384

def state_182383 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 50) else (if j.val < 3 then 49 else (if j.val < 4 then 30 else 30)))
theorem cover_182383 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_182383 := by
  apply coveredState_split_literal (state := state_182383) 3
    state_182384 state_182467
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_182384
  · exact cover_182467
#print axioms cover_182383

def state_182496 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 50) else (if j.val < 3 then 49 else (if j.val < 4 then 30 else 30)))
theorem cover_182496 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_182496 := by
  apply coveredState_split_literal (state := state_182496) 3
    state_182497 state_182538
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_182497
  · exact cover_182538
#print axioms cover_182496

def state_182382 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 50) else (if j.val < 3 then 49 else (if j.val < 4 then 30 else 30)))
theorem cover_182382 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_182382 := by
  apply coveredState_split_literal (state := state_182382) 0
    state_182383 state_182496
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_182383
  · exact cover_182496
#print axioms cover_182382

def state_182381 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 49 else (if j.val < 4 then 30 else 30)))
theorem cover_182381 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_182381 := by
  apply coveredState_split_literal (state := state_182381) 1
    state_182382 state_182573
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_182382
  · exact cover_182573
#print axioms cover_182381

def state_182363 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 24 else (if j.val < 4 then 30 else 30)))
theorem cover_182363 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_182363 := by
  apply coveredState_split_literal (state := state_182363) 2
    state_182364 state_182381
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_182364
  · exact cover_182381
#print axioms cover_182363

def state_182362 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 24 else (if j.val < 4 then 30 else 15)))
theorem cover_182362 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_182362 := by
  apply coveredState_split_literal (state := state_182362) 4
    state_182363 state_182592
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_182363
  · exact cover_182592
#print axioms cover_182362

def state_182361 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 24 else (if j.val < 4 then 15 else 15)))
theorem cover_182361 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_182361 := by
  apply coveredState_split_literal (state := state_182361) 3
    state_182362 state_182599
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_182362
  · exact cover_182599
#print axioms cover_182361
end Mub6.Numerical.CircleFullPrototype.Forest
