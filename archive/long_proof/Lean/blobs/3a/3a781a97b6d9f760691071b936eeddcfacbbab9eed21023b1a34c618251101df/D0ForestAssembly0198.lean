import D0FullInterface
import D0ForestAssembly0197
import D0ForestChunk0743
import D0ForestChunk0745
import D0ForestChunk0746
import D0ForestChunk0747
import D0ForestChunk0748
import D0ForestChunk0749
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1479271 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 8 else (if j.val < 4 then 23 else 29)))
theorem cover_1479271 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1479271 := by
  apply coveredState_split_literal (state := state_1479271) 2
    state_1479272 state_1479303
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1479272
  · exact cover_1479303
#print axioms cover_1479271

def state_1479239 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 8 else (if j.val < 4 then 23 else 14)))
theorem cover_1479239 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1479239 := by
  apply coveredState_split_literal (state := state_1479239) 4
    state_1479240 state_1479271
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1479240
  · exact cover_1479271
#print axioms cover_1479239

def state_1474761 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 8 else (if j.val < 4 then 11 else 14)))
theorem cover_1474761 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1474761 := by
  apply coveredState_split_literal (state := state_1474761) 3
    state_1474762 state_1479239
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1474762
  · exact cover_1479239
#print axioms cover_1474761

def state_1474760 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 11) else (if j.val < 3 then 8 else (if j.val < 4 then 11 else 14)))
theorem cover_1474760 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1474760 := by
  apply coveredState_split_literal (state := state_1474760) 1
    state_1474761 state_1479898
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1474761
  · exact cover_1479898
#print axioms cover_1474760

def state_1479937 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 11) else (if j.val < 3 then 8 else (if j.val < 4 then 11 else 14)))
theorem cover_1479937 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1479937 := by
  apply coveredState_split_literal (state := state_1479937) 1
    state_1479938 state_1479993
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1479938
  · exact cover_1479993
#print axioms cover_1479937

def state_1474759 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 8 else (if j.val < 4 then 11 else 14)))
theorem cover_1474759 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1474759 := by
  apply coveredState_split_literal (state := state_1474759) 0
    state_1474760 state_1479937
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1474760
  · exact cover_1479937
#print axioms cover_1474759

def state_1480007 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 8 else (if j.val < 4 then 22 else 15)))
theorem cover_1480007 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1480007 := by
  apply coveredState_split_literal (state := state_1480007) 2
    state_1480008 state_1480043
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1480008
  · exact cover_1480043
#print axioms cover_1480007

def state_1480111 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 17 else (if j.val < 4 then 23 else 30)))
theorem cover_1480111 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1480111 := by
  apply coveredState_split_literal (state := state_1480111) 0
    state_1480112 state_1480145
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1480112
  · exact cover_1480145
#print axioms cover_1480111

def state_1480110 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 17 else (if j.val < 4 then 23 else 15)))
theorem cover_1480110 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1480110 := by
  apply coveredState_split_literal (state := state_1480110) 4
    state_1480111 state_1480194
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1480111
  · exact cover_1480194
#print axioms cover_1480110

def state_1480088 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 8 else (if j.val < 4 then 23 else 15)))
theorem cover_1480088 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1480088 := by
  apply coveredState_split_literal (state := state_1480088) 2
    state_1480089 state_1480110
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1480089
  · exact cover_1480110
#print axioms cover_1480088

def state_1480006 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 8 else (if j.val < 4 then 11 else 15)))
theorem cover_1480006 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1480006 := by
  apply coveredState_split_literal (state := state_1480006) 3
    state_1480007 state_1480088
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1480007
  · exact cover_1480088
#print axioms cover_1480006

def state_1480005 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 11) else (if j.val < 3 then 8 else (if j.val < 4 then 11 else 15)))
theorem cover_1480005 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1480005 := by
  apply coveredState_split_literal (state := state_1480005) 1
    state_1480006 state_1480199
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1480006
  · exact cover_1480199
#print axioms cover_1480005

def state_1480004 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 8 else (if j.val < 4 then 11 else 15)))
theorem cover_1480004 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1480004 := by
  apply coveredState_split_literal (state := state_1480004) 0
    state_1480005 state_1480244
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1480005
  · exact cover_1480244
#print axioms cover_1480004

def state_1474758 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 8 else (if j.val < 4 then 11 else 7)))
theorem cover_1474758 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1474758 := by
  apply coveredState_split_literal (state := state_1474758) 4
    state_1474759 state_1480004
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1474759
  · exact cover_1480004
#print axioms cover_1474758

def state_1480355 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 44) else (if j.val < 3 then 18 else (if j.val < 4 then 47 else 29)))
theorem cover_1480355 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1480355 := by
  apply coveredState_split_literal (state := state_1480355) 2
    state_1480356 state_1480405
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1480356
  · exact cover_1480405
#print axioms cover_1480355

def state_1480354 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 22) else (if j.val < 3 then 18 else (if j.val < 4 then 47 else 29)))
theorem cover_1480354 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1480354 := by
  apply coveredState_split_literal (state := state_1480354) 1
    state_1480355 state_1480422
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1480355
  · exact cover_1480422
