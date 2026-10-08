import D0FullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1599271 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 40) else (if j.val < 3 then 102 else (if j.val < 4 then 59 else 100)))
def hex_1599271 : String := "41434442400A0540410943060A414306090642054041434409050A43050A0544420A400A410A0A420A400A410A05434442054043060A050544420A400A0A0A"
theorem cover_1599271 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1599271 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 63) (hex := hex_1599271)
  decide +kernel
#print axioms cover_1599271

def state_1599334 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 40) else (if j.val < 3 then 102 else (if j.val < 4 then 59 else 100)))
def hex_1599334 : String := "414306444205404107430507050505"
theorem cover_1599334 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1599334 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_1599334)
  decide +kernel
#print axioms cover_1599334

def state_1599352 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 80) else (if j.val < 3 then 103 else (if j.val < 4 then 118 else 100)))
def hex_1599352 : String := "44424009410943060909424041094344094205094409420A0941084344420508054442050905400908"
theorem cover_1599352 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1599352 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 41) (hex := hex_1599352)
  decide +kernel
#print axioms cover_1599352

def state_1599393 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 80) else (if j.val < 3 then 103 else (if j.val < 4 then 119 else 100)))
def hex_1599393 : String := "44424009410943094409420A0909424041094344090A0A414309094344420A094205400905440A0A40094108430909"
theorem cover_1599393 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1599393 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 47) (hex := hex_1599393)
  decide +kernel
#print axioms cover_1599393

def state_1599442 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 81) else (if j.val < 3 then 103 else (if j.val < 4 then 118 else 200)))
def hex_1599442 : String := "424043410906414409420A09444206400806420840080A430641060640434109094109099F"
theorem cover_1599442 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1599442 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 37) (hex := hex_1599442)
  decide +kernel
#print axioms cover_1599442
end Mub6.Numerical.CircleFullD0.Forest
