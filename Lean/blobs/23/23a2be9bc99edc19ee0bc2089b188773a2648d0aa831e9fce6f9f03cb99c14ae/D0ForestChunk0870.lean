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
def state_1509392 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 22) else (if j.val < 3 then 21 else (if j.val < 4 then 13 else 14)))
def hex_1509392 : String := "43440640064142430644064006410906060644054009414244054309050909"
theorem cover_1509392 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1509392 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 31) (hex := hex_1509392)
  decide +kernel
#print axioms cover_1509392

def state_1509423 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 23) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 14)))
def hex_1509423 : String := "42430909430609"
theorem cover_1509423 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1509423 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 7) (hex := hex_1509423)
  decide +kernel
#print axioms cover_1509423

def state_1509432 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 22) else (if j.val < 3 then 20 else (if j.val < 4 then 13 else 14)))
def hex_1509432 : String := "434405404143440A420A40414344420506424041880A0A4006084405420540414306050505430A0A41434405420508050A44054205050A41430A050A05"
theorem cover_1509432 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1509432 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 16) (count := 61) (hex := hex_1509432)
  decide +kernel
#print axioms cover_1509432

def state_1509494 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 22) else (if j.val < 3 then 21 else (if j.val < 4 then 26 else 14)))
def hex_1509494 : String := "44400605404142434406404143064244050606060844054041420543060542050641420543070505430644064006074243080A0641424308050808"
theorem cover_1509494 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1509494 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 12) (count := 59) (hex := hex_1509494)
  decide +kernel
#print axioms cover_1509494

def state_1509553 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 22) else (if j.val < 3 then 21 else (if j.val < 4 then 27 else 14)))
def hex_1509553 : String := "440540414205440543400905050505"
theorem cover_1509553 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1509553 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_1509553)
  decide +kernel
#print axioms cover_1509553

def state_1509568 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 23) else (if j.val < 3 then 10 else (if j.val < 4 then 13 else 14)))
def hex_1509568 : String := "420A4344064108080A"
theorem cover_1509568 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1509568 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1509568)
  decide +kernel
#print axioms cover_1509568

def state_1509583 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 22) else (if j.val < 3 then 20 else (if j.val < 4 then 26 else 30)))
def hex_1509583 : String := "4143420744064006410809084342070609"
theorem cover_1509583 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1509583 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 17) (hex := hex_1509583)
  decide +kernel
#print axioms cover_1509583

def state_1509603 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 44) else (if j.val < 3 then 40 else (if j.val < 4 then 52 else 30)))
def hex_1509603 : String := "4440414307070741434207444041070741880A400741070708434207440A07074007410807"
theorem cover_1509603 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1509603 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 37) (hex := hex_1509603)
  decide +kernel
#print axioms cover_1509603

def state_1509642 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 98 else 44) else (if j.val < 3 then 41 else (if j.val < 4 then 52 else 60)))
def hex_1509642 : String := "414342090642080609"
theorem cover_1509642 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1509642 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_1509642)
  decide +kernel
#print axioms cover_1509642
end Mub6.Numerical.CircleFullD0.Forest