#print axioms cover_1480354

def state_1480306 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 22) else (if j.val < 3 then 18 else (if j.val < 4 then 23 else 29)))
theorem cover_1480306 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1480306 := by
  apply coveredState_split_literal (state := state_1480306) 3
    state_1480307 state_1480354
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1480307
  · exact cover_1480354
#print axioms cover_1480306

def state_1480483 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 44) else (if j.val < 3 then 36 else (if j.val < 4 then 47 else 59)))
theorem cover_1480483 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1480483 := by
  apply coveredState_split_literal (state := state_1480483) 3
    state_1480484 state_1480541
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1480484
  · exact cover_1480541
#print axioms cover_1480483

def state_1480467 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 44) else (if j.val < 3 then 36 else (if j.val < 4 then 47 else 29)))
theorem cover_1480467 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1480467 := by
  apply coveredState_split_literal (state := state_1480467) 4
    state_1480468 state_1480483
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1480468
  · exact cover_1480483
#print axioms cover_1480467

def state_1480466 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 44) else (if j.val < 3 then 18 else (if j.val < 4 then 47 else 29)))
theorem cover_1480466 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1480466 := by
  apply coveredState_split_literal (state := state_1480466) 2
    state_1480467 state_1480570
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1480467
  · exact cover_1480570
#print axioms cover_1480466

def state_1480465 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 22) else (if j.val < 3 then 18 else (if j.val < 4 then 47 else 29)))
theorem cover_1480465 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1480465 := by
  apply coveredState_split_literal (state := state_1480465) 1
    state_1480466 state_1480613
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1480466
  · exact cover_1480613
#print axioms cover_1480465

def state_1480423 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 22) else (if j.val < 3 then 18 else (if j.val < 4 then 23 else 29)))
theorem cover_1480423 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1480423 := by
  apply coveredState_split_literal (state := state_1480423) 3
    state_1480424 state_1480465
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1480424
  · exact cover_1480465
#print axioms cover_1480423

def state_1480305 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 18 else (if j.val < 4 then 23 else 29)))
theorem cover_1480305 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1480305 := by
  apply coveredState_split_literal (state := state_1480305) 0
    state_1480306 state_1480423
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1480306
  · exact cover_1480423
#print axioms cover_1480305

def state_1480297 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 18 else (if j.val < 4 then 23 else 14)))
theorem cover_1480297 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1480297 := by
  apply coveredState_split_literal (state := state_1480297) 4
    state_1480298 state_1480305
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1480298
  · exact cover_1480305
#print axioms cover_1480297

def state_1480296 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 9 else (if j.val < 4 then 23 else 14)))
theorem cover_1480296 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1480296 := by
  apply coveredState_split_literal (state := state_1480296) 2
    state_1480297 state_1480630
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1480297
  · exact cover_1480630
#print axioms cover_1480296

def state_1480262 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 9 else (if j.val < 4 then 11 else 14)))
theorem cover_1480262 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1480262 := by
  apply coveredState_split_literal (state := state_1480262) 3
    state_1480263 state_1480296
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1480263
  · exact cover_1480296
#print axioms cover_1480262

def state_1480261 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 11) else (if j.val < 3 then 9 else (if j.val < 4 then 11 else 14)))
theorem cover_1480261 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1480261 := by
  apply coveredState_split_literal (state := state_1480261) 1
    state_1480262 state_1480641
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1480262
  · exact cover_1480641
#print axioms cover_1480261

def state_1480260 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 11) else (if j.val < 3 then 9 else (if j.val < 4 then 11 else 14)))
theorem cover_1480260 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1480260 := by
  apply coveredState_split_literal (state := state_1480260) 0
    state_1480261 state_1480660
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1480261
  · exact cover_1480660
#print axioms cover_1480260

def state_1480765 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 22) else (if j.val < 3 then 18 else (if j.val < 4 then 47 else 30)))
theorem cover_1480765 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1480765 := by
  apply coveredState_split_literal (state := state_1480765) 1
    state_1480766 state_1480819
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1480766
  · exact cover_1480819
#print axioms cover_1480765

def state_1480729 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 22) else (if j.val < 3 then 18 else (if j.val < 4 then 23 else 30)))
theorem cover_1480729 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1480729 := by
  apply coveredState_split_literal (state := state_1480729) 3
    state_1480730 state_1480765
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1480730
  · exact cover_1480765
#print axioms cover_1480729

def state_1480711 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 18 else (if j.val < 4 then 23 else 30)))
theorem cover_1480711 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1480711 := by
  apply coveredState_split_literal (state := state_1480711) 0
    state_1480712 state_1480729
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1480712
  · exact cover_1480729
#print axioms cover_1480711

def state_1480710 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 18 else (if j.val < 4 then 23 else 15)))
theorem cover_1480710 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1480710 := by
  apply coveredState_split_literal (state := state_1480710) 4
    state_1480711 state_1480852
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1480711
  · exact cover_1480852
#print axioms cover_1480710
end Mub6.Numerical.CircleFullD0.Forest
