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
def state_993339 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 107) else (if j.val < 3 then 71 else (if j.val < 4 then 104 else 86)))
def hex_993339 : String := "4043440907440909434441064240090A0A4106C6444109424009080909"
theorem cover_993339 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_993339 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 29) (hex := hex_993339)
  decide +kernel
#print axioms cover_993339

def state_993368 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 53) else (if j.val < 3 then 35 else (if j.val < 4 then 104 else 87)))
def hex_993368 : String := "41074240430705054007430609"
theorem cover_993368 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_993368 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 5) (count := 13) (hex := hex_993368)
  decide +kernel
#print axioms cover_993368

def state_993381 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 53) else (if j.val < 3 then 35 else (if j.val < 4 then 105 else 43)))
def hex_993381 : String := "44410842084043090943444108420809080841054205400808"
theorem cover_993381 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_993381 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 25) (hex := hex_993381)
  decide +kernel
#print axioms cover_993381

def state_993406 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 53) else (if j.val < 3 then 17 else (if j.val < 4 then 53 else 21)))
def hex_993406 : String := "44424006084041434406090606410843444206400607420840430906080842054044410843420609060808"
theorem cover_993406 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_993406 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 43) (hex := hex_993406)
  decide +kernel
#print axioms cover_993406

def state_993449 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 8 else (if j.val < 4 then 27 else 10)))
def hex_993449 : String := "4442064006414344060806064205404108064105440805"
theorem cover_993449 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_993449 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_993449)
  decide +kernel
#print axioms cover_993449

def state_993474 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 8 else (if j.val < 4 then 26 else 20)))
def hex_993474 : String := "420640064341440642064005070606"
theorem cover_993474 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_993474 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 8) (count := 15) (hex := hex_993474)
  decide +kernel
#print axioms cover_993474

def state_993490 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 16 else (if j.val < 4 then 26 else 21)))
def hex_993490 : String := "40064344060606"
theorem cover_993490 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_993490 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 4) (count := 7) (hex := hex_993490)
  decide +kernel
#print axioms cover_993490

def state_993498 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 27) else (if j.val < 3 then 17 else (if j.val < 4 then 26 else 21)))
def hex_993498 : String := "4344064142064006434406410706060606"
theorem cover_993498 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_993498 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 17) (hex := hex_993498)
  decide +kernel
#print axioms cover_993498

def state_993519 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 54) else (if j.val < 3 then 34 else (if j.val < 4 then 52 else 42)))
def hex_993519 : String := "40064344064142064006070606"
theorem cover_993519 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_993519 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_993519)
  decide +kernel
#print axioms cover_993519

def state_993533 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 54) else (if j.val < 3 then 35 else (if j.val < 4 then 52 else 42)))
def hex_993533 : String := "43440641420640054305060606"
theorem cover_993533 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_993533 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_993533)
  decide +kernel
#print axioms cover_993533

def state_993548 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 54) else (if j.val < 3 then 35 else (if j.val < 4 then 104 else 84)))
def hex_993548 : String := "4142070505"
theorem cover_993548 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_993548 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_993548)
  decide +kernel
#print axioms cover_993548

def state_993555 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 108) else (if j.val < 3 then 70 else (if j.val < 4 then 104 else 85)))
def hex_993555 : String := "4043440641420640064344064142060906060606434407414207404344074142070A0707070707"
theorem cover_993555 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_993555 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 39) (hex := hex_993555)
  decide +kernel
#print axioms cover_993555
end Mub6.Numerical.CircleFullD0.Forest
