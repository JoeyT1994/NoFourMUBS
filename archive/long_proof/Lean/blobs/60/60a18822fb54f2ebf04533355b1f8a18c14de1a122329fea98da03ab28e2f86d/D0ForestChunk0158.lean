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
def state_975435 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 87) else (if j.val < 3 then 62 else (if j.val < 4 then 86 else 57)))
def hex_975435 : String := "4442404106430644080641430608434408064408420540064105054006410643064408064240050506"
theorem cover_975435 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_975435 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 10) (count := 41) (hex := hex_975435)
  decide +kernel
#print axioms cover_975435

def state_975476 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 87) else (if j.val < 3 then 62 else (if j.val < 4 then 87 else 57)))
def hex_975476 : String := "44424009410808404108084108084205400641054344060505"
theorem cover_975476 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_975476 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 25) (hex := hex_975476)
  decide +kernel
#print axioms cover_975476

def state_975502 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 86) else (if j.val < 3 then 62 else (if j.val < 4 then 43 else 57)))
def hex_975502 : String := "430A440805"
theorem cover_975502 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_975502 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_975502)
  decide +kernel
#print axioms cover_975502

def state_975508 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 87) else (if j.val < 3 then 62 else (if j.val < 4 then 86 else 57)))
def hex_975508 : String := "44424041430A0843444208080A440842054041050505410A430A44080540414306084344420806064408424041064306080A40060A410A430944080A0A"
theorem cover_975508 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_975508 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 11) (count := 61) (hex := hex_975508)
  decide +kernel
#print axioms cover_975508

def state_975569 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 87) else (if j.val < 3 then 62 else (if j.val < 4 then 87 else 57)))
def hex_975569 : String := "444240410543080541054308054041080841070842054041054344420540050505054105430505"
theorem cover_975569 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_975569 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 9) (count := 39) (hex := hex_975569)
  decide +kernel
#print axioms cover_975569

def state_975609 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 43) else (if j.val < 3 then 63 else (if j.val < 4 then 43 else 57)))
def hex_975609 : String := "41064306444240064106080606"
theorem cover_975609 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_975609 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 13) (hex := hex_975609)
  decide +kernel
#print axioms cover_975609

def state_975623 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 86) else (if j.val < 3 then 63 else (if j.val < 4 then 43 else 57)))
def hex_975623 : String := "430644080A"
theorem cover_975623 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_975623 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 3) (count := 5) (hex := hex_975623)
  decide +kernel
#print axioms cover_975623

def state_975629 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 87) else (if j.val < 3 then 63 else (if j.val < 4 then 86 else 57)))
def hex_975629 : String := "44424041064306440806410A430944050A40064106050A"
theorem cover_975629 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_975629 := by
  apply coveredState_of_hexJoined d0_image_sound d0_term_sound
    (fuel := 7) (count := 23) (hex := hex_975629)
  decide +kernel
#print axioms cover_975629
end Mub6.Numerical.CircleFullD0.Forest
