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
def state_1459343 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 20) else (if j.val < 3 then 8 else (if j.val < 4 then 10 else 14)))
def hex_1459343 : String := "0A"
theorem cover_1459343 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1459343 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1459343)
  decide +kernel
#print axioms cover_1459343

def state_1459345 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 8 else (if j.val < 4 then 20 else 14)))
def hex_1459345 : String := "0A"
theorem cover_1459345 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1459345 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1459345)
  decide +kernel
#print axioms cover_1459345

def state_1459348 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 16 else (if j.val < 4 then 21 else 28)))
def hex_1459348 : String := "40410A430A44060A41430A44424006430A410606060A4344424006410707060A44424006414306064306060642400A410A430A444286060A0A"
theorem cover_1459348 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1459348 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 57) (hex := hex_1459348)
  decide +kernel
#print axioms cover_1459348

def state_1459405 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 17 else (if j.val < 4 then 21 else 28)))
def hex_1459405 : String := "400A410A430A44060A"
theorem cover_1459405 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1459405 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 9) (hex := hex_1459405)
  decide +kernel
#print axioms cover_1459405

def state_1459414 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 8 else (if j.val < 4 then 21 else 29)))
def hex_1459414 : String := "0A"
theorem cover_1459414 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1459414 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1459414)
  decide +kernel
#print axioms cover_1459414

def state_1459415 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 8 else (if j.val < 4 then 10 else 15)))
def hex_1459415 : String := "0A"
theorem cover_1459415 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1459415 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1459415)
  decide +kernel
#print axioms cover_1459415

def state_1459416 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 9 else (if j.val < 4 then 10 else 7)))
def hex_1459416 : String := "0A"
theorem cover_1459416 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1459416 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 1) (count := 1) (hex := hex_1459416)
  decide +kernel
#print axioms cover_1459416

def state_1459420 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 10) else (if j.val < 3 then 8 else (if j.val < 4 then 11 else 14)))
def hex_1459420 : String := "43410A44060A410707"
theorem cover_1459420 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1459420 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_1459420)
  decide +kernel
#print axioms cover_1459420

def state_1459431 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 20) else (if j.val < 3 then 8 else (if j.val < 4 then 22 else 14)))
def hex_1459431 : String := "444240430A4407074344410942090A0A4441094209400609410942070A400A430A44410A060A0A"
theorem cover_1459431 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1459431 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 39) (hex := hex_1459431)
  decide +kernel
#print axioms cover_1459431

def state_1459473 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 21) else (if j.val < 3 then 16 else (if j.val < 4 then 22 else 28)))
def hex_1459473 : String := "434144060A06410706"
theorem cover_1459473 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1459473 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_1459473)
  decide +kernel
#print axioms cover_1459473

def state_1459484 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 42) else (if j.val < 3 then 16 else (if j.val < 4 then 44 else 28)))
def hex_1459484 : String := "44424006434106064105050642400A430A41094409090A"
theorem cover_1459484 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1459484 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_1459484)
  decide +kernel
#print axioms cover_1459484

def state_1459508 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 43) else (if j.val < 3 then 16 else (if j.val < 4 then 44 else 56)))
def hex_1459508 : String := "42400643060606"
theorem cover_1459508 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1459508 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_1459508)
  decide +kernel
#print axioms cover_1459508

def state_1459517 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 43) else (if j.val < 3 then 32 else (if j.val < 4 then 44 else 57)))
def hex_1459517 : String := "43410A44060A410707"
theorem cover_1459517 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1459517 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 9) (hex := hex_1459517)
  decide +kernel
#print axioms cover_1459517

def state_1459527 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 43) else (if j.val < 3 then 32 else (if j.val < 4 then 88 else 57)))
def hex_1459527 : String := "4144424006430909060A444286064286400A430A410A44060A"
theorem cover_1459527 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1459527 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 25) (hex := hex_1459527)
  decide +kernel
#print axioms cover_1459527

def state_1459552 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 43) else (if j.val < 3 then 32 else (if j.val < 4 then 89 else 57)))
def hex_1459552 : String := "41444240064305050642400709400A430909444240064386070642400743860740430606434144060A4406428606410707"
theorem cover_1459552 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1459552 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 49) (hex := hex_1459552)
  decide +kernel
#print axioms cover_1459552
end Mub6.Numerical.CircleFullD0.Forest
